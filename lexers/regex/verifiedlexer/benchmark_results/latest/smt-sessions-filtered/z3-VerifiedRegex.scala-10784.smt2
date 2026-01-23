; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!552472 () Bool)

(assert start!552472)

(declare-fun b!5223795 () Bool)

(assert (=> b!5223795 true))

(assert (=> b!5223795 true))

(declare-fun lambda!262228 () Int)

(declare-fun lambda!262227 () Int)

(assert (=> b!5223795 (not (= lambda!262228 lambda!262227))))

(assert (=> b!5223795 true))

(assert (=> b!5223795 true))

(declare-fun b!5223802 () Bool)

(assert (=> b!5223802 true))

(declare-fun b!5223778 () Bool)

(declare-fun e!3251277 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29900 0))(
  ( (C!29901 (val!24652 Int)) )
))
(declare-datatypes ((Regex!14815 0))(
  ( (ElementMatch!14815 (c!901653 C!29900)) (Concat!23660 (regOne!30142 Regex!14815) (regTwo!30142 Regex!14815)) (EmptyExpr!14815) (Star!14815 (reg!15144 Regex!14815)) (EmptyLang!14815) (Union!14815 (regOne!30143 Regex!14815) (regTwo!30143 Regex!14815)) )
))
(declare-datatypes ((List!60744 0))(
  ( (Nil!60620) (Cons!60620 (h!67068 Regex!14815) (t!373917 List!60744)) )
))
(declare-datatypes ((Context!8398 0))(
  ( (Context!8399 (exprs!4699 List!60744)) )
))
(declare-fun lt!2144093 () (InoxSet Context!8398))

(declare-datatypes ((List!60745 0))(
  ( (Nil!60621) (Cons!60621 (h!67069 C!29900) (t!373918 List!60745)) )
))
(declare-fun s!2326 () List!60745)

(declare-fun matchZipper!1059 ((InoxSet Context!8398) List!60745) Bool)

(assert (=> b!5223778 (= e!3251277 (matchZipper!1059 lt!2144093 (t!373918 s!2326)))))

(declare-fun b!5223779 () Bool)

(declare-datatypes ((Unit!152540 0))(
  ( (Unit!152541) )
))
(declare-fun e!3251280 () Unit!152540)

(declare-fun Unit!152542 () Unit!152540)

(assert (=> b!5223779 (= e!3251280 Unit!152542)))

(declare-fun b!5223780 () Bool)

(declare-fun res!2217926 () Bool)

(declare-fun e!3251291 () Bool)

(assert (=> b!5223780 (=> res!2217926 e!3251291)))

(declare-datatypes ((List!60746 0))(
  ( (Nil!60622) (Cons!60622 (h!67070 Context!8398) (t!373919 List!60746)) )
))
(declare-fun zl!343 () List!60746)

(get-info :version)

(assert (=> b!5223780 (= res!2217926 (not ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343)))))))

(declare-fun setIsEmpty!33241 () Bool)

(declare-fun setRes!33241 () Bool)

(assert (=> setIsEmpty!33241 setRes!33241))

(declare-fun b!5223781 () Bool)

(declare-fun e!3251286 () Bool)

(declare-fun tp!1464298 () Bool)

(declare-fun tp!1464303 () Bool)

(assert (=> b!5223781 (= e!3251286 (and tp!1464298 tp!1464303))))

(declare-fun b!5223783 () Bool)

(declare-fun tp!1464304 () Bool)

(declare-fun tp!1464299 () Bool)

(assert (=> b!5223783 (= e!3251286 (and tp!1464304 tp!1464299))))

(declare-fun b!5223784 () Bool)

(declare-fun e!3251274 () Bool)

(declare-fun tp_is_empty!38883 () Bool)

(declare-fun tp!1464307 () Bool)

(assert (=> b!5223784 (= e!3251274 (and tp_is_empty!38883 tp!1464307))))

(declare-fun b!5223785 () Bool)

(declare-fun res!2217933 () Bool)

(declare-fun e!3251285 () Bool)

(assert (=> b!5223785 (=> res!2217933 e!3251285)))

(declare-fun lt!2144074 () (InoxSet Context!8398))

(declare-fun lt!2144072 () (InoxSet Context!8398))

(assert (=> b!5223785 (= res!2217933 (not (= (matchZipper!1059 lt!2144074 s!2326) (matchZipper!1059 lt!2144072 (t!373918 s!2326)))))))

(declare-fun b!5223786 () Bool)

(declare-fun e!3251281 () Bool)

(declare-fun tp!1464305 () Bool)

(assert (=> b!5223786 (= e!3251281 tp!1464305)))

(declare-fun b!5223787 () Bool)

(declare-fun res!2217941 () Bool)

(assert (=> b!5223787 (=> res!2217941 e!3251291)))

(declare-fun r!7292 () Regex!14815)

(declare-fun generalisedConcat!484 (List!60744) Regex!14815)

(assert (=> b!5223787 (= res!2217941 (not (= r!7292 (generalisedConcat!484 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5223788 () Bool)

(declare-fun validRegex!6551 (Regex!14815) Bool)

(assert (=> b!5223788 (= e!3251285 (validRegex!6551 (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun b!5223789 () Bool)

(declare-fun tp!1464301 () Bool)

(assert (=> b!5223789 (= e!3251286 tp!1464301)))

(declare-fun b!5223790 () Bool)

(declare-fun e!3251284 () Bool)

(declare-fun e!3251282 () Bool)

(declare-fun tp!1464302 () Bool)

(declare-fun inv!80284 (Context!8398) Bool)

(assert (=> b!5223790 (= e!3251284 (and (inv!80284 (h!67070 zl!343)) e!3251282 tp!1464302))))

(declare-fun b!5223791 () Bool)

(declare-fun res!2217934 () Bool)

(assert (=> b!5223791 (=> res!2217934 e!3251291)))

(assert (=> b!5223791 (= res!2217934 (or ((_ is EmptyExpr!14815) r!7292) ((_ is EmptyLang!14815) r!7292) ((_ is ElementMatch!14815) r!7292) ((_ is Union!14815) r!7292) (not ((_ is Concat!23660) r!7292))))))

(declare-fun b!5223792 () Bool)

(declare-fun e!3251287 () Bool)

(declare-fun e!3251273 () Bool)

(assert (=> b!5223792 (= e!3251287 e!3251273)))

(declare-fun res!2217925 () Bool)

(assert (=> b!5223792 (=> res!2217925 e!3251273)))

(declare-fun nullable!4984 (Regex!14815) Bool)

(assert (=> b!5223792 (= res!2217925 (not (nullable!4984 (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun lambda!262229 () Int)

(declare-fun lt!2144085 () Context!8398)

(declare-fun flatMap!542 ((InoxSet Context!8398) Int) (InoxSet Context!8398))

(declare-fun derivationStepZipperUp!187 (Context!8398 C!29900) (InoxSet Context!8398))

(assert (=> b!5223792 (= (flatMap!542 lt!2144074 lambda!262229) (derivationStepZipperUp!187 lt!2144085 (h!67069 s!2326)))))

(declare-fun lt!2144077 () Unit!152540)

(declare-fun lemmaFlatMapOnSingletonSet!74 ((InoxSet Context!8398) Context!8398 Int) Unit!152540)

(assert (=> b!5223792 (= lt!2144077 (lemmaFlatMapOnSingletonSet!74 lt!2144074 lt!2144085 lambda!262229))))

(declare-fun lt!2144067 () (InoxSet Context!8398))

(assert (=> b!5223792 (= lt!2144067 (derivationStepZipperUp!187 lt!2144085 (h!67069 s!2326)))))

(declare-fun derivationStepZipper!1083 ((InoxSet Context!8398) C!29900) (InoxSet Context!8398))

(assert (=> b!5223792 (= lt!2144072 (derivationStepZipper!1083 lt!2144074 (h!67069 s!2326)))))

(declare-fun lt!2144083 () Unit!152540)

(assert (=> b!5223792 (= lt!2144083 e!3251280)))

(declare-fun c!901651 () Bool)

(assert (=> b!5223792 (= c!901651 (nullable!4984 (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun lt!2144070 () Context!8398)

(declare-fun lt!2144088 () (InoxSet Context!8398))

(assert (=> b!5223792 (= (flatMap!542 lt!2144088 lambda!262229) (derivationStepZipperUp!187 lt!2144070 (h!67069 s!2326)))))

(declare-fun lt!2144065 () Unit!152540)

(assert (=> b!5223792 (= lt!2144065 (lemmaFlatMapOnSingletonSet!74 lt!2144088 lt!2144070 lambda!262229))))

(declare-fun lt!2144068 () (InoxSet Context!8398))

(assert (=> b!5223792 (= lt!2144068 (derivationStepZipperUp!187 lt!2144070 (h!67069 s!2326)))))

(assert (=> b!5223792 (= lt!2144074 (store ((as const (Array Context!8398 Bool)) false) lt!2144085 true))))

(assert (=> b!5223792 (= lt!2144085 (Context!8399 (Cons!60620 (regTwo!30143 (regOne!30142 r!7292)) (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(assert (=> b!5223792 (= lt!2144088 (store ((as const (Array Context!8398 Bool)) false) lt!2144070 true))))

(assert (=> b!5223792 (= lt!2144070 (Context!8399 (Cons!60620 (regOne!30143 (regOne!30142 r!7292)) (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5223793 () Bool)

(declare-fun e!3251290 () Unit!152540)

(declare-fun Unit!152543 () Unit!152540)

(assert (=> b!5223793 (= e!3251290 Unit!152543)))

(declare-fun b!5223794 () Bool)

(declare-fun e!3251278 () Bool)

(assert (=> b!5223794 (= e!3251278 e!3251287)))

(declare-fun res!2217927 () Bool)

(assert (=> b!5223794 (=> res!2217927 e!3251287)))

(declare-fun e!3251279 () Bool)

(assert (=> b!5223794 (= res!2217927 e!3251279)))

(declare-fun res!2217938 () Bool)

(assert (=> b!5223794 (=> (not res!2217938) (not e!3251279))))

(declare-fun lt!2144066 () Bool)

(declare-fun lt!2144073 () (InoxSet Context!8398))

(assert (=> b!5223794 (= res!2217938 (not (= (matchZipper!1059 lt!2144073 (t!373918 s!2326)) lt!2144066)))))

(declare-fun lt!2144084 () (InoxSet Context!8398))

(assert (=> b!5223794 (= (matchZipper!1059 lt!2144084 (t!373918 s!2326)) e!3251277)))

(declare-fun res!2217921 () Bool)

(assert (=> b!5223794 (=> res!2217921 e!3251277)))

(assert (=> b!5223794 (= res!2217921 lt!2144066)))

(declare-fun lt!2144069 () (InoxSet Context!8398))

(assert (=> b!5223794 (= lt!2144066 (matchZipper!1059 lt!2144069 (t!373918 s!2326)))))

(declare-fun lt!2144087 () Unit!152540)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!52 ((InoxSet Context!8398) (InoxSet Context!8398) List!60745) Unit!152540)

(assert (=> b!5223794 (= lt!2144087 (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144069 lt!2144093 (t!373918 s!2326)))))

(declare-fun e!3251275 () Bool)

(assert (=> b!5223795 (= e!3251291 e!3251275)))

(declare-fun res!2217937 () Bool)

(assert (=> b!5223795 (=> res!2217937 e!3251275)))

(declare-fun lt!2144090 () Bool)

(declare-fun lt!2144076 () Bool)

(assert (=> b!5223795 (= res!2217937 (or (not (= lt!2144076 lt!2144090)) ((_ is Nil!60621) s!2326)))))

(declare-fun Exists!1996 (Int) Bool)

(assert (=> b!5223795 (= (Exists!1996 lambda!262227) (Exists!1996 lambda!262228))))

(declare-fun lt!2144071 () Unit!152540)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!650 (Regex!14815 Regex!14815 List!60745) Unit!152540)

(assert (=> b!5223795 (= lt!2144071 (lemmaExistCutMatchRandMatchRSpecEquivalent!650 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326))))

(assert (=> b!5223795 (= lt!2144090 (Exists!1996 lambda!262227))))

(declare-datatypes ((tuple2!64028 0))(
  ( (tuple2!64029 (_1!35317 List!60745) (_2!35317 List!60745)) )
))
(declare-datatypes ((Option!14926 0))(
  ( (None!14925) (Some!14925 (v!50954 tuple2!64028)) )
))
(declare-fun isDefined!11629 (Option!14926) Bool)

(declare-fun findConcatSeparation!1340 (Regex!14815 Regex!14815 List!60745 List!60745 List!60745) Option!14926)

(assert (=> b!5223795 (= lt!2144090 (isDefined!11629 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326)))))

(declare-fun lt!2144091 () Unit!152540)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1104 (Regex!14815 Regex!14815 List!60745) Unit!152540)

(assert (=> b!5223795 (= lt!2144091 (lemmaFindConcatSeparationEquivalentToExists!1104 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326))))

(declare-fun b!5223796 () Bool)

(declare-fun e!3251276 () Bool)

(declare-fun lt!2144075 () (InoxSet Context!8398))

(assert (=> b!5223796 (= e!3251276 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(declare-fun b!5223797 () Bool)

(declare-fun Unit!152544 () Unit!152540)

(assert (=> b!5223797 (= e!3251290 Unit!152544)))

(declare-fun lt!2144086 () Unit!152540)

(assert (=> b!5223797 (= lt!2144086 (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144073 lt!2144075 (t!373918 s!2326)))))

(declare-fun res!2217940 () Bool)

(assert (=> b!5223797 (= res!2217940 (matchZipper!1059 lt!2144073 (t!373918 s!2326)))))

(assert (=> b!5223797 (=> res!2217940 e!3251276)))

(assert (=> b!5223797 (= (matchZipper!1059 ((_ map or) lt!2144073 lt!2144075) (t!373918 s!2326)) e!3251276)))

(declare-fun b!5223798 () Bool)

(declare-fun tp!1464300 () Bool)

(assert (=> b!5223798 (= e!3251282 tp!1464300)))

(declare-fun b!5223799 () Bool)

(declare-fun e!3251283 () Bool)

(assert (=> b!5223799 (= e!3251283 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(declare-fun b!5223800 () Bool)

(declare-fun res!2217936 () Bool)

(declare-fun e!3251288 () Bool)

(assert (=> b!5223800 (=> (not res!2217936) (not e!3251288))))

(declare-fun unfocusZipper!557 (List!60746) Regex!14815)

(assert (=> b!5223800 (= res!2217936 (= r!7292 (unfocusZipper!557 zl!343)))))

(declare-fun b!5223801 () Bool)

(assert (=> b!5223801 (= e!3251273 e!3251285)))

(declare-fun res!2217922 () Bool)

(assert (=> b!5223801 (=> res!2217922 e!3251285)))

(declare-fun lt!2144079 () (InoxSet Context!8398))

(assert (=> b!5223801 (= res!2217922 (or (not (= lt!2144067 lt!2144079)) (not (= lt!2144072 lt!2144079))))))

(assert (=> b!5223801 (= lt!2144079 ((_ map or) lt!2144093 lt!2144075))))

(declare-fun b!5223782 () Bool)

(declare-fun res!2217929 () Bool)

(assert (=> b!5223782 (=> res!2217929 e!3251291)))

(declare-fun isEmpty!32541 (List!60746) Bool)

(assert (=> b!5223782 (= res!2217929 (not (isEmpty!32541 (t!373919 zl!343))))))

(declare-fun res!2217923 () Bool)

(assert (=> start!552472 (=> (not res!2217923) (not e!3251288))))

(assert (=> start!552472 (= res!2217923 (validRegex!6551 r!7292))))

(assert (=> start!552472 e!3251288))

(assert (=> start!552472 e!3251286))

(declare-fun condSetEmpty!33241 () Bool)

(declare-fun z!1189 () (InoxSet Context!8398))

(assert (=> start!552472 (= condSetEmpty!33241 (= z!1189 ((as const (Array Context!8398 Bool)) false)))))

(assert (=> start!552472 setRes!33241))

(assert (=> start!552472 e!3251284))

(assert (=> start!552472 e!3251274))

(declare-fun e!3251289 () Bool)

(assert (=> b!5223802 (= e!3251275 e!3251289)))

(declare-fun res!2217939 () Bool)

(assert (=> b!5223802 (=> res!2217939 e!3251289)))

(assert (=> b!5223802 (= res!2217939 (or (and ((_ is ElementMatch!14815) (regOne!30142 r!7292)) (= (c!901653 (regOne!30142 r!7292)) (h!67069 s!2326))) (not ((_ is Union!14815) (regOne!30142 r!7292)))))))

(declare-fun lt!2144089 () Unit!152540)

(assert (=> b!5223802 (= lt!2144089 e!3251290)))

(declare-fun c!901652 () Bool)

(assert (=> b!5223802 (= c!901652 (nullable!4984 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> b!5223802 (= (flatMap!542 z!1189 lambda!262229) (derivationStepZipperUp!187 (h!67070 zl!343) (h!67069 s!2326)))))

(declare-fun lt!2144082 () Unit!152540)

(assert (=> b!5223802 (= lt!2144082 (lemmaFlatMapOnSingletonSet!74 z!1189 (h!67070 zl!343) lambda!262229))))

(declare-fun lt!2144080 () Context!8398)

(assert (=> b!5223802 (= lt!2144075 (derivationStepZipperUp!187 lt!2144080 (h!67069 s!2326)))))

(declare-fun derivationStepZipperDown!263 (Regex!14815 Context!8398 C!29900) (InoxSet Context!8398))

(assert (=> b!5223802 (= lt!2144073 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (h!67070 zl!343))) lt!2144080 (h!67069 s!2326)))))

(assert (=> b!5223802 (= lt!2144080 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun lt!2144081 () (InoxSet Context!8398))

(assert (=> b!5223802 (= lt!2144081 (derivationStepZipperUp!187 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))) (h!67069 s!2326)))))

(declare-fun b!5223803 () Bool)

(declare-fun Unit!152545 () Unit!152540)

(assert (=> b!5223803 (= e!3251280 Unit!152545)))

(declare-fun lt!2144078 () Unit!152540)

(assert (=> b!5223803 (= lt!2144078 (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144069 lt!2144075 (t!373918 s!2326)))))

(declare-fun res!2217935 () Bool)

(assert (=> b!5223803 (= res!2217935 lt!2144066)))

(assert (=> b!5223803 (=> res!2217935 e!3251283)))

(assert (=> b!5223803 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144075) (t!373918 s!2326)) e!3251283)))

(declare-fun b!5223804 () Bool)

(declare-fun res!2217932 () Bool)

(assert (=> b!5223804 (=> (not res!2217932) (not e!3251288))))

(declare-fun toList!8599 ((InoxSet Context!8398)) List!60746)

(assert (=> b!5223804 (= res!2217932 (= (toList!8599 z!1189) zl!343))))

(declare-fun b!5223805 () Bool)

(declare-fun res!2217928 () Bool)

(assert (=> b!5223805 (=> res!2217928 e!3251275)))

(declare-fun isEmpty!32542 (List!60744) Bool)

(assert (=> b!5223805 (= res!2217928 (isEmpty!32542 (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5223806 () Bool)

(assert (=> b!5223806 (= e!3251288 (not e!3251291))))

(declare-fun res!2217931 () Bool)

(assert (=> b!5223806 (=> res!2217931 e!3251291)))

(assert (=> b!5223806 (= res!2217931 (not ((_ is Cons!60622) zl!343)))))

(declare-fun matchRSpec!1918 (Regex!14815 List!60745) Bool)

(assert (=> b!5223806 (= lt!2144076 (matchRSpec!1918 r!7292 s!2326))))

(declare-fun matchR!7000 (Regex!14815 List!60745) Bool)

(assert (=> b!5223806 (= lt!2144076 (matchR!7000 r!7292 s!2326))))

(declare-fun lt!2144092 () Unit!152540)

(declare-fun mainMatchTheorem!1918 (Regex!14815 List!60745) Unit!152540)

(assert (=> b!5223806 (= lt!2144092 (mainMatchTheorem!1918 r!7292 s!2326))))

(declare-fun b!5223807 () Bool)

(declare-fun res!2217924 () Bool)

(assert (=> b!5223807 (=> res!2217924 e!3251291)))

(declare-fun generalisedUnion!744 (List!60744) Regex!14815)

(declare-fun unfocusZipperList!257 (List!60746) List!60744)

(assert (=> b!5223807 (= res!2217924 (not (= r!7292 (generalisedUnion!744 (unfocusZipperList!257 zl!343)))))))

(declare-fun b!5223808 () Bool)

(assert (=> b!5223808 (= e!3251286 tp_is_empty!38883)))

(declare-fun b!5223809 () Bool)

(assert (=> b!5223809 (= e!3251289 e!3251278)))

(declare-fun res!2217930 () Bool)

(assert (=> b!5223809 (=> res!2217930 e!3251278)))

(assert (=> b!5223809 (= res!2217930 (not (= lt!2144073 lt!2144084)))))

(assert (=> b!5223809 (= lt!2144084 ((_ map or) lt!2144069 lt!2144093))))

(assert (=> b!5223809 (= lt!2144093 (derivationStepZipperDown!263 (regTwo!30143 (regOne!30142 r!7292)) lt!2144080 (h!67069 s!2326)))))

(assert (=> b!5223809 (= lt!2144069 (derivationStepZipperDown!263 (regOne!30143 (regOne!30142 r!7292)) lt!2144080 (h!67069 s!2326)))))

(declare-fun tp!1464306 () Bool)

(declare-fun setNonEmpty!33241 () Bool)

(declare-fun setElem!33241 () Context!8398)

(assert (=> setNonEmpty!33241 (= setRes!33241 (and tp!1464306 (inv!80284 setElem!33241) e!3251281))))

(declare-fun setRest!33241 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33241 (= z!1189 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33241 true) setRest!33241))))

(declare-fun b!5223810 () Bool)

(assert (=> b!5223810 (= e!3251279 (not (matchZipper!1059 lt!2144093 (t!373918 s!2326))))))

(assert (= (and start!552472 res!2217923) b!5223804))

(assert (= (and b!5223804 res!2217932) b!5223800))

(assert (= (and b!5223800 res!2217936) b!5223806))

(assert (= (and b!5223806 (not res!2217931)) b!5223782))

(assert (= (and b!5223782 (not res!2217929)) b!5223787))

(assert (= (and b!5223787 (not res!2217941)) b!5223780))

(assert (= (and b!5223780 (not res!2217926)) b!5223807))

(assert (= (and b!5223807 (not res!2217924)) b!5223791))

(assert (= (and b!5223791 (not res!2217934)) b!5223795))

(assert (= (and b!5223795 (not res!2217937)) b!5223805))

(assert (= (and b!5223805 (not res!2217928)) b!5223802))

(assert (= (and b!5223802 c!901652) b!5223797))

(assert (= (and b!5223802 (not c!901652)) b!5223793))

(assert (= (and b!5223797 (not res!2217940)) b!5223796))

(assert (= (and b!5223802 (not res!2217939)) b!5223809))

(assert (= (and b!5223809 (not res!2217930)) b!5223794))

(assert (= (and b!5223794 (not res!2217921)) b!5223778))

(assert (= (and b!5223794 res!2217938) b!5223810))

(assert (= (and b!5223794 (not res!2217927)) b!5223792))

(assert (= (and b!5223792 c!901651) b!5223803))

(assert (= (and b!5223792 (not c!901651)) b!5223779))

(assert (= (and b!5223803 (not res!2217935)) b!5223799))

(assert (= (and b!5223792 (not res!2217925)) b!5223801))

(assert (= (and b!5223801 (not res!2217922)) b!5223785))

(assert (= (and b!5223785 (not res!2217933)) b!5223788))

(assert (= (and start!552472 ((_ is ElementMatch!14815) r!7292)) b!5223808))

(assert (= (and start!552472 ((_ is Concat!23660) r!7292)) b!5223783))

(assert (= (and start!552472 ((_ is Star!14815) r!7292)) b!5223789))

(assert (= (and start!552472 ((_ is Union!14815) r!7292)) b!5223781))

(assert (= (and start!552472 condSetEmpty!33241) setIsEmpty!33241))

(assert (= (and start!552472 (not condSetEmpty!33241)) setNonEmpty!33241))

(assert (= setNonEmpty!33241 b!5223786))

(assert (= b!5223790 b!5223798))

(assert (= (and start!552472 ((_ is Cons!60622) zl!343)) b!5223790))

(assert (= (and start!552472 ((_ is Cons!60621) s!2326)) b!5223784))

(declare-fun m!6270822 () Bool)

(assert (=> b!5223797 m!6270822))

(declare-fun m!6270824 () Bool)

(assert (=> b!5223797 m!6270824))

(declare-fun m!6270826 () Bool)

(assert (=> b!5223797 m!6270826))

(declare-fun m!6270828 () Bool)

(assert (=> b!5223809 m!6270828))

(declare-fun m!6270830 () Bool)

(assert (=> b!5223809 m!6270830))

(declare-fun m!6270832 () Bool)

(assert (=> setNonEmpty!33241 m!6270832))

(declare-fun m!6270834 () Bool)

(assert (=> b!5223807 m!6270834))

(assert (=> b!5223807 m!6270834))

(declare-fun m!6270836 () Bool)

(assert (=> b!5223807 m!6270836))

(declare-fun m!6270838 () Bool)

(assert (=> b!5223806 m!6270838))

(declare-fun m!6270840 () Bool)

(assert (=> b!5223806 m!6270840))

(declare-fun m!6270842 () Bool)

(assert (=> b!5223806 m!6270842))

(declare-fun m!6270844 () Bool)

(assert (=> b!5223803 m!6270844))

(declare-fun m!6270846 () Bool)

(assert (=> b!5223803 m!6270846))

(declare-fun m!6270848 () Bool)

(assert (=> b!5223796 m!6270848))

(declare-fun m!6270850 () Bool)

(assert (=> b!5223788 m!6270850))

(declare-fun m!6270852 () Bool)

(assert (=> start!552472 m!6270852))

(assert (=> b!5223799 m!6270848))

(declare-fun m!6270854 () Bool)

(assert (=> b!5223790 m!6270854))

(declare-fun m!6270856 () Bool)

(assert (=> b!5223810 m!6270856))

(declare-fun m!6270858 () Bool)

(assert (=> b!5223782 m!6270858))

(declare-fun m!6270860 () Bool)

(assert (=> b!5223805 m!6270860))

(declare-fun m!6270862 () Bool)

(assert (=> b!5223785 m!6270862))

(declare-fun m!6270864 () Bool)

(assert (=> b!5223785 m!6270864))

(declare-fun m!6270866 () Bool)

(assert (=> b!5223795 m!6270866))

(declare-fun m!6270868 () Bool)

(assert (=> b!5223795 m!6270868))

(declare-fun m!6270870 () Bool)

(assert (=> b!5223795 m!6270870))

(declare-fun m!6270872 () Bool)

(assert (=> b!5223795 m!6270872))

(assert (=> b!5223795 m!6270870))

(declare-fun m!6270874 () Bool)

(assert (=> b!5223795 m!6270874))

(assert (=> b!5223795 m!6270866))

(declare-fun m!6270876 () Bool)

(assert (=> b!5223795 m!6270876))

(assert (=> b!5223778 m!6270856))

(declare-fun m!6270878 () Bool)

(assert (=> b!5223800 m!6270878))

(declare-fun m!6270880 () Bool)

(assert (=> b!5223804 m!6270880))

(declare-fun m!6270882 () Bool)

(assert (=> b!5223792 m!6270882))

(declare-fun m!6270884 () Bool)

(assert (=> b!5223792 m!6270884))

(declare-fun m!6270886 () Bool)

(assert (=> b!5223792 m!6270886))

(declare-fun m!6270888 () Bool)

(assert (=> b!5223792 m!6270888))

(declare-fun m!6270890 () Bool)

(assert (=> b!5223792 m!6270890))

(declare-fun m!6270892 () Bool)

(assert (=> b!5223792 m!6270892))

(declare-fun m!6270894 () Bool)

(assert (=> b!5223792 m!6270894))

(declare-fun m!6270896 () Bool)

(assert (=> b!5223792 m!6270896))

(declare-fun m!6270898 () Bool)

(assert (=> b!5223792 m!6270898))

(declare-fun m!6270900 () Bool)

(assert (=> b!5223792 m!6270900))

(declare-fun m!6270902 () Bool)

(assert (=> b!5223792 m!6270902))

(declare-fun m!6270904 () Bool)

(assert (=> b!5223787 m!6270904))

(declare-fun m!6270906 () Bool)

(assert (=> b!5223802 m!6270906))

(declare-fun m!6270908 () Bool)

(assert (=> b!5223802 m!6270908))

(declare-fun m!6270910 () Bool)

(assert (=> b!5223802 m!6270910))

(declare-fun m!6270912 () Bool)

(assert (=> b!5223802 m!6270912))

(declare-fun m!6270914 () Bool)

(assert (=> b!5223802 m!6270914))

(declare-fun m!6270916 () Bool)

(assert (=> b!5223802 m!6270916))

(declare-fun m!6270918 () Bool)

(assert (=> b!5223802 m!6270918))

(assert (=> b!5223794 m!6270824))

(declare-fun m!6270920 () Bool)

(assert (=> b!5223794 m!6270920))

(declare-fun m!6270922 () Bool)

(assert (=> b!5223794 m!6270922))

(declare-fun m!6270924 () Bool)

(assert (=> b!5223794 m!6270924))

(check-sat (not b!5223796) (not b!5223802) (not b!5223783) (not start!552472) (not b!5223810) (not b!5223787) (not b!5223789) (not b!5223788) (not b!5223799) (not b!5223805) (not b!5223795) (not b!5223786) (not b!5223778) (not b!5223806) (not b!5223807) tp_is_empty!38883 (not b!5223781) (not b!5223800) (not b!5223782) (not b!5223784) (not b!5223804) (not b!5223797) (not b!5223792) (not b!5223798) (not b!5223790) (not b!5223794) (not setNonEmpty!33241) (not b!5223785) (not b!5223803) (not b!5223809))
(check-sat)
(get-model)

(declare-fun d!1684191 () Bool)

(declare-fun e!3251532 () Bool)

(assert (=> d!1684191 e!3251532))

(declare-fun res!2218068 () Bool)

(assert (=> d!1684191 (=> (not res!2218068) (not e!3251532))))

(declare-fun lt!2144142 () Regex!14815)

(assert (=> d!1684191 (= res!2218068 (validRegex!6551 lt!2144142))))

(declare-fun e!3251531 () Regex!14815)

(assert (=> d!1684191 (= lt!2144142 e!3251531)))

(declare-fun c!901779 () Bool)

(declare-fun e!3251533 () Bool)

(assert (=> d!1684191 (= c!901779 e!3251533)))

(declare-fun res!2218069 () Bool)

(assert (=> d!1684191 (=> (not res!2218069) (not e!3251533))))

(assert (=> d!1684191 (= res!2218069 ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343))))))

(declare-fun lambda!262263 () Int)

(declare-fun forall!14247 (List!60744 Int) Bool)

(assert (=> d!1684191 (forall!14247 (exprs!4699 (h!67070 zl!343)) lambda!262263)))

(assert (=> d!1684191 (= (generalisedConcat!484 (exprs!4699 (h!67070 zl!343))) lt!2144142)))

(declare-fun b!5224239 () Bool)

(declare-fun e!3251536 () Bool)

(declare-fun isConcat!298 (Regex!14815) Bool)

(assert (=> b!5224239 (= e!3251536 (isConcat!298 lt!2144142))))

(declare-fun b!5224240 () Bool)

(declare-fun e!3251535 () Bool)

(assert (=> b!5224240 (= e!3251535 e!3251536)))

(declare-fun c!901776 () Bool)

(declare-fun tail!10294 (List!60744) List!60744)

(assert (=> b!5224240 (= c!901776 (isEmpty!32542 (tail!10294 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5224241 () Bool)

(assert (=> b!5224241 (= e!3251532 e!3251535)))

(declare-fun c!901777 () Bool)

(assert (=> b!5224241 (= c!901777 (isEmpty!32542 (exprs!4699 (h!67070 zl!343))))))

(declare-fun b!5224242 () Bool)

(assert (=> b!5224242 (= e!3251531 (h!67068 (exprs!4699 (h!67070 zl!343))))))

(declare-fun b!5224243 () Bool)

(assert (=> b!5224243 (= e!3251533 (isEmpty!32542 (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5224244 () Bool)

(declare-fun e!3251534 () Regex!14815)

(assert (=> b!5224244 (= e!3251534 EmptyExpr!14815)))

(declare-fun b!5224245 () Bool)

(assert (=> b!5224245 (= e!3251534 (Concat!23660 (h!67068 (exprs!4699 (h!67070 zl!343))) (generalisedConcat!484 (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5224246 () Bool)

(assert (=> b!5224246 (= e!3251531 e!3251534)))

(declare-fun c!901778 () Bool)

(assert (=> b!5224246 (= c!901778 ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343))))))

(declare-fun b!5224247 () Bool)

(declare-fun head!11197 (List!60744) Regex!14815)

(assert (=> b!5224247 (= e!3251536 (= lt!2144142 (head!11197 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5224248 () Bool)

(declare-fun isEmptyExpr!775 (Regex!14815) Bool)

(assert (=> b!5224248 (= e!3251535 (isEmptyExpr!775 lt!2144142))))

(assert (= (and d!1684191 res!2218069) b!5224243))

(assert (= (and d!1684191 c!901779) b!5224242))

(assert (= (and d!1684191 (not c!901779)) b!5224246))

(assert (= (and b!5224246 c!901778) b!5224245))

(assert (= (and b!5224246 (not c!901778)) b!5224244))

(assert (= (and d!1684191 res!2218068) b!5224241))

(assert (= (and b!5224241 c!901777) b!5224248))

(assert (= (and b!5224241 (not c!901777)) b!5224240))

(assert (= (and b!5224240 c!901776) b!5224247))

(assert (= (and b!5224240 (not c!901776)) b!5224239))

(declare-fun m!6271208 () Bool)

(assert (=> b!5224239 m!6271208))

(declare-fun m!6271210 () Bool)

(assert (=> b!5224248 m!6271210))

(declare-fun m!6271212 () Bool)

(assert (=> b!5224245 m!6271212))

(declare-fun m!6271214 () Bool)

(assert (=> b!5224241 m!6271214))

(declare-fun m!6271216 () Bool)

(assert (=> b!5224247 m!6271216))

(declare-fun m!6271218 () Bool)

(assert (=> d!1684191 m!6271218))

(declare-fun m!6271220 () Bool)

(assert (=> d!1684191 m!6271220))

(declare-fun m!6271222 () Bool)

(assert (=> b!5224240 m!6271222))

(assert (=> b!5224240 m!6271222))

(declare-fun m!6271224 () Bool)

(assert (=> b!5224240 m!6271224))

(assert (=> b!5224243 m!6270860))

(assert (=> b!5223787 d!1684191))

(declare-fun b!5224271 () Bool)

(declare-fun e!3251550 () Bool)

(assert (=> b!5224271 (= e!3251550 (nullable!4984 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun b!5224272 () Bool)

(declare-fun e!3251552 () (InoxSet Context!8398))

(declare-fun call!368953 () (InoxSet Context!8398))

(assert (=> b!5224272 (= e!3251552 call!368953)))

(declare-fun b!5224273 () Bool)

(declare-fun c!901790 () Bool)

(assert (=> b!5224273 (= c!901790 e!3251550)))

(declare-fun res!2218072 () Bool)

(assert (=> b!5224273 (=> (not res!2218072) (not e!3251550))))

(assert (=> b!5224273 (= res!2218072 ((_ is Concat!23660) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun e!3251553 () (InoxSet Context!8398))

(declare-fun e!3251549 () (InoxSet Context!8398))

(assert (=> b!5224273 (= e!3251553 e!3251549)))

(declare-fun call!368955 () List!60744)

(declare-fun c!901793 () Bool)

(declare-fun bm!368948 () Bool)

(declare-fun $colon$colon!1289 (List!60744 Regex!14815) List!60744)

(assert (=> bm!368948 (= call!368955 ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901790 c!901793) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun b!5224274 () Bool)

(declare-fun call!368958 () (InoxSet Context!8398))

(declare-fun call!368954 () (InoxSet Context!8398))

(assert (=> b!5224274 (= e!3251553 ((_ map or) call!368958 call!368954))))

(declare-fun b!5224275 () Bool)

(assert (=> b!5224275 (= e!3251549 e!3251552)))

(assert (=> b!5224275 (= c!901793 ((_ is Concat!23660) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun b!5224276 () Bool)

(declare-fun e!3251554 () (InoxSet Context!8398))

(assert (=> b!5224276 (= e!3251554 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368949 () Bool)

(declare-fun c!901794 () Bool)

(assert (=> bm!368949 (= call!368958 (derivationStepZipperDown!263 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))) (ite c!901794 lt!2144080 (Context!8399 call!368955)) (h!67069 s!2326)))))

(declare-fun b!5224278 () Bool)

(assert (=> b!5224278 (= e!3251554 call!368953)))

(declare-fun bm!368950 () Bool)

(declare-fun call!368957 () List!60744)

(assert (=> bm!368950 (= call!368954 (derivationStepZipperDown!263 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))) (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957)) (h!67069 s!2326)))))

(declare-fun b!5224279 () Bool)

(declare-fun e!3251551 () (InoxSet Context!8398))

(assert (=> b!5224279 (= e!3251551 (store ((as const (Array Context!8398 Bool)) false) lt!2144080 true))))

(declare-fun b!5224280 () Bool)

(assert (=> b!5224280 (= e!3251551 e!3251553)))

(assert (=> b!5224280 (= c!901794 ((_ is Union!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun bm!368951 () Bool)

(assert (=> bm!368951 (= call!368957 call!368955)))

(declare-fun b!5224281 () Bool)

(declare-fun c!901791 () Bool)

(assert (=> b!5224281 (= c!901791 ((_ is Star!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(assert (=> b!5224281 (= e!3251552 e!3251554)))

(declare-fun b!5224277 () Bool)

(declare-fun call!368956 () (InoxSet Context!8398))

(assert (=> b!5224277 (= e!3251549 ((_ map or) call!368958 call!368956))))

(declare-fun d!1684193 () Bool)

(declare-fun c!901792 () Bool)

(assert (=> d!1684193 (= c!901792 (and ((_ is ElementMatch!14815) (regTwo!30143 (regOne!30142 r!7292))) (= (c!901653 (regTwo!30143 (regOne!30142 r!7292))) (h!67069 s!2326))))))

(assert (=> d!1684193 (= (derivationStepZipperDown!263 (regTwo!30143 (regOne!30142 r!7292)) lt!2144080 (h!67069 s!2326)) e!3251551)))

(declare-fun bm!368952 () Bool)

(assert (=> bm!368952 (= call!368956 call!368954)))

(declare-fun bm!368953 () Bool)

(assert (=> bm!368953 (= call!368953 call!368956)))

(assert (= (and d!1684193 c!901792) b!5224279))

(assert (= (and d!1684193 (not c!901792)) b!5224280))

(assert (= (and b!5224280 c!901794) b!5224274))

(assert (= (and b!5224280 (not c!901794)) b!5224273))

(assert (= (and b!5224273 res!2218072) b!5224271))

(assert (= (and b!5224273 c!901790) b!5224277))

(assert (= (and b!5224273 (not c!901790)) b!5224275))

(assert (= (and b!5224275 c!901793) b!5224272))

(assert (= (and b!5224275 (not c!901793)) b!5224281))

(assert (= (and b!5224281 c!901791) b!5224278))

(assert (= (and b!5224281 (not c!901791)) b!5224276))

(assert (= (or b!5224272 b!5224278) bm!368951))

(assert (= (or b!5224272 b!5224278) bm!368953))

(assert (= (or b!5224277 bm!368951) bm!368948))

(assert (= (or b!5224277 bm!368953) bm!368952))

(assert (= (or b!5224274 bm!368952) bm!368950))

(assert (= (or b!5224274 b!5224277) bm!368949))

(declare-fun m!6271226 () Bool)

(assert (=> bm!368949 m!6271226))

(declare-fun m!6271228 () Bool)

(assert (=> bm!368950 m!6271228))

(declare-fun m!6271230 () Bool)

(assert (=> bm!368948 m!6271230))

(declare-fun m!6271232 () Bool)

(assert (=> b!5224271 m!6271232))

(declare-fun m!6271234 () Bool)

(assert (=> b!5224279 m!6271234))

(assert (=> b!5223809 d!1684193))

(declare-fun b!5224282 () Bool)

(declare-fun e!3251556 () Bool)

(assert (=> b!5224282 (= e!3251556 (nullable!4984 (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))))

(declare-fun b!5224283 () Bool)

(declare-fun e!3251558 () (InoxSet Context!8398))

(declare-fun call!368959 () (InoxSet Context!8398))

(assert (=> b!5224283 (= e!3251558 call!368959)))

(declare-fun b!5224284 () Bool)

(declare-fun c!901795 () Bool)

(assert (=> b!5224284 (= c!901795 e!3251556)))

(declare-fun res!2218073 () Bool)

(assert (=> b!5224284 (=> (not res!2218073) (not e!3251556))))

(assert (=> b!5224284 (= res!2218073 ((_ is Concat!23660) (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun e!3251559 () (InoxSet Context!8398))

(declare-fun e!3251555 () (InoxSet Context!8398))

(assert (=> b!5224284 (= e!3251559 e!3251555)))

(declare-fun call!368961 () List!60744)

(declare-fun c!901798 () Bool)

(declare-fun bm!368954 () Bool)

(assert (=> bm!368954 (= call!368961 ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901795 c!901798) (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (regOne!30143 (regOne!30142 r!7292)))))))

(declare-fun b!5224285 () Bool)

(declare-fun call!368964 () (InoxSet Context!8398))

(declare-fun call!368960 () (InoxSet Context!8398))

(assert (=> b!5224285 (= e!3251559 ((_ map or) call!368964 call!368960))))

(declare-fun b!5224286 () Bool)

(assert (=> b!5224286 (= e!3251555 e!3251558)))

(assert (=> b!5224286 (= c!901798 ((_ is Concat!23660) (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun b!5224287 () Bool)

(declare-fun e!3251560 () (InoxSet Context!8398))

(assert (=> b!5224287 (= e!3251560 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368955 () Bool)

(declare-fun c!901799 () Bool)

(assert (=> bm!368955 (= call!368964 (derivationStepZipperDown!263 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))) (ite c!901799 lt!2144080 (Context!8399 call!368961)) (h!67069 s!2326)))))

(declare-fun b!5224289 () Bool)

(assert (=> b!5224289 (= e!3251560 call!368959)))

(declare-fun bm!368956 () Bool)

(declare-fun call!368963 () List!60744)

(assert (=> bm!368956 (= call!368960 (derivationStepZipperDown!263 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))) (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963)) (h!67069 s!2326)))))

(declare-fun b!5224290 () Bool)

(declare-fun e!3251557 () (InoxSet Context!8398))

(assert (=> b!5224290 (= e!3251557 (store ((as const (Array Context!8398 Bool)) false) lt!2144080 true))))

(declare-fun b!5224291 () Bool)

(assert (=> b!5224291 (= e!3251557 e!3251559)))

(assert (=> b!5224291 (= c!901799 ((_ is Union!14815) (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun bm!368957 () Bool)

(assert (=> bm!368957 (= call!368963 call!368961)))

(declare-fun b!5224292 () Bool)

(declare-fun c!901796 () Bool)

(assert (=> b!5224292 (= c!901796 ((_ is Star!14815) (regOne!30143 (regOne!30142 r!7292))))))

(assert (=> b!5224292 (= e!3251558 e!3251560)))

(declare-fun b!5224288 () Bool)

(declare-fun call!368962 () (InoxSet Context!8398))

(assert (=> b!5224288 (= e!3251555 ((_ map or) call!368964 call!368962))))

(declare-fun d!1684195 () Bool)

(declare-fun c!901797 () Bool)

(assert (=> d!1684195 (= c!901797 (and ((_ is ElementMatch!14815) (regOne!30143 (regOne!30142 r!7292))) (= (c!901653 (regOne!30143 (regOne!30142 r!7292))) (h!67069 s!2326))))))

(assert (=> d!1684195 (= (derivationStepZipperDown!263 (regOne!30143 (regOne!30142 r!7292)) lt!2144080 (h!67069 s!2326)) e!3251557)))

(declare-fun bm!368958 () Bool)

(assert (=> bm!368958 (= call!368962 call!368960)))

(declare-fun bm!368959 () Bool)

(assert (=> bm!368959 (= call!368959 call!368962)))

(assert (= (and d!1684195 c!901797) b!5224290))

(assert (= (and d!1684195 (not c!901797)) b!5224291))

(assert (= (and b!5224291 c!901799) b!5224285))

(assert (= (and b!5224291 (not c!901799)) b!5224284))

(assert (= (and b!5224284 res!2218073) b!5224282))

(assert (= (and b!5224284 c!901795) b!5224288))

(assert (= (and b!5224284 (not c!901795)) b!5224286))

(assert (= (and b!5224286 c!901798) b!5224283))

(assert (= (and b!5224286 (not c!901798)) b!5224292))

(assert (= (and b!5224292 c!901796) b!5224289))

(assert (= (and b!5224292 (not c!901796)) b!5224287))

(assert (= (or b!5224283 b!5224289) bm!368957))

(assert (= (or b!5224283 b!5224289) bm!368959))

(assert (= (or b!5224288 bm!368957) bm!368954))

(assert (= (or b!5224288 bm!368959) bm!368958))

(assert (= (or b!5224285 bm!368958) bm!368956))

(assert (= (or b!5224285 b!5224288) bm!368955))

(declare-fun m!6271236 () Bool)

(assert (=> bm!368955 m!6271236))

(declare-fun m!6271238 () Bool)

(assert (=> bm!368956 m!6271238))

(declare-fun m!6271240 () Bool)

(assert (=> bm!368954 m!6271240))

(declare-fun m!6271242 () Bool)

(assert (=> b!5224282 m!6271242))

(assert (=> b!5224290 m!6271234))

(assert (=> b!5223809 d!1684195))

(declare-fun b!5224311 () Bool)

(declare-fun res!2218085 () Bool)

(declare-fun e!3251580 () Bool)

(assert (=> b!5224311 (=> res!2218085 e!3251580)))

(assert (=> b!5224311 (= res!2218085 (not ((_ is Concat!23660) (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun e!3251576 () Bool)

(assert (=> b!5224311 (= e!3251576 e!3251580)))

(declare-fun b!5224312 () Bool)

(declare-fun e!3251578 () Bool)

(declare-fun call!368971 () Bool)

(assert (=> b!5224312 (= e!3251578 call!368971)))

(declare-fun call!368973 () Bool)

(declare-fun c!901805 () Bool)

(declare-fun c!901804 () Bool)

(declare-fun bm!368966 () Bool)

(assert (=> bm!368966 (= call!368973 (validRegex!6551 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5224313 () Bool)

(declare-fun e!3251581 () Bool)

(assert (=> b!5224313 (= e!3251581 call!368971)))

(declare-fun d!1684197 () Bool)

(declare-fun res!2218088 () Bool)

(declare-fun e!3251575 () Bool)

(assert (=> d!1684197 (=> res!2218088 e!3251575)))

(assert (=> d!1684197 (= res!2218088 ((_ is ElementMatch!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(assert (=> d!1684197 (= (validRegex!6551 (regTwo!30143 (regOne!30142 r!7292))) e!3251575)))

(declare-fun b!5224314 () Bool)

(declare-fun e!3251577 () Bool)

(assert (=> b!5224314 (= e!3251577 call!368973)))

(declare-fun b!5224315 () Bool)

(assert (=> b!5224315 (= e!3251580 e!3251581)))

(declare-fun res!2218084 () Bool)

(assert (=> b!5224315 (=> (not res!2218084) (not e!3251581))))

(declare-fun call!368972 () Bool)

(assert (=> b!5224315 (= res!2218084 call!368972)))

(declare-fun b!5224316 () Bool)

(declare-fun res!2218087 () Bool)

(assert (=> b!5224316 (=> (not res!2218087) (not e!3251578))))

(assert (=> b!5224316 (= res!2218087 call!368972)))

(assert (=> b!5224316 (= e!3251576 e!3251578)))

(declare-fun b!5224317 () Bool)

(declare-fun e!3251579 () Bool)

(assert (=> b!5224317 (= e!3251579 e!3251576)))

(assert (=> b!5224317 (= c!901804 ((_ is Union!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun b!5224318 () Bool)

(assert (=> b!5224318 (= e!3251579 e!3251577)))

(declare-fun res!2218086 () Bool)

(assert (=> b!5224318 (= res!2218086 (not (nullable!4984 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))))

(assert (=> b!5224318 (=> (not res!2218086) (not e!3251577))))

(declare-fun bm!368967 () Bool)

(assert (=> bm!368967 (= call!368971 (validRegex!6551 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun bm!368968 () Bool)

(assert (=> bm!368968 (= call!368972 call!368973)))

(declare-fun b!5224319 () Bool)

(assert (=> b!5224319 (= e!3251575 e!3251579)))

(assert (=> b!5224319 (= c!901805 ((_ is Star!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(assert (= (and d!1684197 (not res!2218088)) b!5224319))

(assert (= (and b!5224319 c!901805) b!5224318))

(assert (= (and b!5224319 (not c!901805)) b!5224317))

(assert (= (and b!5224318 res!2218086) b!5224314))

(assert (= (and b!5224317 c!901804) b!5224316))

(assert (= (and b!5224317 (not c!901804)) b!5224311))

(assert (= (and b!5224316 res!2218087) b!5224312))

(assert (= (and b!5224311 (not res!2218085)) b!5224315))

(assert (= (and b!5224315 res!2218084) b!5224313))

(assert (= (or b!5224312 b!5224313) bm!368967))

(assert (= (or b!5224316 b!5224315) bm!368968))

(assert (= (or b!5224314 bm!368968) bm!368966))

(declare-fun m!6271244 () Bool)

(assert (=> bm!368966 m!6271244))

(declare-fun m!6271246 () Bool)

(assert (=> b!5224318 m!6271246))

(declare-fun m!6271248 () Bool)

(assert (=> bm!368967 m!6271248))

(assert (=> b!5223788 d!1684197))

(declare-fun bs!1212977 () Bool)

(declare-fun d!1684199 () Bool)

(assert (= bs!1212977 (and d!1684199 d!1684191)))

(declare-fun lambda!262266 () Int)

(assert (=> bs!1212977 (= lambda!262266 lambda!262263)))

(assert (=> d!1684199 (= (inv!80284 setElem!33241) (forall!14247 (exprs!4699 setElem!33241) lambda!262266))))

(declare-fun bs!1212978 () Bool)

(assert (= bs!1212978 d!1684199))

(declare-fun m!6271250 () Bool)

(assert (=> bs!1212978 m!6271250))

(assert (=> setNonEmpty!33241 d!1684199))

(declare-fun bs!1212979 () Bool)

(declare-fun b!5224354 () Bool)

(assert (= bs!1212979 (and b!5224354 b!5223795)))

(declare-fun lambda!262271 () Int)

(assert (=> bs!1212979 (not (= lambda!262271 lambda!262227))))

(assert (=> bs!1212979 (not (= lambda!262271 lambda!262228))))

(assert (=> b!5224354 true))

(assert (=> b!5224354 true))

(declare-fun bs!1212980 () Bool)

(declare-fun b!5224362 () Bool)

(assert (= bs!1212980 (and b!5224362 b!5223795)))

(declare-fun lambda!262272 () Int)

(assert (=> bs!1212980 (not (= lambda!262272 lambda!262227))))

(assert (=> bs!1212980 (= lambda!262272 lambda!262228)))

(declare-fun bs!1212981 () Bool)

(assert (= bs!1212981 (and b!5224362 b!5224354)))

(assert (=> bs!1212981 (not (= lambda!262272 lambda!262271))))

(assert (=> b!5224362 true))

(assert (=> b!5224362 true))

(declare-fun b!5224352 () Bool)

(declare-fun res!2218107 () Bool)

(declare-fun e!3251600 () Bool)

(assert (=> b!5224352 (=> res!2218107 e!3251600)))

(declare-fun call!368979 () Bool)

(assert (=> b!5224352 (= res!2218107 call!368979)))

(declare-fun e!3251604 () Bool)

(assert (=> b!5224352 (= e!3251604 e!3251600)))

(declare-fun b!5224353 () Bool)

(declare-fun e!3251605 () Bool)

(declare-fun e!3251606 () Bool)

(assert (=> b!5224353 (= e!3251605 e!3251606)))

(declare-fun res!2218105 () Bool)

(assert (=> b!5224353 (= res!2218105 (matchRSpec!1918 (regOne!30143 r!7292) s!2326))))

(assert (=> b!5224353 (=> res!2218105 e!3251606)))

(declare-fun call!368978 () Bool)

(assert (=> b!5224354 (= e!3251600 call!368978)))

(declare-fun b!5224355 () Bool)

(assert (=> b!5224355 (= e!3251606 (matchRSpec!1918 (regTwo!30143 r!7292) s!2326))))

(declare-fun b!5224356 () Bool)

(declare-fun e!3251601 () Bool)

(declare-fun e!3251603 () Bool)

(assert (=> b!5224356 (= e!3251601 e!3251603)))

(declare-fun res!2218106 () Bool)

(assert (=> b!5224356 (= res!2218106 (not ((_ is EmptyLang!14815) r!7292)))))

(assert (=> b!5224356 (=> (not res!2218106) (not e!3251603))))

(declare-fun b!5224357 () Bool)

(assert (=> b!5224357 (= e!3251601 call!368979)))

(declare-fun b!5224358 () Bool)

(declare-fun c!901814 () Bool)

(assert (=> b!5224358 (= c!901814 ((_ is Union!14815) r!7292))))

(declare-fun e!3251602 () Bool)

(assert (=> b!5224358 (= e!3251602 e!3251605)))

(declare-fun b!5224359 () Bool)

(assert (=> b!5224359 (= e!3251605 e!3251604)))

(declare-fun c!901816 () Bool)

(assert (=> b!5224359 (= c!901816 ((_ is Star!14815) r!7292))))

(declare-fun b!5224360 () Bool)

(assert (=> b!5224360 (= e!3251602 (= s!2326 (Cons!60621 (c!901653 r!7292) Nil!60621)))))

(declare-fun bm!368973 () Bool)

(declare-fun isEmpty!32545 (List!60745) Bool)

(assert (=> bm!368973 (= call!368979 (isEmpty!32545 s!2326))))

(declare-fun d!1684201 () Bool)

(declare-fun c!901817 () Bool)

(assert (=> d!1684201 (= c!901817 ((_ is EmptyExpr!14815) r!7292))))

(assert (=> d!1684201 (= (matchRSpec!1918 r!7292 s!2326) e!3251601)))

(declare-fun b!5224361 () Bool)

(declare-fun c!901815 () Bool)

(assert (=> b!5224361 (= c!901815 ((_ is ElementMatch!14815) r!7292))))

(assert (=> b!5224361 (= e!3251603 e!3251602)))

(assert (=> b!5224362 (= e!3251604 call!368978)))

(declare-fun bm!368974 () Bool)

(assert (=> bm!368974 (= call!368978 (Exists!1996 (ite c!901816 lambda!262271 lambda!262272)))))

(assert (= (and d!1684201 c!901817) b!5224357))

(assert (= (and d!1684201 (not c!901817)) b!5224356))

(assert (= (and b!5224356 res!2218106) b!5224361))

(assert (= (and b!5224361 c!901815) b!5224360))

(assert (= (and b!5224361 (not c!901815)) b!5224358))

(assert (= (and b!5224358 c!901814) b!5224353))

(assert (= (and b!5224358 (not c!901814)) b!5224359))

(assert (= (and b!5224353 (not res!2218105)) b!5224355))

(assert (= (and b!5224359 c!901816) b!5224352))

(assert (= (and b!5224359 (not c!901816)) b!5224362))

(assert (= (and b!5224352 (not res!2218107)) b!5224354))

(assert (= (or b!5224354 b!5224362) bm!368974))

(assert (= (or b!5224357 b!5224352) bm!368973))

(declare-fun m!6271252 () Bool)

(assert (=> b!5224353 m!6271252))

(declare-fun m!6271254 () Bool)

(assert (=> b!5224355 m!6271254))

(declare-fun m!6271256 () Bool)

(assert (=> bm!368973 m!6271256))

(declare-fun m!6271258 () Bool)

(assert (=> bm!368974 m!6271258))

(assert (=> b!5223806 d!1684201))

(declare-fun b!5224391 () Bool)

(declare-fun res!2218127 () Bool)

(declare-fun e!3251626 () Bool)

(assert (=> b!5224391 (=> res!2218127 e!3251626)))

(declare-fun e!3251627 () Bool)

(assert (=> b!5224391 (= res!2218127 e!3251627)))

(declare-fun res!2218126 () Bool)

(assert (=> b!5224391 (=> (not res!2218126) (not e!3251627))))

(declare-fun lt!2144145 () Bool)

(assert (=> b!5224391 (= res!2218126 lt!2144145)))

(declare-fun b!5224392 () Bool)

(declare-fun e!3251622 () Bool)

(declare-fun head!11198 (List!60745) C!29900)

(assert (=> b!5224392 (= e!3251622 (not (= (head!11198 s!2326) (c!901653 r!7292))))))

(declare-fun b!5224393 () Bool)

(declare-fun e!3251625 () Bool)

(assert (=> b!5224393 (= e!3251625 (nullable!4984 r!7292))))

(declare-fun b!5224394 () Bool)

(declare-fun e!3251621 () Bool)

(assert (=> b!5224394 (= e!3251621 e!3251622)))

(declare-fun res!2218125 () Bool)

(assert (=> b!5224394 (=> res!2218125 e!3251622)))

(declare-fun call!368982 () Bool)

(assert (=> b!5224394 (= res!2218125 call!368982)))

(declare-fun bm!368977 () Bool)

(assert (=> bm!368977 (= call!368982 (isEmpty!32545 s!2326))))

(declare-fun b!5224395 () Bool)

(declare-fun e!3251623 () Bool)

(declare-fun e!3251624 () Bool)

(assert (=> b!5224395 (= e!3251623 e!3251624)))

(declare-fun c!901826 () Bool)

(assert (=> b!5224395 (= c!901826 ((_ is EmptyLang!14815) r!7292))))

(declare-fun b!5224396 () Bool)

(declare-fun res!2218128 () Bool)

(assert (=> b!5224396 (=> res!2218128 e!3251626)))

(assert (=> b!5224396 (= res!2218128 (not ((_ is ElementMatch!14815) r!7292)))))

(assert (=> b!5224396 (= e!3251624 e!3251626)))

(declare-fun d!1684203 () Bool)

(assert (=> d!1684203 e!3251623))

(declare-fun c!901825 () Bool)

(assert (=> d!1684203 (= c!901825 ((_ is EmptyExpr!14815) r!7292))))

(assert (=> d!1684203 (= lt!2144145 e!3251625)))

(declare-fun c!901824 () Bool)

(assert (=> d!1684203 (= c!901824 (isEmpty!32545 s!2326))))

(assert (=> d!1684203 (validRegex!6551 r!7292)))

(assert (=> d!1684203 (= (matchR!7000 r!7292 s!2326) lt!2144145)))

(declare-fun b!5224397 () Bool)

(declare-fun res!2218129 () Bool)

(assert (=> b!5224397 (=> (not res!2218129) (not e!3251627))))

(assert (=> b!5224397 (= res!2218129 (not call!368982))))

(declare-fun b!5224398 () Bool)

(assert (=> b!5224398 (= e!3251623 (= lt!2144145 call!368982))))

(declare-fun b!5224399 () Bool)

(assert (=> b!5224399 (= e!3251627 (= (head!11198 s!2326) (c!901653 r!7292)))))

(declare-fun b!5224400 () Bool)

(declare-fun res!2218124 () Bool)

(assert (=> b!5224400 (=> res!2218124 e!3251622)))

(declare-fun tail!10295 (List!60745) List!60745)

(assert (=> b!5224400 (= res!2218124 (not (isEmpty!32545 (tail!10295 s!2326))))))

(declare-fun b!5224401 () Bool)

(declare-fun derivativeStep!4061 (Regex!14815 C!29900) Regex!14815)

(assert (=> b!5224401 (= e!3251625 (matchR!7000 (derivativeStep!4061 r!7292 (head!11198 s!2326)) (tail!10295 s!2326)))))

(declare-fun b!5224402 () Bool)

(assert (=> b!5224402 (= e!3251624 (not lt!2144145))))

(declare-fun b!5224403 () Bool)

(assert (=> b!5224403 (= e!3251626 e!3251621)))

(declare-fun res!2218131 () Bool)

(assert (=> b!5224403 (=> (not res!2218131) (not e!3251621))))

(assert (=> b!5224403 (= res!2218131 (not lt!2144145))))

(declare-fun b!5224404 () Bool)

(declare-fun res!2218130 () Bool)

(assert (=> b!5224404 (=> (not res!2218130) (not e!3251627))))

(assert (=> b!5224404 (= res!2218130 (isEmpty!32545 (tail!10295 s!2326)))))

(assert (= (and d!1684203 c!901824) b!5224393))

(assert (= (and d!1684203 (not c!901824)) b!5224401))

(assert (= (and d!1684203 c!901825) b!5224398))

(assert (= (and d!1684203 (not c!901825)) b!5224395))

(assert (= (and b!5224395 c!901826) b!5224402))

(assert (= (and b!5224395 (not c!901826)) b!5224396))

(assert (= (and b!5224396 (not res!2218128)) b!5224391))

(assert (= (and b!5224391 res!2218126) b!5224397))

(assert (= (and b!5224397 res!2218129) b!5224404))

(assert (= (and b!5224404 res!2218130) b!5224399))

(assert (= (and b!5224391 (not res!2218127)) b!5224403))

(assert (= (and b!5224403 res!2218131) b!5224394))

(assert (= (and b!5224394 (not res!2218125)) b!5224400))

(assert (= (and b!5224400 (not res!2218124)) b!5224392))

(assert (= (or b!5224398 b!5224394 b!5224397) bm!368977))

(declare-fun m!6271260 () Bool)

(assert (=> b!5224393 m!6271260))

(assert (=> d!1684203 m!6271256))

(assert (=> d!1684203 m!6270852))

(declare-fun m!6271262 () Bool)

(assert (=> b!5224400 m!6271262))

(assert (=> b!5224400 m!6271262))

(declare-fun m!6271264 () Bool)

(assert (=> b!5224400 m!6271264))

(assert (=> b!5224404 m!6271262))

(assert (=> b!5224404 m!6271262))

(assert (=> b!5224404 m!6271264))

(assert (=> bm!368977 m!6271256))

(declare-fun m!6271266 () Bool)

(assert (=> b!5224399 m!6271266))

(assert (=> b!5224392 m!6271266))

(assert (=> b!5224401 m!6271266))

(assert (=> b!5224401 m!6271266))

(declare-fun m!6271268 () Bool)

(assert (=> b!5224401 m!6271268))

(assert (=> b!5224401 m!6271262))

(assert (=> b!5224401 m!6271268))

(assert (=> b!5224401 m!6271262))

(declare-fun m!6271270 () Bool)

(assert (=> b!5224401 m!6271270))

(assert (=> b!5223806 d!1684203))

(declare-fun d!1684205 () Bool)

(assert (=> d!1684205 (= (matchR!7000 r!7292 s!2326) (matchRSpec!1918 r!7292 s!2326))))

(declare-fun lt!2144148 () Unit!152540)

(declare-fun choose!38855 (Regex!14815 List!60745) Unit!152540)

(assert (=> d!1684205 (= lt!2144148 (choose!38855 r!7292 s!2326))))

(assert (=> d!1684205 (validRegex!6551 r!7292)))

(assert (=> d!1684205 (= (mainMatchTheorem!1918 r!7292 s!2326) lt!2144148)))

(declare-fun bs!1212982 () Bool)

(assert (= bs!1212982 d!1684205))

(assert (=> bs!1212982 m!6270840))

(assert (=> bs!1212982 m!6270838))

(declare-fun m!6271272 () Bool)

(assert (=> bs!1212982 m!6271272))

(assert (=> bs!1212982 m!6270852))

(assert (=> b!5223806 d!1684205))

(declare-fun d!1684207 () Bool)

(declare-fun c!901829 () Bool)

(assert (=> d!1684207 (= c!901829 (isEmpty!32545 s!2326))))

(declare-fun e!3251630 () Bool)

(assert (=> d!1684207 (= (matchZipper!1059 lt!2144074 s!2326) e!3251630)))

(declare-fun b!5224409 () Bool)

(declare-fun nullableZipper!1239 ((InoxSet Context!8398)) Bool)

(assert (=> b!5224409 (= e!3251630 (nullableZipper!1239 lt!2144074))))

(declare-fun b!5224410 () Bool)

(assert (=> b!5224410 (= e!3251630 (matchZipper!1059 (derivationStepZipper!1083 lt!2144074 (head!11198 s!2326)) (tail!10295 s!2326)))))

(assert (= (and d!1684207 c!901829) b!5224409))

(assert (= (and d!1684207 (not c!901829)) b!5224410))

(assert (=> d!1684207 m!6271256))

(declare-fun m!6271274 () Bool)

(assert (=> b!5224409 m!6271274))

(assert (=> b!5224410 m!6271266))

(assert (=> b!5224410 m!6271266))

(declare-fun m!6271276 () Bool)

(assert (=> b!5224410 m!6271276))

(assert (=> b!5224410 m!6271262))

(assert (=> b!5224410 m!6271276))

(assert (=> b!5224410 m!6271262))

(declare-fun m!6271278 () Bool)

(assert (=> b!5224410 m!6271278))

(assert (=> b!5223785 d!1684207))

(declare-fun d!1684209 () Bool)

(declare-fun c!901830 () Bool)

(assert (=> d!1684209 (= c!901830 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251631 () Bool)

(assert (=> d!1684209 (= (matchZipper!1059 lt!2144072 (t!373918 s!2326)) e!3251631)))

(declare-fun b!5224411 () Bool)

(assert (=> b!5224411 (= e!3251631 (nullableZipper!1239 lt!2144072))))

(declare-fun b!5224412 () Bool)

(assert (=> b!5224412 (= e!3251631 (matchZipper!1059 (derivationStepZipper!1083 lt!2144072 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684209 c!901830) b!5224411))

(assert (= (and d!1684209 (not c!901830)) b!5224412))

(declare-fun m!6271280 () Bool)

(assert (=> d!1684209 m!6271280))

(declare-fun m!6271282 () Bool)

(assert (=> b!5224411 m!6271282))

(declare-fun m!6271284 () Bool)

(assert (=> b!5224412 m!6271284))

(assert (=> b!5224412 m!6271284))

(declare-fun m!6271286 () Bool)

(assert (=> b!5224412 m!6271286))

(declare-fun m!6271288 () Bool)

(assert (=> b!5224412 m!6271288))

(assert (=> b!5224412 m!6271286))

(assert (=> b!5224412 m!6271288))

(declare-fun m!6271290 () Bool)

(assert (=> b!5224412 m!6271290))

(assert (=> b!5223785 d!1684209))

(declare-fun bs!1212983 () Bool)

(declare-fun d!1684211 () Bool)

(assert (= bs!1212983 (and d!1684211 d!1684191)))

(declare-fun lambda!262275 () Int)

(assert (=> bs!1212983 (= lambda!262275 lambda!262263)))

(declare-fun bs!1212984 () Bool)

(assert (= bs!1212984 (and d!1684211 d!1684199)))

(assert (=> bs!1212984 (= lambda!262275 lambda!262266)))

(declare-fun b!5224433 () Bool)

(declare-fun e!3251649 () Bool)

(declare-fun e!3251647 () Bool)

(assert (=> b!5224433 (= e!3251649 e!3251647)))

(declare-fun c!901842 () Bool)

(assert (=> b!5224433 (= c!901842 (isEmpty!32542 (tail!10294 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5224434 () Bool)

(declare-fun e!3251648 () Regex!14815)

(assert (=> b!5224434 (= e!3251648 (Union!14815 (h!67068 (unfocusZipperList!257 zl!343)) (generalisedUnion!744 (t!373917 (unfocusZipperList!257 zl!343)))))))

(declare-fun b!5224435 () Bool)

(declare-fun e!3251644 () Regex!14815)

(assert (=> b!5224435 (= e!3251644 e!3251648)))

(declare-fun c!901841 () Bool)

(assert (=> b!5224435 (= c!901841 ((_ is Cons!60620) (unfocusZipperList!257 zl!343)))))

(declare-fun b!5224436 () Bool)

(declare-fun lt!2144151 () Regex!14815)

(declare-fun isEmptyLang!784 (Regex!14815) Bool)

(assert (=> b!5224436 (= e!3251649 (isEmptyLang!784 lt!2144151))))

(declare-fun b!5224438 () Bool)

(assert (=> b!5224438 (= e!3251647 (= lt!2144151 (head!11197 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5224439 () Bool)

(declare-fun e!3251645 () Bool)

(assert (=> b!5224439 (= e!3251645 e!3251649)))

(declare-fun c!901839 () Bool)

(assert (=> b!5224439 (= c!901839 (isEmpty!32542 (unfocusZipperList!257 zl!343)))))

(declare-fun b!5224440 () Bool)

(declare-fun e!3251646 () Bool)

(assert (=> b!5224440 (= e!3251646 (isEmpty!32542 (t!373917 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5224441 () Bool)

(declare-fun isUnion!216 (Regex!14815) Bool)

(assert (=> b!5224441 (= e!3251647 (isUnion!216 lt!2144151))))

(declare-fun b!5224442 () Bool)

(assert (=> b!5224442 (= e!3251644 (h!67068 (unfocusZipperList!257 zl!343)))))

(assert (=> d!1684211 e!3251645))

(declare-fun res!2218137 () Bool)

(assert (=> d!1684211 (=> (not res!2218137) (not e!3251645))))

(assert (=> d!1684211 (= res!2218137 (validRegex!6551 lt!2144151))))

(assert (=> d!1684211 (= lt!2144151 e!3251644)))

(declare-fun c!901840 () Bool)

(assert (=> d!1684211 (= c!901840 e!3251646)))

(declare-fun res!2218136 () Bool)

(assert (=> d!1684211 (=> (not res!2218136) (not e!3251646))))

(assert (=> d!1684211 (= res!2218136 ((_ is Cons!60620) (unfocusZipperList!257 zl!343)))))

(assert (=> d!1684211 (forall!14247 (unfocusZipperList!257 zl!343) lambda!262275)))

(assert (=> d!1684211 (= (generalisedUnion!744 (unfocusZipperList!257 zl!343)) lt!2144151)))

(declare-fun b!5224437 () Bool)

(assert (=> b!5224437 (= e!3251648 EmptyLang!14815)))

(assert (= (and d!1684211 res!2218136) b!5224440))

(assert (= (and d!1684211 c!901840) b!5224442))

(assert (= (and d!1684211 (not c!901840)) b!5224435))

(assert (= (and b!5224435 c!901841) b!5224434))

(assert (= (and b!5224435 (not c!901841)) b!5224437))

(assert (= (and d!1684211 res!2218137) b!5224439))

(assert (= (and b!5224439 c!901839) b!5224436))

(assert (= (and b!5224439 (not c!901839)) b!5224433))

(assert (= (and b!5224433 c!901842) b!5224438))

(assert (= (and b!5224433 (not c!901842)) b!5224441))

(declare-fun m!6271292 () Bool)

(assert (=> b!5224436 m!6271292))

(declare-fun m!6271294 () Bool)

(assert (=> b!5224440 m!6271294))

(assert (=> b!5224438 m!6270834))

(declare-fun m!6271296 () Bool)

(assert (=> b!5224438 m!6271296))

(declare-fun m!6271298 () Bool)

(assert (=> b!5224441 m!6271298))

(declare-fun m!6271300 () Bool)

(assert (=> d!1684211 m!6271300))

(assert (=> d!1684211 m!6270834))

(declare-fun m!6271302 () Bool)

(assert (=> d!1684211 m!6271302))

(assert (=> b!5224433 m!6270834))

(declare-fun m!6271304 () Bool)

(assert (=> b!5224433 m!6271304))

(assert (=> b!5224433 m!6271304))

(declare-fun m!6271306 () Bool)

(assert (=> b!5224433 m!6271306))

(assert (=> b!5224439 m!6270834))

(declare-fun m!6271308 () Bool)

(assert (=> b!5224439 m!6271308))

(declare-fun m!6271310 () Bool)

(assert (=> b!5224434 m!6271310))

(assert (=> b!5223807 d!1684211))

(declare-fun bs!1212985 () Bool)

(declare-fun d!1684213 () Bool)

(assert (= bs!1212985 (and d!1684213 d!1684191)))

(declare-fun lambda!262278 () Int)

(assert (=> bs!1212985 (= lambda!262278 lambda!262263)))

(declare-fun bs!1212986 () Bool)

(assert (= bs!1212986 (and d!1684213 d!1684199)))

(assert (=> bs!1212986 (= lambda!262278 lambda!262266)))

(declare-fun bs!1212987 () Bool)

(assert (= bs!1212987 (and d!1684213 d!1684211)))

(assert (=> bs!1212987 (= lambda!262278 lambda!262275)))

(declare-fun lt!2144154 () List!60744)

(assert (=> d!1684213 (forall!14247 lt!2144154 lambda!262278)))

(declare-fun e!3251652 () List!60744)

(assert (=> d!1684213 (= lt!2144154 e!3251652)))

(declare-fun c!901845 () Bool)

(assert (=> d!1684213 (= c!901845 ((_ is Cons!60622) zl!343))))

(assert (=> d!1684213 (= (unfocusZipperList!257 zl!343) lt!2144154)))

(declare-fun b!5224447 () Bool)

(assert (=> b!5224447 (= e!3251652 (Cons!60620 (generalisedConcat!484 (exprs!4699 (h!67070 zl!343))) (unfocusZipperList!257 (t!373919 zl!343))))))

(declare-fun b!5224448 () Bool)

(assert (=> b!5224448 (= e!3251652 Nil!60620)))

(assert (= (and d!1684213 c!901845) b!5224447))

(assert (= (and d!1684213 (not c!901845)) b!5224448))

(declare-fun m!6271312 () Bool)

(assert (=> d!1684213 m!6271312))

(assert (=> b!5224447 m!6270904))

(declare-fun m!6271314 () Bool)

(assert (=> b!5224447 m!6271314))

(assert (=> b!5223807 d!1684213))

(declare-fun d!1684215 () Bool)

(declare-fun nullableFct!1391 (Regex!14815) Bool)

(assert (=> d!1684215 (= (nullable!4984 (regTwo!30143 (regOne!30142 r!7292))) (nullableFct!1391 (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun bs!1212988 () Bool)

(assert (= bs!1212988 d!1684215))

(declare-fun m!6271316 () Bool)

(assert (=> bs!1212988 m!6271316))

(assert (=> b!5223792 d!1684215))

(declare-fun d!1684217 () Bool)

(declare-fun choose!38856 ((InoxSet Context!8398) Int) (InoxSet Context!8398))

(assert (=> d!1684217 (= (flatMap!542 lt!2144088 lambda!262229) (choose!38856 lt!2144088 lambda!262229))))

(declare-fun bs!1212989 () Bool)

(assert (= bs!1212989 d!1684217))

(declare-fun m!6271318 () Bool)

(assert (=> bs!1212989 m!6271318))

(assert (=> b!5223792 d!1684217))

(declare-fun call!368985 () (InoxSet Context!8398))

(declare-fun b!5224459 () Bool)

(declare-fun e!3251661 () (InoxSet Context!8398))

(assert (=> b!5224459 (= e!3251661 ((_ map or) call!368985 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (h!67069 s!2326))))))

(declare-fun b!5224460 () Bool)

(declare-fun e!3251660 () Bool)

(assert (=> b!5224460 (= e!3251660 (nullable!4984 (h!67068 (exprs!4699 lt!2144085))))))

(declare-fun d!1684219 () Bool)

(declare-fun c!901850 () Bool)

(assert (=> d!1684219 (= c!901850 e!3251660)))

(declare-fun res!2218140 () Bool)

(assert (=> d!1684219 (=> (not res!2218140) (not e!3251660))))

(assert (=> d!1684219 (= res!2218140 ((_ is Cons!60620) (exprs!4699 lt!2144085)))))

(assert (=> d!1684219 (= (derivationStepZipperUp!187 lt!2144085 (h!67069 s!2326)) e!3251661)))

(declare-fun b!5224461 () Bool)

(declare-fun e!3251659 () (InoxSet Context!8398))

(assert (=> b!5224461 (= e!3251659 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368980 () Bool)

(assert (=> bm!368980 (= call!368985 (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144085)) (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (h!67069 s!2326)))))

(declare-fun b!5224462 () Bool)

(assert (=> b!5224462 (= e!3251661 e!3251659)))

(declare-fun c!901851 () Bool)

(assert (=> b!5224462 (= c!901851 ((_ is Cons!60620) (exprs!4699 lt!2144085)))))

(declare-fun b!5224463 () Bool)

(assert (=> b!5224463 (= e!3251659 call!368985)))

(assert (= (and d!1684219 res!2218140) b!5224460))

(assert (= (and d!1684219 c!901850) b!5224459))

(assert (= (and d!1684219 (not c!901850)) b!5224462))

(assert (= (and b!5224462 c!901851) b!5224463))

(assert (= (and b!5224462 (not c!901851)) b!5224461))

(assert (= (or b!5224459 b!5224463) bm!368980))

(declare-fun m!6271320 () Bool)

(assert (=> b!5224459 m!6271320))

(declare-fun m!6271322 () Bool)

(assert (=> b!5224460 m!6271322))

(declare-fun m!6271324 () Bool)

(assert (=> bm!368980 m!6271324))

(assert (=> b!5223792 d!1684219))

(declare-fun d!1684221 () Bool)

(assert (=> d!1684221 (= (nullable!4984 (regOne!30143 (regOne!30142 r!7292))) (nullableFct!1391 (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun bs!1212990 () Bool)

(assert (= bs!1212990 d!1684221))

(declare-fun m!6271326 () Bool)

(assert (=> bs!1212990 m!6271326))

(assert (=> b!5223792 d!1684221))

(declare-fun call!368986 () (InoxSet Context!8398))

(declare-fun b!5224464 () Bool)

(declare-fun e!3251664 () (InoxSet Context!8398))

(assert (=> b!5224464 (= e!3251664 ((_ map or) call!368986 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (h!67069 s!2326))))))

(declare-fun b!5224465 () Bool)

(declare-fun e!3251663 () Bool)

(assert (=> b!5224465 (= e!3251663 (nullable!4984 (h!67068 (exprs!4699 lt!2144070))))))

(declare-fun d!1684223 () Bool)

(declare-fun c!901852 () Bool)

(assert (=> d!1684223 (= c!901852 e!3251663)))

(declare-fun res!2218141 () Bool)

(assert (=> d!1684223 (=> (not res!2218141) (not e!3251663))))

(assert (=> d!1684223 (= res!2218141 ((_ is Cons!60620) (exprs!4699 lt!2144070)))))

(assert (=> d!1684223 (= (derivationStepZipperUp!187 lt!2144070 (h!67069 s!2326)) e!3251664)))

(declare-fun b!5224466 () Bool)

(declare-fun e!3251662 () (InoxSet Context!8398))

(assert (=> b!5224466 (= e!3251662 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368981 () Bool)

(assert (=> bm!368981 (= call!368986 (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144070)) (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (h!67069 s!2326)))))

(declare-fun b!5224467 () Bool)

(assert (=> b!5224467 (= e!3251664 e!3251662)))

(declare-fun c!901853 () Bool)

(assert (=> b!5224467 (= c!901853 ((_ is Cons!60620) (exprs!4699 lt!2144070)))))

(declare-fun b!5224468 () Bool)

(assert (=> b!5224468 (= e!3251662 call!368986)))

(assert (= (and d!1684223 res!2218141) b!5224465))

(assert (= (and d!1684223 c!901852) b!5224464))

(assert (= (and d!1684223 (not c!901852)) b!5224467))

(assert (= (and b!5224467 c!901853) b!5224468))

(assert (= (and b!5224467 (not c!901853)) b!5224466))

(assert (= (or b!5224464 b!5224468) bm!368981))

(declare-fun m!6271328 () Bool)

(assert (=> b!5224464 m!6271328))

(declare-fun m!6271330 () Bool)

(assert (=> b!5224465 m!6271330))

(declare-fun m!6271332 () Bool)

(assert (=> bm!368981 m!6271332))

(assert (=> b!5223792 d!1684223))

(declare-fun d!1684225 () Bool)

(assert (=> d!1684225 (= (flatMap!542 lt!2144074 lambda!262229) (choose!38856 lt!2144074 lambda!262229))))

(declare-fun bs!1212991 () Bool)

(assert (= bs!1212991 d!1684225))

(declare-fun m!6271334 () Bool)

(assert (=> bs!1212991 m!6271334))

(assert (=> b!5223792 d!1684225))

(declare-fun d!1684227 () Bool)

(declare-fun dynLambda!23953 (Int Context!8398) (InoxSet Context!8398))

(assert (=> d!1684227 (= (flatMap!542 lt!2144074 lambda!262229) (dynLambda!23953 lambda!262229 lt!2144085))))

(declare-fun lt!2144157 () Unit!152540)

(declare-fun choose!38857 ((InoxSet Context!8398) Context!8398 Int) Unit!152540)

(assert (=> d!1684227 (= lt!2144157 (choose!38857 lt!2144074 lt!2144085 lambda!262229))))

(assert (=> d!1684227 (= lt!2144074 (store ((as const (Array Context!8398 Bool)) false) lt!2144085 true))))

(assert (=> d!1684227 (= (lemmaFlatMapOnSingletonSet!74 lt!2144074 lt!2144085 lambda!262229) lt!2144157)))

(declare-fun b_lambda!201997 () Bool)

(assert (=> (not b_lambda!201997) (not d!1684227)))

(declare-fun bs!1212992 () Bool)

(assert (= bs!1212992 d!1684227))

(assert (=> bs!1212992 m!6270884))

(declare-fun m!6271336 () Bool)

(assert (=> bs!1212992 m!6271336))

(declare-fun m!6271338 () Bool)

(assert (=> bs!1212992 m!6271338))

(assert (=> bs!1212992 m!6270902))

(assert (=> b!5223792 d!1684227))

(declare-fun bs!1212993 () Bool)

(declare-fun d!1684229 () Bool)

(assert (= bs!1212993 (and d!1684229 b!5223802)))

(declare-fun lambda!262281 () Int)

(assert (=> bs!1212993 (= lambda!262281 lambda!262229)))

(assert (=> d!1684229 true))

(assert (=> d!1684229 (= (derivationStepZipper!1083 lt!2144074 (h!67069 s!2326)) (flatMap!542 lt!2144074 lambda!262281))))

(declare-fun bs!1212994 () Bool)

(assert (= bs!1212994 d!1684229))

(declare-fun m!6271340 () Bool)

(assert (=> bs!1212994 m!6271340))

(assert (=> b!5223792 d!1684229))

(declare-fun d!1684231 () Bool)

(assert (=> d!1684231 (= (flatMap!542 lt!2144088 lambda!262229) (dynLambda!23953 lambda!262229 lt!2144070))))

(declare-fun lt!2144158 () Unit!152540)

(assert (=> d!1684231 (= lt!2144158 (choose!38857 lt!2144088 lt!2144070 lambda!262229))))

(assert (=> d!1684231 (= lt!2144088 (store ((as const (Array Context!8398 Bool)) false) lt!2144070 true))))

(assert (=> d!1684231 (= (lemmaFlatMapOnSingletonSet!74 lt!2144088 lt!2144070 lambda!262229) lt!2144158)))

(declare-fun b_lambda!201999 () Bool)

(assert (=> (not b_lambda!201999) (not d!1684231)))

(declare-fun bs!1212995 () Bool)

(assert (= bs!1212995 d!1684231))

(assert (=> bs!1212995 m!6270894))

(declare-fun m!6271342 () Bool)

(assert (=> bs!1212995 m!6271342))

(declare-fun m!6271344 () Bool)

(assert (=> bs!1212995 m!6271344))

(assert (=> bs!1212995 m!6270896))

(assert (=> b!5223792 d!1684231))

(declare-fun d!1684233 () Bool)

(declare-fun c!901856 () Bool)

(assert (=> d!1684233 (= c!901856 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251665 () Bool)

(assert (=> d!1684233 (= (matchZipper!1059 lt!2144073 (t!373918 s!2326)) e!3251665)))

(declare-fun b!5224471 () Bool)

(assert (=> b!5224471 (= e!3251665 (nullableZipper!1239 lt!2144073))))

(declare-fun b!5224472 () Bool)

(assert (=> b!5224472 (= e!3251665 (matchZipper!1059 (derivationStepZipper!1083 lt!2144073 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684233 c!901856) b!5224471))

(assert (= (and d!1684233 (not c!901856)) b!5224472))

(assert (=> d!1684233 m!6271280))

(declare-fun m!6271346 () Bool)

(assert (=> b!5224471 m!6271346))

(assert (=> b!5224472 m!6271284))

(assert (=> b!5224472 m!6271284))

(declare-fun m!6271348 () Bool)

(assert (=> b!5224472 m!6271348))

(assert (=> b!5224472 m!6271288))

(assert (=> b!5224472 m!6271348))

(assert (=> b!5224472 m!6271288))

(declare-fun m!6271350 () Bool)

(assert (=> b!5224472 m!6271350))

(assert (=> b!5223794 d!1684233))

(declare-fun d!1684235 () Bool)

(declare-fun c!901857 () Bool)

(assert (=> d!1684235 (= c!901857 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251666 () Bool)

(assert (=> d!1684235 (= (matchZipper!1059 lt!2144084 (t!373918 s!2326)) e!3251666)))

(declare-fun b!5224473 () Bool)

(assert (=> b!5224473 (= e!3251666 (nullableZipper!1239 lt!2144084))))

(declare-fun b!5224474 () Bool)

(assert (=> b!5224474 (= e!3251666 (matchZipper!1059 (derivationStepZipper!1083 lt!2144084 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684235 c!901857) b!5224473))

(assert (= (and d!1684235 (not c!901857)) b!5224474))

(assert (=> d!1684235 m!6271280))

(declare-fun m!6271352 () Bool)

(assert (=> b!5224473 m!6271352))

(assert (=> b!5224474 m!6271284))

(assert (=> b!5224474 m!6271284))

(declare-fun m!6271354 () Bool)

(assert (=> b!5224474 m!6271354))

(assert (=> b!5224474 m!6271288))

(assert (=> b!5224474 m!6271354))

(assert (=> b!5224474 m!6271288))

(declare-fun m!6271356 () Bool)

(assert (=> b!5224474 m!6271356))

(assert (=> b!5223794 d!1684235))

(declare-fun d!1684237 () Bool)

(declare-fun c!901858 () Bool)

(assert (=> d!1684237 (= c!901858 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251667 () Bool)

(assert (=> d!1684237 (= (matchZipper!1059 lt!2144069 (t!373918 s!2326)) e!3251667)))

(declare-fun b!5224475 () Bool)

(assert (=> b!5224475 (= e!3251667 (nullableZipper!1239 lt!2144069))))

(declare-fun b!5224476 () Bool)

(assert (=> b!5224476 (= e!3251667 (matchZipper!1059 (derivationStepZipper!1083 lt!2144069 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684237 c!901858) b!5224475))

(assert (= (and d!1684237 (not c!901858)) b!5224476))

(assert (=> d!1684237 m!6271280))

(declare-fun m!6271358 () Bool)

(assert (=> b!5224475 m!6271358))

(assert (=> b!5224476 m!6271284))

(assert (=> b!5224476 m!6271284))

(declare-fun m!6271360 () Bool)

(assert (=> b!5224476 m!6271360))

(assert (=> b!5224476 m!6271288))

(assert (=> b!5224476 m!6271360))

(assert (=> b!5224476 m!6271288))

(declare-fun m!6271362 () Bool)

(assert (=> b!5224476 m!6271362))

(assert (=> b!5223794 d!1684237))

(declare-fun e!3251670 () Bool)

(declare-fun d!1684239 () Bool)

(assert (=> d!1684239 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144093) (t!373918 s!2326)) e!3251670)))

(declare-fun res!2218144 () Bool)

(assert (=> d!1684239 (=> res!2218144 e!3251670)))

(assert (=> d!1684239 (= res!2218144 (matchZipper!1059 lt!2144069 (t!373918 s!2326)))))

(declare-fun lt!2144161 () Unit!152540)

(declare-fun choose!38858 ((InoxSet Context!8398) (InoxSet Context!8398) List!60745) Unit!152540)

(assert (=> d!1684239 (= lt!2144161 (choose!38858 lt!2144069 lt!2144093 (t!373918 s!2326)))))

(assert (=> d!1684239 (= (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144069 lt!2144093 (t!373918 s!2326)) lt!2144161)))

(declare-fun b!5224479 () Bool)

(assert (=> b!5224479 (= e!3251670 (matchZipper!1059 lt!2144093 (t!373918 s!2326)))))

(assert (= (and d!1684239 (not res!2218144)) b!5224479))

(declare-fun m!6271364 () Bool)

(assert (=> d!1684239 m!6271364))

(assert (=> d!1684239 m!6270922))

(declare-fun m!6271366 () Bool)

(assert (=> d!1684239 m!6271366))

(assert (=> b!5224479 m!6270856))

(assert (=> b!5223794 d!1684239))

(declare-fun d!1684241 () Bool)

(declare-fun c!901859 () Bool)

(assert (=> d!1684241 (= c!901859 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251671 () Bool)

(assert (=> d!1684241 (= (matchZipper!1059 lt!2144093 (t!373918 s!2326)) e!3251671)))

(declare-fun b!5224480 () Bool)

(assert (=> b!5224480 (= e!3251671 (nullableZipper!1239 lt!2144093))))

(declare-fun b!5224481 () Bool)

(assert (=> b!5224481 (= e!3251671 (matchZipper!1059 (derivationStepZipper!1083 lt!2144093 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684241 c!901859) b!5224480))

(assert (= (and d!1684241 (not c!901859)) b!5224481))

(assert (=> d!1684241 m!6271280))

(declare-fun m!6271368 () Bool)

(assert (=> b!5224480 m!6271368))

(assert (=> b!5224481 m!6271284))

(assert (=> b!5224481 m!6271284))

(declare-fun m!6271370 () Bool)

(assert (=> b!5224481 m!6271370))

(assert (=> b!5224481 m!6271288))

(assert (=> b!5224481 m!6271370))

(assert (=> b!5224481 m!6271288))

(declare-fun m!6271372 () Bool)

(assert (=> b!5224481 m!6271372))

(assert (=> b!5223810 d!1684241))

(declare-fun bs!1212996 () Bool)

(declare-fun d!1684243 () Bool)

(assert (= bs!1212996 (and d!1684243 d!1684191)))

(declare-fun lambda!262282 () Int)

(assert (=> bs!1212996 (= lambda!262282 lambda!262263)))

(declare-fun bs!1212997 () Bool)

(assert (= bs!1212997 (and d!1684243 d!1684199)))

(assert (=> bs!1212997 (= lambda!262282 lambda!262266)))

(declare-fun bs!1212998 () Bool)

(assert (= bs!1212998 (and d!1684243 d!1684211)))

(assert (=> bs!1212998 (= lambda!262282 lambda!262275)))

(declare-fun bs!1212999 () Bool)

(assert (= bs!1212999 (and d!1684243 d!1684213)))

(assert (=> bs!1212999 (= lambda!262282 lambda!262278)))

(assert (=> d!1684243 (= (inv!80284 (h!67070 zl!343)) (forall!14247 (exprs!4699 (h!67070 zl!343)) lambda!262282))))

(declare-fun bs!1213000 () Bool)

(assert (= bs!1213000 d!1684243))

(declare-fun m!6271374 () Bool)

(assert (=> bs!1213000 m!6271374))

(assert (=> b!5223790 d!1684243))

(assert (=> b!5223778 d!1684241))

(declare-fun d!1684245 () Bool)

(declare-fun c!901860 () Bool)

(assert (=> d!1684245 (= c!901860 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251672 () Bool)

(assert (=> d!1684245 (= (matchZipper!1059 lt!2144075 (t!373918 s!2326)) e!3251672)))

(declare-fun b!5224482 () Bool)

(assert (=> b!5224482 (= e!3251672 (nullableZipper!1239 lt!2144075))))

(declare-fun b!5224483 () Bool)

(assert (=> b!5224483 (= e!3251672 (matchZipper!1059 (derivationStepZipper!1083 lt!2144075 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684245 c!901860) b!5224482))

(assert (= (and d!1684245 (not c!901860)) b!5224483))

(assert (=> d!1684245 m!6271280))

(declare-fun m!6271376 () Bool)

(assert (=> b!5224482 m!6271376))

(assert (=> b!5224483 m!6271284))

(assert (=> b!5224483 m!6271284))

(declare-fun m!6271378 () Bool)

(assert (=> b!5224483 m!6271378))

(assert (=> b!5224483 m!6271288))

(assert (=> b!5224483 m!6271378))

(assert (=> b!5224483 m!6271288))

(declare-fun m!6271380 () Bool)

(assert (=> b!5224483 m!6271380))

(assert (=> b!5223799 d!1684245))

(declare-fun b!5224502 () Bool)

(declare-fun lt!2144170 () Unit!152540)

(declare-fun lt!2144168 () Unit!152540)

(assert (=> b!5224502 (= lt!2144170 lt!2144168)))

(declare-fun ++!13219 (List!60745 List!60745) List!60745)

(assert (=> b!5224502 (= (++!13219 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1634 (List!60745 C!29900 List!60745 List!60745) Unit!152540)

(assert (=> b!5224502 (= lt!2144168 (lemmaMoveElementToOtherListKeepsConcatEq!1634 Nil!60621 (h!67069 s!2326) (t!373918 s!2326) s!2326))))

(declare-fun e!3251687 () Option!14926)

(assert (=> b!5224502 (= e!3251687 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326) s!2326))))

(declare-fun b!5224503 () Bool)

(assert (=> b!5224503 (= e!3251687 None!14925)))

(declare-fun b!5224504 () Bool)

(declare-fun e!3251684 () Option!14926)

(assert (=> b!5224504 (= e!3251684 e!3251687)))

(declare-fun c!901865 () Bool)

(assert (=> b!5224504 (= c!901865 ((_ is Nil!60621) s!2326))))

(declare-fun b!5224505 () Bool)

(declare-fun res!2218156 () Bool)

(declare-fun e!3251683 () Bool)

(assert (=> b!5224505 (=> (not res!2218156) (not e!3251683))))

(declare-fun lt!2144169 () Option!14926)

(declare-fun get!20832 (Option!14926) tuple2!64028)

(assert (=> b!5224505 (= res!2218156 (matchR!7000 (regOne!30142 r!7292) (_1!35317 (get!20832 lt!2144169))))))

(declare-fun b!5224506 () Bool)

(declare-fun res!2218155 () Bool)

(assert (=> b!5224506 (=> (not res!2218155) (not e!3251683))))

(assert (=> b!5224506 (= res!2218155 (matchR!7000 (regTwo!30142 r!7292) (_2!35317 (get!20832 lt!2144169))))))

(declare-fun b!5224507 () Bool)

(declare-fun e!3251686 () Bool)

(assert (=> b!5224507 (= e!3251686 (matchR!7000 (regTwo!30142 r!7292) s!2326))))

(declare-fun b!5224509 () Bool)

(assert (=> b!5224509 (= e!3251684 (Some!14925 (tuple2!64029 Nil!60621 s!2326)))))

(declare-fun b!5224510 () Bool)

(declare-fun e!3251685 () Bool)

(assert (=> b!5224510 (= e!3251685 (not (isDefined!11629 lt!2144169)))))

(declare-fun d!1684247 () Bool)

(assert (=> d!1684247 e!3251685))

(declare-fun res!2218158 () Bool)

(assert (=> d!1684247 (=> res!2218158 e!3251685)))

(assert (=> d!1684247 (= res!2218158 e!3251683)))

(declare-fun res!2218159 () Bool)

(assert (=> d!1684247 (=> (not res!2218159) (not e!3251683))))

(assert (=> d!1684247 (= res!2218159 (isDefined!11629 lt!2144169))))

(assert (=> d!1684247 (= lt!2144169 e!3251684)))

(declare-fun c!901866 () Bool)

(assert (=> d!1684247 (= c!901866 e!3251686)))

(declare-fun res!2218157 () Bool)

(assert (=> d!1684247 (=> (not res!2218157) (not e!3251686))))

(assert (=> d!1684247 (= res!2218157 (matchR!7000 (regOne!30142 r!7292) Nil!60621))))

(assert (=> d!1684247 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684247 (= (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326) lt!2144169)))

(declare-fun b!5224508 () Bool)

(assert (=> b!5224508 (= e!3251683 (= (++!13219 (_1!35317 (get!20832 lt!2144169)) (_2!35317 (get!20832 lt!2144169))) s!2326))))

(assert (= (and d!1684247 res!2218157) b!5224507))

(assert (= (and d!1684247 c!901866) b!5224509))

(assert (= (and d!1684247 (not c!901866)) b!5224504))

(assert (= (and b!5224504 c!901865) b!5224503))

(assert (= (and b!5224504 (not c!901865)) b!5224502))

(assert (= (and d!1684247 res!2218159) b!5224505))

(assert (= (and b!5224505 res!2218156) b!5224506))

(assert (= (and b!5224506 res!2218155) b!5224508))

(assert (= (and d!1684247 (not res!2218158)) b!5224510))

(declare-fun m!6271382 () Bool)

(assert (=> b!5224508 m!6271382))

(declare-fun m!6271384 () Bool)

(assert (=> b!5224508 m!6271384))

(declare-fun m!6271386 () Bool)

(assert (=> b!5224507 m!6271386))

(declare-fun m!6271388 () Bool)

(assert (=> b!5224502 m!6271388))

(assert (=> b!5224502 m!6271388))

(declare-fun m!6271390 () Bool)

(assert (=> b!5224502 m!6271390))

(declare-fun m!6271392 () Bool)

(assert (=> b!5224502 m!6271392))

(assert (=> b!5224502 m!6271388))

(declare-fun m!6271394 () Bool)

(assert (=> b!5224502 m!6271394))

(declare-fun m!6271396 () Bool)

(assert (=> d!1684247 m!6271396))

(declare-fun m!6271398 () Bool)

(assert (=> d!1684247 m!6271398))

(declare-fun m!6271400 () Bool)

(assert (=> d!1684247 m!6271400))

(assert (=> b!5224505 m!6271382))

(declare-fun m!6271402 () Bool)

(assert (=> b!5224505 m!6271402))

(assert (=> b!5224506 m!6271382))

(declare-fun m!6271404 () Bool)

(assert (=> b!5224506 m!6271404))

(assert (=> b!5224510 m!6271396))

(assert (=> b!5223795 d!1684247))

(declare-fun d!1684249 () Bool)

(declare-fun choose!38859 (Int) Bool)

(assert (=> d!1684249 (= (Exists!1996 lambda!262228) (choose!38859 lambda!262228))))

(declare-fun bs!1213001 () Bool)

(assert (= bs!1213001 d!1684249))

(declare-fun m!6271406 () Bool)

(assert (=> bs!1213001 m!6271406))

(assert (=> b!5223795 d!1684249))

(declare-fun bs!1213002 () Bool)

(declare-fun d!1684251 () Bool)

(assert (= bs!1213002 (and d!1684251 b!5223795)))

(declare-fun lambda!262287 () Int)

(assert (=> bs!1213002 (= lambda!262287 lambda!262227)))

(assert (=> bs!1213002 (not (= lambda!262287 lambda!262228))))

(declare-fun bs!1213003 () Bool)

(assert (= bs!1213003 (and d!1684251 b!5224354)))

(assert (=> bs!1213003 (not (= lambda!262287 lambda!262271))))

(declare-fun bs!1213004 () Bool)

(assert (= bs!1213004 (and d!1684251 b!5224362)))

(assert (=> bs!1213004 (not (= lambda!262287 lambda!262272))))

(assert (=> d!1684251 true))

(assert (=> d!1684251 true))

(assert (=> d!1684251 true))

(declare-fun lambda!262288 () Int)

(assert (=> bs!1213002 (= lambda!262288 lambda!262228)))

(assert (=> bs!1213003 (not (= lambda!262288 lambda!262271))))

(assert (=> bs!1213004 (= lambda!262288 lambda!262272)))

(assert (=> bs!1213002 (not (= lambda!262288 lambda!262227))))

(declare-fun bs!1213005 () Bool)

(assert (= bs!1213005 d!1684251))

(assert (=> bs!1213005 (not (= lambda!262288 lambda!262287))))

(assert (=> d!1684251 true))

(assert (=> d!1684251 true))

(assert (=> d!1684251 true))

(assert (=> d!1684251 (= (Exists!1996 lambda!262287) (Exists!1996 lambda!262288))))

(declare-fun lt!2144173 () Unit!152540)

(declare-fun choose!38860 (Regex!14815 Regex!14815 List!60745) Unit!152540)

(assert (=> d!1684251 (= lt!2144173 (choose!38860 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326))))

(assert (=> d!1684251 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684251 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!650 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326) lt!2144173)))

(declare-fun m!6271408 () Bool)

(assert (=> bs!1213005 m!6271408))

(declare-fun m!6271410 () Bool)

(assert (=> bs!1213005 m!6271410))

(declare-fun m!6271412 () Bool)

(assert (=> bs!1213005 m!6271412))

(assert (=> bs!1213005 m!6271400))

(assert (=> b!5223795 d!1684251))

(declare-fun d!1684253 () Bool)

(declare-fun isEmpty!32546 (Option!14926) Bool)

(assert (=> d!1684253 (= (isDefined!11629 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326)) (not (isEmpty!32546 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326))))))

(declare-fun bs!1213006 () Bool)

(assert (= bs!1213006 d!1684253))

(assert (=> bs!1213006 m!6270866))

(declare-fun m!6271414 () Bool)

(assert (=> bs!1213006 m!6271414))

(assert (=> b!5223795 d!1684253))

(declare-fun bs!1213007 () Bool)

(declare-fun d!1684255 () Bool)

(assert (= bs!1213007 (and d!1684255 b!5223795)))

(declare-fun lambda!262291 () Int)

(assert (=> bs!1213007 (not (= lambda!262291 lambda!262228))))

(declare-fun bs!1213008 () Bool)

(assert (= bs!1213008 (and d!1684255 b!5224354)))

(assert (=> bs!1213008 (not (= lambda!262291 lambda!262271))))

(declare-fun bs!1213009 () Bool)

(assert (= bs!1213009 (and d!1684255 b!5224362)))

(assert (=> bs!1213009 (not (= lambda!262291 lambda!262272))))

(declare-fun bs!1213010 () Bool)

(assert (= bs!1213010 (and d!1684255 d!1684251)))

(assert (=> bs!1213010 (not (= lambda!262291 lambda!262288))))

(assert (=> bs!1213007 (= lambda!262291 lambda!262227)))

(assert (=> bs!1213010 (= lambda!262291 lambda!262287)))

(assert (=> d!1684255 true))

(assert (=> d!1684255 true))

(assert (=> d!1684255 true))

(assert (=> d!1684255 (= (isDefined!11629 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326)) (Exists!1996 lambda!262291))))

(declare-fun lt!2144176 () Unit!152540)

(declare-fun choose!38861 (Regex!14815 Regex!14815 List!60745) Unit!152540)

(assert (=> d!1684255 (= lt!2144176 (choose!38861 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326))))

(assert (=> d!1684255 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684255 (= (lemmaFindConcatSeparationEquivalentToExists!1104 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326) lt!2144176)))

(declare-fun bs!1213011 () Bool)

(assert (= bs!1213011 d!1684255))

(declare-fun m!6271416 () Bool)

(assert (=> bs!1213011 m!6271416))

(assert (=> bs!1213011 m!6270866))

(assert (=> bs!1213011 m!6270868))

(assert (=> bs!1213011 m!6270866))

(declare-fun m!6271418 () Bool)

(assert (=> bs!1213011 m!6271418))

(assert (=> bs!1213011 m!6271400))

(assert (=> b!5223795 d!1684255))

(declare-fun d!1684257 () Bool)

(assert (=> d!1684257 (= (Exists!1996 lambda!262227) (choose!38859 lambda!262227))))

(declare-fun bs!1213012 () Bool)

(assert (= bs!1213012 d!1684257))

(declare-fun m!6271420 () Bool)

(assert (=> bs!1213012 m!6271420))

(assert (=> b!5223795 d!1684257))

(assert (=> b!5223796 d!1684245))

(declare-fun e!3251694 () Bool)

(declare-fun d!1684259 () Bool)

(assert (=> d!1684259 (= (matchZipper!1059 ((_ map or) lt!2144073 lt!2144075) (t!373918 s!2326)) e!3251694)))

(declare-fun res!2218172 () Bool)

(assert (=> d!1684259 (=> res!2218172 e!3251694)))

(assert (=> d!1684259 (= res!2218172 (matchZipper!1059 lt!2144073 (t!373918 s!2326)))))

(declare-fun lt!2144177 () Unit!152540)

(assert (=> d!1684259 (= lt!2144177 (choose!38858 lt!2144073 lt!2144075 (t!373918 s!2326)))))

(assert (=> d!1684259 (= (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144073 lt!2144075 (t!373918 s!2326)) lt!2144177)))

(declare-fun b!5224523 () Bool)

(assert (=> b!5224523 (= e!3251694 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(assert (= (and d!1684259 (not res!2218172)) b!5224523))

(assert (=> d!1684259 m!6270826))

(assert (=> d!1684259 m!6270824))

(declare-fun m!6271422 () Bool)

(assert (=> d!1684259 m!6271422))

(assert (=> b!5224523 m!6270848))

(assert (=> b!5223797 d!1684259))

(assert (=> b!5223797 d!1684233))

(declare-fun d!1684261 () Bool)

(declare-fun c!901867 () Bool)

(assert (=> d!1684261 (= c!901867 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251695 () Bool)

(assert (=> d!1684261 (= (matchZipper!1059 ((_ map or) lt!2144073 lt!2144075) (t!373918 s!2326)) e!3251695)))

(declare-fun b!5224524 () Bool)

(assert (=> b!5224524 (= e!3251695 (nullableZipper!1239 ((_ map or) lt!2144073 lt!2144075)))))

(declare-fun b!5224525 () Bool)

(assert (=> b!5224525 (= e!3251695 (matchZipper!1059 (derivationStepZipper!1083 ((_ map or) lt!2144073 lt!2144075) (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684261 c!901867) b!5224524))

(assert (= (and d!1684261 (not c!901867)) b!5224525))

(assert (=> d!1684261 m!6271280))

(declare-fun m!6271424 () Bool)

(assert (=> b!5224524 m!6271424))

(assert (=> b!5224525 m!6271284))

(assert (=> b!5224525 m!6271284))

(declare-fun m!6271426 () Bool)

(assert (=> b!5224525 m!6271426))

(assert (=> b!5224525 m!6271288))

(assert (=> b!5224525 m!6271426))

(assert (=> b!5224525 m!6271288))

(declare-fun m!6271428 () Bool)

(assert (=> b!5224525 m!6271428))

(assert (=> b!5223797 d!1684261))

(declare-fun d!1684263 () Bool)

(declare-fun e!3251696 () Bool)

(assert (=> d!1684263 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144075) (t!373918 s!2326)) e!3251696)))

(declare-fun res!2218173 () Bool)

(assert (=> d!1684263 (=> res!2218173 e!3251696)))

(assert (=> d!1684263 (= res!2218173 (matchZipper!1059 lt!2144069 (t!373918 s!2326)))))

(declare-fun lt!2144178 () Unit!152540)

(assert (=> d!1684263 (= lt!2144178 (choose!38858 lt!2144069 lt!2144075 (t!373918 s!2326)))))

(assert (=> d!1684263 (= (lemmaZipperConcatMatchesSameAsBothZippers!52 lt!2144069 lt!2144075 (t!373918 s!2326)) lt!2144178)))

(declare-fun b!5224526 () Bool)

(assert (=> b!5224526 (= e!3251696 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(assert (= (and d!1684263 (not res!2218173)) b!5224526))

(assert (=> d!1684263 m!6270846))

(assert (=> d!1684263 m!6270922))

(declare-fun m!6271430 () Bool)

(assert (=> d!1684263 m!6271430))

(assert (=> b!5224526 m!6270848))

(assert (=> b!5223803 d!1684263))

(declare-fun d!1684265 () Bool)

(declare-fun c!901868 () Bool)

(assert (=> d!1684265 (= c!901868 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3251697 () Bool)

(assert (=> d!1684265 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144075) (t!373918 s!2326)) e!3251697)))

(declare-fun b!5224527 () Bool)

(assert (=> b!5224527 (= e!3251697 (nullableZipper!1239 ((_ map or) lt!2144069 lt!2144075)))))

(declare-fun b!5224528 () Bool)

(assert (=> b!5224528 (= e!3251697 (matchZipper!1059 (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144075) (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684265 c!901868) b!5224527))

(assert (= (and d!1684265 (not c!901868)) b!5224528))

(assert (=> d!1684265 m!6271280))

(declare-fun m!6271432 () Bool)

(assert (=> b!5224527 m!6271432))

(assert (=> b!5224528 m!6271284))

(assert (=> b!5224528 m!6271284))

(declare-fun m!6271434 () Bool)

(assert (=> b!5224528 m!6271434))

(assert (=> b!5224528 m!6271288))

(assert (=> b!5224528 m!6271434))

(assert (=> b!5224528 m!6271288))

(declare-fun m!6271436 () Bool)

(assert (=> b!5224528 m!6271436))

(assert (=> b!5223803 d!1684265))

(declare-fun d!1684267 () Bool)

(assert (=> d!1684267 (= (isEmpty!32541 (t!373919 zl!343)) ((_ is Nil!60622) (t!373919 zl!343)))))

(assert (=> b!5223782 d!1684267))

(declare-fun d!1684269 () Bool)

(declare-fun e!3251700 () Bool)

(assert (=> d!1684269 e!3251700))

(declare-fun res!2218176 () Bool)

(assert (=> d!1684269 (=> (not res!2218176) (not e!3251700))))

(declare-fun lt!2144181 () List!60746)

(declare-fun noDuplicate!1195 (List!60746) Bool)

(assert (=> d!1684269 (= res!2218176 (noDuplicate!1195 lt!2144181))))

(declare-fun choose!38862 ((InoxSet Context!8398)) List!60746)

(assert (=> d!1684269 (= lt!2144181 (choose!38862 z!1189))))

(assert (=> d!1684269 (= (toList!8599 z!1189) lt!2144181)))

(declare-fun b!5224531 () Bool)

(declare-fun content!10753 (List!60746) (InoxSet Context!8398))

(assert (=> b!5224531 (= e!3251700 (= (content!10753 lt!2144181) z!1189))))

(assert (= (and d!1684269 res!2218176) b!5224531))

(declare-fun m!6271438 () Bool)

(assert (=> d!1684269 m!6271438))

(declare-fun m!6271440 () Bool)

(assert (=> d!1684269 m!6271440))

(declare-fun m!6271442 () Bool)

(assert (=> b!5224531 m!6271442))

(assert (=> b!5223804 d!1684269))

(declare-fun d!1684271 () Bool)

(assert (=> d!1684271 (= (isEmpty!32542 (t!373917 (exprs!4699 (h!67070 zl!343)))) ((_ is Nil!60620) (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> b!5223805 d!1684271))

(declare-fun d!1684273 () Bool)

(declare-fun lt!2144184 () Regex!14815)

(assert (=> d!1684273 (validRegex!6551 lt!2144184)))

(assert (=> d!1684273 (= lt!2144184 (generalisedUnion!744 (unfocusZipperList!257 zl!343)))))

(assert (=> d!1684273 (= (unfocusZipper!557 zl!343) lt!2144184)))

(declare-fun bs!1213013 () Bool)

(assert (= bs!1213013 d!1684273))

(declare-fun m!6271444 () Bool)

(assert (=> bs!1213013 m!6271444))

(assert (=> bs!1213013 m!6270834))

(assert (=> bs!1213013 m!6270834))

(assert (=> bs!1213013 m!6270836))

(assert (=> b!5223800 d!1684273))

(declare-fun b!5224532 () Bool)

(declare-fun res!2218178 () Bool)

(declare-fun e!3251706 () Bool)

(assert (=> b!5224532 (=> res!2218178 e!3251706)))

(assert (=> b!5224532 (= res!2218178 (not ((_ is Concat!23660) r!7292)))))

(declare-fun e!3251702 () Bool)

(assert (=> b!5224532 (= e!3251702 e!3251706)))

(declare-fun b!5224533 () Bool)

(declare-fun e!3251704 () Bool)

(declare-fun call!368987 () Bool)

(assert (=> b!5224533 (= e!3251704 call!368987)))

(declare-fun bm!368982 () Bool)

(declare-fun c!901869 () Bool)

(declare-fun call!368989 () Bool)

(declare-fun c!901870 () Bool)

(assert (=> bm!368982 (= call!368989 (validRegex!6551 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))

(declare-fun b!5224534 () Bool)

(declare-fun e!3251707 () Bool)

(assert (=> b!5224534 (= e!3251707 call!368987)))

(declare-fun d!1684275 () Bool)

(declare-fun res!2218181 () Bool)

(declare-fun e!3251701 () Bool)

(assert (=> d!1684275 (=> res!2218181 e!3251701)))

(assert (=> d!1684275 (= res!2218181 ((_ is ElementMatch!14815) r!7292))))

(assert (=> d!1684275 (= (validRegex!6551 r!7292) e!3251701)))

(declare-fun b!5224535 () Bool)

(declare-fun e!3251703 () Bool)

(assert (=> b!5224535 (= e!3251703 call!368989)))

(declare-fun b!5224536 () Bool)

(assert (=> b!5224536 (= e!3251706 e!3251707)))

(declare-fun res!2218177 () Bool)

(assert (=> b!5224536 (=> (not res!2218177) (not e!3251707))))

(declare-fun call!368988 () Bool)

(assert (=> b!5224536 (= res!2218177 call!368988)))

(declare-fun b!5224537 () Bool)

(declare-fun res!2218180 () Bool)

(assert (=> b!5224537 (=> (not res!2218180) (not e!3251704))))

(assert (=> b!5224537 (= res!2218180 call!368988)))

(assert (=> b!5224537 (= e!3251702 e!3251704)))

(declare-fun b!5224538 () Bool)

(declare-fun e!3251705 () Bool)

(assert (=> b!5224538 (= e!3251705 e!3251702)))

(assert (=> b!5224538 (= c!901869 ((_ is Union!14815) r!7292))))

(declare-fun b!5224539 () Bool)

(assert (=> b!5224539 (= e!3251705 e!3251703)))

(declare-fun res!2218179 () Bool)

(assert (=> b!5224539 (= res!2218179 (not (nullable!4984 (reg!15144 r!7292))))))

(assert (=> b!5224539 (=> (not res!2218179) (not e!3251703))))

(declare-fun bm!368983 () Bool)

(assert (=> bm!368983 (= call!368987 (validRegex!6551 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))

(declare-fun bm!368984 () Bool)

(assert (=> bm!368984 (= call!368988 call!368989)))

(declare-fun b!5224540 () Bool)

(assert (=> b!5224540 (= e!3251701 e!3251705)))

(assert (=> b!5224540 (= c!901870 ((_ is Star!14815) r!7292))))

(assert (= (and d!1684275 (not res!2218181)) b!5224540))

(assert (= (and b!5224540 c!901870) b!5224539))

(assert (= (and b!5224540 (not c!901870)) b!5224538))

(assert (= (and b!5224539 res!2218179) b!5224535))

(assert (= (and b!5224538 c!901869) b!5224537))

(assert (= (and b!5224538 (not c!901869)) b!5224532))

(assert (= (and b!5224537 res!2218180) b!5224533))

(assert (= (and b!5224532 (not res!2218178)) b!5224536))

(assert (= (and b!5224536 res!2218177) b!5224534))

(assert (= (or b!5224533 b!5224534) bm!368983))

(assert (= (or b!5224537 b!5224536) bm!368984))

(assert (= (or b!5224535 bm!368984) bm!368982))

(declare-fun m!6271446 () Bool)

(assert (=> bm!368982 m!6271446))

(declare-fun m!6271448 () Bool)

(assert (=> b!5224539 m!6271448))

(declare-fun m!6271450 () Bool)

(assert (=> bm!368983 m!6271450))

(assert (=> start!552472 d!1684275))

(declare-fun d!1684277 () Bool)

(assert (=> d!1684277 (= (flatMap!542 z!1189 lambda!262229) (dynLambda!23953 lambda!262229 (h!67070 zl!343)))))

(declare-fun lt!2144185 () Unit!152540)

(assert (=> d!1684277 (= lt!2144185 (choose!38857 z!1189 (h!67070 zl!343) lambda!262229))))

(assert (=> d!1684277 (= z!1189 (store ((as const (Array Context!8398 Bool)) false) (h!67070 zl!343) true))))

(assert (=> d!1684277 (= (lemmaFlatMapOnSingletonSet!74 z!1189 (h!67070 zl!343) lambda!262229) lt!2144185)))

(declare-fun b_lambda!202001 () Bool)

(assert (=> (not b_lambda!202001) (not d!1684277)))

(declare-fun bs!1213014 () Bool)

(assert (= bs!1213014 d!1684277))

(assert (=> bs!1213014 m!6270910))

(declare-fun m!6271452 () Bool)

(assert (=> bs!1213014 m!6271452))

(declare-fun m!6271454 () Bool)

(assert (=> bs!1213014 m!6271454))

(declare-fun m!6271456 () Bool)

(assert (=> bs!1213014 m!6271456))

(assert (=> b!5223802 d!1684277))

(declare-fun d!1684279 () Bool)

(assert (=> d!1684279 (= (nullable!4984 (h!67068 (exprs!4699 (h!67070 zl!343)))) (nullableFct!1391 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun bs!1213015 () Bool)

(assert (= bs!1213015 d!1684279))

(declare-fun m!6271458 () Bool)

(assert (=> bs!1213015 m!6271458))

(assert (=> b!5223802 d!1684279))

(declare-fun e!3251710 () (InoxSet Context!8398))

(declare-fun call!368990 () (InoxSet Context!8398))

(declare-fun b!5224541 () Bool)

(assert (=> b!5224541 (= e!3251710 ((_ map or) call!368990 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326))))))

(declare-fun b!5224542 () Bool)

(declare-fun e!3251709 () Bool)

(assert (=> b!5224542 (= e!3251709 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun d!1684281 () Bool)

(declare-fun c!901871 () Bool)

(assert (=> d!1684281 (= c!901871 e!3251709)))

(declare-fun res!2218182 () Bool)

(assert (=> d!1684281 (=> (not res!2218182) (not e!3251709))))

(assert (=> d!1684281 (= res!2218182 ((_ is Cons!60620) (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))

(assert (=> d!1684281 (= (derivationStepZipperUp!187 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))) (h!67069 s!2326)) e!3251710)))

(declare-fun b!5224543 () Bool)

(declare-fun e!3251708 () (InoxSet Context!8398))

(assert (=> b!5224543 (= e!3251708 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368985 () Bool)

(assert (=> bm!368985 (= call!368990 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326)))))

(declare-fun b!5224544 () Bool)

(assert (=> b!5224544 (= e!3251710 e!3251708)))

(declare-fun c!901872 () Bool)

(assert (=> b!5224544 (= c!901872 ((_ is Cons!60620) (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))

(declare-fun b!5224545 () Bool)

(assert (=> b!5224545 (= e!3251708 call!368990)))

(assert (= (and d!1684281 res!2218182) b!5224542))

(assert (= (and d!1684281 c!901871) b!5224541))

(assert (= (and d!1684281 (not c!901871)) b!5224544))

(assert (= (and b!5224544 c!901872) b!5224545))

(assert (= (and b!5224544 (not c!901872)) b!5224543))

(assert (= (or b!5224541 b!5224545) bm!368985))

(declare-fun m!6271460 () Bool)

(assert (=> b!5224541 m!6271460))

(declare-fun m!6271462 () Bool)

(assert (=> b!5224542 m!6271462))

(declare-fun m!6271464 () Bool)

(assert (=> bm!368985 m!6271464))

(assert (=> b!5223802 d!1684281))

(declare-fun call!368991 () (InoxSet Context!8398))

(declare-fun b!5224546 () Bool)

(declare-fun e!3251713 () (InoxSet Context!8398))

(assert (=> b!5224546 (= e!3251713 ((_ map or) call!368991 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326))))))

(declare-fun b!5224547 () Bool)

(declare-fun e!3251712 () Bool)

(assert (=> b!5224547 (= e!3251712 (nullable!4984 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun d!1684283 () Bool)

(declare-fun c!901873 () Bool)

(assert (=> d!1684283 (= c!901873 e!3251712)))

(declare-fun res!2218183 () Bool)

(assert (=> d!1684283 (=> (not res!2218183) (not e!3251712))))

(assert (=> d!1684283 (= res!2218183 ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343))))))

(assert (=> d!1684283 (= (derivationStepZipperUp!187 (h!67070 zl!343) (h!67069 s!2326)) e!3251713)))

(declare-fun b!5224548 () Bool)

(declare-fun e!3251711 () (InoxSet Context!8398))

(assert (=> b!5224548 (= e!3251711 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368986 () Bool)

(assert (=> bm!368986 (= call!368991 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (h!67070 zl!343))) (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326)))))

(declare-fun b!5224549 () Bool)

(assert (=> b!5224549 (= e!3251713 e!3251711)))

(declare-fun c!901874 () Bool)

(assert (=> b!5224549 (= c!901874 ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343))))))

(declare-fun b!5224550 () Bool)

(assert (=> b!5224550 (= e!3251711 call!368991)))

(assert (= (and d!1684283 res!2218183) b!5224547))

(assert (= (and d!1684283 c!901873) b!5224546))

(assert (= (and d!1684283 (not c!901873)) b!5224549))

(assert (= (and b!5224549 c!901874) b!5224550))

(assert (= (and b!5224549 (not c!901874)) b!5224548))

(assert (= (or b!5224546 b!5224550) bm!368986))

(declare-fun m!6271466 () Bool)

(assert (=> b!5224546 m!6271466))

(assert (=> b!5224547 m!6270914))

(declare-fun m!6271468 () Bool)

(assert (=> bm!368986 m!6271468))

(assert (=> b!5223802 d!1684283))

(declare-fun b!5224551 () Bool)

(declare-fun call!368992 () (InoxSet Context!8398))

(declare-fun e!3251716 () (InoxSet Context!8398))

(assert (=> b!5224551 (= e!3251716 ((_ map or) call!368992 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (h!67069 s!2326))))))

(declare-fun b!5224552 () Bool)

(declare-fun e!3251715 () Bool)

(assert (=> b!5224552 (= e!3251715 (nullable!4984 (h!67068 (exprs!4699 lt!2144080))))))

(declare-fun d!1684285 () Bool)

(declare-fun c!901875 () Bool)

(assert (=> d!1684285 (= c!901875 e!3251715)))

(declare-fun res!2218184 () Bool)

(assert (=> d!1684285 (=> (not res!2218184) (not e!3251715))))

(assert (=> d!1684285 (= res!2218184 ((_ is Cons!60620) (exprs!4699 lt!2144080)))))

(assert (=> d!1684285 (= (derivationStepZipperUp!187 lt!2144080 (h!67069 s!2326)) e!3251716)))

(declare-fun b!5224553 () Bool)

(declare-fun e!3251714 () (InoxSet Context!8398))

(assert (=> b!5224553 (= e!3251714 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!368987 () Bool)

(assert (=> bm!368987 (= call!368992 (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144080)) (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (h!67069 s!2326)))))

(declare-fun b!5224554 () Bool)

(assert (=> b!5224554 (= e!3251716 e!3251714)))

(declare-fun c!901876 () Bool)

(assert (=> b!5224554 (= c!901876 ((_ is Cons!60620) (exprs!4699 lt!2144080)))))

(declare-fun b!5224555 () Bool)

(assert (=> b!5224555 (= e!3251714 call!368992)))

(assert (= (and d!1684285 res!2218184) b!5224552))

(assert (= (and d!1684285 c!901875) b!5224551))

(assert (= (and d!1684285 (not c!901875)) b!5224554))

(assert (= (and b!5224554 c!901876) b!5224555))

(assert (= (and b!5224554 (not c!901876)) b!5224553))

(assert (= (or b!5224551 b!5224555) bm!368987))

(declare-fun m!6271470 () Bool)

(assert (=> b!5224551 m!6271470))

(declare-fun m!6271472 () Bool)

(assert (=> b!5224552 m!6271472))

(declare-fun m!6271474 () Bool)

(assert (=> bm!368987 m!6271474))

(assert (=> b!5223802 d!1684285))

(declare-fun b!5224556 () Bool)

(declare-fun e!3251718 () Bool)

(assert (=> b!5224556 (= e!3251718 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5224557 () Bool)

(declare-fun e!3251720 () (InoxSet Context!8398))

(declare-fun call!368993 () (InoxSet Context!8398))

(assert (=> b!5224557 (= e!3251720 call!368993)))

(declare-fun b!5224558 () Bool)

(declare-fun c!901877 () Bool)

(assert (=> b!5224558 (= c!901877 e!3251718)))

(declare-fun res!2218185 () Bool)

(assert (=> b!5224558 (=> (not res!2218185) (not e!3251718))))

(assert (=> b!5224558 (= res!2218185 ((_ is Concat!23660) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun e!3251721 () (InoxSet Context!8398))

(declare-fun e!3251717 () (InoxSet Context!8398))

(assert (=> b!5224558 (= e!3251721 e!3251717)))

(declare-fun c!901880 () Bool)

(declare-fun call!368995 () List!60744)

(declare-fun bm!368988 () Bool)

(assert (=> bm!368988 (= call!368995 ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901877 c!901880) (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67068 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5224559 () Bool)

(declare-fun call!368998 () (InoxSet Context!8398))

(declare-fun call!368994 () (InoxSet Context!8398))

(assert (=> b!5224559 (= e!3251721 ((_ map or) call!368998 call!368994))))

(declare-fun b!5224560 () Bool)

(assert (=> b!5224560 (= e!3251717 e!3251720)))

(assert (=> b!5224560 (= c!901880 ((_ is Concat!23660) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5224561 () Bool)

(declare-fun e!3251722 () (InoxSet Context!8398))

(assert (=> b!5224561 (= e!3251722 ((as const (Array Context!8398 Bool)) false))))

(declare-fun c!901881 () Bool)

(declare-fun bm!368989 () Bool)

(assert (=> bm!368989 (= call!368998 (derivationStepZipperDown!263 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))) (ite c!901881 lt!2144080 (Context!8399 call!368995)) (h!67069 s!2326)))))

(declare-fun b!5224563 () Bool)

(assert (=> b!5224563 (= e!3251722 call!368993)))

(declare-fun bm!368990 () Bool)

(declare-fun call!368997 () List!60744)

(assert (=> bm!368990 (= call!368994 (derivationStepZipperDown!263 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))) (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997)) (h!67069 s!2326)))))

(declare-fun b!5224564 () Bool)

(declare-fun e!3251719 () (InoxSet Context!8398))

(assert (=> b!5224564 (= e!3251719 (store ((as const (Array Context!8398 Bool)) false) lt!2144080 true))))

(declare-fun b!5224565 () Bool)

(assert (=> b!5224565 (= e!3251719 e!3251721)))

(assert (=> b!5224565 (= c!901881 ((_ is Union!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun bm!368991 () Bool)

(assert (=> bm!368991 (= call!368997 call!368995)))

(declare-fun b!5224566 () Bool)

(declare-fun c!901878 () Bool)

(assert (=> b!5224566 (= c!901878 ((_ is Star!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> b!5224566 (= e!3251720 e!3251722)))

(declare-fun b!5224562 () Bool)

(declare-fun call!368996 () (InoxSet Context!8398))

(assert (=> b!5224562 (= e!3251717 ((_ map or) call!368998 call!368996))))

(declare-fun d!1684287 () Bool)

(declare-fun c!901879 () Bool)

(assert (=> d!1684287 (= c!901879 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))) (= (c!901653 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326))))))

(assert (=> d!1684287 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 (h!67070 zl!343))) lt!2144080 (h!67069 s!2326)) e!3251719)))

(declare-fun bm!368992 () Bool)

(assert (=> bm!368992 (= call!368996 call!368994)))

(declare-fun bm!368993 () Bool)

(assert (=> bm!368993 (= call!368993 call!368996)))

(assert (= (and d!1684287 c!901879) b!5224564))

(assert (= (and d!1684287 (not c!901879)) b!5224565))

(assert (= (and b!5224565 c!901881) b!5224559))

(assert (= (and b!5224565 (not c!901881)) b!5224558))

(assert (= (and b!5224558 res!2218185) b!5224556))

(assert (= (and b!5224558 c!901877) b!5224562))

(assert (= (and b!5224558 (not c!901877)) b!5224560))

(assert (= (and b!5224560 c!901880) b!5224557))

(assert (= (and b!5224560 (not c!901880)) b!5224566))

(assert (= (and b!5224566 c!901878) b!5224563))

(assert (= (and b!5224566 (not c!901878)) b!5224561))

(assert (= (or b!5224557 b!5224563) bm!368991))

(assert (= (or b!5224557 b!5224563) bm!368993))

(assert (= (or b!5224562 bm!368991) bm!368988))

(assert (= (or b!5224562 bm!368993) bm!368992))

(assert (= (or b!5224559 bm!368992) bm!368990))

(assert (= (or b!5224559 b!5224562) bm!368989))

(declare-fun m!6271476 () Bool)

(assert (=> bm!368989 m!6271476))

(declare-fun m!6271478 () Bool)

(assert (=> bm!368990 m!6271478))

(declare-fun m!6271480 () Bool)

(assert (=> bm!368988 m!6271480))

(declare-fun m!6271482 () Bool)

(assert (=> b!5224556 m!6271482))

(assert (=> b!5224564 m!6271234))

(assert (=> b!5223802 d!1684287))

(declare-fun d!1684289 () Bool)

(assert (=> d!1684289 (= (flatMap!542 z!1189 lambda!262229) (choose!38856 z!1189 lambda!262229))))

(declare-fun bs!1213016 () Bool)

(assert (= bs!1213016 d!1684289))

(declare-fun m!6271484 () Bool)

(assert (=> bs!1213016 m!6271484))

(assert (=> b!5223802 d!1684289))

(declare-fun b!5224571 () Bool)

(declare-fun e!3251725 () Bool)

(declare-fun tp!1464370 () Bool)

(declare-fun tp!1464371 () Bool)

(assert (=> b!5224571 (= e!3251725 (and tp!1464370 tp!1464371))))

(assert (=> b!5223798 (= tp!1464300 e!3251725)))

(assert (= (and b!5223798 ((_ is Cons!60620) (exprs!4699 (h!67070 zl!343)))) b!5224571))

(declare-fun b!5224585 () Bool)

(declare-fun e!3251728 () Bool)

(declare-fun tp!1464386 () Bool)

(declare-fun tp!1464383 () Bool)

(assert (=> b!5224585 (= e!3251728 (and tp!1464386 tp!1464383))))

(assert (=> b!5223783 (= tp!1464304 e!3251728)))

(declare-fun b!5224582 () Bool)

(assert (=> b!5224582 (= e!3251728 tp_is_empty!38883)))

(declare-fun b!5224583 () Bool)

(declare-fun tp!1464384 () Bool)

(declare-fun tp!1464385 () Bool)

(assert (=> b!5224583 (= e!3251728 (and tp!1464384 tp!1464385))))

(declare-fun b!5224584 () Bool)

(declare-fun tp!1464382 () Bool)

(assert (=> b!5224584 (= e!3251728 tp!1464382)))

(assert (= (and b!5223783 ((_ is ElementMatch!14815) (regOne!30142 r!7292))) b!5224582))

(assert (= (and b!5223783 ((_ is Concat!23660) (regOne!30142 r!7292))) b!5224583))

(assert (= (and b!5223783 ((_ is Star!14815) (regOne!30142 r!7292))) b!5224584))

(assert (= (and b!5223783 ((_ is Union!14815) (regOne!30142 r!7292))) b!5224585))

(declare-fun b!5224589 () Bool)

(declare-fun e!3251729 () Bool)

(declare-fun tp!1464391 () Bool)

(declare-fun tp!1464388 () Bool)

(assert (=> b!5224589 (= e!3251729 (and tp!1464391 tp!1464388))))

(assert (=> b!5223783 (= tp!1464299 e!3251729)))

(declare-fun b!5224586 () Bool)

(assert (=> b!5224586 (= e!3251729 tp_is_empty!38883)))

(declare-fun b!5224587 () Bool)

(declare-fun tp!1464389 () Bool)

(declare-fun tp!1464390 () Bool)

(assert (=> b!5224587 (= e!3251729 (and tp!1464389 tp!1464390))))

(declare-fun b!5224588 () Bool)

(declare-fun tp!1464387 () Bool)

(assert (=> b!5224588 (= e!3251729 tp!1464387)))

(assert (= (and b!5223783 ((_ is ElementMatch!14815) (regTwo!30142 r!7292))) b!5224586))

(assert (= (and b!5223783 ((_ is Concat!23660) (regTwo!30142 r!7292))) b!5224587))

(assert (= (and b!5223783 ((_ is Star!14815) (regTwo!30142 r!7292))) b!5224588))

(assert (= (and b!5223783 ((_ is Union!14815) (regTwo!30142 r!7292))) b!5224589))

(declare-fun condSetEmpty!33247 () Bool)

(assert (=> setNonEmpty!33241 (= condSetEmpty!33247 (= setRest!33241 ((as const (Array Context!8398 Bool)) false)))))

(declare-fun setRes!33247 () Bool)

(assert (=> setNonEmpty!33241 (= tp!1464306 setRes!33247)))

(declare-fun setIsEmpty!33247 () Bool)

(assert (=> setIsEmpty!33247 setRes!33247))

(declare-fun tp!1464396 () Bool)

(declare-fun e!3251732 () Bool)

(declare-fun setNonEmpty!33247 () Bool)

(declare-fun setElem!33247 () Context!8398)

(assert (=> setNonEmpty!33247 (= setRes!33247 (and tp!1464396 (inv!80284 setElem!33247) e!3251732))))

(declare-fun setRest!33247 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33247 (= setRest!33241 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33247 true) setRest!33247))))

(declare-fun b!5224594 () Bool)

(declare-fun tp!1464397 () Bool)

(assert (=> b!5224594 (= e!3251732 tp!1464397)))

(assert (= (and setNonEmpty!33241 condSetEmpty!33247) setIsEmpty!33247))

(assert (= (and setNonEmpty!33241 (not condSetEmpty!33247)) setNonEmpty!33247))

(assert (= setNonEmpty!33247 b!5224594))

(declare-fun m!6271486 () Bool)

(assert (=> setNonEmpty!33247 m!6271486))

(declare-fun b!5224598 () Bool)

(declare-fun e!3251733 () Bool)

(declare-fun tp!1464402 () Bool)

(declare-fun tp!1464399 () Bool)

(assert (=> b!5224598 (= e!3251733 (and tp!1464402 tp!1464399))))

(assert (=> b!5223789 (= tp!1464301 e!3251733)))

(declare-fun b!5224595 () Bool)

(assert (=> b!5224595 (= e!3251733 tp_is_empty!38883)))

(declare-fun b!5224596 () Bool)

(declare-fun tp!1464400 () Bool)

(declare-fun tp!1464401 () Bool)

(assert (=> b!5224596 (= e!3251733 (and tp!1464400 tp!1464401))))

(declare-fun b!5224597 () Bool)

(declare-fun tp!1464398 () Bool)

(assert (=> b!5224597 (= e!3251733 tp!1464398)))

(assert (= (and b!5223789 ((_ is ElementMatch!14815) (reg!15144 r!7292))) b!5224595))

(assert (= (and b!5223789 ((_ is Concat!23660) (reg!15144 r!7292))) b!5224596))

(assert (= (and b!5223789 ((_ is Star!14815) (reg!15144 r!7292))) b!5224597))

(assert (= (and b!5223789 ((_ is Union!14815) (reg!15144 r!7292))) b!5224598))

(declare-fun b!5224603 () Bool)

(declare-fun e!3251736 () Bool)

(declare-fun tp!1464405 () Bool)

(assert (=> b!5224603 (= e!3251736 (and tp_is_empty!38883 tp!1464405))))

(assert (=> b!5223784 (= tp!1464307 e!3251736)))

(assert (= (and b!5223784 ((_ is Cons!60621) (t!373918 s!2326))) b!5224603))

(declare-fun b!5224611 () Bool)

(declare-fun e!3251742 () Bool)

(declare-fun tp!1464410 () Bool)

(assert (=> b!5224611 (= e!3251742 tp!1464410)))

(declare-fun b!5224610 () Bool)

(declare-fun e!3251741 () Bool)

(declare-fun tp!1464411 () Bool)

(assert (=> b!5224610 (= e!3251741 (and (inv!80284 (h!67070 (t!373919 zl!343))) e!3251742 tp!1464411))))

(assert (=> b!5223790 (= tp!1464302 e!3251741)))

(assert (= b!5224610 b!5224611))

(assert (= (and b!5223790 ((_ is Cons!60622) (t!373919 zl!343))) b!5224610))

(declare-fun m!6271488 () Bool)

(assert (=> b!5224610 m!6271488))

(declare-fun b!5224612 () Bool)

(declare-fun e!3251743 () Bool)

(declare-fun tp!1464412 () Bool)

(declare-fun tp!1464413 () Bool)

(assert (=> b!5224612 (= e!3251743 (and tp!1464412 tp!1464413))))

(assert (=> b!5223786 (= tp!1464305 e!3251743)))

(assert (= (and b!5223786 ((_ is Cons!60620) (exprs!4699 setElem!33241))) b!5224612))

(declare-fun b!5224616 () Bool)

(declare-fun e!3251744 () Bool)

(declare-fun tp!1464418 () Bool)

(declare-fun tp!1464415 () Bool)

(assert (=> b!5224616 (= e!3251744 (and tp!1464418 tp!1464415))))

(assert (=> b!5223781 (= tp!1464298 e!3251744)))

(declare-fun b!5224613 () Bool)

(assert (=> b!5224613 (= e!3251744 tp_is_empty!38883)))

(declare-fun b!5224614 () Bool)

(declare-fun tp!1464416 () Bool)

(declare-fun tp!1464417 () Bool)

(assert (=> b!5224614 (= e!3251744 (and tp!1464416 tp!1464417))))

(declare-fun b!5224615 () Bool)

(declare-fun tp!1464414 () Bool)

(assert (=> b!5224615 (= e!3251744 tp!1464414)))

(assert (= (and b!5223781 ((_ is ElementMatch!14815) (regOne!30143 r!7292))) b!5224613))

(assert (= (and b!5223781 ((_ is Concat!23660) (regOne!30143 r!7292))) b!5224614))

(assert (= (and b!5223781 ((_ is Star!14815) (regOne!30143 r!7292))) b!5224615))

(assert (= (and b!5223781 ((_ is Union!14815) (regOne!30143 r!7292))) b!5224616))

(declare-fun b!5224620 () Bool)

(declare-fun e!3251745 () Bool)

(declare-fun tp!1464423 () Bool)

(declare-fun tp!1464420 () Bool)

(assert (=> b!5224620 (= e!3251745 (and tp!1464423 tp!1464420))))

(assert (=> b!5223781 (= tp!1464303 e!3251745)))

(declare-fun b!5224617 () Bool)

(assert (=> b!5224617 (= e!3251745 tp_is_empty!38883)))

(declare-fun b!5224618 () Bool)

(declare-fun tp!1464421 () Bool)

(declare-fun tp!1464422 () Bool)

(assert (=> b!5224618 (= e!3251745 (and tp!1464421 tp!1464422))))

(declare-fun b!5224619 () Bool)

(declare-fun tp!1464419 () Bool)

(assert (=> b!5224619 (= e!3251745 tp!1464419)))

(assert (= (and b!5223781 ((_ is ElementMatch!14815) (regTwo!30143 r!7292))) b!5224617))

(assert (= (and b!5223781 ((_ is Concat!23660) (regTwo!30143 r!7292))) b!5224618))

(assert (= (and b!5223781 ((_ is Star!14815) (regTwo!30143 r!7292))) b!5224619))

(assert (= (and b!5223781 ((_ is Union!14815) (regTwo!30143 r!7292))) b!5224620))

(declare-fun b_lambda!202003 () Bool)

(assert (= b_lambda!202001 (or b!5223802 b_lambda!202003)))

(declare-fun bs!1213017 () Bool)

(declare-fun d!1684291 () Bool)

(assert (= bs!1213017 (and d!1684291 b!5223802)))

(assert (=> bs!1213017 (= (dynLambda!23953 lambda!262229 (h!67070 zl!343)) (derivationStepZipperUp!187 (h!67070 zl!343) (h!67069 s!2326)))))

(assert (=> bs!1213017 m!6270908))

(assert (=> d!1684277 d!1684291))

(declare-fun b_lambda!202005 () Bool)

(assert (= b_lambda!201997 (or b!5223802 b_lambda!202005)))

(declare-fun bs!1213018 () Bool)

(declare-fun d!1684293 () Bool)

(assert (= bs!1213018 (and d!1684293 b!5223802)))

(assert (=> bs!1213018 (= (dynLambda!23953 lambda!262229 lt!2144085) (derivationStepZipperUp!187 lt!2144085 (h!67069 s!2326)))))

(assert (=> bs!1213018 m!6270900))

(assert (=> d!1684227 d!1684293))

(declare-fun b_lambda!202007 () Bool)

(assert (= b_lambda!201999 (or b!5223802 b_lambda!202007)))

(declare-fun bs!1213019 () Bool)

(declare-fun d!1684295 () Bool)

(assert (= bs!1213019 (and d!1684295 b!5223802)))

(assert (=> bs!1213019 (= (dynLambda!23953 lambda!262229 lt!2144070) (derivationStepZipperUp!187 lt!2144070 (h!67069 s!2326)))))

(assert (=> bs!1213019 m!6270898))

(assert (=> d!1684231 d!1684295))

(check-sat (not d!1684243) (not d!1684261) (not b!5224433) (not b!5224475) (not d!1684273) (not b!5224318) (not b!5224412) (not b!5224616) (not bm!368982) (not bm!368988) (not d!1684191) (not b!5224241) (not b!5224597) (not bm!368989) (not b!5224502) (not d!1684263) (not bm!368949) (not b!5224505) (not bs!1213017) (not b!5224247) (not bm!368956) (not b!5224483) (not d!1684279) (not b!5224610) (not d!1684211) (not d!1684257) (not b!5224614) (not b!5224459) (not b!5224473) (not b!5224436) (not b!5224438) (not d!1684229) (not b!5224556) (not b!5224472) (not d!1684215) (not b!5224523) (not b!5224525) (not b!5224248) (not b!5224482) (not b!5224353) (not b!5224584) (not b!5224539) (not d!1684247) (not b!5224401) (not b!5224588) (not b!5224240) (not d!1684289) (not bm!368985) (not d!1684209) (not b!5224434) (not bm!368987) (not d!1684231) (not b!5224524) (not b!5224271) (not b!5224547) (not b_lambda!202005) (not bm!368981) (not d!1684235) (not b!5224410) (not b!5224531) (not b!5224526) (not d!1684221) (not d!1684207) (not d!1684203) (not b!5224506) (not d!1684255) (not bm!368990) (not b!5224510) (not b!5224620) (not d!1684241) (not b!5224243) (not b!5224587) (not b!5224542) (not bm!368955) tp_is_empty!38883 (not b!5224476) (not d!1684213) (not d!1684227) (not b!5224508) (not bm!368973) (not b!5224479) (not b!5224598) (not b!5224585) (not d!1684217) (not bm!368983) (not bm!368967) (not b!5224612) (not d!1684259) (not bm!368980) (not b!5224571) (not b!5224527) (not d!1684233) (not b!5224615) (not d!1684239) (not b!5224393) (not d!1684253) (not d!1684245) (not b!5224603) (not b!5224507) (not bm!368966) (not bs!1213019) (not b!5224355) (not b!5224404) (not b!5224551) (not b!5224480) (not bm!368950) (not b!5224611) (not b!5224239) (not d!1684225) (not b!5224541) (not bm!368954) (not d!1684265) (not b!5224465) (not b!5224528) (not bm!368977) (not bs!1213018) (not bm!368986) (not b!5224460) (not b!5224594) (not b!5224471) (not b!5224245) (not bm!368948) (not b!5224400) (not b!5224596) (not d!1684237) (not b_lambda!202007) (not b!5224552) (not b!5224441) (not d!1684205) (not b!5224583) (not d!1684277) (not b!5224589) (not b!5224409) (not d!1684269) (not bm!368974) (not b!5224392) (not b!5224282) (not b!5224474) (not d!1684249) (not d!1684199) (not d!1684251) (not b!5224464) (not b!5224481) (not b!5224440) (not b!5224619) (not b!5224411) (not b!5224546) (not b_lambda!202003) (not setNonEmpty!33247) (not b!5224618) (not b!5224399) (not b!5224447) (not b!5224439))
(check-sat)
(get-model)

(declare-fun b!5225240 () Bool)

(declare-fun res!2218385 () Bool)

(declare-fun e!3252103 () Bool)

(assert (=> b!5225240 (=> res!2218385 e!3252103)))

(assert (=> b!5225240 (= res!2218385 (not ((_ is Concat!23660) lt!2144151)))))

(declare-fun e!3252099 () Bool)

(assert (=> b!5225240 (= e!3252099 e!3252103)))

(declare-fun b!5225241 () Bool)

(declare-fun e!3252101 () Bool)

(declare-fun call!369125 () Bool)

(assert (=> b!5225241 (= e!3252101 call!369125)))

(declare-fun bm!369120 () Bool)

(declare-fun c!902038 () Bool)

(declare-fun call!369127 () Bool)

(declare-fun c!902037 () Bool)

(assert (=> bm!369120 (= call!369127 (validRegex!6551 (ite c!902038 (reg!15144 lt!2144151) (ite c!902037 (regOne!30143 lt!2144151) (regOne!30142 lt!2144151)))))))

(declare-fun b!5225242 () Bool)

(declare-fun e!3252104 () Bool)

(assert (=> b!5225242 (= e!3252104 call!369125)))

(declare-fun d!1684579 () Bool)

(declare-fun res!2218388 () Bool)

(declare-fun e!3252098 () Bool)

(assert (=> d!1684579 (=> res!2218388 e!3252098)))

(assert (=> d!1684579 (= res!2218388 ((_ is ElementMatch!14815) lt!2144151))))

(assert (=> d!1684579 (= (validRegex!6551 lt!2144151) e!3252098)))

(declare-fun b!5225243 () Bool)

(declare-fun e!3252100 () Bool)

(assert (=> b!5225243 (= e!3252100 call!369127)))

(declare-fun b!5225244 () Bool)

(assert (=> b!5225244 (= e!3252103 e!3252104)))

(declare-fun res!2218384 () Bool)

(assert (=> b!5225244 (=> (not res!2218384) (not e!3252104))))

(declare-fun call!369126 () Bool)

(assert (=> b!5225244 (= res!2218384 call!369126)))

(declare-fun b!5225245 () Bool)

(declare-fun res!2218387 () Bool)

(assert (=> b!5225245 (=> (not res!2218387) (not e!3252101))))

(assert (=> b!5225245 (= res!2218387 call!369126)))

(assert (=> b!5225245 (= e!3252099 e!3252101)))

(declare-fun b!5225246 () Bool)

(declare-fun e!3252102 () Bool)

(assert (=> b!5225246 (= e!3252102 e!3252099)))

(assert (=> b!5225246 (= c!902037 ((_ is Union!14815) lt!2144151))))

(declare-fun b!5225247 () Bool)

(assert (=> b!5225247 (= e!3252102 e!3252100)))

(declare-fun res!2218386 () Bool)

(assert (=> b!5225247 (= res!2218386 (not (nullable!4984 (reg!15144 lt!2144151))))))

(assert (=> b!5225247 (=> (not res!2218386) (not e!3252100))))

(declare-fun bm!369121 () Bool)

(assert (=> bm!369121 (= call!369125 (validRegex!6551 (ite c!902037 (regTwo!30143 lt!2144151) (regTwo!30142 lt!2144151))))))

(declare-fun bm!369122 () Bool)

(assert (=> bm!369122 (= call!369126 call!369127)))

(declare-fun b!5225248 () Bool)

(assert (=> b!5225248 (= e!3252098 e!3252102)))

(assert (=> b!5225248 (= c!902038 ((_ is Star!14815) lt!2144151))))

(assert (= (and d!1684579 (not res!2218388)) b!5225248))

(assert (= (and b!5225248 c!902038) b!5225247))

(assert (= (and b!5225248 (not c!902038)) b!5225246))

(assert (= (and b!5225247 res!2218386) b!5225243))

(assert (= (and b!5225246 c!902037) b!5225245))

(assert (= (and b!5225246 (not c!902037)) b!5225240))

(assert (= (and b!5225245 res!2218387) b!5225241))

(assert (= (and b!5225240 (not res!2218385)) b!5225244))

(assert (= (and b!5225244 res!2218384) b!5225242))

(assert (= (or b!5225241 b!5225242) bm!369121))

(assert (= (or b!5225245 b!5225244) bm!369122))

(assert (= (or b!5225243 bm!369122) bm!369120))

(declare-fun m!6272072 () Bool)

(assert (=> bm!369120 m!6272072))

(declare-fun m!6272074 () Bool)

(assert (=> b!5225247 m!6272074))

(declare-fun m!6272076 () Bool)

(assert (=> bm!369121 m!6272076))

(assert (=> d!1684211 d!1684579))

(declare-fun d!1684581 () Bool)

(declare-fun res!2218393 () Bool)

(declare-fun e!3252109 () Bool)

(assert (=> d!1684581 (=> res!2218393 e!3252109)))

(assert (=> d!1684581 (= res!2218393 ((_ is Nil!60620) (unfocusZipperList!257 zl!343)))))

(assert (=> d!1684581 (= (forall!14247 (unfocusZipperList!257 zl!343) lambda!262275) e!3252109)))

(declare-fun b!5225253 () Bool)

(declare-fun e!3252110 () Bool)

(assert (=> b!5225253 (= e!3252109 e!3252110)))

(declare-fun res!2218394 () Bool)

(assert (=> b!5225253 (=> (not res!2218394) (not e!3252110))))

(declare-fun dynLambda!23955 (Int Regex!14815) Bool)

(assert (=> b!5225253 (= res!2218394 (dynLambda!23955 lambda!262275 (h!67068 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5225254 () Bool)

(assert (=> b!5225254 (= e!3252110 (forall!14247 (t!373917 (unfocusZipperList!257 zl!343)) lambda!262275))))

(assert (= (and d!1684581 (not res!2218393)) b!5225253))

(assert (= (and b!5225253 res!2218394) b!5225254))

(declare-fun b_lambda!202041 () Bool)

(assert (=> (not b_lambda!202041) (not b!5225253)))

(declare-fun m!6272078 () Bool)

(assert (=> b!5225253 m!6272078))

(declare-fun m!6272080 () Bool)

(assert (=> b!5225254 m!6272080))

(assert (=> d!1684211 d!1684581))

(declare-fun b!5225255 () Bool)

(declare-fun res!2218398 () Bool)

(declare-fun e!3252116 () Bool)

(assert (=> b!5225255 (=> res!2218398 e!3252116)))

(declare-fun e!3252117 () Bool)

(assert (=> b!5225255 (= res!2218398 e!3252117)))

(declare-fun res!2218397 () Bool)

(assert (=> b!5225255 (=> (not res!2218397) (not e!3252117))))

(declare-fun lt!2144208 () Bool)

(assert (=> b!5225255 (= res!2218397 lt!2144208)))

(declare-fun b!5225256 () Bool)

(declare-fun e!3252112 () Bool)

(assert (=> b!5225256 (= e!3252112 (not (= (head!11198 (_2!35317 (get!20832 lt!2144169))) (c!901653 (regTwo!30142 r!7292)))))))

(declare-fun b!5225257 () Bool)

(declare-fun e!3252115 () Bool)

(assert (=> b!5225257 (= e!3252115 (nullable!4984 (regTwo!30142 r!7292)))))

(declare-fun b!5225258 () Bool)

(declare-fun e!3252111 () Bool)

(assert (=> b!5225258 (= e!3252111 e!3252112)))

(declare-fun res!2218396 () Bool)

(assert (=> b!5225258 (=> res!2218396 e!3252112)))

(declare-fun call!369128 () Bool)

(assert (=> b!5225258 (= res!2218396 call!369128)))

(declare-fun bm!369123 () Bool)

(assert (=> bm!369123 (= call!369128 (isEmpty!32545 (_2!35317 (get!20832 lt!2144169))))))

(declare-fun b!5225259 () Bool)

(declare-fun e!3252113 () Bool)

(declare-fun e!3252114 () Bool)

(assert (=> b!5225259 (= e!3252113 e!3252114)))

(declare-fun c!902041 () Bool)

(assert (=> b!5225259 (= c!902041 ((_ is EmptyLang!14815) (regTwo!30142 r!7292)))))

(declare-fun b!5225260 () Bool)

(declare-fun res!2218399 () Bool)

(assert (=> b!5225260 (=> res!2218399 e!3252116)))

(assert (=> b!5225260 (= res!2218399 (not ((_ is ElementMatch!14815) (regTwo!30142 r!7292))))))

(assert (=> b!5225260 (= e!3252114 e!3252116)))

(declare-fun d!1684583 () Bool)

(assert (=> d!1684583 e!3252113))

(declare-fun c!902040 () Bool)

(assert (=> d!1684583 (= c!902040 ((_ is EmptyExpr!14815) (regTwo!30142 r!7292)))))

(assert (=> d!1684583 (= lt!2144208 e!3252115)))

(declare-fun c!902039 () Bool)

(assert (=> d!1684583 (= c!902039 (isEmpty!32545 (_2!35317 (get!20832 lt!2144169))))))

(assert (=> d!1684583 (validRegex!6551 (regTwo!30142 r!7292))))

(assert (=> d!1684583 (= (matchR!7000 (regTwo!30142 r!7292) (_2!35317 (get!20832 lt!2144169))) lt!2144208)))

(declare-fun b!5225261 () Bool)

(declare-fun res!2218400 () Bool)

(assert (=> b!5225261 (=> (not res!2218400) (not e!3252117))))

(assert (=> b!5225261 (= res!2218400 (not call!369128))))

(declare-fun b!5225262 () Bool)

(assert (=> b!5225262 (= e!3252113 (= lt!2144208 call!369128))))

(declare-fun b!5225263 () Bool)

(assert (=> b!5225263 (= e!3252117 (= (head!11198 (_2!35317 (get!20832 lt!2144169))) (c!901653 (regTwo!30142 r!7292))))))

(declare-fun b!5225264 () Bool)

(declare-fun res!2218395 () Bool)

(assert (=> b!5225264 (=> res!2218395 e!3252112)))

(assert (=> b!5225264 (= res!2218395 (not (isEmpty!32545 (tail!10295 (_2!35317 (get!20832 lt!2144169))))))))

(declare-fun b!5225265 () Bool)

(assert (=> b!5225265 (= e!3252115 (matchR!7000 (derivativeStep!4061 (regTwo!30142 r!7292) (head!11198 (_2!35317 (get!20832 lt!2144169)))) (tail!10295 (_2!35317 (get!20832 lt!2144169)))))))

(declare-fun b!5225266 () Bool)

(assert (=> b!5225266 (= e!3252114 (not lt!2144208))))

(declare-fun b!5225267 () Bool)

(assert (=> b!5225267 (= e!3252116 e!3252111)))

(declare-fun res!2218402 () Bool)

(assert (=> b!5225267 (=> (not res!2218402) (not e!3252111))))

(assert (=> b!5225267 (= res!2218402 (not lt!2144208))))

(declare-fun b!5225268 () Bool)

(declare-fun res!2218401 () Bool)

(assert (=> b!5225268 (=> (not res!2218401) (not e!3252117))))

(assert (=> b!5225268 (= res!2218401 (isEmpty!32545 (tail!10295 (_2!35317 (get!20832 lt!2144169)))))))

(assert (= (and d!1684583 c!902039) b!5225257))

(assert (= (and d!1684583 (not c!902039)) b!5225265))

(assert (= (and d!1684583 c!902040) b!5225262))

(assert (= (and d!1684583 (not c!902040)) b!5225259))

(assert (= (and b!5225259 c!902041) b!5225266))

(assert (= (and b!5225259 (not c!902041)) b!5225260))

(assert (= (and b!5225260 (not res!2218399)) b!5225255))

(assert (= (and b!5225255 res!2218397) b!5225261))

(assert (= (and b!5225261 res!2218400) b!5225268))

(assert (= (and b!5225268 res!2218401) b!5225263))

(assert (= (and b!5225255 (not res!2218398)) b!5225267))

(assert (= (and b!5225267 res!2218402) b!5225258))

(assert (= (and b!5225258 (not res!2218396)) b!5225264))

(assert (= (and b!5225264 (not res!2218395)) b!5225256))

(assert (= (or b!5225262 b!5225258 b!5225261) bm!369123))

(declare-fun m!6272082 () Bool)

(assert (=> b!5225257 m!6272082))

(declare-fun m!6272084 () Bool)

(assert (=> d!1684583 m!6272084))

(declare-fun m!6272086 () Bool)

(assert (=> d!1684583 m!6272086))

(declare-fun m!6272088 () Bool)

(assert (=> b!5225264 m!6272088))

(assert (=> b!5225264 m!6272088))

(declare-fun m!6272090 () Bool)

(assert (=> b!5225264 m!6272090))

(assert (=> b!5225268 m!6272088))

(assert (=> b!5225268 m!6272088))

(assert (=> b!5225268 m!6272090))

(assert (=> bm!369123 m!6272084))

(declare-fun m!6272092 () Bool)

(assert (=> b!5225263 m!6272092))

(assert (=> b!5225256 m!6272092))

(assert (=> b!5225265 m!6272092))

(assert (=> b!5225265 m!6272092))

(declare-fun m!6272094 () Bool)

(assert (=> b!5225265 m!6272094))

(assert (=> b!5225265 m!6272088))

(assert (=> b!5225265 m!6272094))

(assert (=> b!5225265 m!6272088))

(declare-fun m!6272096 () Bool)

(assert (=> b!5225265 m!6272096))

(assert (=> b!5224506 d!1684583))

(declare-fun d!1684585 () Bool)

(assert (=> d!1684585 (= (get!20832 lt!2144169) (v!50954 lt!2144169))))

(assert (=> b!5224506 d!1684585))

(declare-fun b!5225283 () Bool)

(declare-fun e!3252131 () Bool)

(declare-fun e!3252134 () Bool)

(assert (=> b!5225283 (= e!3252131 e!3252134)))

(declare-fun res!2218414 () Bool)

(assert (=> b!5225283 (=> (not res!2218414) (not e!3252134))))

(assert (=> b!5225283 (= res!2218414 (and (not ((_ is EmptyLang!14815) (h!67068 (exprs!4699 (h!67070 zl!343))))) (not ((_ is ElementMatch!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun b!5225284 () Bool)

(declare-fun e!3252135 () Bool)

(declare-fun call!369134 () Bool)

(assert (=> b!5225284 (= e!3252135 call!369134)))

(declare-fun d!1684587 () Bool)

(declare-fun res!2218413 () Bool)

(assert (=> d!1684587 (=> res!2218413 e!3252131)))

(assert (=> d!1684587 (= res!2218413 ((_ is EmptyExpr!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> d!1684587 (= (nullableFct!1391 (h!67068 (exprs!4699 (h!67070 zl!343)))) e!3252131)))

(declare-fun b!5225285 () Bool)

(declare-fun e!3252133 () Bool)

(assert (=> b!5225285 (= e!3252133 e!3252135)))

(declare-fun res!2218417 () Bool)

(declare-fun call!369133 () Bool)

(assert (=> b!5225285 (= res!2218417 call!369133)))

(assert (=> b!5225285 (=> res!2218417 e!3252135)))

(declare-fun b!5225286 () Bool)

(declare-fun e!3252132 () Bool)

(assert (=> b!5225286 (= e!3252133 e!3252132)))

(declare-fun res!2218416 () Bool)

(assert (=> b!5225286 (= res!2218416 call!369133)))

(assert (=> b!5225286 (=> (not res!2218416) (not e!3252132))))

(declare-fun bm!369128 () Bool)

(declare-fun c!902044 () Bool)

(assert (=> bm!369128 (= call!369134 (nullable!4984 (ite c!902044 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun b!5225287 () Bool)

(assert (=> b!5225287 (= e!3252132 call!369134)))

(declare-fun b!5225288 () Bool)

(declare-fun e!3252130 () Bool)

(assert (=> b!5225288 (= e!3252134 e!3252130)))

(declare-fun res!2218415 () Bool)

(assert (=> b!5225288 (=> res!2218415 e!3252130)))

(assert (=> b!5225288 (= res!2218415 ((_ is Star!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225289 () Bool)

(assert (=> b!5225289 (= e!3252130 e!3252133)))

(assert (=> b!5225289 (= c!902044 ((_ is Union!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun bm!369129 () Bool)

(assert (=> bm!369129 (= call!369133 (nullable!4984 (ite c!902044 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(assert (= (and d!1684587 (not res!2218413)) b!5225283))

(assert (= (and b!5225283 res!2218414) b!5225288))

(assert (= (and b!5225288 (not res!2218415)) b!5225289))

(assert (= (and b!5225289 c!902044) b!5225285))

(assert (= (and b!5225289 (not c!902044)) b!5225286))

(assert (= (and b!5225285 (not res!2218417)) b!5225284))

(assert (= (and b!5225286 res!2218416) b!5225287))

(assert (= (or b!5225284 b!5225287) bm!369128))

(assert (= (or b!5225285 b!5225286) bm!369129))

(declare-fun m!6272098 () Bool)

(assert (=> bm!369128 m!6272098))

(declare-fun m!6272100 () Bool)

(assert (=> bm!369129 m!6272100))

(assert (=> d!1684279 d!1684587))

(declare-fun d!1684589 () Bool)

(assert (=> d!1684589 (= (isEmpty!32545 s!2326) ((_ is Nil!60621) s!2326))))

(assert (=> d!1684207 d!1684589))

(declare-fun e!3252138 () (InoxSet Context!8398))

(declare-fun call!369135 () (InoxSet Context!8398))

(declare-fun b!5225290 () Bool)

(assert (=> b!5225290 (= e!3252138 ((_ map or) call!369135 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070)))))) (h!67069 s!2326))))))

(declare-fun b!5225291 () Bool)

(declare-fun e!3252137 () Bool)

(assert (=> b!5225291 (= e!3252137 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070)))))))))

(declare-fun d!1684591 () Bool)

(declare-fun c!902045 () Bool)

(assert (=> d!1684591 (= c!902045 e!3252137)))

(declare-fun res!2218418 () Bool)

(assert (=> d!1684591 (=> (not res!2218418) (not e!3252137))))

(assert (=> d!1684591 (= res!2218418 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070))))))))

(assert (=> d!1684591 (= (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (h!67069 s!2326)) e!3252138)))

(declare-fun b!5225292 () Bool)

(declare-fun e!3252136 () (InoxSet Context!8398))

(assert (=> b!5225292 (= e!3252136 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369130 () Bool)

(assert (=> bm!369130 (= call!369135 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070)))))) (h!67069 s!2326)))))

(declare-fun b!5225293 () Bool)

(assert (=> b!5225293 (= e!3252138 e!3252136)))

(declare-fun c!902046 () Bool)

(assert (=> b!5225293 (= c!902046 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070))))))))

(declare-fun b!5225294 () Bool)

(assert (=> b!5225294 (= e!3252136 call!369135)))

(assert (= (and d!1684591 res!2218418) b!5225291))

(assert (= (and d!1684591 c!902045) b!5225290))

(assert (= (and d!1684591 (not c!902045)) b!5225293))

(assert (= (and b!5225293 c!902046) b!5225294))

(assert (= (and b!5225293 (not c!902046)) b!5225292))

(assert (= (or b!5225290 b!5225294) bm!369130))

(declare-fun m!6272102 () Bool)

(assert (=> b!5225290 m!6272102))

(declare-fun m!6272104 () Bool)

(assert (=> b!5225291 m!6272104))

(declare-fun m!6272106 () Bool)

(assert (=> bm!369130 m!6272106))

(assert (=> b!5224464 d!1684591))

(declare-fun d!1684593 () Bool)

(assert (=> d!1684593 (= (isEmpty!32545 (t!373918 s!2326)) ((_ is Nil!60621) (t!373918 s!2326)))))

(assert (=> d!1684241 d!1684593))

(declare-fun d!1684595 () Bool)

(assert (=> d!1684595 (= (isEmpty!32542 (tail!10294 (unfocusZipperList!257 zl!343))) ((_ is Nil!60620) (tail!10294 (unfocusZipperList!257 zl!343))))))

(assert (=> b!5224433 d!1684595))

(declare-fun d!1684597 () Bool)

(assert (=> d!1684597 (= (tail!10294 (unfocusZipperList!257 zl!343)) (t!373917 (unfocusZipperList!257 zl!343)))))

(assert (=> b!5224433 d!1684597))

(declare-fun d!1684599 () Bool)

(declare-fun c!902047 () Bool)

(assert (=> d!1684599 (= c!902047 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252139 () Bool)

(assert (=> d!1684599 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144093 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252139)))

(declare-fun b!5225295 () Bool)

(assert (=> b!5225295 (= e!3252139 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144093 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225296 () Bool)

(assert (=> b!5225296 (= e!3252139 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144093 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684599 c!902047) b!5225295))

(assert (= (and d!1684599 (not c!902047)) b!5225296))

(assert (=> d!1684599 m!6271288))

(declare-fun m!6272108 () Bool)

(assert (=> d!1684599 m!6272108))

(assert (=> b!5225295 m!6271370))

(declare-fun m!6272110 () Bool)

(assert (=> b!5225295 m!6272110))

(assert (=> b!5225296 m!6271288))

(declare-fun m!6272112 () Bool)

(assert (=> b!5225296 m!6272112))

(assert (=> b!5225296 m!6271370))

(assert (=> b!5225296 m!6272112))

(declare-fun m!6272114 () Bool)

(assert (=> b!5225296 m!6272114))

(assert (=> b!5225296 m!6271288))

(declare-fun m!6272116 () Bool)

(assert (=> b!5225296 m!6272116))

(assert (=> b!5225296 m!6272114))

(assert (=> b!5225296 m!6272116))

(declare-fun m!6272118 () Bool)

(assert (=> b!5225296 m!6272118))

(assert (=> b!5224481 d!1684599))

(declare-fun bs!1213238 () Bool)

(declare-fun d!1684601 () Bool)

(assert (= bs!1213238 (and d!1684601 b!5223802)))

(declare-fun lambda!262330 () Int)

(assert (=> bs!1213238 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262330 lambda!262229))))

(declare-fun bs!1213239 () Bool)

(assert (= bs!1213239 (and d!1684601 d!1684229)))

(assert (=> bs!1213239 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262330 lambda!262281))))

(assert (=> d!1684601 true))

(assert (=> d!1684601 (= (derivationStepZipper!1083 lt!2144093 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144093 lambda!262330))))

(declare-fun bs!1213240 () Bool)

(assert (= bs!1213240 d!1684601))

(declare-fun m!6272120 () Bool)

(assert (=> bs!1213240 m!6272120))

(assert (=> b!5224481 d!1684601))

(declare-fun d!1684603 () Bool)

(assert (=> d!1684603 (= (head!11198 (t!373918 s!2326)) (h!67069 (t!373918 s!2326)))))

(assert (=> b!5224481 d!1684603))

(declare-fun d!1684605 () Bool)

(assert (=> d!1684605 (= (tail!10295 (t!373918 s!2326)) (t!373918 (t!373918 s!2326)))))

(assert (=> b!5224481 d!1684605))

(assert (=> d!1684233 d!1684593))

(declare-fun d!1684607 () Bool)

(assert (=> d!1684607 (= ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901877 c!901880) (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67068 (exprs!4699 (h!67070 zl!343))))) (Cons!60620 (ite (or c!901877 c!901880) (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67068 (exprs!4699 (h!67070 zl!343)))) (exprs!4699 lt!2144080)))))

(assert (=> bm!368988 d!1684607))

(assert (=> d!1684265 d!1684593))

(declare-fun d!1684609 () Bool)

(declare-fun lambda!262333 () Int)

(declare-fun exists!1974 ((InoxSet Context!8398) Int) Bool)

(assert (=> d!1684609 (= (nullableZipper!1239 lt!2144075) (exists!1974 lt!2144075 lambda!262333))))

(declare-fun bs!1213241 () Bool)

(assert (= bs!1213241 d!1684609))

(declare-fun m!6272122 () Bool)

(assert (=> bs!1213241 m!6272122))

(assert (=> b!5224482 d!1684609))

(declare-fun d!1684611 () Bool)

(assert (=> d!1684611 (= (nullable!4984 r!7292) (nullableFct!1391 r!7292))))

(declare-fun bs!1213242 () Bool)

(assert (= bs!1213242 d!1684611))

(declare-fun m!6272124 () Bool)

(assert (=> bs!1213242 m!6272124))

(assert (=> b!5224393 d!1684611))

(declare-fun d!1684613 () Bool)

(declare-fun c!902050 () Bool)

(assert (=> d!1684613 (= c!902050 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252140 () Bool)

(assert (=> d!1684613 (= (matchZipper!1059 (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144075) (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252140)))

(declare-fun b!5225297 () Bool)

(assert (=> b!5225297 (= e!3252140 (nullableZipper!1239 (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144075) (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225298 () Bool)

(assert (=> b!5225298 (= e!3252140 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144075) (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684613 c!902050) b!5225297))

(assert (= (and d!1684613 (not c!902050)) b!5225298))

(assert (=> d!1684613 m!6271288))

(assert (=> d!1684613 m!6272108))

(assert (=> b!5225297 m!6271434))

(declare-fun m!6272126 () Bool)

(assert (=> b!5225297 m!6272126))

(assert (=> b!5225298 m!6271288))

(assert (=> b!5225298 m!6272112))

(assert (=> b!5225298 m!6271434))

(assert (=> b!5225298 m!6272112))

(declare-fun m!6272128 () Bool)

(assert (=> b!5225298 m!6272128))

(assert (=> b!5225298 m!6271288))

(assert (=> b!5225298 m!6272116))

(assert (=> b!5225298 m!6272128))

(assert (=> b!5225298 m!6272116))

(declare-fun m!6272130 () Bool)

(assert (=> b!5225298 m!6272130))

(assert (=> b!5224528 d!1684613))

(declare-fun bs!1213243 () Bool)

(declare-fun d!1684615 () Bool)

(assert (= bs!1213243 (and d!1684615 b!5223802)))

(declare-fun lambda!262334 () Int)

(assert (=> bs!1213243 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262334 lambda!262229))))

(declare-fun bs!1213244 () Bool)

(assert (= bs!1213244 (and d!1684615 d!1684229)))

(assert (=> bs!1213244 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262334 lambda!262281))))

(declare-fun bs!1213245 () Bool)

(assert (= bs!1213245 (and d!1684615 d!1684601)))

(assert (=> bs!1213245 (= lambda!262334 lambda!262330)))

(assert (=> d!1684615 true))

(assert (=> d!1684615 (= (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144075) (head!11198 (t!373918 s!2326))) (flatMap!542 ((_ map or) lt!2144069 lt!2144075) lambda!262334))))

(declare-fun bs!1213246 () Bool)

(assert (= bs!1213246 d!1684615))

(declare-fun m!6272132 () Bool)

(assert (=> bs!1213246 m!6272132))

(assert (=> b!5224528 d!1684615))

(assert (=> b!5224528 d!1684603))

(assert (=> b!5224528 d!1684605))

(declare-fun d!1684617 () Bool)

(assert (=> d!1684617 (= (nullable!4984 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))) (nullableFct!1391 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun bs!1213247 () Bool)

(assert (= bs!1213247 d!1684617))

(declare-fun m!6272134 () Bool)

(assert (=> bs!1213247 m!6272134))

(assert (=> b!5224271 d!1684617))

(declare-fun d!1684619 () Bool)

(assert (=> d!1684619 (= (isDefined!11629 lt!2144169) (not (isEmpty!32546 lt!2144169)))))

(declare-fun bs!1213248 () Bool)

(assert (= bs!1213248 d!1684619))

(declare-fun m!6272136 () Bool)

(assert (=> bs!1213248 m!6272136))

(assert (=> b!5224510 d!1684619))

(assert (=> bs!1213019 d!1684223))

(declare-fun b!5225299 () Bool)

(declare-fun e!3252142 () Bool)

(declare-fun e!3252145 () Bool)

(assert (=> b!5225299 (= e!3252142 e!3252145)))

(declare-fun res!2218420 () Bool)

(assert (=> b!5225299 (=> (not res!2218420) (not e!3252145))))

(assert (=> b!5225299 (= res!2218420 (and (not ((_ is EmptyLang!14815) (regOne!30143 (regOne!30142 r!7292)))) (not ((_ is ElementMatch!14815) (regOne!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225300 () Bool)

(declare-fun e!3252146 () Bool)

(declare-fun call!369137 () Bool)

(assert (=> b!5225300 (= e!3252146 call!369137)))

(declare-fun d!1684621 () Bool)

(declare-fun res!2218419 () Bool)

(assert (=> d!1684621 (=> res!2218419 e!3252142)))

(assert (=> d!1684621 (= res!2218419 ((_ is EmptyExpr!14815) (regOne!30143 (regOne!30142 r!7292))))))

(assert (=> d!1684621 (= (nullableFct!1391 (regOne!30143 (regOne!30142 r!7292))) e!3252142)))

(declare-fun b!5225301 () Bool)

(declare-fun e!3252144 () Bool)

(assert (=> b!5225301 (= e!3252144 e!3252146)))

(declare-fun res!2218423 () Bool)

(declare-fun call!369136 () Bool)

(assert (=> b!5225301 (= res!2218423 call!369136)))

(assert (=> b!5225301 (=> res!2218423 e!3252146)))

(declare-fun b!5225302 () Bool)

(declare-fun e!3252143 () Bool)

(assert (=> b!5225302 (= e!3252144 e!3252143)))

(declare-fun res!2218422 () Bool)

(assert (=> b!5225302 (= res!2218422 call!369136)))

(assert (=> b!5225302 (=> (not res!2218422) (not e!3252143))))

(declare-fun bm!369131 () Bool)

(declare-fun c!902051 () Bool)

(assert (=> bm!369131 (= call!369137 (nullable!4984 (ite c!902051 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225303 () Bool)

(assert (=> b!5225303 (= e!3252143 call!369137)))

(declare-fun b!5225304 () Bool)

(declare-fun e!3252141 () Bool)

(assert (=> b!5225304 (= e!3252145 e!3252141)))

(declare-fun res!2218421 () Bool)

(assert (=> b!5225304 (=> res!2218421 e!3252141)))

(assert (=> b!5225304 (= res!2218421 ((_ is Star!14815) (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun b!5225305 () Bool)

(assert (=> b!5225305 (= e!3252141 e!3252144)))

(assert (=> b!5225305 (= c!902051 ((_ is Union!14815) (regOne!30143 (regOne!30142 r!7292))))))

(declare-fun bm!369132 () Bool)

(assert (=> bm!369132 (= call!369136 (nullable!4984 (ite c!902051 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(assert (= (and d!1684621 (not res!2218419)) b!5225299))

(assert (= (and b!5225299 res!2218420) b!5225304))

(assert (= (and b!5225304 (not res!2218421)) b!5225305))

(assert (= (and b!5225305 c!902051) b!5225301))

(assert (= (and b!5225305 (not c!902051)) b!5225302))

(assert (= (and b!5225301 (not res!2218423)) b!5225300))

(assert (= (and b!5225302 res!2218422) b!5225303))

(assert (= (or b!5225300 b!5225303) bm!369131))

(assert (= (or b!5225301 b!5225302) bm!369132))

(declare-fun m!6272138 () Bool)

(assert (=> bm!369131 m!6272138))

(declare-fun m!6272140 () Bool)

(assert (=> bm!369132 m!6272140))

(assert (=> d!1684221 d!1684621))

(declare-fun bs!1213249 () Bool)

(declare-fun d!1684623 () Bool)

(assert (= bs!1213249 (and d!1684623 d!1684213)))

(declare-fun lambda!262335 () Int)

(assert (=> bs!1213249 (= lambda!262335 lambda!262278)))

(declare-fun bs!1213250 () Bool)

(assert (= bs!1213250 (and d!1684623 d!1684243)))

(assert (=> bs!1213250 (= lambda!262335 lambda!262282)))

(declare-fun bs!1213251 () Bool)

(assert (= bs!1213251 (and d!1684623 d!1684191)))

(assert (=> bs!1213251 (= lambda!262335 lambda!262263)))

(declare-fun bs!1213252 () Bool)

(assert (= bs!1213252 (and d!1684623 d!1684211)))

(assert (=> bs!1213252 (= lambda!262335 lambda!262275)))

(declare-fun bs!1213253 () Bool)

(assert (= bs!1213253 (and d!1684623 d!1684199)))

(assert (=> bs!1213253 (= lambda!262335 lambda!262266)))

(assert (=> d!1684623 (= (inv!80284 (h!67070 (t!373919 zl!343))) (forall!14247 (exprs!4699 (h!67070 (t!373919 zl!343))) lambda!262335))))

(declare-fun bs!1213254 () Bool)

(assert (= bs!1213254 d!1684623))

(declare-fun m!6272142 () Bool)

(assert (=> bs!1213254 m!6272142))

(assert (=> b!5224610 d!1684623))

(declare-fun bs!1213255 () Bool)

(declare-fun d!1684625 () Bool)

(assert (= bs!1213255 (and d!1684625 d!1684609)))

(declare-fun lambda!262336 () Int)

(assert (=> bs!1213255 (= lambda!262336 lambda!262333)))

(assert (=> d!1684625 (= (nullableZipper!1239 ((_ map or) lt!2144073 lt!2144075)) (exists!1974 ((_ map or) lt!2144073 lt!2144075) lambda!262336))))

(declare-fun bs!1213256 () Bool)

(assert (= bs!1213256 d!1684625))

(declare-fun m!6272144 () Bool)

(assert (=> bs!1213256 m!6272144))

(assert (=> b!5224524 d!1684625))

(declare-fun d!1684627 () Bool)

(declare-fun c!902052 () Bool)

(assert (=> d!1684627 (= c!902052 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252147 () Bool)

(assert (=> d!1684627 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144073 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252147)))

(declare-fun b!5225306 () Bool)

(assert (=> b!5225306 (= e!3252147 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144073 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225307 () Bool)

(assert (=> b!5225307 (= e!3252147 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144073 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684627 c!902052) b!5225306))

(assert (= (and d!1684627 (not c!902052)) b!5225307))

(assert (=> d!1684627 m!6271288))

(assert (=> d!1684627 m!6272108))

(assert (=> b!5225306 m!6271348))

(declare-fun m!6272146 () Bool)

(assert (=> b!5225306 m!6272146))

(assert (=> b!5225307 m!6271288))

(assert (=> b!5225307 m!6272112))

(assert (=> b!5225307 m!6271348))

(assert (=> b!5225307 m!6272112))

(declare-fun m!6272148 () Bool)

(assert (=> b!5225307 m!6272148))

(assert (=> b!5225307 m!6271288))

(assert (=> b!5225307 m!6272116))

(assert (=> b!5225307 m!6272148))

(assert (=> b!5225307 m!6272116))

(declare-fun m!6272150 () Bool)

(assert (=> b!5225307 m!6272150))

(assert (=> b!5224472 d!1684627))

(declare-fun bs!1213257 () Bool)

(declare-fun d!1684629 () Bool)

(assert (= bs!1213257 (and d!1684629 b!5223802)))

(declare-fun lambda!262337 () Int)

(assert (=> bs!1213257 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262337 lambda!262229))))

(declare-fun bs!1213258 () Bool)

(assert (= bs!1213258 (and d!1684629 d!1684229)))

(assert (=> bs!1213258 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262337 lambda!262281))))

(declare-fun bs!1213259 () Bool)

(assert (= bs!1213259 (and d!1684629 d!1684601)))

(assert (=> bs!1213259 (= lambda!262337 lambda!262330)))

(declare-fun bs!1213260 () Bool)

(assert (= bs!1213260 (and d!1684629 d!1684615)))

(assert (=> bs!1213260 (= lambda!262337 lambda!262334)))

(assert (=> d!1684629 true))

(assert (=> d!1684629 (= (derivationStepZipper!1083 lt!2144073 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144073 lambda!262337))))

(declare-fun bs!1213261 () Bool)

(assert (= bs!1213261 d!1684629))

(declare-fun m!6272152 () Bool)

(assert (=> bs!1213261 m!6272152))

(assert (=> b!5224472 d!1684629))

(assert (=> b!5224472 d!1684603))

(assert (=> b!5224472 d!1684605))

(declare-fun b!5225308 () Bool)

(declare-fun e!3252149 () Bool)

(assert (=> b!5225308 (= e!3252149 (nullable!4984 (regOne!30142 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))))

(declare-fun b!5225309 () Bool)

(declare-fun e!3252151 () (InoxSet Context!8398))

(declare-fun call!369138 () (InoxSet Context!8398))

(assert (=> b!5225309 (= e!3252151 call!369138)))

(declare-fun b!5225310 () Bool)

(declare-fun c!902053 () Bool)

(assert (=> b!5225310 (= c!902053 e!3252149)))

(declare-fun res!2218424 () Bool)

(assert (=> b!5225310 (=> (not res!2218424) (not e!3252149))))

(assert (=> b!5225310 (= res!2218424 ((_ is Concat!23660) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun e!3252152 () (InoxSet Context!8398))

(declare-fun e!3252148 () (InoxSet Context!8398))

(assert (=> b!5225310 (= e!3252152 e!3252148)))

(declare-fun c!902056 () Bool)

(declare-fun call!369140 () List!60744)

(declare-fun bm!369133 () Bool)

(assert (=> bm!369133 (= call!369140 ($colon$colon!1289 (exprs!4699 (ite c!901881 lt!2144080 (Context!8399 call!368995))) (ite (or c!902053 c!902056) (regTwo!30142 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))))

(declare-fun b!5225311 () Bool)

(declare-fun call!369143 () (InoxSet Context!8398))

(declare-fun call!369139 () (InoxSet Context!8398))

(assert (=> b!5225311 (= e!3252152 ((_ map or) call!369143 call!369139))))

(declare-fun b!5225312 () Bool)

(assert (=> b!5225312 (= e!3252148 e!3252151)))

(assert (=> b!5225312 (= c!902056 ((_ is Concat!23660) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun b!5225313 () Bool)

(declare-fun e!3252153 () (InoxSet Context!8398))

(assert (=> b!5225313 (= e!3252153 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369134 () Bool)

(declare-fun c!902057 () Bool)

(assert (=> bm!369134 (= call!369143 (derivationStepZipperDown!263 (ite c!902057 (regOne!30143 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (regOne!30142 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))) (ite c!902057 (ite c!901881 lt!2144080 (Context!8399 call!368995)) (Context!8399 call!369140)) (h!67069 s!2326)))))

(declare-fun b!5225315 () Bool)

(assert (=> b!5225315 (= e!3252153 call!369138)))

(declare-fun call!369142 () List!60744)

(declare-fun bm!369135 () Bool)

(assert (=> bm!369135 (= call!369139 (derivationStepZipperDown!263 (ite c!902057 (regTwo!30143 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (ite c!902053 (regTwo!30142 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (ite c!902056 (regOne!30142 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (reg!15144 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))) (ite (or c!902057 c!902053) (ite c!901881 lt!2144080 (Context!8399 call!368995)) (Context!8399 call!369142)) (h!67069 s!2326)))))

(declare-fun e!3252150 () (InoxSet Context!8398))

(declare-fun b!5225316 () Bool)

(assert (=> b!5225316 (= e!3252150 (store ((as const (Array Context!8398 Bool)) false) (ite c!901881 lt!2144080 (Context!8399 call!368995)) true))))

(declare-fun b!5225317 () Bool)

(assert (=> b!5225317 (= e!3252150 e!3252152)))

(assert (=> b!5225317 (= c!902057 ((_ is Union!14815) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun bm!369136 () Bool)

(assert (=> bm!369136 (= call!369142 call!369140)))

(declare-fun b!5225318 () Bool)

(declare-fun c!902054 () Bool)

(assert (=> b!5225318 (= c!902054 ((_ is Star!14815) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))

(assert (=> b!5225318 (= e!3252151 e!3252153)))

(declare-fun b!5225314 () Bool)

(declare-fun call!369141 () (InoxSet Context!8398))

(assert (=> b!5225314 (= e!3252148 ((_ map or) call!369143 call!369141))))

(declare-fun d!1684631 () Bool)

(declare-fun c!902055 () Bool)

(assert (=> d!1684631 (= c!902055 (and ((_ is ElementMatch!14815) (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (= (c!901653 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))))) (h!67069 s!2326))))))

(assert (=> d!1684631 (= (derivationStepZipperDown!263 (ite c!901881 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))) (ite c!901881 lt!2144080 (Context!8399 call!368995)) (h!67069 s!2326)) e!3252150)))

(declare-fun bm!369137 () Bool)

(assert (=> bm!369137 (= call!369141 call!369139)))

(declare-fun bm!369138 () Bool)

(assert (=> bm!369138 (= call!369138 call!369141)))

(assert (= (and d!1684631 c!902055) b!5225316))

(assert (= (and d!1684631 (not c!902055)) b!5225317))

(assert (= (and b!5225317 c!902057) b!5225311))

(assert (= (and b!5225317 (not c!902057)) b!5225310))

(assert (= (and b!5225310 res!2218424) b!5225308))

(assert (= (and b!5225310 c!902053) b!5225314))

(assert (= (and b!5225310 (not c!902053)) b!5225312))

(assert (= (and b!5225312 c!902056) b!5225309))

(assert (= (and b!5225312 (not c!902056)) b!5225318))

(assert (= (and b!5225318 c!902054) b!5225315))

(assert (= (and b!5225318 (not c!902054)) b!5225313))

(assert (= (or b!5225309 b!5225315) bm!369136))

(assert (= (or b!5225309 b!5225315) bm!369138))

(assert (= (or b!5225314 bm!369136) bm!369133))

(assert (= (or b!5225314 bm!369138) bm!369137))

(assert (= (or b!5225311 bm!369137) bm!369135))

(assert (= (or b!5225311 b!5225314) bm!369134))

(declare-fun m!6272154 () Bool)

(assert (=> bm!369134 m!6272154))

(declare-fun m!6272156 () Bool)

(assert (=> bm!369135 m!6272156))

(declare-fun m!6272158 () Bool)

(assert (=> bm!369133 m!6272158))

(declare-fun m!6272160 () Bool)

(assert (=> b!5225308 m!6272160))

(declare-fun m!6272162 () Bool)

(assert (=> b!5225316 m!6272162))

(assert (=> bm!368989 d!1684631))

(assert (=> b!5224243 d!1684271))

(assert (=> d!1684247 d!1684619))

(declare-fun b!5225319 () Bool)

(declare-fun res!2218428 () Bool)

(declare-fun e!3252159 () Bool)

(assert (=> b!5225319 (=> res!2218428 e!3252159)))

(declare-fun e!3252160 () Bool)

(assert (=> b!5225319 (= res!2218428 e!3252160)))

(declare-fun res!2218427 () Bool)

(assert (=> b!5225319 (=> (not res!2218427) (not e!3252160))))

(declare-fun lt!2144209 () Bool)

(assert (=> b!5225319 (= res!2218427 lt!2144209)))

(declare-fun b!5225320 () Bool)

(declare-fun e!3252155 () Bool)

(assert (=> b!5225320 (= e!3252155 (not (= (head!11198 Nil!60621) (c!901653 (regOne!30142 r!7292)))))))

(declare-fun b!5225321 () Bool)

(declare-fun e!3252158 () Bool)

(assert (=> b!5225321 (= e!3252158 (nullable!4984 (regOne!30142 r!7292)))))

(declare-fun b!5225322 () Bool)

(declare-fun e!3252154 () Bool)

(assert (=> b!5225322 (= e!3252154 e!3252155)))

(declare-fun res!2218426 () Bool)

(assert (=> b!5225322 (=> res!2218426 e!3252155)))

(declare-fun call!369144 () Bool)

(assert (=> b!5225322 (= res!2218426 call!369144)))

(declare-fun bm!369139 () Bool)

(assert (=> bm!369139 (= call!369144 (isEmpty!32545 Nil!60621))))

(declare-fun b!5225323 () Bool)

(declare-fun e!3252156 () Bool)

(declare-fun e!3252157 () Bool)

(assert (=> b!5225323 (= e!3252156 e!3252157)))

(declare-fun c!902060 () Bool)

(assert (=> b!5225323 (= c!902060 ((_ is EmptyLang!14815) (regOne!30142 r!7292)))))

(declare-fun b!5225324 () Bool)

(declare-fun res!2218429 () Bool)

(assert (=> b!5225324 (=> res!2218429 e!3252159)))

(assert (=> b!5225324 (= res!2218429 (not ((_ is ElementMatch!14815) (regOne!30142 r!7292))))))

(assert (=> b!5225324 (= e!3252157 e!3252159)))

(declare-fun d!1684633 () Bool)

(assert (=> d!1684633 e!3252156))

(declare-fun c!902059 () Bool)

(assert (=> d!1684633 (= c!902059 ((_ is EmptyExpr!14815) (regOne!30142 r!7292)))))

(assert (=> d!1684633 (= lt!2144209 e!3252158)))

(declare-fun c!902058 () Bool)

(assert (=> d!1684633 (= c!902058 (isEmpty!32545 Nil!60621))))

(assert (=> d!1684633 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684633 (= (matchR!7000 (regOne!30142 r!7292) Nil!60621) lt!2144209)))

(declare-fun b!5225325 () Bool)

(declare-fun res!2218430 () Bool)

(assert (=> b!5225325 (=> (not res!2218430) (not e!3252160))))

(assert (=> b!5225325 (= res!2218430 (not call!369144))))

(declare-fun b!5225326 () Bool)

(assert (=> b!5225326 (= e!3252156 (= lt!2144209 call!369144))))

(declare-fun b!5225327 () Bool)

(assert (=> b!5225327 (= e!3252160 (= (head!11198 Nil!60621) (c!901653 (regOne!30142 r!7292))))))

(declare-fun b!5225328 () Bool)

(declare-fun res!2218425 () Bool)

(assert (=> b!5225328 (=> res!2218425 e!3252155)))

(assert (=> b!5225328 (= res!2218425 (not (isEmpty!32545 (tail!10295 Nil!60621))))))

(declare-fun b!5225329 () Bool)

(assert (=> b!5225329 (= e!3252158 (matchR!7000 (derivativeStep!4061 (regOne!30142 r!7292) (head!11198 Nil!60621)) (tail!10295 Nil!60621)))))

(declare-fun b!5225330 () Bool)

(assert (=> b!5225330 (= e!3252157 (not lt!2144209))))

(declare-fun b!5225331 () Bool)

(assert (=> b!5225331 (= e!3252159 e!3252154)))

(declare-fun res!2218432 () Bool)

(assert (=> b!5225331 (=> (not res!2218432) (not e!3252154))))

(assert (=> b!5225331 (= res!2218432 (not lt!2144209))))

(declare-fun b!5225332 () Bool)

(declare-fun res!2218431 () Bool)

(assert (=> b!5225332 (=> (not res!2218431) (not e!3252160))))

(assert (=> b!5225332 (= res!2218431 (isEmpty!32545 (tail!10295 Nil!60621)))))

(assert (= (and d!1684633 c!902058) b!5225321))

(assert (= (and d!1684633 (not c!902058)) b!5225329))

(assert (= (and d!1684633 c!902059) b!5225326))

(assert (= (and d!1684633 (not c!902059)) b!5225323))

(assert (= (and b!5225323 c!902060) b!5225330))

(assert (= (and b!5225323 (not c!902060)) b!5225324))

(assert (= (and b!5225324 (not res!2218429)) b!5225319))

(assert (= (and b!5225319 res!2218427) b!5225325))

(assert (= (and b!5225325 res!2218430) b!5225332))

(assert (= (and b!5225332 res!2218431) b!5225327))

(assert (= (and b!5225319 (not res!2218428)) b!5225331))

(assert (= (and b!5225331 res!2218432) b!5225322))

(assert (= (and b!5225322 (not res!2218426)) b!5225328))

(assert (= (and b!5225328 (not res!2218425)) b!5225320))

(assert (= (or b!5225326 b!5225322 b!5225325) bm!369139))

(declare-fun m!6272164 () Bool)

(assert (=> b!5225321 m!6272164))

(declare-fun m!6272166 () Bool)

(assert (=> d!1684633 m!6272166))

(assert (=> d!1684633 m!6271400))

(declare-fun m!6272168 () Bool)

(assert (=> b!5225328 m!6272168))

(assert (=> b!5225328 m!6272168))

(declare-fun m!6272170 () Bool)

(assert (=> b!5225328 m!6272170))

(assert (=> b!5225332 m!6272168))

(assert (=> b!5225332 m!6272168))

(assert (=> b!5225332 m!6272170))

(assert (=> bm!369139 m!6272166))

(declare-fun m!6272172 () Bool)

(assert (=> b!5225327 m!6272172))

(assert (=> b!5225320 m!6272172))

(assert (=> b!5225329 m!6272172))

(assert (=> b!5225329 m!6272172))

(declare-fun m!6272174 () Bool)

(assert (=> b!5225329 m!6272174))

(assert (=> b!5225329 m!6272168))

(assert (=> b!5225329 m!6272174))

(assert (=> b!5225329 m!6272168))

(declare-fun m!6272176 () Bool)

(assert (=> b!5225329 m!6272176))

(assert (=> d!1684247 d!1684633))

(declare-fun b!5225333 () Bool)

(declare-fun res!2218434 () Bool)

(declare-fun e!3252166 () Bool)

(assert (=> b!5225333 (=> res!2218434 e!3252166)))

(assert (=> b!5225333 (= res!2218434 (not ((_ is Concat!23660) (regOne!30142 r!7292))))))

(declare-fun e!3252162 () Bool)

(assert (=> b!5225333 (= e!3252162 e!3252166)))

(declare-fun b!5225334 () Bool)

(declare-fun e!3252164 () Bool)

(declare-fun call!369145 () Bool)

(assert (=> b!5225334 (= e!3252164 call!369145)))

(declare-fun call!369147 () Bool)

(declare-fun c!902061 () Bool)

(declare-fun bm!369140 () Bool)

(declare-fun c!902062 () Bool)

(assert (=> bm!369140 (= call!369147 (validRegex!6551 (ite c!902062 (reg!15144 (regOne!30142 r!7292)) (ite c!902061 (regOne!30143 (regOne!30142 r!7292)) (regOne!30142 (regOne!30142 r!7292))))))))

(declare-fun b!5225335 () Bool)

(declare-fun e!3252167 () Bool)

(assert (=> b!5225335 (= e!3252167 call!369145)))

(declare-fun d!1684635 () Bool)

(declare-fun res!2218437 () Bool)

(declare-fun e!3252161 () Bool)

(assert (=> d!1684635 (=> res!2218437 e!3252161)))

(assert (=> d!1684635 (= res!2218437 ((_ is ElementMatch!14815) (regOne!30142 r!7292)))))

(assert (=> d!1684635 (= (validRegex!6551 (regOne!30142 r!7292)) e!3252161)))

(declare-fun b!5225336 () Bool)

(declare-fun e!3252163 () Bool)

(assert (=> b!5225336 (= e!3252163 call!369147)))

(declare-fun b!5225337 () Bool)

(assert (=> b!5225337 (= e!3252166 e!3252167)))

(declare-fun res!2218433 () Bool)

(assert (=> b!5225337 (=> (not res!2218433) (not e!3252167))))

(declare-fun call!369146 () Bool)

(assert (=> b!5225337 (= res!2218433 call!369146)))

(declare-fun b!5225338 () Bool)

(declare-fun res!2218436 () Bool)

(assert (=> b!5225338 (=> (not res!2218436) (not e!3252164))))

(assert (=> b!5225338 (= res!2218436 call!369146)))

(assert (=> b!5225338 (= e!3252162 e!3252164)))

(declare-fun b!5225339 () Bool)

(declare-fun e!3252165 () Bool)

(assert (=> b!5225339 (= e!3252165 e!3252162)))

(assert (=> b!5225339 (= c!902061 ((_ is Union!14815) (regOne!30142 r!7292)))))

(declare-fun b!5225340 () Bool)

(assert (=> b!5225340 (= e!3252165 e!3252163)))

(declare-fun res!2218435 () Bool)

(assert (=> b!5225340 (= res!2218435 (not (nullable!4984 (reg!15144 (regOne!30142 r!7292)))))))

(assert (=> b!5225340 (=> (not res!2218435) (not e!3252163))))

(declare-fun bm!369141 () Bool)

(assert (=> bm!369141 (= call!369145 (validRegex!6551 (ite c!902061 (regTwo!30143 (regOne!30142 r!7292)) (regTwo!30142 (regOne!30142 r!7292)))))))

(declare-fun bm!369142 () Bool)

(assert (=> bm!369142 (= call!369146 call!369147)))

(declare-fun b!5225341 () Bool)

(assert (=> b!5225341 (= e!3252161 e!3252165)))

(assert (=> b!5225341 (= c!902062 ((_ is Star!14815) (regOne!30142 r!7292)))))

(assert (= (and d!1684635 (not res!2218437)) b!5225341))

(assert (= (and b!5225341 c!902062) b!5225340))

(assert (= (and b!5225341 (not c!902062)) b!5225339))

(assert (= (and b!5225340 res!2218435) b!5225336))

(assert (= (and b!5225339 c!902061) b!5225338))

(assert (= (and b!5225339 (not c!902061)) b!5225333))

(assert (= (and b!5225338 res!2218436) b!5225334))

(assert (= (and b!5225333 (not res!2218434)) b!5225337))

(assert (= (and b!5225337 res!2218433) b!5225335))

(assert (= (or b!5225334 b!5225335) bm!369141))

(assert (= (or b!5225338 b!5225337) bm!369142))

(assert (= (or b!5225336 bm!369142) bm!369140))

(declare-fun m!6272178 () Bool)

(assert (=> bm!369140 m!6272178))

(declare-fun m!6272180 () Bool)

(assert (=> b!5225340 m!6272180))

(declare-fun m!6272182 () Bool)

(assert (=> bm!369141 m!6272182))

(assert (=> d!1684247 d!1684635))

(declare-fun d!1684637 () Bool)

(assert (=> d!1684637 true))

(assert (=> d!1684637 true))

(declare-fun res!2218440 () Bool)

(assert (=> d!1684637 (= (choose!38859 lambda!262228) res!2218440)))

(assert (=> d!1684249 d!1684637))

(assert (=> d!1684277 d!1684289))

(declare-fun d!1684639 () Bool)

(assert (=> d!1684639 (= (flatMap!542 z!1189 lambda!262229) (dynLambda!23953 lambda!262229 (h!67070 zl!343)))))

(assert (=> d!1684639 true))

(declare-fun _$13!1738 () Unit!152540)

(assert (=> d!1684639 (= (choose!38857 z!1189 (h!67070 zl!343) lambda!262229) _$13!1738)))

(declare-fun b_lambda!202043 () Bool)

(assert (=> (not b_lambda!202043) (not d!1684639)))

(declare-fun bs!1213262 () Bool)

(assert (= bs!1213262 d!1684639))

(assert (=> bs!1213262 m!6270910))

(assert (=> bs!1213262 m!6271452))

(assert (=> d!1684277 d!1684639))

(assert (=> d!1684205 d!1684203))

(assert (=> d!1684205 d!1684201))

(declare-fun d!1684641 () Bool)

(assert (=> d!1684641 (= (matchR!7000 r!7292 s!2326) (matchRSpec!1918 r!7292 s!2326))))

(assert (=> d!1684641 true))

(declare-fun _$88!3498 () Unit!152540)

(assert (=> d!1684641 (= (choose!38855 r!7292 s!2326) _$88!3498)))

(declare-fun bs!1213263 () Bool)

(assert (= bs!1213263 d!1684641))

(assert (=> bs!1213263 m!6270840))

(assert (=> bs!1213263 m!6270838))

(assert (=> d!1684205 d!1684641))

(assert (=> d!1684205 d!1684275))

(declare-fun d!1684643 () Bool)

(assert (=> d!1684643 true))

(declare-fun setRes!33256 () Bool)

(assert (=> d!1684643 setRes!33256))

(declare-fun condSetEmpty!33256 () Bool)

(declare-fun res!2218443 () (InoxSet Context!8398))

(assert (=> d!1684643 (= condSetEmpty!33256 (= res!2218443 ((as const (Array Context!8398 Bool)) false)))))

(assert (=> d!1684643 (= (choose!38856 lt!2144074 lambda!262229) res!2218443)))

(declare-fun setIsEmpty!33256 () Bool)

(assert (=> setIsEmpty!33256 setRes!33256))

(declare-fun setNonEmpty!33256 () Bool)

(declare-fun tp!1464592 () Bool)

(declare-fun e!3252170 () Bool)

(declare-fun setElem!33256 () Context!8398)

(assert (=> setNonEmpty!33256 (= setRes!33256 (and tp!1464592 (inv!80284 setElem!33256) e!3252170))))

(declare-fun setRest!33256 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33256 (= res!2218443 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33256 true) setRest!33256))))

(declare-fun b!5225344 () Bool)

(declare-fun tp!1464593 () Bool)

(assert (=> b!5225344 (= e!3252170 tp!1464593)))

(assert (= (and d!1684643 condSetEmpty!33256) setIsEmpty!33256))

(assert (= (and d!1684643 (not condSetEmpty!33256)) setNonEmpty!33256))

(assert (= setNonEmpty!33256 b!5225344))

(declare-fun m!6272184 () Bool)

(assert (=> setNonEmpty!33256 m!6272184))

(assert (=> d!1684225 d!1684643))

(declare-fun call!369148 () (InoxSet Context!8398))

(declare-fun b!5225345 () Bool)

(declare-fun e!3252173 () (InoxSet Context!8398))

(assert (=> b!5225345 (= e!3252173 ((_ map or) call!369148 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343))))))) (h!67069 s!2326))))))

(declare-fun b!5225346 () Bool)

(declare-fun e!3252172 () Bool)

(assert (=> b!5225346 (= e!3252172 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343))))))))))

(declare-fun d!1684645 () Bool)

(declare-fun c!902063 () Bool)

(assert (=> d!1684645 (= c!902063 e!3252172)))

(declare-fun res!2218444 () Bool)

(assert (=> d!1684645 (=> (not res!2218444) (not e!3252172))))

(assert (=> d!1684645 (= res!2218444 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))))))))

(assert (=> d!1684645 (= (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326)) e!3252173)))

(declare-fun b!5225347 () Bool)

(declare-fun e!3252171 () (InoxSet Context!8398))

(assert (=> b!5225347 (= e!3252171 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369143 () Bool)

(assert (=> bm!369143 (= call!369148 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343))))))) (h!67069 s!2326)))))

(declare-fun b!5225348 () Bool)

(assert (=> b!5225348 (= e!3252173 e!3252171)))

(declare-fun c!902064 () Bool)

(assert (=> b!5225348 (= c!902064 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun b!5225349 () Bool)

(assert (=> b!5225349 (= e!3252171 call!369148)))

(assert (= (and d!1684645 res!2218444) b!5225346))

(assert (= (and d!1684645 c!902063) b!5225345))

(assert (= (and d!1684645 (not c!902063)) b!5225348))

(assert (= (and b!5225348 c!902064) b!5225349))

(assert (= (and b!5225348 (not c!902064)) b!5225347))

(assert (= (or b!5225345 b!5225349) bm!369143))

(declare-fun m!6272186 () Bool)

(assert (=> b!5225345 m!6272186))

(declare-fun m!6272188 () Bool)

(assert (=> b!5225346 m!6272188))

(declare-fun m!6272190 () Bool)

(assert (=> bm!369143 m!6272190))

(assert (=> b!5224546 d!1684645))

(declare-fun call!369149 () (InoxSet Context!8398))

(declare-fun e!3252176 () (InoxSet Context!8398))

(declare-fun b!5225350 () Bool)

(assert (=> b!5225350 (= e!3252176 ((_ map or) call!369149 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))) (h!67069 s!2326))))))

(declare-fun b!5225351 () Bool)

(declare-fun e!3252175 () Bool)

(assert (=> b!5225351 (= e!3252175 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))))))

(declare-fun d!1684647 () Bool)

(declare-fun c!902065 () Bool)

(assert (=> d!1684647 (= c!902065 e!3252175)))

(declare-fun res!2218445 () Bool)

(assert (=> d!1684647 (=> (not res!2218445) (not e!3252175))))

(assert (=> d!1684647 (= res!2218445 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))))

(assert (=> d!1684647 (= (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326)) e!3252176)))

(declare-fun b!5225352 () Bool)

(declare-fun e!3252174 () (InoxSet Context!8398))

(assert (=> b!5225352 (= e!3252174 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369144 () Bool)

(assert (=> bm!369144 (= call!369149 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))) (h!67069 s!2326)))))

(declare-fun b!5225353 () Bool)

(assert (=> b!5225353 (= e!3252176 e!3252174)))

(declare-fun c!902066 () Bool)

(assert (=> b!5225353 (= c!902066 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))))

(declare-fun b!5225354 () Bool)

(assert (=> b!5225354 (= e!3252174 call!369149)))

(assert (= (and d!1684647 res!2218445) b!5225351))

(assert (= (and d!1684647 c!902065) b!5225350))

(assert (= (and d!1684647 (not c!902065)) b!5225353))

(assert (= (and b!5225353 c!902066) b!5225354))

(assert (= (and b!5225353 (not c!902066)) b!5225352))

(assert (= (or b!5225350 b!5225354) bm!369144))

(declare-fun m!6272192 () Bool)

(assert (=> b!5225350 m!6272192))

(declare-fun m!6272194 () Bool)

(assert (=> b!5225351 m!6272194))

(declare-fun m!6272196 () Bool)

(assert (=> bm!369144 m!6272196))

(assert (=> b!5224541 d!1684647))

(declare-fun b!5225355 () Bool)

(declare-fun res!2218449 () Bool)

(declare-fun e!3252182 () Bool)

(assert (=> b!5225355 (=> res!2218449 e!3252182)))

(declare-fun e!3252183 () Bool)

(assert (=> b!5225355 (= res!2218449 e!3252183)))

(declare-fun res!2218448 () Bool)

(assert (=> b!5225355 (=> (not res!2218448) (not e!3252183))))

(declare-fun lt!2144210 () Bool)

(assert (=> b!5225355 (= res!2218448 lt!2144210)))

(declare-fun b!5225356 () Bool)

(declare-fun e!3252178 () Bool)

(assert (=> b!5225356 (= e!3252178 (not (= (head!11198 (tail!10295 s!2326)) (c!901653 (derivativeStep!4061 r!7292 (head!11198 s!2326))))))))

(declare-fun b!5225357 () Bool)

(declare-fun e!3252181 () Bool)

(assert (=> b!5225357 (= e!3252181 (nullable!4984 (derivativeStep!4061 r!7292 (head!11198 s!2326))))))

(declare-fun b!5225358 () Bool)

(declare-fun e!3252177 () Bool)

(assert (=> b!5225358 (= e!3252177 e!3252178)))

(declare-fun res!2218447 () Bool)

(assert (=> b!5225358 (=> res!2218447 e!3252178)))

(declare-fun call!369150 () Bool)

(assert (=> b!5225358 (= res!2218447 call!369150)))

(declare-fun bm!369145 () Bool)

(assert (=> bm!369145 (= call!369150 (isEmpty!32545 (tail!10295 s!2326)))))

(declare-fun b!5225359 () Bool)

(declare-fun e!3252179 () Bool)

(declare-fun e!3252180 () Bool)

(assert (=> b!5225359 (= e!3252179 e!3252180)))

(declare-fun c!902069 () Bool)

(assert (=> b!5225359 (= c!902069 ((_ is EmptyLang!14815) (derivativeStep!4061 r!7292 (head!11198 s!2326))))))

(declare-fun b!5225360 () Bool)

(declare-fun res!2218450 () Bool)

(assert (=> b!5225360 (=> res!2218450 e!3252182)))

(assert (=> b!5225360 (= res!2218450 (not ((_ is ElementMatch!14815) (derivativeStep!4061 r!7292 (head!11198 s!2326)))))))

(assert (=> b!5225360 (= e!3252180 e!3252182)))

(declare-fun d!1684649 () Bool)

(assert (=> d!1684649 e!3252179))

(declare-fun c!902068 () Bool)

(assert (=> d!1684649 (= c!902068 ((_ is EmptyExpr!14815) (derivativeStep!4061 r!7292 (head!11198 s!2326))))))

(assert (=> d!1684649 (= lt!2144210 e!3252181)))

(declare-fun c!902067 () Bool)

(assert (=> d!1684649 (= c!902067 (isEmpty!32545 (tail!10295 s!2326)))))

(assert (=> d!1684649 (validRegex!6551 (derivativeStep!4061 r!7292 (head!11198 s!2326)))))

(assert (=> d!1684649 (= (matchR!7000 (derivativeStep!4061 r!7292 (head!11198 s!2326)) (tail!10295 s!2326)) lt!2144210)))

(declare-fun b!5225361 () Bool)

(declare-fun res!2218451 () Bool)

(assert (=> b!5225361 (=> (not res!2218451) (not e!3252183))))

(assert (=> b!5225361 (= res!2218451 (not call!369150))))

(declare-fun b!5225362 () Bool)

(assert (=> b!5225362 (= e!3252179 (= lt!2144210 call!369150))))

(declare-fun b!5225363 () Bool)

(assert (=> b!5225363 (= e!3252183 (= (head!11198 (tail!10295 s!2326)) (c!901653 (derivativeStep!4061 r!7292 (head!11198 s!2326)))))))

(declare-fun b!5225364 () Bool)

(declare-fun res!2218446 () Bool)

(assert (=> b!5225364 (=> res!2218446 e!3252178)))

(assert (=> b!5225364 (= res!2218446 (not (isEmpty!32545 (tail!10295 (tail!10295 s!2326)))))))

(declare-fun b!5225365 () Bool)

(assert (=> b!5225365 (= e!3252181 (matchR!7000 (derivativeStep!4061 (derivativeStep!4061 r!7292 (head!11198 s!2326)) (head!11198 (tail!10295 s!2326))) (tail!10295 (tail!10295 s!2326))))))

(declare-fun b!5225366 () Bool)

(assert (=> b!5225366 (= e!3252180 (not lt!2144210))))

(declare-fun b!5225367 () Bool)

(assert (=> b!5225367 (= e!3252182 e!3252177)))

(declare-fun res!2218453 () Bool)

(assert (=> b!5225367 (=> (not res!2218453) (not e!3252177))))

(assert (=> b!5225367 (= res!2218453 (not lt!2144210))))

(declare-fun b!5225368 () Bool)

(declare-fun res!2218452 () Bool)

(assert (=> b!5225368 (=> (not res!2218452) (not e!3252183))))

(assert (=> b!5225368 (= res!2218452 (isEmpty!32545 (tail!10295 (tail!10295 s!2326))))))

(assert (= (and d!1684649 c!902067) b!5225357))

(assert (= (and d!1684649 (not c!902067)) b!5225365))

(assert (= (and d!1684649 c!902068) b!5225362))

(assert (= (and d!1684649 (not c!902068)) b!5225359))

(assert (= (and b!5225359 c!902069) b!5225366))

(assert (= (and b!5225359 (not c!902069)) b!5225360))

(assert (= (and b!5225360 (not res!2218450)) b!5225355))

(assert (= (and b!5225355 res!2218448) b!5225361))

(assert (= (and b!5225361 res!2218451) b!5225368))

(assert (= (and b!5225368 res!2218452) b!5225363))

(assert (= (and b!5225355 (not res!2218449)) b!5225367))

(assert (= (and b!5225367 res!2218453) b!5225358))

(assert (= (and b!5225358 (not res!2218447)) b!5225364))

(assert (= (and b!5225364 (not res!2218446)) b!5225356))

(assert (= (or b!5225362 b!5225358 b!5225361) bm!369145))

(assert (=> b!5225357 m!6271268))

(declare-fun m!6272198 () Bool)

(assert (=> b!5225357 m!6272198))

(assert (=> d!1684649 m!6271262))

(assert (=> d!1684649 m!6271264))

(assert (=> d!1684649 m!6271268))

(declare-fun m!6272200 () Bool)

(assert (=> d!1684649 m!6272200))

(assert (=> b!5225364 m!6271262))

(declare-fun m!6272202 () Bool)

(assert (=> b!5225364 m!6272202))

(assert (=> b!5225364 m!6272202))

(declare-fun m!6272204 () Bool)

(assert (=> b!5225364 m!6272204))

(assert (=> b!5225368 m!6271262))

(assert (=> b!5225368 m!6272202))

(assert (=> b!5225368 m!6272202))

(assert (=> b!5225368 m!6272204))

(assert (=> bm!369145 m!6271262))

(assert (=> bm!369145 m!6271264))

(assert (=> b!5225363 m!6271262))

(declare-fun m!6272206 () Bool)

(assert (=> b!5225363 m!6272206))

(assert (=> b!5225356 m!6271262))

(assert (=> b!5225356 m!6272206))

(assert (=> b!5225365 m!6271262))

(assert (=> b!5225365 m!6272206))

(assert (=> b!5225365 m!6271268))

(assert (=> b!5225365 m!6272206))

(declare-fun m!6272208 () Bool)

(assert (=> b!5225365 m!6272208))

(assert (=> b!5225365 m!6271262))

(assert (=> b!5225365 m!6272202))

(assert (=> b!5225365 m!6272208))

(assert (=> b!5225365 m!6272202))

(declare-fun m!6272210 () Bool)

(assert (=> b!5225365 m!6272210))

(assert (=> b!5224401 d!1684649))

(declare-fun b!5225389 () Bool)

(declare-fun c!902082 () Bool)

(assert (=> b!5225389 (= c!902082 (nullable!4984 (regOne!30142 r!7292)))))

(declare-fun e!3252198 () Regex!14815)

(declare-fun e!3252195 () Regex!14815)

(assert (=> b!5225389 (= e!3252198 e!3252195)))

(declare-fun b!5225390 () Bool)

(declare-fun e!3252194 () Regex!14815)

(assert (=> b!5225390 (= e!3252194 EmptyLang!14815)))

(declare-fun b!5225391 () Bool)

(declare-fun e!3252196 () Regex!14815)

(assert (=> b!5225391 (= e!3252196 (ite (= (head!11198 s!2326) (c!901653 r!7292)) EmptyExpr!14815 EmptyLang!14815))))

(declare-fun b!5225392 () Bool)

(declare-fun e!3252197 () Regex!14815)

(assert (=> b!5225392 (= e!3252197 e!3252198)))

(declare-fun c!902080 () Bool)

(assert (=> b!5225392 (= c!902080 ((_ is Star!14815) r!7292))))

(declare-fun b!5225393 () Bool)

(assert (=> b!5225393 (= e!3252194 e!3252196)))

(declare-fun c!902084 () Bool)

(assert (=> b!5225393 (= c!902084 ((_ is ElementMatch!14815) r!7292))))

(declare-fun c!902083 () Bool)

(declare-fun call!369162 () Regex!14815)

(declare-fun bm!369154 () Bool)

(assert (=> bm!369154 (= call!369162 (derivativeStep!4061 (ite c!902083 (regTwo!30143 r!7292) (ite c!902082 (regTwo!30142 r!7292) (regOne!30142 r!7292))) (head!11198 s!2326)))))

(declare-fun bm!369155 () Bool)

(declare-fun call!369159 () Regex!14815)

(assert (=> bm!369155 (= call!369159 call!369162)))

(declare-fun call!369160 () Regex!14815)

(declare-fun b!5225394 () Bool)

(assert (=> b!5225394 (= e!3252195 (Union!14815 (Concat!23660 call!369160 (regTwo!30142 r!7292)) call!369159))))

(declare-fun b!5225395 () Bool)

(declare-fun call!369161 () Regex!14815)

(assert (=> b!5225395 (= e!3252197 (Union!14815 call!369161 call!369162))))

(declare-fun d!1684651 () Bool)

(declare-fun lt!2144213 () Regex!14815)

(assert (=> d!1684651 (validRegex!6551 lt!2144213)))

(assert (=> d!1684651 (= lt!2144213 e!3252194)))

(declare-fun c!902081 () Bool)

(assert (=> d!1684651 (= c!902081 (or ((_ is EmptyExpr!14815) r!7292) ((_ is EmptyLang!14815) r!7292)))))

(assert (=> d!1684651 (validRegex!6551 r!7292)))

(assert (=> d!1684651 (= (derivativeStep!4061 r!7292 (head!11198 s!2326)) lt!2144213)))

(declare-fun b!5225396 () Bool)

(assert (=> b!5225396 (= c!902083 ((_ is Union!14815) r!7292))))

(assert (=> b!5225396 (= e!3252196 e!3252197)))

(declare-fun bm!369156 () Bool)

(assert (=> bm!369156 (= call!369160 call!369161)))

(declare-fun bm!369157 () Bool)

(assert (=> bm!369157 (= call!369161 (derivativeStep!4061 (ite c!902083 (regOne!30143 r!7292) (ite c!902080 (reg!15144 r!7292) (regOne!30142 r!7292))) (head!11198 s!2326)))))

(declare-fun b!5225397 () Bool)

(assert (=> b!5225397 (= e!3252195 (Union!14815 (Concat!23660 call!369159 (regTwo!30142 r!7292)) EmptyLang!14815))))

(declare-fun b!5225398 () Bool)

(assert (=> b!5225398 (= e!3252198 (Concat!23660 call!369160 r!7292))))

(assert (= (and d!1684651 c!902081) b!5225390))

(assert (= (and d!1684651 (not c!902081)) b!5225393))

(assert (= (and b!5225393 c!902084) b!5225391))

(assert (= (and b!5225393 (not c!902084)) b!5225396))

(assert (= (and b!5225396 c!902083) b!5225395))

(assert (= (and b!5225396 (not c!902083)) b!5225392))

(assert (= (and b!5225392 c!902080) b!5225398))

(assert (= (and b!5225392 (not c!902080)) b!5225389))

(assert (= (and b!5225389 c!902082) b!5225394))

(assert (= (and b!5225389 (not c!902082)) b!5225397))

(assert (= (or b!5225394 b!5225397) bm!369155))

(assert (= (or b!5225398 b!5225394) bm!369156))

(assert (= (or b!5225395 bm!369155) bm!369154))

(assert (= (or b!5225395 bm!369156) bm!369157))

(assert (=> b!5225389 m!6272164))

(assert (=> bm!369154 m!6271266))

(declare-fun m!6272212 () Bool)

(assert (=> bm!369154 m!6272212))

(declare-fun m!6272214 () Bool)

(assert (=> d!1684651 m!6272214))

(assert (=> d!1684651 m!6270852))

(assert (=> bm!369157 m!6271266))

(declare-fun m!6272216 () Bool)

(assert (=> bm!369157 m!6272216))

(assert (=> b!5224401 d!1684651))

(declare-fun d!1684653 () Bool)

(assert (=> d!1684653 (= (head!11198 s!2326) (h!67069 s!2326))))

(assert (=> b!5224401 d!1684653))

(declare-fun d!1684655 () Bool)

(assert (=> d!1684655 (= (tail!10295 s!2326) (t!373918 s!2326))))

(assert (=> b!5224401 d!1684655))

(declare-fun b!5225399 () Bool)

(declare-fun res!2218455 () Bool)

(declare-fun e!3252204 () Bool)

(assert (=> b!5225399 (=> res!2218455 e!3252204)))

(assert (=> b!5225399 (= res!2218455 (not ((_ is Concat!23660) (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292))))))))

(declare-fun e!3252200 () Bool)

(assert (=> b!5225399 (= e!3252200 e!3252204)))

(declare-fun b!5225400 () Bool)

(declare-fun e!3252202 () Bool)

(declare-fun call!369163 () Bool)

(assert (=> b!5225400 (= e!3252202 call!369163)))

(declare-fun c!902086 () Bool)

(declare-fun c!902085 () Bool)

(declare-fun call!369165 () Bool)

(declare-fun bm!369158 () Bool)

(assert (=> bm!369158 (= call!369165 (validRegex!6551 (ite c!902086 (reg!15144 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))) (ite c!902085 (regOne!30143 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))) (regOne!30142 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292))))))))))

(declare-fun b!5225401 () Bool)

(declare-fun e!3252205 () Bool)

(assert (=> b!5225401 (= e!3252205 call!369163)))

(declare-fun d!1684657 () Bool)

(declare-fun res!2218458 () Bool)

(declare-fun e!3252199 () Bool)

(assert (=> d!1684657 (=> res!2218458 e!3252199)))

(assert (=> d!1684657 (= res!2218458 ((_ is ElementMatch!14815) (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))

(assert (=> d!1684657 (= (validRegex!6551 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))) e!3252199)))

(declare-fun b!5225402 () Bool)

(declare-fun e!3252201 () Bool)

(assert (=> b!5225402 (= e!3252201 call!369165)))

(declare-fun b!5225403 () Bool)

(assert (=> b!5225403 (= e!3252204 e!3252205)))

(declare-fun res!2218454 () Bool)

(assert (=> b!5225403 (=> (not res!2218454) (not e!3252205))))

(declare-fun call!369164 () Bool)

(assert (=> b!5225403 (= res!2218454 call!369164)))

(declare-fun b!5225404 () Bool)

(declare-fun res!2218457 () Bool)

(assert (=> b!5225404 (=> (not res!2218457) (not e!3252202))))

(assert (=> b!5225404 (= res!2218457 call!369164)))

(assert (=> b!5225404 (= e!3252200 e!3252202)))

(declare-fun b!5225405 () Bool)

(declare-fun e!3252203 () Bool)

(assert (=> b!5225405 (= e!3252203 e!3252200)))

(assert (=> b!5225405 (= c!902085 ((_ is Union!14815) (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))

(declare-fun b!5225406 () Bool)

(assert (=> b!5225406 (= e!3252203 e!3252201)))

(declare-fun res!2218456 () Bool)

(assert (=> b!5225406 (= res!2218456 (not (nullable!4984 (reg!15144 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))))

(assert (=> b!5225406 (=> (not res!2218456) (not e!3252201))))

(declare-fun bm!369159 () Bool)

(assert (=> bm!369159 (= call!369163 (validRegex!6551 (ite c!902085 (regTwo!30143 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))) (regTwo!30142 (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))))

(declare-fun bm!369160 () Bool)

(assert (=> bm!369160 (= call!369164 call!369165)))

(declare-fun b!5225407 () Bool)

(assert (=> b!5225407 (= e!3252199 e!3252203)))

(assert (=> b!5225407 (= c!902086 ((_ is Star!14815) (ite c!901870 (reg!15144 r!7292) (ite c!901869 (regOne!30143 r!7292) (regOne!30142 r!7292)))))))

(assert (= (and d!1684657 (not res!2218458)) b!5225407))

(assert (= (and b!5225407 c!902086) b!5225406))

(assert (= (and b!5225407 (not c!902086)) b!5225405))

(assert (= (and b!5225406 res!2218456) b!5225402))

(assert (= (and b!5225405 c!902085) b!5225404))

(assert (= (and b!5225405 (not c!902085)) b!5225399))

(assert (= (and b!5225404 res!2218457) b!5225400))

(assert (= (and b!5225399 (not res!2218455)) b!5225403))

(assert (= (and b!5225403 res!2218454) b!5225401))

(assert (= (or b!5225400 b!5225401) bm!369159))

(assert (= (or b!5225404 b!5225403) bm!369160))

(assert (= (or b!5225402 bm!369160) bm!369158))

(declare-fun m!6272218 () Bool)

(assert (=> bm!369158 m!6272218))

(declare-fun m!6272220 () Bool)

(assert (=> b!5225406 m!6272220))

(declare-fun m!6272222 () Bool)

(assert (=> bm!369159 m!6272222))

(assert (=> bm!368982 d!1684657))

(declare-fun d!1684659 () Bool)

(assert (=> d!1684659 true))

(assert (=> d!1684659 true))

(declare-fun res!2218459 () Bool)

(assert (=> d!1684659 (= (choose!38859 lambda!262227) res!2218459)))

(assert (=> d!1684257 d!1684659))

(assert (=> bm!368973 d!1684589))

(declare-fun d!1684661 () Bool)

(assert (=> d!1684661 (= (nullable!4984 (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))) (nullableFct!1391 (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))))

(declare-fun bs!1213264 () Bool)

(assert (= bs!1213264 d!1684661))

(declare-fun m!6272224 () Bool)

(assert (=> bs!1213264 m!6272224))

(assert (=> b!5224318 d!1684661))

(declare-fun d!1684663 () Bool)

(declare-fun res!2218460 () Bool)

(declare-fun e!3252206 () Bool)

(assert (=> d!1684663 (=> res!2218460 e!3252206)))

(assert (=> d!1684663 (= res!2218460 ((_ is Nil!60620) lt!2144154))))

(assert (=> d!1684663 (= (forall!14247 lt!2144154 lambda!262278) e!3252206)))

(declare-fun b!5225408 () Bool)

(declare-fun e!3252207 () Bool)

(assert (=> b!5225408 (= e!3252206 e!3252207)))

(declare-fun res!2218461 () Bool)

(assert (=> b!5225408 (=> (not res!2218461) (not e!3252207))))

(assert (=> b!5225408 (= res!2218461 (dynLambda!23955 lambda!262278 (h!67068 lt!2144154)))))

(declare-fun b!5225409 () Bool)

(assert (=> b!5225409 (= e!3252207 (forall!14247 (t!373917 lt!2144154) lambda!262278))))

(assert (= (and d!1684663 (not res!2218460)) b!5225408))

(assert (= (and b!5225408 res!2218461) b!5225409))

(declare-fun b_lambda!202045 () Bool)

(assert (=> (not b_lambda!202045) (not b!5225408)))

(declare-fun m!6272226 () Bool)

(assert (=> b!5225408 m!6272226))

(declare-fun m!6272228 () Bool)

(assert (=> b!5225409 m!6272228))

(assert (=> d!1684213 d!1684663))

(assert (=> d!1684263 d!1684265))

(assert (=> d!1684263 d!1684237))

(declare-fun e!3252210 () Bool)

(declare-fun d!1684665 () Bool)

(assert (=> d!1684665 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144075) (t!373918 s!2326)) e!3252210)))

(declare-fun res!2218464 () Bool)

(assert (=> d!1684665 (=> res!2218464 e!3252210)))

(assert (=> d!1684665 (= res!2218464 (matchZipper!1059 lt!2144069 (t!373918 s!2326)))))

(assert (=> d!1684665 true))

(declare-fun _$48!847 () Unit!152540)

(assert (=> d!1684665 (= (choose!38858 lt!2144069 lt!2144075 (t!373918 s!2326)) _$48!847)))

(declare-fun b!5225412 () Bool)

(assert (=> b!5225412 (= e!3252210 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(assert (= (and d!1684665 (not res!2218464)) b!5225412))

(assert (=> d!1684665 m!6270846))

(assert (=> d!1684665 m!6270922))

(assert (=> b!5225412 m!6270848))

(assert (=> d!1684263 d!1684665))

(declare-fun d!1684667 () Bool)

(assert (=> d!1684667 (= (head!11197 (exprs!4699 (h!67070 zl!343))) (h!67068 (exprs!4699 (h!67070 zl!343))))))

(assert (=> b!5224247 d!1684667))

(assert (=> b!5224447 d!1684191))

(declare-fun bs!1213265 () Bool)

(declare-fun d!1684669 () Bool)

(assert (= bs!1213265 (and d!1684669 d!1684623)))

(declare-fun lambda!262338 () Int)

(assert (=> bs!1213265 (= lambda!262338 lambda!262335)))

(declare-fun bs!1213266 () Bool)

(assert (= bs!1213266 (and d!1684669 d!1684213)))

(assert (=> bs!1213266 (= lambda!262338 lambda!262278)))

(declare-fun bs!1213267 () Bool)

(assert (= bs!1213267 (and d!1684669 d!1684243)))

(assert (=> bs!1213267 (= lambda!262338 lambda!262282)))

(declare-fun bs!1213268 () Bool)

(assert (= bs!1213268 (and d!1684669 d!1684191)))

(assert (=> bs!1213268 (= lambda!262338 lambda!262263)))

(declare-fun bs!1213269 () Bool)

(assert (= bs!1213269 (and d!1684669 d!1684211)))

(assert (=> bs!1213269 (= lambda!262338 lambda!262275)))

(declare-fun bs!1213270 () Bool)

(assert (= bs!1213270 (and d!1684669 d!1684199)))

(assert (=> bs!1213270 (= lambda!262338 lambda!262266)))

(declare-fun lt!2144214 () List!60744)

(assert (=> d!1684669 (forall!14247 lt!2144214 lambda!262338)))

(declare-fun e!3252211 () List!60744)

(assert (=> d!1684669 (= lt!2144214 e!3252211)))

(declare-fun c!902087 () Bool)

(assert (=> d!1684669 (= c!902087 ((_ is Cons!60622) (t!373919 zl!343)))))

(assert (=> d!1684669 (= (unfocusZipperList!257 (t!373919 zl!343)) lt!2144214)))

(declare-fun b!5225413 () Bool)

(assert (=> b!5225413 (= e!3252211 (Cons!60620 (generalisedConcat!484 (exprs!4699 (h!67070 (t!373919 zl!343)))) (unfocusZipperList!257 (t!373919 (t!373919 zl!343)))))))

(declare-fun b!5225414 () Bool)

(assert (=> b!5225414 (= e!3252211 Nil!60620)))

(assert (= (and d!1684669 c!902087) b!5225413))

(assert (= (and d!1684669 (not c!902087)) b!5225414))

(declare-fun m!6272230 () Bool)

(assert (=> d!1684669 m!6272230))

(declare-fun m!6272232 () Bool)

(assert (=> b!5225413 m!6272232))

(declare-fun m!6272234 () Bool)

(assert (=> b!5225413 m!6272234))

(assert (=> b!5224447 d!1684669))

(assert (=> b!5224526 d!1684245))

(declare-fun d!1684671 () Bool)

(declare-fun res!2218469 () Bool)

(declare-fun e!3252216 () Bool)

(assert (=> d!1684671 (=> res!2218469 e!3252216)))

(assert (=> d!1684671 (= res!2218469 ((_ is Nil!60622) lt!2144181))))

(assert (=> d!1684671 (= (noDuplicate!1195 lt!2144181) e!3252216)))

(declare-fun b!5225419 () Bool)

(declare-fun e!3252217 () Bool)

(assert (=> b!5225419 (= e!3252216 e!3252217)))

(declare-fun res!2218470 () Bool)

(assert (=> b!5225419 (=> (not res!2218470) (not e!3252217))))

(declare-fun contains!19676 (List!60746 Context!8398) Bool)

(assert (=> b!5225419 (= res!2218470 (not (contains!19676 (t!373919 lt!2144181) (h!67070 lt!2144181))))))

(declare-fun b!5225420 () Bool)

(assert (=> b!5225420 (= e!3252217 (noDuplicate!1195 (t!373919 lt!2144181)))))

(assert (= (and d!1684671 (not res!2218469)) b!5225419))

(assert (= (and b!5225419 res!2218470) b!5225420))

(declare-fun m!6272236 () Bool)

(assert (=> b!5225419 m!6272236))

(declare-fun m!6272238 () Bool)

(assert (=> b!5225420 m!6272238))

(assert (=> d!1684269 d!1684671))

(declare-fun d!1684673 () Bool)

(declare-fun e!3252226 () Bool)

(assert (=> d!1684673 e!3252226))

(declare-fun res!2218476 () Bool)

(assert (=> d!1684673 (=> (not res!2218476) (not e!3252226))))

(declare-fun res!2218475 () List!60746)

(assert (=> d!1684673 (= res!2218476 (noDuplicate!1195 res!2218475))))

(declare-fun e!3252225 () Bool)

(assert (=> d!1684673 e!3252225))

(assert (=> d!1684673 (= (choose!38862 z!1189) res!2218475)))

(declare-fun b!5225428 () Bool)

(declare-fun e!3252224 () Bool)

(declare-fun tp!1464599 () Bool)

(assert (=> b!5225428 (= e!3252224 tp!1464599)))

(declare-fun b!5225427 () Bool)

(declare-fun tp!1464598 () Bool)

(assert (=> b!5225427 (= e!3252225 (and (inv!80284 (h!67070 res!2218475)) e!3252224 tp!1464598))))

(declare-fun b!5225429 () Bool)

(assert (=> b!5225429 (= e!3252226 (= (content!10753 res!2218475) z!1189))))

(assert (= b!5225427 b!5225428))

(assert (= (and d!1684673 ((_ is Cons!60622) res!2218475)) b!5225427))

(assert (= (and d!1684673 res!2218476) b!5225429))

(declare-fun m!6272240 () Bool)

(assert (=> d!1684673 m!6272240))

(declare-fun m!6272242 () Bool)

(assert (=> b!5225427 m!6272242))

(declare-fun m!6272244 () Bool)

(assert (=> b!5225429 m!6272244))

(assert (=> d!1684269 d!1684673))

(declare-fun d!1684675 () Bool)

(assert (=> d!1684675 (= (Exists!1996 lambda!262287) (choose!38859 lambda!262287))))

(declare-fun bs!1213271 () Bool)

(assert (= bs!1213271 d!1684675))

(declare-fun m!6272246 () Bool)

(assert (=> bs!1213271 m!6272246))

(assert (=> d!1684251 d!1684675))

(declare-fun d!1684677 () Bool)

(assert (=> d!1684677 (= (Exists!1996 lambda!262288) (choose!38859 lambda!262288))))

(declare-fun bs!1213272 () Bool)

(assert (= bs!1213272 d!1684677))

(declare-fun m!6272248 () Bool)

(assert (=> bs!1213272 m!6272248))

(assert (=> d!1684251 d!1684677))

(declare-fun bs!1213273 () Bool)

(declare-fun d!1684679 () Bool)

(assert (= bs!1213273 (and d!1684679 b!5223795)))

(declare-fun lambda!262343 () Int)

(assert (=> bs!1213273 (not (= lambda!262343 lambda!262228))))

(declare-fun bs!1213274 () Bool)

(assert (= bs!1213274 (and d!1684679 b!5224354)))

(assert (=> bs!1213274 (not (= lambda!262343 lambda!262271))))

(declare-fun bs!1213275 () Bool)

(assert (= bs!1213275 (and d!1684679 b!5224362)))

(assert (=> bs!1213275 (not (= lambda!262343 lambda!262272))))

(declare-fun bs!1213276 () Bool)

(assert (= bs!1213276 (and d!1684679 d!1684251)))

(assert (=> bs!1213276 (not (= lambda!262343 lambda!262288))))

(assert (=> bs!1213273 (= lambda!262343 lambda!262227)))

(declare-fun bs!1213277 () Bool)

(assert (= bs!1213277 (and d!1684679 d!1684255)))

(assert (=> bs!1213277 (= lambda!262343 lambda!262291)))

(assert (=> bs!1213276 (= lambda!262343 lambda!262287)))

(assert (=> d!1684679 true))

(assert (=> d!1684679 true))

(assert (=> d!1684679 true))

(declare-fun bs!1213278 () Bool)

(assert (= bs!1213278 d!1684679))

(declare-fun lambda!262344 () Int)

(assert (=> bs!1213278 (not (= lambda!262344 lambda!262343))))

(assert (=> bs!1213273 (= lambda!262344 lambda!262228)))

(assert (=> bs!1213274 (not (= lambda!262344 lambda!262271))))

(assert (=> bs!1213275 (= lambda!262344 lambda!262272)))

(assert (=> bs!1213276 (= lambda!262344 lambda!262288)))

(assert (=> bs!1213273 (not (= lambda!262344 lambda!262227))))

(assert (=> bs!1213277 (not (= lambda!262344 lambda!262291))))

(assert (=> bs!1213276 (not (= lambda!262344 lambda!262287))))

(assert (=> d!1684679 true))

(assert (=> d!1684679 true))

(assert (=> d!1684679 true))

(assert (=> d!1684679 (= (Exists!1996 lambda!262343) (Exists!1996 lambda!262344))))

(assert (=> d!1684679 true))

(declare-fun _$90!1030 () Unit!152540)

(assert (=> d!1684679 (= (choose!38860 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326) _$90!1030)))

(declare-fun m!6272250 () Bool)

(assert (=> bs!1213278 m!6272250))

(declare-fun m!6272252 () Bool)

(assert (=> bs!1213278 m!6272252))

(assert (=> d!1684251 d!1684679))

(assert (=> d!1684251 d!1684635))

(declare-fun b!5225449 () Bool)

(declare-fun e!3252235 () Bool)

(declare-fun lt!2144217 () List!60745)

(assert (=> b!5225449 (= e!3252235 (or (not (= (t!373918 s!2326) Nil!60621)) (= lt!2144217 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)))))))

(declare-fun b!5225447 () Bool)

(declare-fun e!3252236 () List!60745)

(assert (=> b!5225447 (= e!3252236 (Cons!60621 (h!67069 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))) (++!13219 (t!373918 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))) (t!373918 s!2326))))))

(declare-fun b!5225446 () Bool)

(assert (=> b!5225446 (= e!3252236 (t!373918 s!2326))))

(declare-fun d!1684681 () Bool)

(assert (=> d!1684681 e!3252235))

(declare-fun res!2218489 () Bool)

(assert (=> d!1684681 (=> (not res!2218489) (not e!3252235))))

(declare-fun content!10755 (List!60745) (InoxSet C!29900))

(assert (=> d!1684681 (= res!2218489 (= (content!10755 lt!2144217) ((_ map or) (content!10755 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))) (content!10755 (t!373918 s!2326)))))))

(assert (=> d!1684681 (= lt!2144217 e!3252236)))

(declare-fun c!902090 () Bool)

(assert (=> d!1684681 (= c!902090 ((_ is Nil!60621) (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))))))

(assert (=> d!1684681 (= (++!13219 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326)) lt!2144217)))

(declare-fun b!5225448 () Bool)

(declare-fun res!2218490 () Bool)

(assert (=> b!5225448 (=> (not res!2218490) (not e!3252235))))

(declare-fun size!39729 (List!60745) Int)

(assert (=> b!5225448 (= res!2218490 (= (size!39729 lt!2144217) (+ (size!39729 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))) (size!39729 (t!373918 s!2326)))))))

(assert (= (and d!1684681 c!902090) b!5225446))

(assert (= (and d!1684681 (not c!902090)) b!5225447))

(assert (= (and d!1684681 res!2218489) b!5225448))

(assert (= (and b!5225448 res!2218490) b!5225449))

(declare-fun m!6272254 () Bool)

(assert (=> b!5225447 m!6272254))

(declare-fun m!6272256 () Bool)

(assert (=> d!1684681 m!6272256))

(assert (=> d!1684681 m!6271388))

(declare-fun m!6272258 () Bool)

(assert (=> d!1684681 m!6272258))

(declare-fun m!6272260 () Bool)

(assert (=> d!1684681 m!6272260))

(declare-fun m!6272262 () Bool)

(assert (=> b!5225448 m!6272262))

(assert (=> b!5225448 m!6271388))

(declare-fun m!6272264 () Bool)

(assert (=> b!5225448 m!6272264))

(declare-fun m!6272266 () Bool)

(assert (=> b!5225448 m!6272266))

(assert (=> b!5224502 d!1684681))

(declare-fun b!5225453 () Bool)

(declare-fun e!3252237 () Bool)

(declare-fun lt!2144218 () List!60745)

(assert (=> b!5225453 (= e!3252237 (or (not (= (Cons!60621 (h!67069 s!2326) Nil!60621) Nil!60621)) (= lt!2144218 Nil!60621)))))

(declare-fun b!5225451 () Bool)

(declare-fun e!3252238 () List!60745)

(assert (=> b!5225451 (= e!3252238 (Cons!60621 (h!67069 Nil!60621) (++!13219 (t!373918 Nil!60621) (Cons!60621 (h!67069 s!2326) Nil!60621))))))

(declare-fun b!5225450 () Bool)

(assert (=> b!5225450 (= e!3252238 (Cons!60621 (h!67069 s!2326) Nil!60621))))

(declare-fun d!1684683 () Bool)

(assert (=> d!1684683 e!3252237))

(declare-fun res!2218491 () Bool)

(assert (=> d!1684683 (=> (not res!2218491) (not e!3252237))))

(assert (=> d!1684683 (= res!2218491 (= (content!10755 lt!2144218) ((_ map or) (content!10755 Nil!60621) (content!10755 (Cons!60621 (h!67069 s!2326) Nil!60621)))))))

(assert (=> d!1684683 (= lt!2144218 e!3252238)))

(declare-fun c!902091 () Bool)

(assert (=> d!1684683 (= c!902091 ((_ is Nil!60621) Nil!60621))))

(assert (=> d!1684683 (= (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) lt!2144218)))

(declare-fun b!5225452 () Bool)

(declare-fun res!2218492 () Bool)

(assert (=> b!5225452 (=> (not res!2218492) (not e!3252237))))

(assert (=> b!5225452 (= res!2218492 (= (size!39729 lt!2144218) (+ (size!39729 Nil!60621) (size!39729 (Cons!60621 (h!67069 s!2326) Nil!60621)))))))

(assert (= (and d!1684683 c!902091) b!5225450))

(assert (= (and d!1684683 (not c!902091)) b!5225451))

(assert (= (and d!1684683 res!2218491) b!5225452))

(assert (= (and b!5225452 res!2218492) b!5225453))

(declare-fun m!6272268 () Bool)

(assert (=> b!5225451 m!6272268))

(declare-fun m!6272270 () Bool)

(assert (=> d!1684683 m!6272270))

(declare-fun m!6272272 () Bool)

(assert (=> d!1684683 m!6272272))

(declare-fun m!6272274 () Bool)

(assert (=> d!1684683 m!6272274))

(declare-fun m!6272276 () Bool)

(assert (=> b!5225452 m!6272276))

(declare-fun m!6272278 () Bool)

(assert (=> b!5225452 m!6272278))

(declare-fun m!6272280 () Bool)

(assert (=> b!5225452 m!6272280))

(assert (=> b!5224502 d!1684683))

(declare-fun d!1684685 () Bool)

(assert (=> d!1684685 (= (++!13219 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326)) s!2326)))

(declare-fun lt!2144221 () Unit!152540)

(declare-fun choose!38864 (List!60745 C!29900 List!60745 List!60745) Unit!152540)

(assert (=> d!1684685 (= lt!2144221 (choose!38864 Nil!60621 (h!67069 s!2326) (t!373918 s!2326) s!2326))))

(assert (=> d!1684685 (= (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) (t!373918 s!2326))) s!2326)))

(assert (=> d!1684685 (= (lemmaMoveElementToOtherListKeepsConcatEq!1634 Nil!60621 (h!67069 s!2326) (t!373918 s!2326) s!2326) lt!2144221)))

(declare-fun bs!1213279 () Bool)

(assert (= bs!1213279 d!1684685))

(assert (=> bs!1213279 m!6271388))

(assert (=> bs!1213279 m!6271388))

(assert (=> bs!1213279 m!6271390))

(declare-fun m!6272282 () Bool)

(assert (=> bs!1213279 m!6272282))

(declare-fun m!6272284 () Bool)

(assert (=> bs!1213279 m!6272284))

(assert (=> b!5224502 d!1684685))

(declare-fun b!5225454 () Bool)

(declare-fun lt!2144224 () Unit!152540)

(declare-fun lt!2144222 () Unit!152540)

(assert (=> b!5225454 (= lt!2144224 lt!2144222)))

(assert (=> b!5225454 (= (++!13219 (++!13219 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (Cons!60621 (h!67069 (t!373918 s!2326)) Nil!60621)) (t!373918 (t!373918 s!2326))) s!2326)))

(assert (=> b!5225454 (= lt!2144222 (lemmaMoveElementToOtherListKeepsConcatEq!1634 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (h!67069 (t!373918 s!2326)) (t!373918 (t!373918 s!2326)) s!2326))))

(declare-fun e!3252243 () Option!14926)

(assert (=> b!5225454 (= e!3252243 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) (++!13219 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (Cons!60621 (h!67069 (t!373918 s!2326)) Nil!60621)) (t!373918 (t!373918 s!2326)) s!2326))))

(declare-fun b!5225455 () Bool)

(assert (=> b!5225455 (= e!3252243 None!14925)))

(declare-fun b!5225456 () Bool)

(declare-fun e!3252240 () Option!14926)

(assert (=> b!5225456 (= e!3252240 e!3252243)))

(declare-fun c!902092 () Bool)

(assert (=> b!5225456 (= c!902092 ((_ is Nil!60621) (t!373918 s!2326)))))

(declare-fun b!5225457 () Bool)

(declare-fun res!2218494 () Bool)

(declare-fun e!3252239 () Bool)

(assert (=> b!5225457 (=> (not res!2218494) (not e!3252239))))

(declare-fun lt!2144223 () Option!14926)

(assert (=> b!5225457 (= res!2218494 (matchR!7000 (regOne!30142 r!7292) (_1!35317 (get!20832 lt!2144223))))))

(declare-fun b!5225458 () Bool)

(declare-fun res!2218493 () Bool)

(assert (=> b!5225458 (=> (not res!2218493) (not e!3252239))))

(assert (=> b!5225458 (= res!2218493 (matchR!7000 (regTwo!30142 r!7292) (_2!35317 (get!20832 lt!2144223))))))

(declare-fun b!5225459 () Bool)

(declare-fun e!3252242 () Bool)

(assert (=> b!5225459 (= e!3252242 (matchR!7000 (regTwo!30142 r!7292) (t!373918 s!2326)))))

(declare-fun b!5225461 () Bool)

(assert (=> b!5225461 (= e!3252240 (Some!14925 (tuple2!64029 (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326))))))

(declare-fun b!5225462 () Bool)

(declare-fun e!3252241 () Bool)

(assert (=> b!5225462 (= e!3252241 (not (isDefined!11629 lt!2144223)))))

(declare-fun d!1684687 () Bool)

(assert (=> d!1684687 e!3252241))

(declare-fun res!2218496 () Bool)

(assert (=> d!1684687 (=> res!2218496 e!3252241)))

(assert (=> d!1684687 (= res!2218496 e!3252239)))

(declare-fun res!2218497 () Bool)

(assert (=> d!1684687 (=> (not res!2218497) (not e!3252239))))

(assert (=> d!1684687 (= res!2218497 (isDefined!11629 lt!2144223))))

(assert (=> d!1684687 (= lt!2144223 e!3252240)))

(declare-fun c!902093 () Bool)

(assert (=> d!1684687 (= c!902093 e!3252242)))

(declare-fun res!2218495 () Bool)

(assert (=> d!1684687 (=> (not res!2218495) (not e!3252242))))

(assert (=> d!1684687 (= res!2218495 (matchR!7000 (regOne!30142 r!7292) (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621))))))

(assert (=> d!1684687 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684687 (= (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) (++!13219 Nil!60621 (Cons!60621 (h!67069 s!2326) Nil!60621)) (t!373918 s!2326) s!2326) lt!2144223)))

(declare-fun b!5225460 () Bool)

(assert (=> b!5225460 (= e!3252239 (= (++!13219 (_1!35317 (get!20832 lt!2144223)) (_2!35317 (get!20832 lt!2144223))) s!2326))))

(assert (= (and d!1684687 res!2218495) b!5225459))

(assert (= (and d!1684687 c!902093) b!5225461))

(assert (= (and d!1684687 (not c!902093)) b!5225456))

(assert (= (and b!5225456 c!902092) b!5225455))

(assert (= (and b!5225456 (not c!902092)) b!5225454))

(assert (= (and d!1684687 res!2218497) b!5225457))

(assert (= (and b!5225457 res!2218494) b!5225458))

(assert (= (and b!5225458 res!2218493) b!5225460))

(assert (= (and d!1684687 (not res!2218496)) b!5225462))

(declare-fun m!6272286 () Bool)

(assert (=> b!5225460 m!6272286))

(declare-fun m!6272288 () Bool)

(assert (=> b!5225460 m!6272288))

(declare-fun m!6272290 () Bool)

(assert (=> b!5225459 m!6272290))

(assert (=> b!5225454 m!6271388))

(declare-fun m!6272292 () Bool)

(assert (=> b!5225454 m!6272292))

(assert (=> b!5225454 m!6272292))

(declare-fun m!6272294 () Bool)

(assert (=> b!5225454 m!6272294))

(assert (=> b!5225454 m!6271388))

(declare-fun m!6272296 () Bool)

(assert (=> b!5225454 m!6272296))

(assert (=> b!5225454 m!6272292))

(declare-fun m!6272298 () Bool)

(assert (=> b!5225454 m!6272298))

(declare-fun m!6272300 () Bool)

(assert (=> d!1684687 m!6272300))

(assert (=> d!1684687 m!6271388))

(declare-fun m!6272302 () Bool)

(assert (=> d!1684687 m!6272302))

(assert (=> d!1684687 m!6271400))

(assert (=> b!5225457 m!6272286))

(declare-fun m!6272304 () Bool)

(assert (=> b!5225457 m!6272304))

(assert (=> b!5225458 m!6272286))

(declare-fun m!6272306 () Bool)

(assert (=> b!5225458 m!6272306))

(assert (=> b!5225462 m!6272300))

(assert (=> b!5224502 d!1684687))

(declare-fun d!1684689 () Bool)

(assert (=> d!1684689 (= (nullable!4984 (h!67068 (exprs!4699 lt!2144085))) (nullableFct!1391 (h!67068 (exprs!4699 lt!2144085))))))

(declare-fun bs!1213280 () Bool)

(assert (= bs!1213280 d!1684689))

(declare-fun m!6272308 () Bool)

(assert (=> bs!1213280 m!6272308))

(assert (=> b!5224460 d!1684689))

(declare-fun b!5225463 () Bool)

(declare-fun res!2218499 () Bool)

(declare-fun e!3252249 () Bool)

(assert (=> b!5225463 (=> res!2218499 e!3252249)))

(assert (=> b!5225463 (= res!2218499 (not ((_ is Concat!23660) (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292)))))))

(declare-fun e!3252245 () Bool)

(assert (=> b!5225463 (= e!3252245 e!3252249)))

(declare-fun b!5225464 () Bool)

(declare-fun e!3252247 () Bool)

(declare-fun call!369166 () Bool)

(assert (=> b!5225464 (= e!3252247 call!369166)))

(declare-fun call!369168 () Bool)

(declare-fun bm!369161 () Bool)

(declare-fun c!902094 () Bool)

(declare-fun c!902095 () Bool)

(assert (=> bm!369161 (= call!369168 (validRegex!6551 (ite c!902095 (reg!15144 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))) (ite c!902094 (regOne!30143 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))) (regOne!30142 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292)))))))))

(declare-fun b!5225465 () Bool)

(declare-fun e!3252250 () Bool)

(assert (=> b!5225465 (= e!3252250 call!369166)))

(declare-fun d!1684691 () Bool)

(declare-fun res!2218502 () Bool)

(declare-fun e!3252244 () Bool)

(assert (=> d!1684691 (=> res!2218502 e!3252244)))

(assert (=> d!1684691 (= res!2218502 ((_ is ElementMatch!14815) (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))

(assert (=> d!1684691 (= (validRegex!6551 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))) e!3252244)))

(declare-fun b!5225466 () Bool)

(declare-fun e!3252246 () Bool)

(assert (=> b!5225466 (= e!3252246 call!369168)))

(declare-fun b!5225467 () Bool)

(assert (=> b!5225467 (= e!3252249 e!3252250)))

(declare-fun res!2218498 () Bool)

(assert (=> b!5225467 (=> (not res!2218498) (not e!3252250))))

(declare-fun call!369167 () Bool)

(assert (=> b!5225467 (= res!2218498 call!369167)))

(declare-fun b!5225468 () Bool)

(declare-fun res!2218501 () Bool)

(assert (=> b!5225468 (=> (not res!2218501) (not e!3252247))))

(assert (=> b!5225468 (= res!2218501 call!369167)))

(assert (=> b!5225468 (= e!3252245 e!3252247)))

(declare-fun b!5225469 () Bool)

(declare-fun e!3252248 () Bool)

(assert (=> b!5225469 (= e!3252248 e!3252245)))

(assert (=> b!5225469 (= c!902094 ((_ is Union!14815) (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))

(declare-fun b!5225470 () Bool)

(assert (=> b!5225470 (= e!3252248 e!3252246)))

(declare-fun res!2218500 () Bool)

(assert (=> b!5225470 (= res!2218500 (not (nullable!4984 (reg!15144 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))))

(assert (=> b!5225470 (=> (not res!2218500) (not e!3252246))))

(declare-fun bm!369162 () Bool)

(assert (=> bm!369162 (= call!369166 (validRegex!6551 (ite c!902094 (regTwo!30143 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))) (regTwo!30142 (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))))

(declare-fun bm!369163 () Bool)

(assert (=> bm!369163 (= call!369167 call!369168)))

(declare-fun b!5225471 () Bool)

(assert (=> b!5225471 (= e!3252244 e!3252248)))

(assert (=> b!5225471 (= c!902095 ((_ is Star!14815) (ite c!901869 (regTwo!30143 r!7292) (regTwo!30142 r!7292))))))

(assert (= (and d!1684691 (not res!2218502)) b!5225471))

(assert (= (and b!5225471 c!902095) b!5225470))

(assert (= (and b!5225471 (not c!902095)) b!5225469))

(assert (= (and b!5225470 res!2218500) b!5225466))

(assert (= (and b!5225469 c!902094) b!5225468))

(assert (= (and b!5225469 (not c!902094)) b!5225463))

(assert (= (and b!5225468 res!2218501) b!5225464))

(assert (= (and b!5225463 (not res!2218499)) b!5225467))

(assert (= (and b!5225467 res!2218498) b!5225465))

(assert (= (or b!5225464 b!5225465) bm!369162))

(assert (= (or b!5225468 b!5225467) bm!369163))

(assert (= (or b!5225466 bm!369163) bm!369161))

(declare-fun m!6272310 () Bool)

(assert (=> bm!369161 m!6272310))

(declare-fun m!6272312 () Bool)

(assert (=> b!5225470 m!6272312))

(declare-fun m!6272314 () Bool)

(assert (=> bm!369162 m!6272314))

(assert (=> bm!368983 d!1684691))

(declare-fun b!5225472 () Bool)

(declare-fun res!2218506 () Bool)

(declare-fun e!3252256 () Bool)

(assert (=> b!5225472 (=> res!2218506 e!3252256)))

(declare-fun e!3252257 () Bool)

(assert (=> b!5225472 (= res!2218506 e!3252257)))

(declare-fun res!2218505 () Bool)

(assert (=> b!5225472 (=> (not res!2218505) (not e!3252257))))

(declare-fun lt!2144225 () Bool)

(assert (=> b!5225472 (= res!2218505 lt!2144225)))

(declare-fun b!5225473 () Bool)

(declare-fun e!3252252 () Bool)

(assert (=> b!5225473 (= e!3252252 (not (= (head!11198 (_1!35317 (get!20832 lt!2144169))) (c!901653 (regOne!30142 r!7292)))))))

(declare-fun b!5225474 () Bool)

(declare-fun e!3252255 () Bool)

(assert (=> b!5225474 (= e!3252255 (nullable!4984 (regOne!30142 r!7292)))))

(declare-fun b!5225475 () Bool)

(declare-fun e!3252251 () Bool)

(assert (=> b!5225475 (= e!3252251 e!3252252)))

(declare-fun res!2218504 () Bool)

(assert (=> b!5225475 (=> res!2218504 e!3252252)))

(declare-fun call!369169 () Bool)

(assert (=> b!5225475 (= res!2218504 call!369169)))

(declare-fun bm!369164 () Bool)

(assert (=> bm!369164 (= call!369169 (isEmpty!32545 (_1!35317 (get!20832 lt!2144169))))))

(declare-fun b!5225476 () Bool)

(declare-fun e!3252253 () Bool)

(declare-fun e!3252254 () Bool)

(assert (=> b!5225476 (= e!3252253 e!3252254)))

(declare-fun c!902098 () Bool)

(assert (=> b!5225476 (= c!902098 ((_ is EmptyLang!14815) (regOne!30142 r!7292)))))

(declare-fun b!5225477 () Bool)

(declare-fun res!2218507 () Bool)

(assert (=> b!5225477 (=> res!2218507 e!3252256)))

(assert (=> b!5225477 (= res!2218507 (not ((_ is ElementMatch!14815) (regOne!30142 r!7292))))))

(assert (=> b!5225477 (= e!3252254 e!3252256)))

(declare-fun d!1684693 () Bool)

(assert (=> d!1684693 e!3252253))

(declare-fun c!902097 () Bool)

(assert (=> d!1684693 (= c!902097 ((_ is EmptyExpr!14815) (regOne!30142 r!7292)))))

(assert (=> d!1684693 (= lt!2144225 e!3252255)))

(declare-fun c!902096 () Bool)

(assert (=> d!1684693 (= c!902096 (isEmpty!32545 (_1!35317 (get!20832 lt!2144169))))))

(assert (=> d!1684693 (validRegex!6551 (regOne!30142 r!7292))))

(assert (=> d!1684693 (= (matchR!7000 (regOne!30142 r!7292) (_1!35317 (get!20832 lt!2144169))) lt!2144225)))

(declare-fun b!5225478 () Bool)

(declare-fun res!2218508 () Bool)

(assert (=> b!5225478 (=> (not res!2218508) (not e!3252257))))

(assert (=> b!5225478 (= res!2218508 (not call!369169))))

(declare-fun b!5225479 () Bool)

(assert (=> b!5225479 (= e!3252253 (= lt!2144225 call!369169))))

(declare-fun b!5225480 () Bool)

(assert (=> b!5225480 (= e!3252257 (= (head!11198 (_1!35317 (get!20832 lt!2144169))) (c!901653 (regOne!30142 r!7292))))))

(declare-fun b!5225481 () Bool)

(declare-fun res!2218503 () Bool)

(assert (=> b!5225481 (=> res!2218503 e!3252252)))

(assert (=> b!5225481 (= res!2218503 (not (isEmpty!32545 (tail!10295 (_1!35317 (get!20832 lt!2144169))))))))

(declare-fun b!5225482 () Bool)

(assert (=> b!5225482 (= e!3252255 (matchR!7000 (derivativeStep!4061 (regOne!30142 r!7292) (head!11198 (_1!35317 (get!20832 lt!2144169)))) (tail!10295 (_1!35317 (get!20832 lt!2144169)))))))

(declare-fun b!5225483 () Bool)

(assert (=> b!5225483 (= e!3252254 (not lt!2144225))))

(declare-fun b!5225484 () Bool)

(assert (=> b!5225484 (= e!3252256 e!3252251)))

(declare-fun res!2218510 () Bool)

(assert (=> b!5225484 (=> (not res!2218510) (not e!3252251))))

(assert (=> b!5225484 (= res!2218510 (not lt!2144225))))

(declare-fun b!5225485 () Bool)

(declare-fun res!2218509 () Bool)

(assert (=> b!5225485 (=> (not res!2218509) (not e!3252257))))

(assert (=> b!5225485 (= res!2218509 (isEmpty!32545 (tail!10295 (_1!35317 (get!20832 lt!2144169)))))))

(assert (= (and d!1684693 c!902096) b!5225474))

(assert (= (and d!1684693 (not c!902096)) b!5225482))

(assert (= (and d!1684693 c!902097) b!5225479))

(assert (= (and d!1684693 (not c!902097)) b!5225476))

(assert (= (and b!5225476 c!902098) b!5225483))

(assert (= (and b!5225476 (not c!902098)) b!5225477))

(assert (= (and b!5225477 (not res!2218507)) b!5225472))

(assert (= (and b!5225472 res!2218505) b!5225478))

(assert (= (and b!5225478 res!2218508) b!5225485))

(assert (= (and b!5225485 res!2218509) b!5225480))

(assert (= (and b!5225472 (not res!2218506)) b!5225484))

(assert (= (and b!5225484 res!2218510) b!5225475))

(assert (= (and b!5225475 (not res!2218504)) b!5225481))

(assert (= (and b!5225481 (not res!2218503)) b!5225473))

(assert (= (or b!5225479 b!5225475 b!5225478) bm!369164))

(assert (=> b!5225474 m!6272164))

(declare-fun m!6272316 () Bool)

(assert (=> d!1684693 m!6272316))

(assert (=> d!1684693 m!6271400))

(declare-fun m!6272318 () Bool)

(assert (=> b!5225481 m!6272318))

(assert (=> b!5225481 m!6272318))

(declare-fun m!6272320 () Bool)

(assert (=> b!5225481 m!6272320))

(assert (=> b!5225485 m!6272318))

(assert (=> b!5225485 m!6272318))

(assert (=> b!5225485 m!6272320))

(assert (=> bm!369164 m!6272316))

(declare-fun m!6272322 () Bool)

(assert (=> b!5225480 m!6272322))

(assert (=> b!5225473 m!6272322))

(assert (=> b!5225482 m!6272322))

(assert (=> b!5225482 m!6272322))

(declare-fun m!6272324 () Bool)

(assert (=> b!5225482 m!6272324))

(assert (=> b!5225482 m!6272318))

(assert (=> b!5225482 m!6272324))

(assert (=> b!5225482 m!6272318))

(declare-fun m!6272326 () Bool)

(assert (=> b!5225482 m!6272326))

(assert (=> b!5224505 d!1684693))

(assert (=> b!5224505 d!1684585))

(declare-fun bs!1213281 () Bool)

(declare-fun d!1684695 () Bool)

(assert (= bs!1213281 (and d!1684695 d!1684623)))

(declare-fun lambda!262345 () Int)

(assert (=> bs!1213281 (= lambda!262345 lambda!262335)))

(declare-fun bs!1213282 () Bool)

(assert (= bs!1213282 (and d!1684695 d!1684669)))

(assert (=> bs!1213282 (= lambda!262345 lambda!262338)))

(declare-fun bs!1213283 () Bool)

(assert (= bs!1213283 (and d!1684695 d!1684213)))

(assert (=> bs!1213283 (= lambda!262345 lambda!262278)))

(declare-fun bs!1213284 () Bool)

(assert (= bs!1213284 (and d!1684695 d!1684243)))

(assert (=> bs!1213284 (= lambda!262345 lambda!262282)))

(declare-fun bs!1213285 () Bool)

(assert (= bs!1213285 (and d!1684695 d!1684191)))

(assert (=> bs!1213285 (= lambda!262345 lambda!262263)))

(declare-fun bs!1213286 () Bool)

(assert (= bs!1213286 (and d!1684695 d!1684211)))

(assert (=> bs!1213286 (= lambda!262345 lambda!262275)))

(declare-fun bs!1213287 () Bool)

(assert (= bs!1213287 (and d!1684695 d!1684199)))

(assert (=> bs!1213287 (= lambda!262345 lambda!262266)))

(assert (=> d!1684695 (= (inv!80284 setElem!33247) (forall!14247 (exprs!4699 setElem!33247) lambda!262345))))

(declare-fun bs!1213288 () Bool)

(assert (= bs!1213288 d!1684695))

(declare-fun m!6272328 () Bool)

(assert (=> bs!1213288 m!6272328))

(assert (=> setNonEmpty!33247 d!1684695))

(declare-fun b!5225486 () Bool)

(declare-fun e!3252259 () Bool)

(assert (=> b!5225486 (= e!3252259 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 lt!2144070)))))))

(declare-fun b!5225487 () Bool)

(declare-fun e!3252261 () (InoxSet Context!8398))

(declare-fun call!369170 () (InoxSet Context!8398))

(assert (=> b!5225487 (= e!3252261 call!369170)))

(declare-fun b!5225488 () Bool)

(declare-fun c!902099 () Bool)

(assert (=> b!5225488 (= c!902099 e!3252259)))

(declare-fun res!2218511 () Bool)

(assert (=> b!5225488 (=> (not res!2218511) (not e!3252259))))

(assert (=> b!5225488 (= res!2218511 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144070))))))

(declare-fun e!3252262 () (InoxSet Context!8398))

(declare-fun e!3252258 () (InoxSet Context!8398))

(assert (=> b!5225488 (= e!3252262 e!3252258)))

(declare-fun bm!369165 () Bool)

(declare-fun c!902102 () Bool)

(declare-fun call!369172 () List!60744)

(assert (=> bm!369165 (= call!369172 ($colon$colon!1289 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144070)))) (ite (or c!902099 c!902102) (regTwo!30142 (h!67068 (exprs!4699 lt!2144070))) (h!67068 (exprs!4699 lt!2144070)))))))

(declare-fun b!5225489 () Bool)

(declare-fun call!369175 () (InoxSet Context!8398))

(declare-fun call!369171 () (InoxSet Context!8398))

(assert (=> b!5225489 (= e!3252262 ((_ map or) call!369175 call!369171))))

(declare-fun b!5225490 () Bool)

(assert (=> b!5225490 (= e!3252258 e!3252261)))

(assert (=> b!5225490 (= c!902102 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144070))))))

(declare-fun b!5225491 () Bool)

(declare-fun e!3252263 () (InoxSet Context!8398))

(assert (=> b!5225491 (= e!3252263 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369166 () Bool)

(declare-fun c!902103 () Bool)

(assert (=> bm!369166 (= call!369175 (derivationStepZipperDown!263 (ite c!902103 (regOne!30143 (h!67068 (exprs!4699 lt!2144070))) (regOne!30142 (h!67068 (exprs!4699 lt!2144070)))) (ite c!902103 (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (Context!8399 call!369172)) (h!67069 s!2326)))))

(declare-fun b!5225493 () Bool)

(assert (=> b!5225493 (= e!3252263 call!369170)))

(declare-fun bm!369167 () Bool)

(declare-fun call!369174 () List!60744)

(assert (=> bm!369167 (= call!369171 (derivationStepZipperDown!263 (ite c!902103 (regTwo!30143 (h!67068 (exprs!4699 lt!2144070))) (ite c!902099 (regTwo!30142 (h!67068 (exprs!4699 lt!2144070))) (ite c!902102 (regOne!30142 (h!67068 (exprs!4699 lt!2144070))) (reg!15144 (h!67068 (exprs!4699 lt!2144070)))))) (ite (or c!902103 c!902099) (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (Context!8399 call!369174)) (h!67069 s!2326)))))

(declare-fun b!5225494 () Bool)

(declare-fun e!3252260 () (InoxSet Context!8398))

(assert (=> b!5225494 (= e!3252260 (store ((as const (Array Context!8398 Bool)) false) (Context!8399 (t!373917 (exprs!4699 lt!2144070))) true))))

(declare-fun b!5225495 () Bool)

(assert (=> b!5225495 (= e!3252260 e!3252262)))

(assert (=> b!5225495 (= c!902103 ((_ is Union!14815) (h!67068 (exprs!4699 lt!2144070))))))

(declare-fun bm!369168 () Bool)

(assert (=> bm!369168 (= call!369174 call!369172)))

(declare-fun b!5225496 () Bool)

(declare-fun c!902100 () Bool)

(assert (=> b!5225496 (= c!902100 ((_ is Star!14815) (h!67068 (exprs!4699 lt!2144070))))))

(assert (=> b!5225496 (= e!3252261 e!3252263)))

(declare-fun b!5225492 () Bool)

(declare-fun call!369173 () (InoxSet Context!8398))

(assert (=> b!5225492 (= e!3252258 ((_ map or) call!369175 call!369173))))

(declare-fun d!1684697 () Bool)

(declare-fun c!902101 () Bool)

(assert (=> d!1684697 (= c!902101 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 lt!2144070))) (= (c!901653 (h!67068 (exprs!4699 lt!2144070))) (h!67069 s!2326))))))

(assert (=> d!1684697 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144070)) (Context!8399 (t!373917 (exprs!4699 lt!2144070))) (h!67069 s!2326)) e!3252260)))

(declare-fun bm!369169 () Bool)

(assert (=> bm!369169 (= call!369173 call!369171)))

(declare-fun bm!369170 () Bool)

(assert (=> bm!369170 (= call!369170 call!369173)))

(assert (= (and d!1684697 c!902101) b!5225494))

(assert (= (and d!1684697 (not c!902101)) b!5225495))

(assert (= (and b!5225495 c!902103) b!5225489))

(assert (= (and b!5225495 (not c!902103)) b!5225488))

(assert (= (and b!5225488 res!2218511) b!5225486))

(assert (= (and b!5225488 c!902099) b!5225492))

(assert (= (and b!5225488 (not c!902099)) b!5225490))

(assert (= (and b!5225490 c!902102) b!5225487))

(assert (= (and b!5225490 (not c!902102)) b!5225496))

(assert (= (and b!5225496 c!902100) b!5225493))

(assert (= (and b!5225496 (not c!902100)) b!5225491))

(assert (= (or b!5225487 b!5225493) bm!369168))

(assert (= (or b!5225487 b!5225493) bm!369170))

(assert (= (or b!5225492 bm!369168) bm!369165))

(assert (= (or b!5225492 bm!369170) bm!369169))

(assert (= (or b!5225489 bm!369169) bm!369167))

(assert (= (or b!5225489 b!5225492) bm!369166))

(declare-fun m!6272330 () Bool)

(assert (=> bm!369166 m!6272330))

(declare-fun m!6272332 () Bool)

(assert (=> bm!369167 m!6272332))

(declare-fun m!6272334 () Bool)

(assert (=> bm!369165 m!6272334))

(declare-fun m!6272336 () Bool)

(assert (=> b!5225486 m!6272336))

(declare-fun m!6272338 () Bool)

(assert (=> b!5225494 m!6272338))

(assert (=> bm!368981 d!1684697))

(assert (=> d!1684209 d!1684593))

(declare-fun bs!1213289 () Bool)

(declare-fun d!1684699 () Bool)

(assert (= bs!1213289 (and d!1684699 d!1684609)))

(declare-fun lambda!262346 () Int)

(assert (=> bs!1213289 (= lambda!262346 lambda!262333)))

(declare-fun bs!1213290 () Bool)

(assert (= bs!1213290 (and d!1684699 d!1684625)))

(assert (=> bs!1213290 (= lambda!262346 lambda!262336)))

(assert (=> d!1684699 (= (nullableZipper!1239 lt!2144093) (exists!1974 lt!2144093 lambda!262346))))

(declare-fun bs!1213291 () Bool)

(assert (= bs!1213291 d!1684699))

(declare-fun m!6272340 () Bool)

(assert (=> bs!1213291 m!6272340))

(assert (=> b!5224480 d!1684699))

(declare-fun bs!1213292 () Bool)

(declare-fun d!1684701 () Bool)

(assert (= bs!1213292 (and d!1684701 d!1684609)))

(declare-fun lambda!262347 () Int)

(assert (=> bs!1213292 (= lambda!262347 lambda!262333)))

(declare-fun bs!1213293 () Bool)

(assert (= bs!1213293 (and d!1684701 d!1684625)))

(assert (=> bs!1213293 (= lambda!262347 lambda!262336)))

(declare-fun bs!1213294 () Bool)

(assert (= bs!1213294 (and d!1684701 d!1684699)))

(assert (=> bs!1213294 (= lambda!262347 lambda!262346)))

(assert (=> d!1684701 (= (nullableZipper!1239 ((_ map or) lt!2144069 lt!2144075)) (exists!1974 ((_ map or) lt!2144069 lt!2144075) lambda!262347))))

(declare-fun bs!1213295 () Bool)

(assert (= bs!1213295 d!1684701))

(declare-fun m!6272342 () Bool)

(assert (=> bs!1213295 m!6272342))

(assert (=> b!5224527 d!1684701))

(assert (=> d!1684237 d!1684593))

(declare-fun d!1684703 () Bool)

(assert (=> d!1684703 (= (isEmptyLang!784 lt!2144151) ((_ is EmptyLang!14815) lt!2144151))))

(assert (=> b!5224436 d!1684703))

(assert (=> b!5224392 d!1684653))

(declare-fun d!1684705 () Bool)

(declare-fun res!2218512 () Bool)

(declare-fun e!3252264 () Bool)

(assert (=> d!1684705 (=> res!2218512 e!3252264)))

(assert (=> d!1684705 (= res!2218512 ((_ is Nil!60620) (exprs!4699 setElem!33241)))))

(assert (=> d!1684705 (= (forall!14247 (exprs!4699 setElem!33241) lambda!262266) e!3252264)))

(declare-fun b!5225497 () Bool)

(declare-fun e!3252265 () Bool)

(assert (=> b!5225497 (= e!3252264 e!3252265)))

(declare-fun res!2218513 () Bool)

(assert (=> b!5225497 (=> (not res!2218513) (not e!3252265))))

(assert (=> b!5225497 (= res!2218513 (dynLambda!23955 lambda!262266 (h!67068 (exprs!4699 setElem!33241))))))

(declare-fun b!5225498 () Bool)

(assert (=> b!5225498 (= e!3252265 (forall!14247 (t!373917 (exprs!4699 setElem!33241)) lambda!262266))))

(assert (= (and d!1684705 (not res!2218512)) b!5225497))

(assert (= (and b!5225497 res!2218513) b!5225498))

(declare-fun b_lambda!202047 () Bool)

(assert (=> (not b_lambda!202047) (not b!5225497)))

(declare-fun m!6272344 () Bool)

(assert (=> b!5225497 m!6272344))

(declare-fun m!6272346 () Bool)

(assert (=> b!5225498 m!6272346))

(assert (=> d!1684199 d!1684705))

(declare-fun b!5225499 () Bool)

(declare-fun e!3252267 () Bool)

(declare-fun e!3252270 () Bool)

(assert (=> b!5225499 (= e!3252267 e!3252270)))

(declare-fun res!2218515 () Bool)

(assert (=> b!5225499 (=> (not res!2218515) (not e!3252270))))

(assert (=> b!5225499 (= res!2218515 (and (not ((_ is EmptyLang!14815) (regTwo!30143 (regOne!30142 r!7292)))) (not ((_ is ElementMatch!14815) (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225500 () Bool)

(declare-fun e!3252271 () Bool)

(declare-fun call!369177 () Bool)

(assert (=> b!5225500 (= e!3252271 call!369177)))

(declare-fun d!1684707 () Bool)

(declare-fun res!2218514 () Bool)

(assert (=> d!1684707 (=> res!2218514 e!3252267)))

(assert (=> d!1684707 (= res!2218514 ((_ is EmptyExpr!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(assert (=> d!1684707 (= (nullableFct!1391 (regTwo!30143 (regOne!30142 r!7292))) e!3252267)))

(declare-fun b!5225501 () Bool)

(declare-fun e!3252269 () Bool)

(assert (=> b!5225501 (= e!3252269 e!3252271)))

(declare-fun res!2218518 () Bool)

(declare-fun call!369176 () Bool)

(assert (=> b!5225501 (= res!2218518 call!369176)))

(assert (=> b!5225501 (=> res!2218518 e!3252271)))

(declare-fun b!5225502 () Bool)

(declare-fun e!3252268 () Bool)

(assert (=> b!5225502 (= e!3252269 e!3252268)))

(declare-fun res!2218517 () Bool)

(assert (=> b!5225502 (= res!2218517 call!369176)))

(assert (=> b!5225502 (=> (not res!2218517) (not e!3252268))))

(declare-fun bm!369171 () Bool)

(declare-fun c!902104 () Bool)

(assert (=> bm!369171 (= call!369177 (nullable!4984 (ite c!902104 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225503 () Bool)

(assert (=> b!5225503 (= e!3252268 call!369177)))

(declare-fun b!5225504 () Bool)

(declare-fun e!3252266 () Bool)

(assert (=> b!5225504 (= e!3252270 e!3252266)))

(declare-fun res!2218516 () Bool)

(assert (=> b!5225504 (=> res!2218516 e!3252266)))

(assert (=> b!5225504 (= res!2218516 ((_ is Star!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun b!5225505 () Bool)

(assert (=> b!5225505 (= e!3252266 e!3252269)))

(assert (=> b!5225505 (= c!902104 ((_ is Union!14815) (regTwo!30143 (regOne!30142 r!7292))))))

(declare-fun bm!369172 () Bool)

(assert (=> bm!369172 (= call!369176 (nullable!4984 (ite c!902104 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(assert (= (and d!1684707 (not res!2218514)) b!5225499))

(assert (= (and b!5225499 res!2218515) b!5225504))

(assert (= (and b!5225504 (not res!2218516)) b!5225505))

(assert (= (and b!5225505 c!902104) b!5225501))

(assert (= (and b!5225505 (not c!902104)) b!5225502))

(assert (= (and b!5225501 (not res!2218518)) b!5225500))

(assert (= (and b!5225502 res!2218517) b!5225503))

(assert (= (or b!5225500 b!5225503) bm!369171))

(assert (= (or b!5225501 b!5225502) bm!369172))

(declare-fun m!6272348 () Bool)

(assert (=> bm!369171 m!6272348))

(declare-fun m!6272350 () Bool)

(assert (=> bm!369172 m!6272350))

(assert (=> d!1684215 d!1684707))

(declare-fun b!5225506 () Bool)

(declare-fun res!2218520 () Bool)

(declare-fun e!3252277 () Bool)

(assert (=> b!5225506 (=> res!2218520 e!3252277)))

(assert (=> b!5225506 (= res!2218520 (not ((_ is Concat!23660) lt!2144184)))))

(declare-fun e!3252273 () Bool)

(assert (=> b!5225506 (= e!3252273 e!3252277)))

(declare-fun b!5225507 () Bool)

(declare-fun e!3252275 () Bool)

(declare-fun call!369178 () Bool)

(assert (=> b!5225507 (= e!3252275 call!369178)))

(declare-fun bm!369173 () Bool)

(declare-fun c!902106 () Bool)

(declare-fun call!369180 () Bool)

(declare-fun c!902105 () Bool)

(assert (=> bm!369173 (= call!369180 (validRegex!6551 (ite c!902106 (reg!15144 lt!2144184) (ite c!902105 (regOne!30143 lt!2144184) (regOne!30142 lt!2144184)))))))

(declare-fun b!5225508 () Bool)

(declare-fun e!3252278 () Bool)

(assert (=> b!5225508 (= e!3252278 call!369178)))

(declare-fun d!1684709 () Bool)

(declare-fun res!2218523 () Bool)

(declare-fun e!3252272 () Bool)

(assert (=> d!1684709 (=> res!2218523 e!3252272)))

(assert (=> d!1684709 (= res!2218523 ((_ is ElementMatch!14815) lt!2144184))))

(assert (=> d!1684709 (= (validRegex!6551 lt!2144184) e!3252272)))

(declare-fun b!5225509 () Bool)

(declare-fun e!3252274 () Bool)

(assert (=> b!5225509 (= e!3252274 call!369180)))

(declare-fun b!5225510 () Bool)

(assert (=> b!5225510 (= e!3252277 e!3252278)))

(declare-fun res!2218519 () Bool)

(assert (=> b!5225510 (=> (not res!2218519) (not e!3252278))))

(declare-fun call!369179 () Bool)

(assert (=> b!5225510 (= res!2218519 call!369179)))

(declare-fun b!5225511 () Bool)

(declare-fun res!2218522 () Bool)

(assert (=> b!5225511 (=> (not res!2218522) (not e!3252275))))

(assert (=> b!5225511 (= res!2218522 call!369179)))

(assert (=> b!5225511 (= e!3252273 e!3252275)))

(declare-fun b!5225512 () Bool)

(declare-fun e!3252276 () Bool)

(assert (=> b!5225512 (= e!3252276 e!3252273)))

(assert (=> b!5225512 (= c!902105 ((_ is Union!14815) lt!2144184))))

(declare-fun b!5225513 () Bool)

(assert (=> b!5225513 (= e!3252276 e!3252274)))

(declare-fun res!2218521 () Bool)

(assert (=> b!5225513 (= res!2218521 (not (nullable!4984 (reg!15144 lt!2144184))))))

(assert (=> b!5225513 (=> (not res!2218521) (not e!3252274))))

(declare-fun bm!369174 () Bool)

(assert (=> bm!369174 (= call!369178 (validRegex!6551 (ite c!902105 (regTwo!30143 lt!2144184) (regTwo!30142 lt!2144184))))))

(declare-fun bm!369175 () Bool)

(assert (=> bm!369175 (= call!369179 call!369180)))

(declare-fun b!5225514 () Bool)

(assert (=> b!5225514 (= e!3252272 e!3252276)))

(assert (=> b!5225514 (= c!902106 ((_ is Star!14815) lt!2144184))))

(assert (= (and d!1684709 (not res!2218523)) b!5225514))

(assert (= (and b!5225514 c!902106) b!5225513))

(assert (= (and b!5225514 (not c!902106)) b!5225512))

(assert (= (and b!5225513 res!2218521) b!5225509))

(assert (= (and b!5225512 c!902105) b!5225511))

(assert (= (and b!5225512 (not c!902105)) b!5225506))

(assert (= (and b!5225511 res!2218522) b!5225507))

(assert (= (and b!5225506 (not res!2218520)) b!5225510))

(assert (= (and b!5225510 res!2218519) b!5225508))

(assert (= (or b!5225507 b!5225508) bm!369174))

(assert (= (or b!5225511 b!5225510) bm!369175))

(assert (= (or b!5225509 bm!369175) bm!369173))

(declare-fun m!6272352 () Bool)

(assert (=> bm!369173 m!6272352))

(declare-fun m!6272354 () Bool)

(assert (=> b!5225513 m!6272354))

(declare-fun m!6272356 () Bool)

(assert (=> bm!369174 m!6272356))

(assert (=> d!1684273 d!1684709))

(assert (=> d!1684273 d!1684211))

(assert (=> d!1684273 d!1684213))

(declare-fun d!1684711 () Bool)

(assert (=> d!1684711 (= (isEmpty!32542 (exprs!4699 (h!67070 zl!343))) ((_ is Nil!60620) (exprs!4699 (h!67070 zl!343))))))

(assert (=> b!5224241 d!1684711))

(declare-fun b!5225515 () Bool)

(declare-fun res!2218525 () Bool)

(declare-fun e!3252284 () Bool)

(assert (=> b!5225515 (=> res!2218525 e!3252284)))

(assert (=> b!5225515 (= res!2218525 (not ((_ is Concat!23660) (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))))

(declare-fun e!3252280 () Bool)

(assert (=> b!5225515 (= e!3252280 e!3252284)))

(declare-fun b!5225516 () Bool)

(declare-fun e!3252282 () Bool)

(declare-fun call!369181 () Bool)

(assert (=> b!5225516 (= e!3252282 call!369181)))

(declare-fun c!902107 () Bool)

(declare-fun c!902108 () Bool)

(declare-fun call!369183 () Bool)

(declare-fun bm!369176 () Bool)

(assert (=> bm!369176 (= call!369183 (validRegex!6551 (ite c!902108 (reg!15144 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))) (ite c!902107 (regOne!30143 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))) (regOne!30142 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))))))

(declare-fun b!5225517 () Bool)

(declare-fun e!3252285 () Bool)

(assert (=> b!5225517 (= e!3252285 call!369181)))

(declare-fun d!1684713 () Bool)

(declare-fun res!2218528 () Bool)

(declare-fun e!3252279 () Bool)

(assert (=> d!1684713 (=> res!2218528 e!3252279)))

(assert (=> d!1684713 (= res!2218528 ((_ is ElementMatch!14815) (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(assert (=> d!1684713 (= (validRegex!6551 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))) e!3252279)))

(declare-fun b!5225518 () Bool)

(declare-fun e!3252281 () Bool)

(assert (=> b!5225518 (= e!3252281 call!369183)))

(declare-fun b!5225519 () Bool)

(assert (=> b!5225519 (= e!3252284 e!3252285)))

(declare-fun res!2218524 () Bool)

(assert (=> b!5225519 (=> (not res!2218524) (not e!3252285))))

(declare-fun call!369182 () Bool)

(assert (=> b!5225519 (= res!2218524 call!369182)))

(declare-fun b!5225520 () Bool)

(declare-fun res!2218527 () Bool)

(assert (=> b!5225520 (=> (not res!2218527) (not e!3252282))))

(assert (=> b!5225520 (= res!2218527 call!369182)))

(assert (=> b!5225520 (= e!3252280 e!3252282)))

(declare-fun b!5225521 () Bool)

(declare-fun e!3252283 () Bool)

(assert (=> b!5225521 (= e!3252283 e!3252280)))

(assert (=> b!5225521 (= c!902107 ((_ is Union!14815) (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5225522 () Bool)

(assert (=> b!5225522 (= e!3252283 e!3252281)))

(declare-fun res!2218526 () Bool)

(assert (=> b!5225522 (= res!2218526 (not (nullable!4984 (reg!15144 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))))

(assert (=> b!5225522 (=> (not res!2218526) (not e!3252281))))

(declare-fun bm!369177 () Bool)

(assert (=> bm!369177 (= call!369181 (validRegex!6551 (ite c!902107 (regTwo!30143 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))) (regTwo!30142 (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))))

(declare-fun bm!369178 () Bool)

(assert (=> bm!369178 (= call!369182 call!369183)))

(declare-fun b!5225523 () Bool)

(assert (=> b!5225523 (= e!3252279 e!3252283)))

(assert (=> b!5225523 (= c!902108 ((_ is Star!14815) (ite c!901805 (reg!15144 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901804 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(assert (= (and d!1684713 (not res!2218528)) b!5225523))

(assert (= (and b!5225523 c!902108) b!5225522))

(assert (= (and b!5225523 (not c!902108)) b!5225521))

(assert (= (and b!5225522 res!2218526) b!5225518))

(assert (= (and b!5225521 c!902107) b!5225520))

(assert (= (and b!5225521 (not c!902107)) b!5225515))

(assert (= (and b!5225520 res!2218527) b!5225516))

(assert (= (and b!5225515 (not res!2218525)) b!5225519))

(assert (= (and b!5225519 res!2218524) b!5225517))

(assert (= (or b!5225516 b!5225517) bm!369177))

(assert (= (or b!5225520 b!5225519) bm!369178))

(assert (= (or b!5225518 bm!369178) bm!369176))

(declare-fun m!6272358 () Bool)

(assert (=> bm!369176 m!6272358))

(declare-fun m!6272360 () Bool)

(assert (=> b!5225522 m!6272360))

(declare-fun m!6272362 () Bool)

(assert (=> bm!369177 m!6272362))

(assert (=> bm!368966 d!1684713))

(declare-fun bs!1213296 () Bool)

(declare-fun d!1684715 () Bool)

(assert (= bs!1213296 (and d!1684715 d!1684609)))

(declare-fun lambda!262348 () Int)

(assert (=> bs!1213296 (= lambda!262348 lambda!262333)))

(declare-fun bs!1213297 () Bool)

(assert (= bs!1213297 (and d!1684715 d!1684625)))

(assert (=> bs!1213297 (= lambda!262348 lambda!262336)))

(declare-fun bs!1213298 () Bool)

(assert (= bs!1213298 (and d!1684715 d!1684699)))

(assert (=> bs!1213298 (= lambda!262348 lambda!262346)))

(declare-fun bs!1213299 () Bool)

(assert (= bs!1213299 (and d!1684715 d!1684701)))

(assert (=> bs!1213299 (= lambda!262348 lambda!262347)))

(assert (=> d!1684715 (= (nullableZipper!1239 lt!2144073) (exists!1974 lt!2144073 lambda!262348))))

(declare-fun bs!1213300 () Bool)

(assert (= bs!1213300 d!1684715))

(declare-fun m!6272364 () Bool)

(assert (=> bs!1213300 m!6272364))

(assert (=> b!5224471 d!1684715))

(declare-fun d!1684717 () Bool)

(assert (=> d!1684717 (= ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901790 c!901793) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30143 (regOne!30142 r!7292)))) (Cons!60620 (ite (or c!901790 c!901793) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30143 (regOne!30142 r!7292))) (exprs!4699 lt!2144080)))))

(assert (=> bm!368948 d!1684717))

(declare-fun d!1684719 () Bool)

(declare-fun c!902109 () Bool)

(assert (=> d!1684719 (= c!902109 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252286 () Bool)

(assert (=> d!1684719 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144072 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252286)))

(declare-fun b!5225524 () Bool)

(assert (=> b!5225524 (= e!3252286 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144072 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225525 () Bool)

(assert (=> b!5225525 (= e!3252286 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144072 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684719 c!902109) b!5225524))

(assert (= (and d!1684719 (not c!902109)) b!5225525))

(assert (=> d!1684719 m!6271288))

(assert (=> d!1684719 m!6272108))

(assert (=> b!5225524 m!6271286))

(declare-fun m!6272366 () Bool)

(assert (=> b!5225524 m!6272366))

(assert (=> b!5225525 m!6271288))

(assert (=> b!5225525 m!6272112))

(assert (=> b!5225525 m!6271286))

(assert (=> b!5225525 m!6272112))

(declare-fun m!6272368 () Bool)

(assert (=> b!5225525 m!6272368))

(assert (=> b!5225525 m!6271288))

(assert (=> b!5225525 m!6272116))

(assert (=> b!5225525 m!6272368))

(assert (=> b!5225525 m!6272116))

(declare-fun m!6272370 () Bool)

(assert (=> b!5225525 m!6272370))

(assert (=> b!5224412 d!1684719))

(declare-fun bs!1213301 () Bool)

(declare-fun d!1684721 () Bool)

(assert (= bs!1213301 (and d!1684721 b!5223802)))

(declare-fun lambda!262349 () Int)

(assert (=> bs!1213301 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262349 lambda!262229))))

(declare-fun bs!1213302 () Bool)

(assert (= bs!1213302 (and d!1684721 d!1684615)))

(assert (=> bs!1213302 (= lambda!262349 lambda!262334)))

(declare-fun bs!1213303 () Bool)

(assert (= bs!1213303 (and d!1684721 d!1684601)))

(assert (=> bs!1213303 (= lambda!262349 lambda!262330)))

(declare-fun bs!1213304 () Bool)

(assert (= bs!1213304 (and d!1684721 d!1684629)))

(assert (=> bs!1213304 (= lambda!262349 lambda!262337)))

(declare-fun bs!1213305 () Bool)

(assert (= bs!1213305 (and d!1684721 d!1684229)))

(assert (=> bs!1213305 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262349 lambda!262281))))

(assert (=> d!1684721 true))

(assert (=> d!1684721 (= (derivationStepZipper!1083 lt!2144072 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144072 lambda!262349))))

(declare-fun bs!1213306 () Bool)

(assert (= bs!1213306 d!1684721))

(declare-fun m!6272372 () Bool)

(assert (=> bs!1213306 m!6272372))

(assert (=> b!5224412 d!1684721))

(assert (=> b!5224412 d!1684603))

(assert (=> b!5224412 d!1684605))

(declare-fun d!1684723 () Bool)

(assert (=> d!1684723 (= ($colon$colon!1289 (exprs!4699 lt!2144080) (ite (or c!901795 c!901798) (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (regOne!30143 (regOne!30142 r!7292)))) (Cons!60620 (ite (or c!901795 c!901798) (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (regOne!30143 (regOne!30142 r!7292))) (exprs!4699 lt!2144080)))))

(assert (=> bm!368954 d!1684723))

(declare-fun d!1684725 () Bool)

(assert (=> d!1684725 (= (isUnion!216 lt!2144151) ((_ is Union!14815) lt!2144151))))

(assert (=> b!5224441 d!1684725))

(declare-fun d!1684727 () Bool)

(declare-fun res!2218529 () Bool)

(declare-fun e!3252287 () Bool)

(assert (=> d!1684727 (=> res!2218529 e!3252287)))

(assert (=> d!1684727 (= res!2218529 ((_ is Nil!60620) (exprs!4699 (h!67070 zl!343))))))

(assert (=> d!1684727 (= (forall!14247 (exprs!4699 (h!67070 zl!343)) lambda!262282) e!3252287)))

(declare-fun b!5225526 () Bool)

(declare-fun e!3252288 () Bool)

(assert (=> b!5225526 (= e!3252287 e!3252288)))

(declare-fun res!2218530 () Bool)

(assert (=> b!5225526 (=> (not res!2218530) (not e!3252288))))

(assert (=> b!5225526 (= res!2218530 (dynLambda!23955 lambda!262282 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225527 () Bool)

(assert (=> b!5225527 (= e!3252288 (forall!14247 (t!373917 (exprs!4699 (h!67070 zl!343))) lambda!262282))))

(assert (= (and d!1684727 (not res!2218529)) b!5225526))

(assert (= (and b!5225526 res!2218530) b!5225527))

(declare-fun b_lambda!202049 () Bool)

(assert (=> (not b_lambda!202049) (not b!5225526)))

(declare-fun m!6272374 () Bool)

(assert (=> b!5225526 m!6272374))

(declare-fun m!6272376 () Bool)

(assert (=> b!5225527 m!6272376))

(assert (=> d!1684243 d!1684727))

(declare-fun d!1684729 () Bool)

(assert (=> d!1684729 (= (isEmpty!32545 (tail!10295 s!2326)) ((_ is Nil!60621) (tail!10295 s!2326)))))

(assert (=> b!5224400 d!1684729))

(assert (=> b!5224400 d!1684655))

(declare-fun d!1684731 () Bool)

(assert (=> d!1684731 (= (nullable!4984 (h!67068 (exprs!4699 lt!2144080))) (nullableFct!1391 (h!67068 (exprs!4699 lt!2144080))))))

(declare-fun bs!1213307 () Bool)

(assert (= bs!1213307 d!1684731))

(declare-fun m!6272378 () Bool)

(assert (=> bs!1213307 m!6272378))

(assert (=> b!5224552 d!1684731))

(declare-fun b!5225528 () Bool)

(declare-fun e!3252290 () Bool)

(assert (=> b!5225528 (= e!3252290 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5225529 () Bool)

(declare-fun e!3252292 () (InoxSet Context!8398))

(declare-fun call!369184 () (InoxSet Context!8398))

(assert (=> b!5225529 (= e!3252292 call!369184)))

(declare-fun b!5225530 () Bool)

(declare-fun c!902110 () Bool)

(assert (=> b!5225530 (= c!902110 e!3252290)))

(declare-fun res!2218531 () Bool)

(assert (=> b!5225530 (=> (not res!2218531) (not e!3252290))))

(assert (=> b!5225530 (= res!2218531 ((_ is Concat!23660) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun e!3252293 () (InoxSet Context!8398))

(declare-fun e!3252289 () (InoxSet Context!8398))

(assert (=> b!5225530 (= e!3252293 e!3252289)))

(declare-fun bm!369179 () Bool)

(declare-fun call!369186 () List!60744)

(declare-fun c!902113 () Bool)

(assert (=> bm!369179 (= call!369186 ($colon$colon!1289 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343))))) (ite (or c!902110 c!902113) (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67068 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5225531 () Bool)

(declare-fun call!369189 () (InoxSet Context!8398))

(declare-fun call!369185 () (InoxSet Context!8398))

(assert (=> b!5225531 (= e!3252293 ((_ map or) call!369189 call!369185))))

(declare-fun b!5225532 () Bool)

(assert (=> b!5225532 (= e!3252289 e!3252292)))

(assert (=> b!5225532 (= c!902113 ((_ is Concat!23660) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225533 () Bool)

(declare-fun e!3252294 () (InoxSet Context!8398))

(assert (=> b!5225533 (= e!3252294 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369180 () Bool)

(declare-fun c!902114 () Bool)

(assert (=> bm!369180 (= call!369189 (derivationStepZipperDown!263 (ite c!902114 (regOne!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))) (ite c!902114 (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (Context!8399 call!369186)) (h!67069 s!2326)))))

(declare-fun b!5225535 () Bool)

(assert (=> b!5225535 (= e!3252294 call!369184)))

(declare-fun bm!369181 () Bool)

(declare-fun call!369188 () List!60744)

(assert (=> bm!369181 (= call!369185 (derivationStepZipperDown!263 (ite c!902114 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!902110 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!902113 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))) (ite (or c!902114 c!902110) (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (Context!8399 call!369188)) (h!67069 s!2326)))))

(declare-fun b!5225536 () Bool)

(declare-fun e!3252291 () (InoxSet Context!8398))

(assert (=> b!5225536 (= e!3252291 (store ((as const (Array Context!8398 Bool)) false) (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) true))))

(declare-fun b!5225537 () Bool)

(assert (=> b!5225537 (= e!3252291 e!3252293)))

(assert (=> b!5225537 (= c!902114 ((_ is Union!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun bm!369182 () Bool)

(assert (=> bm!369182 (= call!369188 call!369186)))

(declare-fun b!5225538 () Bool)

(declare-fun c!902111 () Bool)

(assert (=> b!5225538 (= c!902111 ((_ is Star!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> b!5225538 (= e!3252292 e!3252294)))

(declare-fun b!5225534 () Bool)

(declare-fun call!369187 () (InoxSet Context!8398))

(assert (=> b!5225534 (= e!3252289 ((_ map or) call!369189 call!369187))))

(declare-fun d!1684733 () Bool)

(declare-fun c!902112 () Bool)

(assert (=> d!1684733 (= c!902112 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 (h!67070 zl!343)))) (= (c!901653 (h!67068 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326))))))

(assert (=> d!1684733 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 (h!67070 zl!343))) (Context!8399 (t!373917 (exprs!4699 (h!67070 zl!343)))) (h!67069 s!2326)) e!3252291)))

(declare-fun bm!369183 () Bool)

(assert (=> bm!369183 (= call!369187 call!369185)))

(declare-fun bm!369184 () Bool)

(assert (=> bm!369184 (= call!369184 call!369187)))

(assert (= (and d!1684733 c!902112) b!5225536))

(assert (= (and d!1684733 (not c!902112)) b!5225537))

(assert (= (and b!5225537 c!902114) b!5225531))

(assert (= (and b!5225537 (not c!902114)) b!5225530))

(assert (= (and b!5225530 res!2218531) b!5225528))

(assert (= (and b!5225530 c!902110) b!5225534))

(assert (= (and b!5225530 (not c!902110)) b!5225532))

(assert (= (and b!5225532 c!902113) b!5225529))

(assert (= (and b!5225532 (not c!902113)) b!5225538))

(assert (= (and b!5225538 c!902111) b!5225535))

(assert (= (and b!5225538 (not c!902111)) b!5225533))

(assert (= (or b!5225529 b!5225535) bm!369182))

(assert (= (or b!5225529 b!5225535) bm!369184))

(assert (= (or b!5225534 bm!369182) bm!369179))

(assert (= (or b!5225534 bm!369184) bm!369183))

(assert (= (or b!5225531 bm!369183) bm!369181))

(assert (= (or b!5225531 b!5225534) bm!369180))

(declare-fun m!6272380 () Bool)

(assert (=> bm!369180 m!6272380))

(declare-fun m!6272382 () Bool)

(assert (=> bm!369181 m!6272382))

(declare-fun m!6272384 () Bool)

(assert (=> bm!369179 m!6272384))

(assert (=> b!5225528 m!6271482))

(declare-fun m!6272386 () Bool)

(assert (=> b!5225536 m!6272386))

(assert (=> bm!368986 d!1684733))

(declare-fun b!5225539 () Bool)

(declare-fun e!3252296 () Bool)

(assert (=> b!5225539 (= e!3252296 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))))

(declare-fun b!5225540 () Bool)

(declare-fun e!3252298 () (InoxSet Context!8398))

(declare-fun call!369190 () (InoxSet Context!8398))

(assert (=> b!5225540 (= e!3252298 call!369190)))

(declare-fun b!5225541 () Bool)

(declare-fun c!902115 () Bool)

(assert (=> b!5225541 (= c!902115 e!3252296)))

(declare-fun res!2218532 () Bool)

(assert (=> b!5225541 (=> (not res!2218532) (not e!3252296))))

(assert (=> b!5225541 (= res!2218532 ((_ is Concat!23660) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun e!3252299 () (InoxSet Context!8398))

(declare-fun e!3252295 () (InoxSet Context!8398))

(assert (=> b!5225541 (= e!3252299 e!3252295)))

(declare-fun bm!369185 () Bool)

(declare-fun c!902118 () Bool)

(declare-fun call!369192 () List!60744)

(assert (=> bm!369185 (= call!369192 ($colon$colon!1289 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))) (ite (or c!902115 c!902118) (regTwo!30142 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))))

(declare-fun b!5225542 () Bool)

(declare-fun call!369195 () (InoxSet Context!8398))

(declare-fun call!369191 () (InoxSet Context!8398))

(assert (=> b!5225542 (= e!3252299 ((_ map or) call!369195 call!369191))))

(declare-fun b!5225543 () Bool)

(assert (=> b!5225543 (= e!3252295 e!3252298)))

(assert (=> b!5225543 (= c!902118 ((_ is Concat!23660) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun b!5225544 () Bool)

(declare-fun e!3252300 () (InoxSet Context!8398))

(assert (=> b!5225544 (= e!3252300 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369186 () Bool)

(declare-fun c!902119 () Bool)

(assert (=> bm!369186 (= call!369195 (derivationStepZipperDown!263 (ite c!902119 (regOne!30143 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (regOne!30142 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))) (ite c!902119 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (Context!8399 call!369192)) (h!67069 s!2326)))))

(declare-fun b!5225546 () Bool)

(assert (=> b!5225546 (= e!3252300 call!369190)))

(declare-fun bm!369187 () Bool)

(declare-fun call!369194 () List!60744)

(assert (=> bm!369187 (= call!369191 (derivationStepZipperDown!263 (ite c!902119 (regTwo!30143 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (ite c!902115 (regTwo!30142 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (ite c!902118 (regOne!30142 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (reg!15144 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))))))) (ite (or c!902119 c!902115) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (Context!8399 call!369194)) (h!67069 s!2326)))))

(declare-fun b!5225547 () Bool)

(declare-fun e!3252297 () (InoxSet Context!8398))

(assert (=> b!5225547 (= e!3252297 (store ((as const (Array Context!8398 Bool)) false) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) true))))

(declare-fun b!5225548 () Bool)

(assert (=> b!5225548 (= e!3252297 e!3252299)))

(assert (=> b!5225548 (= c!902119 ((_ is Union!14815) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun bm!369188 () Bool)

(assert (=> bm!369188 (= call!369194 call!369192)))

(declare-fun b!5225549 () Bool)

(declare-fun c!902116 () Bool)

(assert (=> b!5225549 (= c!902116 ((_ is Star!14815) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(assert (=> b!5225549 (= e!3252298 e!3252300)))

(declare-fun b!5225545 () Bool)

(declare-fun call!369193 () (InoxSet Context!8398))

(assert (=> b!5225545 (= e!3252295 ((_ map or) call!369195 call!369193))))

(declare-fun d!1684735 () Bool)

(declare-fun c!902117 () Bool)

(assert (=> d!1684735 (= c!902117 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (= (c!901653 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326))))))

(assert (=> d!1684735 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326)) e!3252297)))

(declare-fun bm!369189 () Bool)

(assert (=> bm!369189 (= call!369193 call!369191)))

(declare-fun bm!369190 () Bool)

(assert (=> bm!369190 (= call!369190 call!369193)))

(assert (= (and d!1684735 c!902117) b!5225547))

(assert (= (and d!1684735 (not c!902117)) b!5225548))

(assert (= (and b!5225548 c!902119) b!5225542))

(assert (= (and b!5225548 (not c!902119)) b!5225541))

(assert (= (and b!5225541 res!2218532) b!5225539))

(assert (= (and b!5225541 c!902115) b!5225545))

(assert (= (and b!5225541 (not c!902115)) b!5225543))

(assert (= (and b!5225543 c!902118) b!5225540))

(assert (= (and b!5225543 (not c!902118)) b!5225549))

(assert (= (and b!5225549 c!902116) b!5225546))

(assert (= (and b!5225549 (not c!902116)) b!5225544))

(assert (= (or b!5225540 b!5225546) bm!369188))

(assert (= (or b!5225540 b!5225546) bm!369190))

(assert (= (or b!5225545 bm!369188) bm!369185))

(assert (= (or b!5225545 bm!369190) bm!369189))

(assert (= (or b!5225542 bm!369189) bm!369187))

(assert (= (or b!5225542 b!5225545) bm!369186))

(declare-fun m!6272388 () Bool)

(assert (=> bm!369186 m!6272388))

(declare-fun m!6272390 () Bool)

(assert (=> bm!369187 m!6272390))

(declare-fun m!6272392 () Bool)

(assert (=> bm!369185 m!6272392))

(declare-fun m!6272394 () Bool)

(assert (=> b!5225539 m!6272394))

(declare-fun m!6272396 () Bool)

(assert (=> b!5225547 m!6272396))

(assert (=> bm!368985 d!1684735))

(declare-fun d!1684737 () Bool)

(declare-fun c!902120 () Bool)

(assert (=> d!1684737 (= c!902120 (isEmpty!32545 (tail!10295 s!2326)))))

(declare-fun e!3252301 () Bool)

(assert (=> d!1684737 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144074 (head!11198 s!2326)) (tail!10295 s!2326)) e!3252301)))

(declare-fun b!5225550 () Bool)

(assert (=> b!5225550 (= e!3252301 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144074 (head!11198 s!2326))))))

(declare-fun b!5225551 () Bool)

(assert (=> b!5225551 (= e!3252301 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144074 (head!11198 s!2326)) (head!11198 (tail!10295 s!2326))) (tail!10295 (tail!10295 s!2326))))))

(assert (= (and d!1684737 c!902120) b!5225550))

(assert (= (and d!1684737 (not c!902120)) b!5225551))

(assert (=> d!1684737 m!6271262))

(assert (=> d!1684737 m!6271264))

(assert (=> b!5225550 m!6271276))

(declare-fun m!6272398 () Bool)

(assert (=> b!5225550 m!6272398))

(assert (=> b!5225551 m!6271262))

(assert (=> b!5225551 m!6272206))

(assert (=> b!5225551 m!6271276))

(assert (=> b!5225551 m!6272206))

(declare-fun m!6272400 () Bool)

(assert (=> b!5225551 m!6272400))

(assert (=> b!5225551 m!6271262))

(assert (=> b!5225551 m!6272202))

(assert (=> b!5225551 m!6272400))

(assert (=> b!5225551 m!6272202))

(declare-fun m!6272402 () Bool)

(assert (=> b!5225551 m!6272402))

(assert (=> b!5224410 d!1684737))

(declare-fun bs!1213308 () Bool)

(declare-fun d!1684739 () Bool)

(assert (= bs!1213308 (and d!1684739 b!5223802)))

(declare-fun lambda!262350 () Int)

(assert (=> bs!1213308 (= (= (head!11198 s!2326) (h!67069 s!2326)) (= lambda!262350 lambda!262229))))

(declare-fun bs!1213309 () Bool)

(assert (= bs!1213309 (and d!1684739 d!1684615)))

(assert (=> bs!1213309 (= (= (head!11198 s!2326) (head!11198 (t!373918 s!2326))) (= lambda!262350 lambda!262334))))

(declare-fun bs!1213310 () Bool)

(assert (= bs!1213310 (and d!1684739 d!1684601)))

(assert (=> bs!1213310 (= (= (head!11198 s!2326) (head!11198 (t!373918 s!2326))) (= lambda!262350 lambda!262330))))

(declare-fun bs!1213311 () Bool)

(assert (= bs!1213311 (and d!1684739 d!1684721)))

(assert (=> bs!1213311 (= (= (head!11198 s!2326) (head!11198 (t!373918 s!2326))) (= lambda!262350 lambda!262349))))

(declare-fun bs!1213312 () Bool)

(assert (= bs!1213312 (and d!1684739 d!1684629)))

(assert (=> bs!1213312 (= (= (head!11198 s!2326) (head!11198 (t!373918 s!2326))) (= lambda!262350 lambda!262337))))

(declare-fun bs!1213313 () Bool)

(assert (= bs!1213313 (and d!1684739 d!1684229)))

(assert (=> bs!1213313 (= (= (head!11198 s!2326) (h!67069 s!2326)) (= lambda!262350 lambda!262281))))

(assert (=> d!1684739 true))

(assert (=> d!1684739 (= (derivationStepZipper!1083 lt!2144074 (head!11198 s!2326)) (flatMap!542 lt!2144074 lambda!262350))))

(declare-fun bs!1213314 () Bool)

(assert (= bs!1213314 d!1684739))

(declare-fun m!6272404 () Bool)

(assert (=> bs!1213314 m!6272404))

(assert (=> b!5224410 d!1684739))

(assert (=> b!5224410 d!1684653))

(assert (=> b!5224410 d!1684655))

(declare-fun b!5225552 () Bool)

(declare-fun e!3252303 () Bool)

(assert (=> b!5225552 (= e!3252303 (nullable!4984 (regOne!30142 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5225553 () Bool)

(declare-fun e!3252305 () (InoxSet Context!8398))

(declare-fun call!369196 () (InoxSet Context!8398))

(assert (=> b!5225553 (= e!3252305 call!369196)))

(declare-fun b!5225554 () Bool)

(declare-fun c!902121 () Bool)

(assert (=> b!5225554 (= c!902121 e!3252303)))

(declare-fun res!2218533 () Bool)

(assert (=> b!5225554 (=> (not res!2218533) (not e!3252303))))

(assert (=> b!5225554 (= res!2218533 ((_ is Concat!23660) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(declare-fun e!3252306 () (InoxSet Context!8398))

(declare-fun e!3252302 () (InoxSet Context!8398))

(assert (=> b!5225554 (= e!3252306 e!3252302)))

(declare-fun call!369198 () List!60744)

(declare-fun c!902124 () Bool)

(declare-fun bm!369191 () Bool)

(assert (=> bm!369191 (= call!369198 ($colon$colon!1289 (exprs!4699 (ite c!901799 lt!2144080 (Context!8399 call!368961))) (ite (or c!902121 c!902124) (regTwo!30142 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5225555 () Bool)

(declare-fun call!369201 () (InoxSet Context!8398))

(declare-fun call!369197 () (InoxSet Context!8398))

(assert (=> b!5225555 (= e!3252306 ((_ map or) call!369201 call!369197))))

(declare-fun b!5225556 () Bool)

(assert (=> b!5225556 (= e!3252302 e!3252305)))

(assert (=> b!5225556 (= c!902124 ((_ is Concat!23660) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225557 () Bool)

(declare-fun e!3252307 () (InoxSet Context!8398))

(assert (=> b!5225557 (= e!3252307 ((as const (Array Context!8398 Bool)) false))))

(declare-fun c!902125 () Bool)

(declare-fun bm!369192 () Bool)

(assert (=> bm!369192 (= call!369201 (derivationStepZipperDown!263 (ite c!902125 (regOne!30143 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (regOne!30142 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))) (ite c!902125 (ite c!901799 lt!2144080 (Context!8399 call!368961)) (Context!8399 call!369198)) (h!67069 s!2326)))))

(declare-fun b!5225559 () Bool)

(assert (=> b!5225559 (= e!3252307 call!369196)))

(declare-fun call!369200 () List!60744)

(declare-fun bm!369193 () Bool)

(assert (=> bm!369193 (= call!369197 (derivationStepZipperDown!263 (ite c!902125 (regTwo!30143 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (ite c!902121 (regTwo!30142 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (ite c!902124 (regOne!30142 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (reg!15144 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))))) (ite (or c!902125 c!902121) (ite c!901799 lt!2144080 (Context!8399 call!368961)) (Context!8399 call!369200)) (h!67069 s!2326)))))

(declare-fun e!3252304 () (InoxSet Context!8398))

(declare-fun b!5225560 () Bool)

(assert (=> b!5225560 (= e!3252304 (store ((as const (Array Context!8398 Bool)) false) (ite c!901799 lt!2144080 (Context!8399 call!368961)) true))))

(declare-fun b!5225561 () Bool)

(assert (=> b!5225561 (= e!3252304 e!3252306)))

(assert (=> b!5225561 (= c!902125 ((_ is Union!14815) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(declare-fun bm!369194 () Bool)

(assert (=> bm!369194 (= call!369200 call!369198)))

(declare-fun b!5225562 () Bool)

(declare-fun c!902122 () Bool)

(assert (=> b!5225562 (= c!902122 ((_ is Star!14815) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))))))

(assert (=> b!5225562 (= e!3252305 e!3252307)))

(declare-fun b!5225558 () Bool)

(declare-fun call!369199 () (InoxSet Context!8398))

(assert (=> b!5225558 (= e!3252302 ((_ map or) call!369201 call!369199))))

(declare-fun c!902123 () Bool)

(declare-fun d!1684741 () Bool)

(assert (=> d!1684741 (= c!902123 (and ((_ is ElementMatch!14815) (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (= (c!901653 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292))))) (h!67069 s!2326))))))

(assert (=> d!1684741 (= (derivationStepZipperDown!263 (ite c!901799 (regOne!30143 (regOne!30143 (regOne!30142 r!7292))) (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))) (ite c!901799 lt!2144080 (Context!8399 call!368961)) (h!67069 s!2326)) e!3252304)))

(declare-fun bm!369195 () Bool)

(assert (=> bm!369195 (= call!369199 call!369197)))

(declare-fun bm!369196 () Bool)

(assert (=> bm!369196 (= call!369196 call!369199)))

(assert (= (and d!1684741 c!902123) b!5225560))

(assert (= (and d!1684741 (not c!902123)) b!5225561))

(assert (= (and b!5225561 c!902125) b!5225555))

(assert (= (and b!5225561 (not c!902125)) b!5225554))

(assert (= (and b!5225554 res!2218533) b!5225552))

(assert (= (and b!5225554 c!902121) b!5225558))

(assert (= (and b!5225554 (not c!902121)) b!5225556))

(assert (= (and b!5225556 c!902124) b!5225553))

(assert (= (and b!5225556 (not c!902124)) b!5225562))

(assert (= (and b!5225562 c!902122) b!5225559))

(assert (= (and b!5225562 (not c!902122)) b!5225557))

(assert (= (or b!5225553 b!5225559) bm!369194))

(assert (= (or b!5225553 b!5225559) bm!369196))

(assert (= (or b!5225558 bm!369194) bm!369191))

(assert (= (or b!5225558 bm!369196) bm!369195))

(assert (= (or b!5225555 bm!369195) bm!369193))

(assert (= (or b!5225555 b!5225558) bm!369192))

(declare-fun m!6272406 () Bool)

(assert (=> bm!369192 m!6272406))

(declare-fun m!6272408 () Bool)

(assert (=> bm!369193 m!6272408))

(declare-fun m!6272410 () Bool)

(assert (=> bm!369191 m!6272410))

(declare-fun m!6272412 () Bool)

(assert (=> b!5225552 m!6272412))

(declare-fun m!6272414 () Bool)

(assert (=> b!5225560 m!6272414))

(assert (=> bm!368955 d!1684741))

(assert (=> d!1684235 d!1684593))

(declare-fun b!5225563 () Bool)

(declare-fun res!2218535 () Bool)

(declare-fun e!3252313 () Bool)

(assert (=> b!5225563 (=> res!2218535 e!3252313)))

(assert (=> b!5225563 (= res!2218535 (not ((_ is Concat!23660) lt!2144142)))))

(declare-fun e!3252309 () Bool)

(assert (=> b!5225563 (= e!3252309 e!3252313)))

(declare-fun b!5225564 () Bool)

(declare-fun e!3252311 () Bool)

(declare-fun call!369202 () Bool)

(assert (=> b!5225564 (= e!3252311 call!369202)))

(declare-fun c!902127 () Bool)

(declare-fun bm!369197 () Bool)

(declare-fun call!369204 () Bool)

(declare-fun c!902126 () Bool)

(assert (=> bm!369197 (= call!369204 (validRegex!6551 (ite c!902127 (reg!15144 lt!2144142) (ite c!902126 (regOne!30143 lt!2144142) (regOne!30142 lt!2144142)))))))

(declare-fun b!5225565 () Bool)

(declare-fun e!3252314 () Bool)

(assert (=> b!5225565 (= e!3252314 call!369202)))

(declare-fun d!1684743 () Bool)

(declare-fun res!2218538 () Bool)

(declare-fun e!3252308 () Bool)

(assert (=> d!1684743 (=> res!2218538 e!3252308)))

(assert (=> d!1684743 (= res!2218538 ((_ is ElementMatch!14815) lt!2144142))))

(assert (=> d!1684743 (= (validRegex!6551 lt!2144142) e!3252308)))

(declare-fun b!5225566 () Bool)

(declare-fun e!3252310 () Bool)

(assert (=> b!5225566 (= e!3252310 call!369204)))

(declare-fun b!5225567 () Bool)

(assert (=> b!5225567 (= e!3252313 e!3252314)))

(declare-fun res!2218534 () Bool)

(assert (=> b!5225567 (=> (not res!2218534) (not e!3252314))))

(declare-fun call!369203 () Bool)

(assert (=> b!5225567 (= res!2218534 call!369203)))

(declare-fun b!5225568 () Bool)

(declare-fun res!2218537 () Bool)

(assert (=> b!5225568 (=> (not res!2218537) (not e!3252311))))

(assert (=> b!5225568 (= res!2218537 call!369203)))

(assert (=> b!5225568 (= e!3252309 e!3252311)))

(declare-fun b!5225569 () Bool)

(declare-fun e!3252312 () Bool)

(assert (=> b!5225569 (= e!3252312 e!3252309)))

(assert (=> b!5225569 (= c!902126 ((_ is Union!14815) lt!2144142))))

(declare-fun b!5225570 () Bool)

(assert (=> b!5225570 (= e!3252312 e!3252310)))

(declare-fun res!2218536 () Bool)

(assert (=> b!5225570 (= res!2218536 (not (nullable!4984 (reg!15144 lt!2144142))))))

(assert (=> b!5225570 (=> (not res!2218536) (not e!3252310))))

(declare-fun bm!369198 () Bool)

(assert (=> bm!369198 (= call!369202 (validRegex!6551 (ite c!902126 (regTwo!30143 lt!2144142) (regTwo!30142 lt!2144142))))))

(declare-fun bm!369199 () Bool)

(assert (=> bm!369199 (= call!369203 call!369204)))

(declare-fun b!5225571 () Bool)

(assert (=> b!5225571 (= e!3252308 e!3252312)))

(assert (=> b!5225571 (= c!902127 ((_ is Star!14815) lt!2144142))))

(assert (= (and d!1684743 (not res!2218538)) b!5225571))

(assert (= (and b!5225571 c!902127) b!5225570))

(assert (= (and b!5225571 (not c!902127)) b!5225569))

(assert (= (and b!5225570 res!2218536) b!5225566))

(assert (= (and b!5225569 c!902126) b!5225568))

(assert (= (and b!5225569 (not c!902126)) b!5225563))

(assert (= (and b!5225568 res!2218537) b!5225564))

(assert (= (and b!5225563 (not res!2218535)) b!5225567))

(assert (= (and b!5225567 res!2218534) b!5225565))

(assert (= (or b!5225564 b!5225565) bm!369198))

(assert (= (or b!5225568 b!5225567) bm!369199))

(assert (= (or b!5225566 bm!369199) bm!369197))

(declare-fun m!6272416 () Bool)

(assert (=> bm!369197 m!6272416))

(declare-fun m!6272418 () Bool)

(assert (=> b!5225570 m!6272418))

(declare-fun m!6272420 () Bool)

(assert (=> bm!369198 m!6272420))

(assert (=> d!1684191 d!1684743))

(declare-fun d!1684745 () Bool)

(declare-fun res!2218539 () Bool)

(declare-fun e!3252315 () Bool)

(assert (=> d!1684745 (=> res!2218539 e!3252315)))

(assert (=> d!1684745 (= res!2218539 ((_ is Nil!60620) (exprs!4699 (h!67070 zl!343))))))

(assert (=> d!1684745 (= (forall!14247 (exprs!4699 (h!67070 zl!343)) lambda!262263) e!3252315)))

(declare-fun b!5225572 () Bool)

(declare-fun e!3252316 () Bool)

(assert (=> b!5225572 (= e!3252315 e!3252316)))

(declare-fun res!2218540 () Bool)

(assert (=> b!5225572 (=> (not res!2218540) (not e!3252316))))

(assert (=> b!5225572 (= res!2218540 (dynLambda!23955 lambda!262263 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225573 () Bool)

(assert (=> b!5225573 (= e!3252316 (forall!14247 (t!373917 (exprs!4699 (h!67070 zl!343))) lambda!262263))))

(assert (= (and d!1684745 (not res!2218539)) b!5225572))

(assert (= (and b!5225572 res!2218540) b!5225573))

(declare-fun b_lambda!202051 () Bool)

(assert (=> (not b_lambda!202051) (not b!5225572)))

(declare-fun m!6272422 () Bool)

(assert (=> b!5225572 m!6272422))

(declare-fun m!6272424 () Bool)

(assert (=> b!5225573 m!6272424))

(assert (=> d!1684191 d!1684745))

(declare-fun d!1684747 () Bool)

(declare-fun c!902128 () Bool)

(assert (=> d!1684747 (= c!902128 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252317 () Bool)

(assert (=> d!1684747 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144084 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252317)))

(declare-fun b!5225574 () Bool)

(assert (=> b!5225574 (= e!3252317 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144084 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225575 () Bool)

(assert (=> b!5225575 (= e!3252317 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144084 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684747 c!902128) b!5225574))

(assert (= (and d!1684747 (not c!902128)) b!5225575))

(assert (=> d!1684747 m!6271288))

(assert (=> d!1684747 m!6272108))

(assert (=> b!5225574 m!6271354))

(declare-fun m!6272426 () Bool)

(assert (=> b!5225574 m!6272426))

(assert (=> b!5225575 m!6271288))

(assert (=> b!5225575 m!6272112))

(assert (=> b!5225575 m!6271354))

(assert (=> b!5225575 m!6272112))

(declare-fun m!6272428 () Bool)

(assert (=> b!5225575 m!6272428))

(assert (=> b!5225575 m!6271288))

(assert (=> b!5225575 m!6272116))

(assert (=> b!5225575 m!6272428))

(assert (=> b!5225575 m!6272116))

(declare-fun m!6272430 () Bool)

(assert (=> b!5225575 m!6272430))

(assert (=> b!5224474 d!1684747))

(declare-fun bs!1213315 () Bool)

(declare-fun d!1684749 () Bool)

(assert (= bs!1213315 (and d!1684749 d!1684739)))

(declare-fun lambda!262351 () Int)

(assert (=> bs!1213315 (= (= (head!11198 (t!373918 s!2326)) (head!11198 s!2326)) (= lambda!262351 lambda!262350))))

(declare-fun bs!1213316 () Bool)

(assert (= bs!1213316 (and d!1684749 b!5223802)))

(assert (=> bs!1213316 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262351 lambda!262229))))

(declare-fun bs!1213317 () Bool)

(assert (= bs!1213317 (and d!1684749 d!1684615)))

(assert (=> bs!1213317 (= lambda!262351 lambda!262334)))

(declare-fun bs!1213318 () Bool)

(assert (= bs!1213318 (and d!1684749 d!1684601)))

(assert (=> bs!1213318 (= lambda!262351 lambda!262330)))

(declare-fun bs!1213319 () Bool)

(assert (= bs!1213319 (and d!1684749 d!1684721)))

(assert (=> bs!1213319 (= lambda!262351 lambda!262349)))

(declare-fun bs!1213320 () Bool)

(assert (= bs!1213320 (and d!1684749 d!1684629)))

(assert (=> bs!1213320 (= lambda!262351 lambda!262337)))

(declare-fun bs!1213321 () Bool)

(assert (= bs!1213321 (and d!1684749 d!1684229)))

(assert (=> bs!1213321 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262351 lambda!262281))))

(assert (=> d!1684749 true))

(assert (=> d!1684749 (= (derivationStepZipper!1083 lt!2144084 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144084 lambda!262351))))

(declare-fun bs!1213322 () Bool)

(assert (= bs!1213322 d!1684749))

(declare-fun m!6272432 () Bool)

(assert (=> bs!1213322 m!6272432))

(assert (=> b!5224474 d!1684749))

(assert (=> b!5224474 d!1684603))

(assert (=> b!5224474 d!1684605))

(declare-fun d!1684751 () Bool)

(assert (=> d!1684751 (= (Exists!1996 (ite c!901816 lambda!262271 lambda!262272)) (choose!38859 (ite c!901816 lambda!262271 lambda!262272)))))

(declare-fun bs!1213323 () Bool)

(assert (= bs!1213323 d!1684751))

(declare-fun m!6272434 () Bool)

(assert (=> bs!1213323 m!6272434))

(assert (=> bm!368974 d!1684751))

(assert (=> b!5224404 d!1684729))

(assert (=> b!5224404 d!1684655))

(declare-fun call!369205 () (InoxSet Context!8398))

(declare-fun b!5225576 () Bool)

(declare-fun e!3252320 () (InoxSet Context!8398))

(assert (=> b!5225576 (= e!3252320 ((_ map or) call!369205 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085)))))) (h!67069 s!2326))))))

(declare-fun b!5225577 () Bool)

(declare-fun e!3252319 () Bool)

(assert (=> b!5225577 (= e!3252319 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085)))))))))

(declare-fun d!1684753 () Bool)

(declare-fun c!902129 () Bool)

(assert (=> d!1684753 (= c!902129 e!3252319)))

(declare-fun res!2218541 () Bool)

(assert (=> d!1684753 (=> (not res!2218541) (not e!3252319))))

(assert (=> d!1684753 (= res!2218541 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085))))))))

(assert (=> d!1684753 (= (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (h!67069 s!2326)) e!3252320)))

(declare-fun b!5225578 () Bool)

(declare-fun e!3252318 () (InoxSet Context!8398))

(assert (=> b!5225578 (= e!3252318 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369200 () Bool)

(assert (=> bm!369200 (= call!369205 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085)))))) (h!67069 s!2326)))))

(declare-fun b!5225579 () Bool)

(assert (=> b!5225579 (= e!3252320 e!3252318)))

(declare-fun c!902130 () Bool)

(assert (=> b!5225579 (= c!902130 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085))))))))

(declare-fun b!5225580 () Bool)

(assert (=> b!5225580 (= e!3252318 call!369205)))

(assert (= (and d!1684753 res!2218541) b!5225577))

(assert (= (and d!1684753 c!902129) b!5225576))

(assert (= (and d!1684753 (not c!902129)) b!5225579))

(assert (= (and b!5225579 c!902130) b!5225580))

(assert (= (and b!5225579 (not c!902130)) b!5225578))

(assert (= (or b!5225576 b!5225580) bm!369200))

(declare-fun m!6272436 () Bool)

(assert (=> b!5225576 m!6272436))

(declare-fun m!6272438 () Bool)

(assert (=> b!5225577 m!6272438))

(declare-fun m!6272440 () Bool)

(assert (=> bm!369200 m!6272440))

(assert (=> b!5224459 d!1684753))

(declare-fun d!1684755 () Bool)

(assert (=> d!1684755 (= (nullable!4984 (reg!15144 r!7292)) (nullableFct!1391 (reg!15144 r!7292)))))

(declare-fun bs!1213324 () Bool)

(assert (= bs!1213324 d!1684755))

(declare-fun m!6272442 () Bool)

(assert (=> bs!1213324 m!6272442))

(assert (=> b!5224539 d!1684755))

(declare-fun b!5225581 () Bool)

(declare-fun e!3252322 () Bool)

(assert (=> b!5225581 (= e!3252322 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 lt!2144085)))))))

(declare-fun b!5225582 () Bool)

(declare-fun e!3252324 () (InoxSet Context!8398))

(declare-fun call!369206 () (InoxSet Context!8398))

(assert (=> b!5225582 (= e!3252324 call!369206)))

(declare-fun b!5225583 () Bool)

(declare-fun c!902131 () Bool)

(assert (=> b!5225583 (= c!902131 e!3252322)))

(declare-fun res!2218542 () Bool)

(assert (=> b!5225583 (=> (not res!2218542) (not e!3252322))))

(assert (=> b!5225583 (= res!2218542 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144085))))))

(declare-fun e!3252325 () (InoxSet Context!8398))

(declare-fun e!3252321 () (InoxSet Context!8398))

(assert (=> b!5225583 (= e!3252325 e!3252321)))

(declare-fun c!902134 () Bool)

(declare-fun bm!369201 () Bool)

(declare-fun call!369208 () List!60744)

(assert (=> bm!369201 (= call!369208 ($colon$colon!1289 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144085)))) (ite (or c!902131 c!902134) (regTwo!30142 (h!67068 (exprs!4699 lt!2144085))) (h!67068 (exprs!4699 lt!2144085)))))))

(declare-fun b!5225584 () Bool)

(declare-fun call!369211 () (InoxSet Context!8398))

(declare-fun call!369207 () (InoxSet Context!8398))

(assert (=> b!5225584 (= e!3252325 ((_ map or) call!369211 call!369207))))

(declare-fun b!5225585 () Bool)

(assert (=> b!5225585 (= e!3252321 e!3252324)))

(assert (=> b!5225585 (= c!902134 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144085))))))

(declare-fun b!5225586 () Bool)

(declare-fun e!3252326 () (InoxSet Context!8398))

(assert (=> b!5225586 (= e!3252326 ((as const (Array Context!8398 Bool)) false))))

(declare-fun c!902135 () Bool)

(declare-fun bm!369202 () Bool)

(assert (=> bm!369202 (= call!369211 (derivationStepZipperDown!263 (ite c!902135 (regOne!30143 (h!67068 (exprs!4699 lt!2144085))) (regOne!30142 (h!67068 (exprs!4699 lt!2144085)))) (ite c!902135 (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (Context!8399 call!369208)) (h!67069 s!2326)))))

(declare-fun b!5225588 () Bool)

(assert (=> b!5225588 (= e!3252326 call!369206)))

(declare-fun call!369210 () List!60744)

(declare-fun bm!369203 () Bool)

(assert (=> bm!369203 (= call!369207 (derivationStepZipperDown!263 (ite c!902135 (regTwo!30143 (h!67068 (exprs!4699 lt!2144085))) (ite c!902131 (regTwo!30142 (h!67068 (exprs!4699 lt!2144085))) (ite c!902134 (regOne!30142 (h!67068 (exprs!4699 lt!2144085))) (reg!15144 (h!67068 (exprs!4699 lt!2144085)))))) (ite (or c!902135 c!902131) (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (Context!8399 call!369210)) (h!67069 s!2326)))))

(declare-fun b!5225589 () Bool)

(declare-fun e!3252323 () (InoxSet Context!8398))

(assert (=> b!5225589 (= e!3252323 (store ((as const (Array Context!8398 Bool)) false) (Context!8399 (t!373917 (exprs!4699 lt!2144085))) true))))

(declare-fun b!5225590 () Bool)

(assert (=> b!5225590 (= e!3252323 e!3252325)))

(assert (=> b!5225590 (= c!902135 ((_ is Union!14815) (h!67068 (exprs!4699 lt!2144085))))))

(declare-fun bm!369204 () Bool)

(assert (=> bm!369204 (= call!369210 call!369208)))

(declare-fun b!5225591 () Bool)

(declare-fun c!902132 () Bool)

(assert (=> b!5225591 (= c!902132 ((_ is Star!14815) (h!67068 (exprs!4699 lt!2144085))))))

(assert (=> b!5225591 (= e!3252324 e!3252326)))

(declare-fun b!5225587 () Bool)

(declare-fun call!369209 () (InoxSet Context!8398))

(assert (=> b!5225587 (= e!3252321 ((_ map or) call!369211 call!369209))))

(declare-fun d!1684757 () Bool)

(declare-fun c!902133 () Bool)

(assert (=> d!1684757 (= c!902133 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 lt!2144085))) (= (c!901653 (h!67068 (exprs!4699 lt!2144085))) (h!67069 s!2326))))))

(assert (=> d!1684757 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144085)) (Context!8399 (t!373917 (exprs!4699 lt!2144085))) (h!67069 s!2326)) e!3252323)))

(declare-fun bm!369205 () Bool)

(assert (=> bm!369205 (= call!369209 call!369207)))

(declare-fun bm!369206 () Bool)

(assert (=> bm!369206 (= call!369206 call!369209)))

(assert (= (and d!1684757 c!902133) b!5225589))

(assert (= (and d!1684757 (not c!902133)) b!5225590))

(assert (= (and b!5225590 c!902135) b!5225584))

(assert (= (and b!5225590 (not c!902135)) b!5225583))

(assert (= (and b!5225583 res!2218542) b!5225581))

(assert (= (and b!5225583 c!902131) b!5225587))

(assert (= (and b!5225583 (not c!902131)) b!5225585))

(assert (= (and b!5225585 c!902134) b!5225582))

(assert (= (and b!5225585 (not c!902134)) b!5225591))

(assert (= (and b!5225591 c!902132) b!5225588))

(assert (= (and b!5225591 (not c!902132)) b!5225586))

(assert (= (or b!5225582 b!5225588) bm!369204))

(assert (= (or b!5225582 b!5225588) bm!369206))

(assert (= (or b!5225587 bm!369204) bm!369201))

(assert (= (or b!5225587 bm!369206) bm!369205))

(assert (= (or b!5225584 bm!369205) bm!369203))

(assert (= (or b!5225584 b!5225587) bm!369202))

(declare-fun m!6272444 () Bool)

(assert (=> bm!369202 m!6272444))

(declare-fun m!6272446 () Bool)

(assert (=> bm!369203 m!6272446))

(declare-fun m!6272448 () Bool)

(assert (=> bm!369201 m!6272448))

(declare-fun m!6272450 () Bool)

(assert (=> b!5225581 m!6272450))

(declare-fun m!6272452 () Bool)

(assert (=> b!5225589 m!6272452))

(assert (=> bm!368980 d!1684757))

(declare-fun b!5225595 () Bool)

(declare-fun e!3252327 () Bool)

(declare-fun lt!2144226 () List!60745)

(assert (=> b!5225595 (= e!3252327 (or (not (= (_2!35317 (get!20832 lt!2144169)) Nil!60621)) (= lt!2144226 (_1!35317 (get!20832 lt!2144169)))))))

(declare-fun b!5225593 () Bool)

(declare-fun e!3252328 () List!60745)

(assert (=> b!5225593 (= e!3252328 (Cons!60621 (h!67069 (_1!35317 (get!20832 lt!2144169))) (++!13219 (t!373918 (_1!35317 (get!20832 lt!2144169))) (_2!35317 (get!20832 lt!2144169)))))))

(declare-fun b!5225592 () Bool)

(assert (=> b!5225592 (= e!3252328 (_2!35317 (get!20832 lt!2144169)))))

(declare-fun d!1684759 () Bool)

(assert (=> d!1684759 e!3252327))

(declare-fun res!2218543 () Bool)

(assert (=> d!1684759 (=> (not res!2218543) (not e!3252327))))

(assert (=> d!1684759 (= res!2218543 (= (content!10755 lt!2144226) ((_ map or) (content!10755 (_1!35317 (get!20832 lt!2144169))) (content!10755 (_2!35317 (get!20832 lt!2144169))))))))

(assert (=> d!1684759 (= lt!2144226 e!3252328)))

(declare-fun c!902136 () Bool)

(assert (=> d!1684759 (= c!902136 ((_ is Nil!60621) (_1!35317 (get!20832 lt!2144169))))))

(assert (=> d!1684759 (= (++!13219 (_1!35317 (get!20832 lt!2144169)) (_2!35317 (get!20832 lt!2144169))) lt!2144226)))

(declare-fun b!5225594 () Bool)

(declare-fun res!2218544 () Bool)

(assert (=> b!5225594 (=> (not res!2218544) (not e!3252327))))

(assert (=> b!5225594 (= res!2218544 (= (size!39729 lt!2144226) (+ (size!39729 (_1!35317 (get!20832 lt!2144169))) (size!39729 (_2!35317 (get!20832 lt!2144169))))))))

(assert (= (and d!1684759 c!902136) b!5225592))

(assert (= (and d!1684759 (not c!902136)) b!5225593))

(assert (= (and d!1684759 res!2218543) b!5225594))

(assert (= (and b!5225594 res!2218544) b!5225595))

(declare-fun m!6272454 () Bool)

(assert (=> b!5225593 m!6272454))

(declare-fun m!6272456 () Bool)

(assert (=> d!1684759 m!6272456))

(declare-fun m!6272458 () Bool)

(assert (=> d!1684759 m!6272458))

(declare-fun m!6272460 () Bool)

(assert (=> d!1684759 m!6272460))

(declare-fun m!6272462 () Bool)

(assert (=> b!5225594 m!6272462))

(declare-fun m!6272464 () Bool)

(assert (=> b!5225594 m!6272464))

(declare-fun m!6272466 () Bool)

(assert (=> b!5225594 m!6272466))

(assert (=> b!5224508 d!1684759))

(assert (=> b!5224508 d!1684585))

(assert (=> bs!1213017 d!1684283))

(declare-fun bs!1213325 () Bool)

(declare-fun d!1684761 () Bool)

(assert (= bs!1213325 (and d!1684761 d!1684625)))

(declare-fun lambda!262352 () Int)

(assert (=> bs!1213325 (= lambda!262352 lambda!262336)))

(declare-fun bs!1213326 () Bool)

(assert (= bs!1213326 (and d!1684761 d!1684715)))

(assert (=> bs!1213326 (= lambda!262352 lambda!262348)))

(declare-fun bs!1213327 () Bool)

(assert (= bs!1213327 (and d!1684761 d!1684699)))

(assert (=> bs!1213327 (= lambda!262352 lambda!262346)))

(declare-fun bs!1213328 () Bool)

(assert (= bs!1213328 (and d!1684761 d!1684609)))

(assert (=> bs!1213328 (= lambda!262352 lambda!262333)))

(declare-fun bs!1213329 () Bool)

(assert (= bs!1213329 (and d!1684761 d!1684701)))

(assert (=> bs!1213329 (= lambda!262352 lambda!262347)))

(assert (=> d!1684761 (= (nullableZipper!1239 lt!2144072) (exists!1974 lt!2144072 lambda!262352))))

(declare-fun bs!1213330 () Bool)

(assert (= bs!1213330 d!1684761))

(declare-fun m!6272468 () Bool)

(assert (=> bs!1213330 m!6272468))

(assert (=> b!5224411 d!1684761))

(declare-fun d!1684763 () Bool)

(assert (=> d!1684763 true))

(declare-fun setRes!33257 () Bool)

(assert (=> d!1684763 setRes!33257))

(declare-fun condSetEmpty!33257 () Bool)

(declare-fun res!2218545 () (InoxSet Context!8398))

(assert (=> d!1684763 (= condSetEmpty!33257 (= res!2218545 ((as const (Array Context!8398 Bool)) false)))))

(assert (=> d!1684763 (= (choose!38856 z!1189 lambda!262229) res!2218545)))

(declare-fun setIsEmpty!33257 () Bool)

(assert (=> setIsEmpty!33257 setRes!33257))

(declare-fun tp!1464600 () Bool)

(declare-fun setNonEmpty!33257 () Bool)

(declare-fun e!3252329 () Bool)

(declare-fun setElem!33257 () Context!8398)

(assert (=> setNonEmpty!33257 (= setRes!33257 (and tp!1464600 (inv!80284 setElem!33257) e!3252329))))

(declare-fun setRest!33257 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33257 (= res!2218545 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33257 true) setRest!33257))))

(declare-fun b!5225596 () Bool)

(declare-fun tp!1464601 () Bool)

(assert (=> b!5225596 (= e!3252329 tp!1464601)))

(assert (= (and d!1684763 condSetEmpty!33257) setIsEmpty!33257))

(assert (= (and d!1684763 (not condSetEmpty!33257)) setNonEmpty!33257))

(assert (= setNonEmpty!33257 b!5225596))

(declare-fun m!6272470 () Bool)

(assert (=> setNonEmpty!33257 m!6272470))

(assert (=> d!1684289 d!1684763))

(declare-fun d!1684765 () Bool)

(assert (=> d!1684765 (= (isEmpty!32542 (tail!10294 (exprs!4699 (h!67070 zl!343)))) ((_ is Nil!60620) (tail!10294 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> b!5224240 d!1684765))

(declare-fun d!1684767 () Bool)

(assert (=> d!1684767 (= (tail!10294 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343))))))

(assert (=> b!5224240 d!1684767))

(declare-fun d!1684769 () Bool)

(assert (=> d!1684769 (= (isEmpty!32542 (unfocusZipperList!257 zl!343)) ((_ is Nil!60620) (unfocusZipperList!257 zl!343)))))

(assert (=> b!5224439 d!1684769))

(assert (=> bm!368977 d!1684589))

(declare-fun e!3252332 () (InoxSet Context!8398))

(declare-fun call!369212 () (InoxSet Context!8398))

(declare-fun b!5225597 () Bool)

(assert (=> b!5225597 (= e!3252332 ((_ map or) call!369212 (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080)))))) (h!67069 s!2326))))))

(declare-fun b!5225598 () Bool)

(declare-fun e!3252331 () Bool)

(assert (=> b!5225598 (= e!3252331 (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080)))))))))

(declare-fun d!1684771 () Bool)

(declare-fun c!902137 () Bool)

(assert (=> d!1684771 (= c!902137 e!3252331)))

(declare-fun res!2218546 () Bool)

(assert (=> d!1684771 (=> (not res!2218546) (not e!3252331))))

(assert (=> d!1684771 (= res!2218546 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080))))))))

(assert (=> d!1684771 (= (derivationStepZipperUp!187 (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (h!67069 s!2326)) e!3252332)))

(declare-fun b!5225599 () Bool)

(declare-fun e!3252330 () (InoxSet Context!8398))

(assert (=> b!5225599 (= e!3252330 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369207 () Bool)

(assert (=> bm!369207 (= call!369212 (derivationStepZipperDown!263 (h!67068 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080))))) (Context!8399 (t!373917 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080)))))) (h!67069 s!2326)))))

(declare-fun b!5225600 () Bool)

(assert (=> b!5225600 (= e!3252332 e!3252330)))

(declare-fun c!902138 () Bool)

(assert (=> b!5225600 (= c!902138 ((_ is Cons!60620) (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080))))))))

(declare-fun b!5225601 () Bool)

(assert (=> b!5225601 (= e!3252330 call!369212)))

(assert (= (and d!1684771 res!2218546) b!5225598))

(assert (= (and d!1684771 c!902137) b!5225597))

(assert (= (and d!1684771 (not c!902137)) b!5225600))

(assert (= (and b!5225600 c!902138) b!5225601))

(assert (= (and b!5225600 (not c!902138)) b!5225599))

(assert (= (or b!5225597 b!5225601) bm!369207))

(declare-fun m!6272472 () Bool)

(assert (=> b!5225597 m!6272472))

(declare-fun m!6272474 () Bool)

(assert (=> b!5225598 m!6272474))

(declare-fun m!6272476 () Bool)

(assert (=> bm!369207 m!6272476))

(assert (=> b!5224551 d!1684771))

(declare-fun b!5225602 () Bool)

(declare-fun e!3252334 () Bool)

(assert (=> b!5225602 (= e!3252334 (nullable!4984 (regOne!30142 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5225603 () Bool)

(declare-fun e!3252336 () (InoxSet Context!8398))

(declare-fun call!369213 () (InoxSet Context!8398))

(assert (=> b!5225603 (= e!3252336 call!369213)))

(declare-fun b!5225604 () Bool)

(declare-fun c!902139 () Bool)

(assert (=> b!5225604 (= c!902139 e!3252334)))

(declare-fun res!2218547 () Bool)

(assert (=> b!5225604 (=> (not res!2218547) (not e!3252334))))

(assert (=> b!5225604 (= res!2218547 ((_ is Concat!23660) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun e!3252337 () (InoxSet Context!8398))

(declare-fun e!3252333 () (InoxSet Context!8398))

(assert (=> b!5225604 (= e!3252337 e!3252333)))

(declare-fun bm!369208 () Bool)

(declare-fun c!902142 () Bool)

(declare-fun call!369215 () List!60744)

(assert (=> bm!369208 (= call!369215 ($colon$colon!1289 (exprs!4699 (ite c!901794 lt!2144080 (Context!8399 call!368955))) (ite (or c!902139 c!902142) (regTwo!30142 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(declare-fun b!5225605 () Bool)

(declare-fun call!369218 () (InoxSet Context!8398))

(declare-fun call!369214 () (InoxSet Context!8398))

(assert (=> b!5225605 (= e!3252337 ((_ map or) call!369218 call!369214))))

(declare-fun b!5225606 () Bool)

(assert (=> b!5225606 (= e!3252333 e!3252336)))

(assert (=> b!5225606 (= c!902142 ((_ is Concat!23660) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225607 () Bool)

(declare-fun e!3252338 () (InoxSet Context!8398))

(assert (=> b!5225607 (= e!3252338 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369209 () Bool)

(declare-fun c!902143 () Bool)

(assert (=> bm!369209 (= call!369218 (derivationStepZipperDown!263 (ite c!902143 (regOne!30143 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (regOne!30142 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))) (ite c!902143 (ite c!901794 lt!2144080 (Context!8399 call!368955)) (Context!8399 call!369215)) (h!67069 s!2326)))))

(declare-fun b!5225609 () Bool)

(assert (=> b!5225609 (= e!3252338 call!369213)))

(declare-fun bm!369210 () Bool)

(declare-fun call!369217 () List!60744)

(assert (=> bm!369210 (= call!369214 (derivationStepZipperDown!263 (ite c!902143 (regTwo!30143 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (ite c!902139 (regTwo!30142 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (ite c!902142 (regOne!30142 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (reg!15144 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))))))) (ite (or c!902143 c!902139) (ite c!901794 lt!2144080 (Context!8399 call!368955)) (Context!8399 call!369217)) (h!67069 s!2326)))))

(declare-fun e!3252335 () (InoxSet Context!8398))

(declare-fun b!5225610 () Bool)

(assert (=> b!5225610 (= e!3252335 (store ((as const (Array Context!8398 Bool)) false) (ite c!901794 lt!2144080 (Context!8399 call!368955)) true))))

(declare-fun b!5225611 () Bool)

(assert (=> b!5225611 (= e!3252335 e!3252337)))

(assert (=> b!5225611 (= c!902143 ((_ is Union!14815) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun bm!369211 () Bool)

(assert (=> bm!369211 (= call!369217 call!369215)))

(declare-fun b!5225612 () Bool)

(declare-fun c!902140 () Bool)

(assert (=> b!5225612 (= c!902140 ((_ is Star!14815) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(assert (=> b!5225612 (= e!3252336 e!3252338)))

(declare-fun b!5225608 () Bool)

(declare-fun call!369216 () (InoxSet Context!8398))

(assert (=> b!5225608 (= e!3252333 ((_ map or) call!369218 call!369216))))

(declare-fun d!1684773 () Bool)

(declare-fun c!902141 () Bool)

(assert (=> d!1684773 (= c!902141 (and ((_ is ElementMatch!14815) (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (= (c!901653 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))))) (h!67069 s!2326))))))

(assert (=> d!1684773 (= (derivationStepZipperDown!263 (ite c!901794 (regOne!30143 (regTwo!30143 (regOne!30142 r!7292))) (regOne!30142 (regTwo!30143 (regOne!30142 r!7292)))) (ite c!901794 lt!2144080 (Context!8399 call!368955)) (h!67069 s!2326)) e!3252335)))

(declare-fun bm!369212 () Bool)

(assert (=> bm!369212 (= call!369216 call!369214)))

(declare-fun bm!369213 () Bool)

(assert (=> bm!369213 (= call!369213 call!369216)))

(assert (= (and d!1684773 c!902141) b!5225610))

(assert (= (and d!1684773 (not c!902141)) b!5225611))

(assert (= (and b!5225611 c!902143) b!5225605))

(assert (= (and b!5225611 (not c!902143)) b!5225604))

(assert (= (and b!5225604 res!2218547) b!5225602))

(assert (= (and b!5225604 c!902139) b!5225608))

(assert (= (and b!5225604 (not c!902139)) b!5225606))

(assert (= (and b!5225606 c!902142) b!5225603))

(assert (= (and b!5225606 (not c!902142)) b!5225612))

(assert (= (and b!5225612 c!902140) b!5225609))

(assert (= (and b!5225612 (not c!902140)) b!5225607))

(assert (= (or b!5225603 b!5225609) bm!369211))

(assert (= (or b!5225603 b!5225609) bm!369213))

(assert (= (or b!5225608 bm!369211) bm!369208))

(assert (= (or b!5225608 bm!369213) bm!369212))

(assert (= (or b!5225605 bm!369212) bm!369210))

(assert (= (or b!5225605 b!5225608) bm!369209))

(declare-fun m!6272478 () Bool)

(assert (=> bm!369209 m!6272478))

(declare-fun m!6272480 () Bool)

(assert (=> bm!369210 m!6272480))

(declare-fun m!6272482 () Bool)

(assert (=> bm!369208 m!6272482))

(declare-fun m!6272484 () Bool)

(assert (=> b!5225602 m!6272484))

(declare-fun m!6272486 () Bool)

(assert (=> b!5225610 m!6272486))

(assert (=> bm!368949 d!1684773))

(declare-fun bs!1213331 () Bool)

(declare-fun b!5225615 () Bool)

(assert (= bs!1213331 (and b!5225615 d!1684679)))

(declare-fun lambda!262353 () Int)

(assert (=> bs!1213331 (not (= lambda!262353 lambda!262343))))

(assert (=> bs!1213331 (not (= lambda!262353 lambda!262344))))

(declare-fun bs!1213332 () Bool)

(assert (= bs!1213332 (and b!5225615 b!5223795)))

(assert (=> bs!1213332 (not (= lambda!262353 lambda!262228))))

(declare-fun bs!1213333 () Bool)

(assert (= bs!1213333 (and b!5225615 b!5224354)))

(assert (=> bs!1213333 (= (and (= (reg!15144 (regTwo!30143 r!7292)) (reg!15144 r!7292)) (= (regTwo!30143 r!7292) r!7292)) (= lambda!262353 lambda!262271))))

(declare-fun bs!1213334 () Bool)

(assert (= bs!1213334 (and b!5225615 b!5224362)))

(assert (=> bs!1213334 (not (= lambda!262353 lambda!262272))))

(declare-fun bs!1213335 () Bool)

(assert (= bs!1213335 (and b!5225615 d!1684251)))

(assert (=> bs!1213335 (not (= lambda!262353 lambda!262288))))

(assert (=> bs!1213332 (not (= lambda!262353 lambda!262227))))

(declare-fun bs!1213336 () Bool)

(assert (= bs!1213336 (and b!5225615 d!1684255)))

(assert (=> bs!1213336 (not (= lambda!262353 lambda!262291))))

(assert (=> bs!1213335 (not (= lambda!262353 lambda!262287))))

(assert (=> b!5225615 true))

(assert (=> b!5225615 true))

(declare-fun bs!1213337 () Bool)

(declare-fun b!5225623 () Bool)

(assert (= bs!1213337 (and b!5225623 d!1684679)))

(declare-fun lambda!262354 () Int)

(assert (=> bs!1213337 (not (= lambda!262354 lambda!262343))))

(declare-fun bs!1213338 () Bool)

(assert (= bs!1213338 (and b!5225623 b!5225615)))

(assert (=> bs!1213338 (not (= lambda!262354 lambda!262353))))

(assert (=> bs!1213337 (= (and (= (regOne!30142 (regTwo!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regTwo!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262354 lambda!262344))))

(declare-fun bs!1213339 () Bool)

(assert (= bs!1213339 (and b!5225623 b!5223795)))

(assert (=> bs!1213339 (= (and (= (regOne!30142 (regTwo!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regTwo!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262354 lambda!262228))))

(declare-fun bs!1213340 () Bool)

(assert (= bs!1213340 (and b!5225623 b!5224354)))

(assert (=> bs!1213340 (not (= lambda!262354 lambda!262271))))

(declare-fun bs!1213341 () Bool)

(assert (= bs!1213341 (and b!5225623 b!5224362)))

(assert (=> bs!1213341 (= (and (= (regOne!30142 (regTwo!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regTwo!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262354 lambda!262272))))

(declare-fun bs!1213342 () Bool)

(assert (= bs!1213342 (and b!5225623 d!1684251)))

(assert (=> bs!1213342 (= (and (= (regOne!30142 (regTwo!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regTwo!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262354 lambda!262288))))

(assert (=> bs!1213339 (not (= lambda!262354 lambda!262227))))

(declare-fun bs!1213343 () Bool)

(assert (= bs!1213343 (and b!5225623 d!1684255)))

(assert (=> bs!1213343 (not (= lambda!262354 lambda!262291))))

(assert (=> bs!1213342 (not (= lambda!262354 lambda!262287))))

(assert (=> b!5225623 true))

(assert (=> b!5225623 true))

(declare-fun b!5225613 () Bool)

(declare-fun res!2218550 () Bool)

(declare-fun e!3252339 () Bool)

(assert (=> b!5225613 (=> res!2218550 e!3252339)))

(declare-fun call!369220 () Bool)

(assert (=> b!5225613 (= res!2218550 call!369220)))

(declare-fun e!3252343 () Bool)

(assert (=> b!5225613 (= e!3252343 e!3252339)))

(declare-fun b!5225614 () Bool)

(declare-fun e!3252344 () Bool)

(declare-fun e!3252345 () Bool)

(assert (=> b!5225614 (= e!3252344 e!3252345)))

(declare-fun res!2218548 () Bool)

(assert (=> b!5225614 (= res!2218548 (matchRSpec!1918 (regOne!30143 (regTwo!30143 r!7292)) s!2326))))

(assert (=> b!5225614 (=> res!2218548 e!3252345)))

(declare-fun call!369219 () Bool)

(assert (=> b!5225615 (= e!3252339 call!369219)))

(declare-fun b!5225616 () Bool)

(assert (=> b!5225616 (= e!3252345 (matchRSpec!1918 (regTwo!30143 (regTwo!30143 r!7292)) s!2326))))

(declare-fun b!5225617 () Bool)

(declare-fun e!3252340 () Bool)

(declare-fun e!3252342 () Bool)

(assert (=> b!5225617 (= e!3252340 e!3252342)))

(declare-fun res!2218549 () Bool)

(assert (=> b!5225617 (= res!2218549 (not ((_ is EmptyLang!14815) (regTwo!30143 r!7292))))))

(assert (=> b!5225617 (=> (not res!2218549) (not e!3252342))))

(declare-fun b!5225618 () Bool)

(assert (=> b!5225618 (= e!3252340 call!369220)))

(declare-fun b!5225619 () Bool)

(declare-fun c!902144 () Bool)

(assert (=> b!5225619 (= c!902144 ((_ is Union!14815) (regTwo!30143 r!7292)))))

(declare-fun e!3252341 () Bool)

(assert (=> b!5225619 (= e!3252341 e!3252344)))

(declare-fun b!5225620 () Bool)

(assert (=> b!5225620 (= e!3252344 e!3252343)))

(declare-fun c!902146 () Bool)

(assert (=> b!5225620 (= c!902146 ((_ is Star!14815) (regTwo!30143 r!7292)))))

(declare-fun b!5225621 () Bool)

(assert (=> b!5225621 (= e!3252341 (= s!2326 (Cons!60621 (c!901653 (regTwo!30143 r!7292)) Nil!60621)))))

(declare-fun bm!369214 () Bool)

(assert (=> bm!369214 (= call!369220 (isEmpty!32545 s!2326))))

(declare-fun d!1684775 () Bool)

(declare-fun c!902147 () Bool)

(assert (=> d!1684775 (= c!902147 ((_ is EmptyExpr!14815) (regTwo!30143 r!7292)))))

(assert (=> d!1684775 (= (matchRSpec!1918 (regTwo!30143 r!7292) s!2326) e!3252340)))

(declare-fun b!5225622 () Bool)

(declare-fun c!902145 () Bool)

(assert (=> b!5225622 (= c!902145 ((_ is ElementMatch!14815) (regTwo!30143 r!7292)))))

(assert (=> b!5225622 (= e!3252342 e!3252341)))

(assert (=> b!5225623 (= e!3252343 call!369219)))

(declare-fun bm!369215 () Bool)

(assert (=> bm!369215 (= call!369219 (Exists!1996 (ite c!902146 lambda!262353 lambda!262354)))))

(assert (= (and d!1684775 c!902147) b!5225618))

(assert (= (and d!1684775 (not c!902147)) b!5225617))

(assert (= (and b!5225617 res!2218549) b!5225622))

(assert (= (and b!5225622 c!902145) b!5225621))

(assert (= (and b!5225622 (not c!902145)) b!5225619))

(assert (= (and b!5225619 c!902144) b!5225614))

(assert (= (and b!5225619 (not c!902144)) b!5225620))

(assert (= (and b!5225614 (not res!2218548)) b!5225616))

(assert (= (and b!5225620 c!902146) b!5225613))

(assert (= (and b!5225620 (not c!902146)) b!5225623))

(assert (= (and b!5225613 (not res!2218550)) b!5225615))

(assert (= (or b!5225615 b!5225623) bm!369215))

(assert (= (or b!5225618 b!5225613) bm!369214))

(declare-fun m!6272488 () Bool)

(assert (=> b!5225614 m!6272488))

(declare-fun m!6272490 () Bool)

(assert (=> b!5225616 m!6272490))

(assert (=> bm!369214 m!6271256))

(declare-fun m!6272492 () Bool)

(assert (=> bm!369215 m!6272492))

(assert (=> b!5224355 d!1684775))

(declare-fun d!1684777 () Bool)

(declare-fun c!902148 () Bool)

(assert (=> d!1684777 (= c!902148 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252346 () Bool)

(assert (=> d!1684777 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144069 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252346)))

(declare-fun b!5225624 () Bool)

(assert (=> b!5225624 (= e!3252346 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144069 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225625 () Bool)

(assert (=> b!5225625 (= e!3252346 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144069 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684777 c!902148) b!5225624))

(assert (= (and d!1684777 (not c!902148)) b!5225625))

(assert (=> d!1684777 m!6271288))

(assert (=> d!1684777 m!6272108))

(assert (=> b!5225624 m!6271360))

(declare-fun m!6272494 () Bool)

(assert (=> b!5225624 m!6272494))

(assert (=> b!5225625 m!6271288))

(assert (=> b!5225625 m!6272112))

(assert (=> b!5225625 m!6271360))

(assert (=> b!5225625 m!6272112))

(declare-fun m!6272496 () Bool)

(assert (=> b!5225625 m!6272496))

(assert (=> b!5225625 m!6271288))

(assert (=> b!5225625 m!6272116))

(assert (=> b!5225625 m!6272496))

(assert (=> b!5225625 m!6272116))

(declare-fun m!6272498 () Bool)

(assert (=> b!5225625 m!6272498))

(assert (=> b!5224476 d!1684777))

(declare-fun bs!1213344 () Bool)

(declare-fun d!1684779 () Bool)

(assert (= bs!1213344 (and d!1684779 d!1684739)))

(declare-fun lambda!262355 () Int)

(assert (=> bs!1213344 (= (= (head!11198 (t!373918 s!2326)) (head!11198 s!2326)) (= lambda!262355 lambda!262350))))

(declare-fun bs!1213345 () Bool)

(assert (= bs!1213345 (and d!1684779 b!5223802)))

(assert (=> bs!1213345 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262355 lambda!262229))))

(declare-fun bs!1213346 () Bool)

(assert (= bs!1213346 (and d!1684779 d!1684615)))

(assert (=> bs!1213346 (= lambda!262355 lambda!262334)))

(declare-fun bs!1213347 () Bool)

(assert (= bs!1213347 (and d!1684779 d!1684601)))

(assert (=> bs!1213347 (= lambda!262355 lambda!262330)))

(declare-fun bs!1213348 () Bool)

(assert (= bs!1213348 (and d!1684779 d!1684629)))

(assert (=> bs!1213348 (= lambda!262355 lambda!262337)))

(declare-fun bs!1213349 () Bool)

(assert (= bs!1213349 (and d!1684779 d!1684229)))

(assert (=> bs!1213349 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262355 lambda!262281))))

(declare-fun bs!1213350 () Bool)

(assert (= bs!1213350 (and d!1684779 d!1684721)))

(assert (=> bs!1213350 (= lambda!262355 lambda!262349)))

(declare-fun bs!1213351 () Bool)

(assert (= bs!1213351 (and d!1684779 d!1684749)))

(assert (=> bs!1213351 (= lambda!262355 lambda!262351)))

(assert (=> d!1684779 true))

(assert (=> d!1684779 (= (derivationStepZipper!1083 lt!2144069 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144069 lambda!262355))))

(declare-fun bs!1213352 () Bool)

(assert (= bs!1213352 d!1684779))

(declare-fun m!6272500 () Bool)

(assert (=> bs!1213352 m!6272500))

(assert (=> b!5224476 d!1684779))

(assert (=> b!5224476 d!1684603))

(assert (=> b!5224476 d!1684605))

(declare-fun d!1684781 () Bool)

(assert (=> d!1684781 (= (isEmpty!32542 (t!373917 (unfocusZipperList!257 zl!343))) ((_ is Nil!60620) (t!373917 (unfocusZipperList!257 zl!343))))))

(assert (=> b!5224440 d!1684781))

(declare-fun b!5225626 () Bool)

(declare-fun e!3252348 () Bool)

(assert (=> b!5225626 (= e!3252348 (nullable!4984 (regOne!30142 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))))))))

(declare-fun b!5225627 () Bool)

(declare-fun e!3252350 () (InoxSet Context!8398))

(declare-fun call!369221 () (InoxSet Context!8398))

(assert (=> b!5225627 (= e!3252350 call!369221)))

(declare-fun b!5225628 () Bool)

(declare-fun c!902149 () Bool)

(assert (=> b!5225628 (= c!902149 e!3252348)))

(declare-fun res!2218551 () Bool)

(assert (=> b!5225628 (=> (not res!2218551) (not e!3252348))))

(assert (=> b!5225628 (= res!2218551 ((_ is Concat!23660) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun e!3252351 () (InoxSet Context!8398))

(declare-fun e!3252347 () (InoxSet Context!8398))

(assert (=> b!5225628 (= e!3252351 e!3252347)))

(declare-fun c!902152 () Bool)

(declare-fun call!369223 () List!60744)

(declare-fun bm!369216 () Bool)

(assert (=> bm!369216 (= call!369223 ($colon$colon!1289 (exprs!4699 (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997))) (ite (or c!902149 c!902152) (regTwo!30142 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))))))))

(declare-fun b!5225629 () Bool)

(declare-fun call!369226 () (InoxSet Context!8398))

(declare-fun call!369222 () (InoxSet Context!8398))

(assert (=> b!5225629 (= e!3252351 ((_ map or) call!369226 call!369222))))

(declare-fun b!5225630 () Bool)

(assert (=> b!5225630 (= e!3252347 e!3252350)))

(assert (=> b!5225630 (= c!902152 ((_ is Concat!23660) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun b!5225631 () Bool)

(declare-fun e!3252352 () (InoxSet Context!8398))

(assert (=> b!5225631 (= e!3252352 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369217 () Bool)

(declare-fun c!902153 () Bool)

(assert (=> bm!369217 (= call!369226 (derivationStepZipperDown!263 (ite c!902153 (regOne!30143 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (regOne!30142 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))))) (ite c!902153 (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997)) (Context!8399 call!369223)) (h!67069 s!2326)))))

(declare-fun b!5225633 () Bool)

(assert (=> b!5225633 (= e!3252352 call!369221)))

(declare-fun call!369225 () List!60744)

(declare-fun bm!369218 () Bool)

(assert (=> bm!369218 (= call!369222 (derivationStepZipperDown!263 (ite c!902153 (regTwo!30143 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (ite c!902149 (regTwo!30142 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (ite c!902152 (regOne!30142 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (reg!15144 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))))))) (ite (or c!902153 c!902149) (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997)) (Context!8399 call!369225)) (h!67069 s!2326)))))

(declare-fun e!3252349 () (InoxSet Context!8398))

(declare-fun b!5225634 () Bool)

(assert (=> b!5225634 (= e!3252349 (store ((as const (Array Context!8398 Bool)) false) (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997)) true))))

(declare-fun b!5225635 () Bool)

(assert (=> b!5225635 (= e!3252349 e!3252351)))

(assert (=> b!5225635 (= c!902153 ((_ is Union!14815) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun bm!369219 () Bool)

(assert (=> bm!369219 (= call!369225 call!369223)))

(declare-fun c!902150 () Bool)

(declare-fun b!5225636 () Bool)

(assert (=> b!5225636 (= c!902150 ((_ is Star!14815) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))))))

(assert (=> b!5225636 (= e!3252350 e!3252352)))

(declare-fun b!5225632 () Bool)

(declare-fun call!369224 () (InoxSet Context!8398))

(assert (=> b!5225632 (= e!3252347 ((_ map or) call!369226 call!369224))))

(declare-fun d!1684783 () Bool)

(declare-fun c!902151 () Bool)

(assert (=> d!1684783 (= c!902151 (and ((_ is ElementMatch!14815) (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (= (c!901653 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343)))))))) (h!67069 s!2326))))))

(assert (=> d!1684783 (= (derivationStepZipperDown!263 (ite c!901881 (regTwo!30143 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901877 (regTwo!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (ite c!901880 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343)))) (reg!15144 (h!67068 (exprs!4699 (h!67070 zl!343))))))) (ite (or c!901881 c!901877) lt!2144080 (Context!8399 call!368997)) (h!67069 s!2326)) e!3252349)))

(declare-fun bm!369220 () Bool)

(assert (=> bm!369220 (= call!369224 call!369222)))

(declare-fun bm!369221 () Bool)

(assert (=> bm!369221 (= call!369221 call!369224)))

(assert (= (and d!1684783 c!902151) b!5225634))

(assert (= (and d!1684783 (not c!902151)) b!5225635))

(assert (= (and b!5225635 c!902153) b!5225629))

(assert (= (and b!5225635 (not c!902153)) b!5225628))

(assert (= (and b!5225628 res!2218551) b!5225626))

(assert (= (and b!5225628 c!902149) b!5225632))

(assert (= (and b!5225628 (not c!902149)) b!5225630))

(assert (= (and b!5225630 c!902152) b!5225627))

(assert (= (and b!5225630 (not c!902152)) b!5225636))

(assert (= (and b!5225636 c!902150) b!5225633))

(assert (= (and b!5225636 (not c!902150)) b!5225631))

(assert (= (or b!5225627 b!5225633) bm!369219))

(assert (= (or b!5225627 b!5225633) bm!369221))

(assert (= (or b!5225632 bm!369219) bm!369216))

(assert (= (or b!5225632 bm!369221) bm!369220))

(assert (= (or b!5225629 bm!369220) bm!369218))

(assert (= (or b!5225629 b!5225632) bm!369217))

(declare-fun m!6272502 () Bool)

(assert (=> bm!369217 m!6272502))

(declare-fun m!6272504 () Bool)

(assert (=> bm!369218 m!6272504))

(declare-fun m!6272506 () Bool)

(assert (=> bm!369216 m!6272506))

(declare-fun m!6272508 () Bool)

(assert (=> b!5225626 m!6272508))

(declare-fun m!6272510 () Bool)

(assert (=> b!5225634 m!6272510))

(assert (=> bm!368990 d!1684783))

(assert (=> b!5224479 d!1684241))

(assert (=> b!5224399 d!1684653))

(declare-fun bs!1213353 () Bool)

(declare-fun d!1684785 () Bool)

(assert (= bs!1213353 (and d!1684785 d!1684623)))

(declare-fun lambda!262356 () Int)

(assert (=> bs!1213353 (= lambda!262356 lambda!262335)))

(declare-fun bs!1213354 () Bool)

(assert (= bs!1213354 (and d!1684785 d!1684669)))

(assert (=> bs!1213354 (= lambda!262356 lambda!262338)))

(declare-fun bs!1213355 () Bool)

(assert (= bs!1213355 (and d!1684785 d!1684213)))

(assert (=> bs!1213355 (= lambda!262356 lambda!262278)))

(declare-fun bs!1213356 () Bool)

(assert (= bs!1213356 (and d!1684785 d!1684243)))

(assert (=> bs!1213356 (= lambda!262356 lambda!262282)))

(declare-fun bs!1213357 () Bool)

(assert (= bs!1213357 (and d!1684785 d!1684191)))

(assert (=> bs!1213357 (= lambda!262356 lambda!262263)))

(declare-fun bs!1213358 () Bool)

(assert (= bs!1213358 (and d!1684785 d!1684211)))

(assert (=> bs!1213358 (= lambda!262356 lambda!262275)))

(declare-fun bs!1213359 () Bool)

(assert (= bs!1213359 (and d!1684785 d!1684199)))

(assert (=> bs!1213359 (= lambda!262356 lambda!262266)))

(declare-fun bs!1213360 () Bool)

(assert (= bs!1213360 (and d!1684785 d!1684695)))

(assert (=> bs!1213360 (= lambda!262356 lambda!262345)))

(declare-fun e!3252354 () Bool)

(assert (=> d!1684785 e!3252354))

(declare-fun res!2218552 () Bool)

(assert (=> d!1684785 (=> (not res!2218552) (not e!3252354))))

(declare-fun lt!2144227 () Regex!14815)

(assert (=> d!1684785 (= res!2218552 (validRegex!6551 lt!2144227))))

(declare-fun e!3252353 () Regex!14815)

(assert (=> d!1684785 (= lt!2144227 e!3252353)))

(declare-fun c!902157 () Bool)

(declare-fun e!3252355 () Bool)

(assert (=> d!1684785 (= c!902157 e!3252355)))

(declare-fun res!2218553 () Bool)

(assert (=> d!1684785 (=> (not res!2218553) (not e!3252355))))

(assert (=> d!1684785 (= res!2218553 ((_ is Cons!60620) (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> d!1684785 (forall!14247 (t!373917 (exprs!4699 (h!67070 zl!343))) lambda!262356)))

(assert (=> d!1684785 (= (generalisedConcat!484 (t!373917 (exprs!4699 (h!67070 zl!343)))) lt!2144227)))

(declare-fun b!5225637 () Bool)

(declare-fun e!3252358 () Bool)

(assert (=> b!5225637 (= e!3252358 (isConcat!298 lt!2144227))))

(declare-fun b!5225638 () Bool)

(declare-fun e!3252357 () Bool)

(assert (=> b!5225638 (= e!3252357 e!3252358)))

(declare-fun c!902154 () Bool)

(assert (=> b!5225638 (= c!902154 (isEmpty!32542 (tail!10294 (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5225639 () Bool)

(assert (=> b!5225639 (= e!3252354 e!3252357)))

(declare-fun c!902155 () Bool)

(assert (=> b!5225639 (= c!902155 (isEmpty!32542 (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225640 () Bool)

(assert (=> b!5225640 (= e!3252353 (h!67068 (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225641 () Bool)

(assert (=> b!5225641 (= e!3252355 (isEmpty!32542 (t!373917 (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5225642 () Bool)

(declare-fun e!3252356 () Regex!14815)

(assert (=> b!5225642 (= e!3252356 EmptyExpr!14815)))

(declare-fun b!5225643 () Bool)

(assert (=> b!5225643 (= e!3252356 (Concat!23660 (h!67068 (t!373917 (exprs!4699 (h!67070 zl!343)))) (generalisedConcat!484 (t!373917 (t!373917 (exprs!4699 (h!67070 zl!343)))))))))

(declare-fun b!5225644 () Bool)

(assert (=> b!5225644 (= e!3252353 e!3252356)))

(declare-fun c!902156 () Bool)

(assert (=> b!5225644 (= c!902156 ((_ is Cons!60620) (t!373917 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun b!5225645 () Bool)

(assert (=> b!5225645 (= e!3252358 (= lt!2144227 (head!11197 (t!373917 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun b!5225646 () Bool)

(assert (=> b!5225646 (= e!3252357 (isEmptyExpr!775 lt!2144227))))

(assert (= (and d!1684785 res!2218553) b!5225641))

(assert (= (and d!1684785 c!902157) b!5225640))

(assert (= (and d!1684785 (not c!902157)) b!5225644))

(assert (= (and b!5225644 c!902156) b!5225643))

(assert (= (and b!5225644 (not c!902156)) b!5225642))

(assert (= (and d!1684785 res!2218552) b!5225639))

(assert (= (and b!5225639 c!902155) b!5225646))

(assert (= (and b!5225639 (not c!902155)) b!5225638))

(assert (= (and b!5225638 c!902154) b!5225645))

(assert (= (and b!5225638 (not c!902154)) b!5225637))

(declare-fun m!6272512 () Bool)

(assert (=> b!5225637 m!6272512))

(declare-fun m!6272514 () Bool)

(assert (=> b!5225646 m!6272514))

(declare-fun m!6272516 () Bool)

(assert (=> b!5225643 m!6272516))

(assert (=> b!5225639 m!6270860))

(declare-fun m!6272518 () Bool)

(assert (=> b!5225645 m!6272518))

(declare-fun m!6272520 () Bool)

(assert (=> d!1684785 m!6272520))

(declare-fun m!6272522 () Bool)

(assert (=> d!1684785 m!6272522))

(declare-fun m!6272524 () Bool)

(assert (=> b!5225638 m!6272524))

(assert (=> b!5225638 m!6272524))

(declare-fun m!6272526 () Bool)

(assert (=> b!5225638 m!6272526))

(declare-fun m!6272528 () Bool)

(assert (=> b!5225641 m!6272528))

(assert (=> b!5224245 d!1684785))

(declare-fun d!1684787 () Bool)

(assert (=> d!1684787 true))

(declare-fun setRes!33258 () Bool)

(assert (=> d!1684787 setRes!33258))

(declare-fun condSetEmpty!33258 () Bool)

(declare-fun res!2218554 () (InoxSet Context!8398))

(assert (=> d!1684787 (= condSetEmpty!33258 (= res!2218554 ((as const (Array Context!8398 Bool)) false)))))

(assert (=> d!1684787 (= (choose!38856 lt!2144088 lambda!262229) res!2218554)))

(declare-fun setIsEmpty!33258 () Bool)

(assert (=> setIsEmpty!33258 setRes!33258))

(declare-fun setNonEmpty!33258 () Bool)

(declare-fun setElem!33258 () Context!8398)

(declare-fun e!3252359 () Bool)

(declare-fun tp!1464602 () Bool)

(assert (=> setNonEmpty!33258 (= setRes!33258 (and tp!1464602 (inv!80284 setElem!33258) e!3252359))))

(declare-fun setRest!33258 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33258 (= res!2218554 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33258 true) setRest!33258))))

(declare-fun b!5225647 () Bool)

(declare-fun tp!1464603 () Bool)

(assert (=> b!5225647 (= e!3252359 tp!1464603)))

(assert (= (and d!1684787 condSetEmpty!33258) setIsEmpty!33258))

(assert (= (and d!1684787 (not condSetEmpty!33258)) setNonEmpty!33258))

(assert (= setNonEmpty!33258 b!5225647))

(declare-fun m!6272530 () Bool)

(assert (=> setNonEmpty!33258 m!6272530))

(assert (=> d!1684217 d!1684787))

(declare-fun d!1684789 () Bool)

(declare-fun c!902160 () Bool)

(assert (=> d!1684789 (= c!902160 ((_ is Nil!60622) lt!2144181))))

(declare-fun e!3252362 () (InoxSet Context!8398))

(assert (=> d!1684789 (= (content!10753 lt!2144181) e!3252362)))

(declare-fun b!5225652 () Bool)

(assert (=> b!5225652 (= e!3252362 ((as const (Array Context!8398 Bool)) false))))

(declare-fun b!5225653 () Bool)

(assert (=> b!5225653 (= e!3252362 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) (h!67070 lt!2144181) true) (content!10753 (t!373919 lt!2144181))))))

(assert (= (and d!1684789 c!902160) b!5225652))

(assert (= (and d!1684789 (not c!902160)) b!5225653))

(declare-fun m!6272532 () Bool)

(assert (=> b!5225653 m!6272532))

(declare-fun m!6272534 () Bool)

(assert (=> b!5225653 m!6272534))

(assert (=> b!5224531 d!1684789))

(assert (=> d!1684231 d!1684217))

(declare-fun d!1684791 () Bool)

(assert (=> d!1684791 (= (flatMap!542 lt!2144088 lambda!262229) (dynLambda!23953 lambda!262229 lt!2144070))))

(assert (=> d!1684791 true))

(declare-fun _$13!1739 () Unit!152540)

(assert (=> d!1684791 (= (choose!38857 lt!2144088 lt!2144070 lambda!262229) _$13!1739)))

(declare-fun b_lambda!202053 () Bool)

(assert (=> (not b_lambda!202053) (not d!1684791)))

(declare-fun bs!1213361 () Bool)

(assert (= bs!1213361 d!1684791))

(assert (=> bs!1213361 m!6270894))

(assert (=> bs!1213361 m!6271342))

(assert (=> d!1684231 d!1684791))

(declare-fun bs!1213362 () Bool)

(declare-fun d!1684793 () Bool)

(assert (= bs!1213362 (and d!1684793 d!1684715)))

(declare-fun lambda!262357 () Int)

(assert (=> bs!1213362 (= lambda!262357 lambda!262348)))

(declare-fun bs!1213363 () Bool)

(assert (= bs!1213363 (and d!1684793 d!1684699)))

(assert (=> bs!1213363 (= lambda!262357 lambda!262346)))

(declare-fun bs!1213364 () Bool)

(assert (= bs!1213364 (and d!1684793 d!1684609)))

(assert (=> bs!1213364 (= lambda!262357 lambda!262333)))

(declare-fun bs!1213365 () Bool)

(assert (= bs!1213365 (and d!1684793 d!1684701)))

(assert (=> bs!1213365 (= lambda!262357 lambda!262347)))

(declare-fun bs!1213366 () Bool)

(assert (= bs!1213366 (and d!1684793 d!1684761)))

(assert (=> bs!1213366 (= lambda!262357 lambda!262352)))

(declare-fun bs!1213367 () Bool)

(assert (= bs!1213367 (and d!1684793 d!1684625)))

(assert (=> bs!1213367 (= lambda!262357 lambda!262336)))

(assert (=> d!1684793 (= (nullableZipper!1239 lt!2144074) (exists!1974 lt!2144074 lambda!262357))))

(declare-fun bs!1213368 () Bool)

(assert (= bs!1213368 d!1684793))

(declare-fun m!6272536 () Bool)

(assert (=> bs!1213368 m!6272536))

(assert (=> b!5224409 d!1684793))

(declare-fun bs!1213369 () Bool)

(declare-fun d!1684795 () Bool)

(assert (= bs!1213369 (and d!1684795 d!1684793)))

(declare-fun lambda!262358 () Int)

(assert (=> bs!1213369 (= lambda!262358 lambda!262357)))

(declare-fun bs!1213370 () Bool)

(assert (= bs!1213370 (and d!1684795 d!1684715)))

(assert (=> bs!1213370 (= lambda!262358 lambda!262348)))

(declare-fun bs!1213371 () Bool)

(assert (= bs!1213371 (and d!1684795 d!1684699)))

(assert (=> bs!1213371 (= lambda!262358 lambda!262346)))

(declare-fun bs!1213372 () Bool)

(assert (= bs!1213372 (and d!1684795 d!1684609)))

(assert (=> bs!1213372 (= lambda!262358 lambda!262333)))

(declare-fun bs!1213373 () Bool)

(assert (= bs!1213373 (and d!1684795 d!1684701)))

(assert (=> bs!1213373 (= lambda!262358 lambda!262347)))

(declare-fun bs!1213374 () Bool)

(assert (= bs!1213374 (and d!1684795 d!1684761)))

(assert (=> bs!1213374 (= lambda!262358 lambda!262352)))

(declare-fun bs!1213375 () Bool)

(assert (= bs!1213375 (and d!1684795 d!1684625)))

(assert (=> bs!1213375 (= lambda!262358 lambda!262336)))

(assert (=> d!1684795 (= (nullableZipper!1239 lt!2144084) (exists!1974 lt!2144084 lambda!262358))))

(declare-fun bs!1213376 () Bool)

(assert (= bs!1213376 d!1684795))

(declare-fun m!6272538 () Bool)

(assert (=> bs!1213376 m!6272538))

(assert (=> b!5224473 d!1684795))

(declare-fun e!3252364 () Bool)

(declare-fun b!5225654 () Bool)

(assert (=> b!5225654 (= e!3252364 (nullable!4984 (regOne!30142 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))))))))

(declare-fun b!5225655 () Bool)

(declare-fun e!3252366 () (InoxSet Context!8398))

(declare-fun call!369227 () (InoxSet Context!8398))

(assert (=> b!5225655 (= e!3252366 call!369227)))

(declare-fun b!5225656 () Bool)

(declare-fun c!902161 () Bool)

(assert (=> b!5225656 (= c!902161 e!3252364)))

(declare-fun res!2218555 () Bool)

(assert (=> b!5225656 (=> (not res!2218555) (not e!3252364))))

(assert (=> b!5225656 (= res!2218555 ((_ is Concat!23660) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))))))

(declare-fun e!3252367 () (InoxSet Context!8398))

(declare-fun e!3252363 () (InoxSet Context!8398))

(assert (=> b!5225656 (= e!3252367 e!3252363)))

(declare-fun bm!369222 () Bool)

(declare-fun call!369229 () List!60744)

(declare-fun c!902164 () Bool)

(assert (=> bm!369222 (= call!369229 ($colon$colon!1289 (exprs!4699 (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963))) (ite (or c!902161 c!902164) (regTwo!30142 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))))))))

(declare-fun b!5225657 () Bool)

(declare-fun call!369232 () (InoxSet Context!8398))

(declare-fun call!369228 () (InoxSet Context!8398))

(assert (=> b!5225657 (= e!3252367 ((_ map or) call!369232 call!369228))))

(declare-fun b!5225658 () Bool)

(assert (=> b!5225658 (= e!3252363 e!3252366)))

(assert (=> b!5225658 (= c!902164 ((_ is Concat!23660) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))))))

(declare-fun b!5225659 () Bool)

(declare-fun e!3252368 () (InoxSet Context!8398))

(assert (=> b!5225659 (= e!3252368 ((as const (Array Context!8398 Bool)) false))))

(declare-fun c!902165 () Bool)

(declare-fun bm!369223 () Bool)

(assert (=> bm!369223 (= call!369232 (derivationStepZipperDown!263 (ite c!902165 (regOne!30143 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (regOne!30142 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))))) (ite c!902165 (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963)) (Context!8399 call!369229)) (h!67069 s!2326)))))

(declare-fun b!5225661 () Bool)

(assert (=> b!5225661 (= e!3252368 call!369227)))

(declare-fun call!369231 () List!60744)

(declare-fun bm!369224 () Bool)

(assert (=> bm!369224 (= call!369228 (derivationStepZipperDown!263 (ite c!902165 (regTwo!30143 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (ite c!902161 (regTwo!30142 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (ite c!902164 (regOne!30142 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (reg!15144 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))))))) (ite (or c!902165 c!902161) (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963)) (Context!8399 call!369231)) (h!67069 s!2326)))))

(declare-fun e!3252365 () (InoxSet Context!8398))

(declare-fun b!5225662 () Bool)

(assert (=> b!5225662 (= e!3252365 (store ((as const (Array Context!8398 Bool)) false) (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963)) true))))

(declare-fun b!5225663 () Bool)

(assert (=> b!5225663 (= e!3252365 e!3252367)))

(assert (=> b!5225663 (= c!902165 ((_ is Union!14815) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))))))

(declare-fun bm!369225 () Bool)

(assert (=> bm!369225 (= call!369231 call!369229)))

(declare-fun b!5225664 () Bool)

(declare-fun c!902162 () Bool)

(assert (=> b!5225664 (= c!902162 ((_ is Star!14815) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))))))

(assert (=> b!5225664 (= e!3252366 e!3252368)))

(declare-fun b!5225660 () Bool)

(declare-fun call!369230 () (InoxSet Context!8398))

(assert (=> b!5225660 (= e!3252363 ((_ map or) call!369232 call!369230))))

(declare-fun d!1684797 () Bool)

(declare-fun c!902163 () Bool)

(assert (=> d!1684797 (= c!902163 (and ((_ is ElementMatch!14815) (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (= (c!901653 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292))))))) (h!67069 s!2326))))))

(assert (=> d!1684797 (= (derivationStepZipperDown!263 (ite c!901799 (regTwo!30143 (regOne!30143 (regOne!30142 r!7292))) (ite c!901795 (regTwo!30142 (regOne!30143 (regOne!30142 r!7292))) (ite c!901798 (regOne!30142 (regOne!30143 (regOne!30142 r!7292))) (reg!15144 (regOne!30143 (regOne!30142 r!7292)))))) (ite (or c!901799 c!901795) lt!2144080 (Context!8399 call!368963)) (h!67069 s!2326)) e!3252365)))

(declare-fun bm!369226 () Bool)

(assert (=> bm!369226 (= call!369230 call!369228)))

(declare-fun bm!369227 () Bool)

(assert (=> bm!369227 (= call!369227 call!369230)))

(assert (= (and d!1684797 c!902163) b!5225662))

(assert (= (and d!1684797 (not c!902163)) b!5225663))

(assert (= (and b!5225663 c!902165) b!5225657))

(assert (= (and b!5225663 (not c!902165)) b!5225656))

(assert (= (and b!5225656 res!2218555) b!5225654))

(assert (= (and b!5225656 c!902161) b!5225660))

(assert (= (and b!5225656 (not c!902161)) b!5225658))

(assert (= (and b!5225658 c!902164) b!5225655))

(assert (= (and b!5225658 (not c!902164)) b!5225664))

(assert (= (and b!5225664 c!902162) b!5225661))

(assert (= (and b!5225664 (not c!902162)) b!5225659))

(assert (= (or b!5225655 b!5225661) bm!369225))

(assert (= (or b!5225655 b!5225661) bm!369227))

(assert (= (or b!5225660 bm!369225) bm!369222))

(assert (= (or b!5225660 bm!369227) bm!369226))

(assert (= (or b!5225657 bm!369226) bm!369224))

(assert (= (or b!5225657 b!5225660) bm!369223))

(declare-fun m!6272540 () Bool)

(assert (=> bm!369223 m!6272540))

(declare-fun m!6272542 () Bool)

(assert (=> bm!369224 m!6272542))

(declare-fun m!6272544 () Bool)

(assert (=> bm!369222 m!6272544))

(declare-fun m!6272546 () Bool)

(assert (=> b!5225654 m!6272546))

(declare-fun m!6272548 () Bool)

(assert (=> b!5225662 m!6272548))

(assert (=> bm!368956 d!1684797))

(declare-fun d!1684799 () Bool)

(declare-fun c!902166 () Bool)

(assert (=> d!1684799 (= c!902166 (isEmpty!32545 (t!373918 s!2326)))))

(declare-fun e!3252369 () Bool)

(assert (=> d!1684799 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144093) (t!373918 s!2326)) e!3252369)))

(declare-fun b!5225665 () Bool)

(assert (=> b!5225665 (= e!3252369 (nullableZipper!1239 ((_ map or) lt!2144069 lt!2144093)))))

(declare-fun b!5225666 () Bool)

(assert (=> b!5225666 (= e!3252369 (matchZipper!1059 (derivationStepZipper!1083 ((_ map or) lt!2144069 lt!2144093) (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))))))

(assert (= (and d!1684799 c!902166) b!5225665))

(assert (= (and d!1684799 (not c!902166)) b!5225666))

(assert (=> d!1684799 m!6271280))

(declare-fun m!6272550 () Bool)

(assert (=> b!5225665 m!6272550))

(assert (=> b!5225666 m!6271284))

(assert (=> b!5225666 m!6271284))

(declare-fun m!6272552 () Bool)

(assert (=> b!5225666 m!6272552))

(assert (=> b!5225666 m!6271288))

(assert (=> b!5225666 m!6272552))

(assert (=> b!5225666 m!6271288))

(declare-fun m!6272554 () Bool)

(assert (=> b!5225666 m!6272554))

(assert (=> d!1684239 d!1684799))

(assert (=> d!1684239 d!1684237))

(declare-fun d!1684801 () Bool)

(declare-fun e!3252370 () Bool)

(assert (=> d!1684801 (= (matchZipper!1059 ((_ map or) lt!2144069 lt!2144093) (t!373918 s!2326)) e!3252370)))

(declare-fun res!2218556 () Bool)

(assert (=> d!1684801 (=> res!2218556 e!3252370)))

(assert (=> d!1684801 (= res!2218556 (matchZipper!1059 lt!2144069 (t!373918 s!2326)))))

(assert (=> d!1684801 true))

(declare-fun _$48!848 () Unit!152540)

(assert (=> d!1684801 (= (choose!38858 lt!2144069 lt!2144093 (t!373918 s!2326)) _$48!848)))

(declare-fun b!5225667 () Bool)

(assert (=> b!5225667 (= e!3252370 (matchZipper!1059 lt!2144093 (t!373918 s!2326)))))

(assert (= (and d!1684801 (not res!2218556)) b!5225667))

(assert (=> d!1684801 m!6271364))

(assert (=> d!1684801 m!6270922))

(assert (=> b!5225667 m!6270856))

(assert (=> d!1684239 d!1684801))

(declare-fun d!1684803 () Bool)

(assert (=> d!1684803 (= (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))) (nullableFct!1391 (regOne!30142 (h!67068 (exprs!4699 (h!67070 zl!343))))))))

(declare-fun bs!1213377 () Bool)

(assert (= bs!1213377 d!1684803))

(declare-fun m!6272556 () Bool)

(assert (=> bs!1213377 m!6272556))

(assert (=> b!5224556 d!1684803))

(assert (=> b!5224523 d!1684245))

(assert (=> d!1684245 d!1684593))

(assert (=> d!1684261 d!1684593))

(declare-fun d!1684805 () Bool)

(declare-fun c!902167 () Bool)

(assert (=> d!1684805 (= c!902167 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252371 () Bool)

(assert (=> d!1684805 (= (matchZipper!1059 (derivationStepZipper!1083 lt!2144075 (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252371)))

(declare-fun b!5225668 () Bool)

(assert (=> b!5225668 (= e!3252371 (nullableZipper!1239 (derivationStepZipper!1083 lt!2144075 (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225669 () Bool)

(assert (=> b!5225669 (= e!3252371 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 lt!2144075 (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684805 c!902167) b!5225668))

(assert (= (and d!1684805 (not c!902167)) b!5225669))

(assert (=> d!1684805 m!6271288))

(assert (=> d!1684805 m!6272108))

(assert (=> b!5225668 m!6271378))

(declare-fun m!6272558 () Bool)

(assert (=> b!5225668 m!6272558))

(assert (=> b!5225669 m!6271288))

(assert (=> b!5225669 m!6272112))

(assert (=> b!5225669 m!6271378))

(assert (=> b!5225669 m!6272112))

(declare-fun m!6272560 () Bool)

(assert (=> b!5225669 m!6272560))

(assert (=> b!5225669 m!6271288))

(assert (=> b!5225669 m!6272116))

(assert (=> b!5225669 m!6272560))

(assert (=> b!5225669 m!6272116))

(declare-fun m!6272562 () Bool)

(assert (=> b!5225669 m!6272562))

(assert (=> b!5224483 d!1684805))

(declare-fun bs!1213378 () Bool)

(declare-fun d!1684807 () Bool)

(assert (= bs!1213378 (and d!1684807 d!1684779)))

(declare-fun lambda!262359 () Int)

(assert (=> bs!1213378 (= lambda!262359 lambda!262355)))

(declare-fun bs!1213379 () Bool)

(assert (= bs!1213379 (and d!1684807 d!1684739)))

(assert (=> bs!1213379 (= (= (head!11198 (t!373918 s!2326)) (head!11198 s!2326)) (= lambda!262359 lambda!262350))))

(declare-fun bs!1213380 () Bool)

(assert (= bs!1213380 (and d!1684807 b!5223802)))

(assert (=> bs!1213380 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262359 lambda!262229))))

(declare-fun bs!1213381 () Bool)

(assert (= bs!1213381 (and d!1684807 d!1684615)))

(assert (=> bs!1213381 (= lambda!262359 lambda!262334)))

(declare-fun bs!1213382 () Bool)

(assert (= bs!1213382 (and d!1684807 d!1684601)))

(assert (=> bs!1213382 (= lambda!262359 lambda!262330)))

(declare-fun bs!1213383 () Bool)

(assert (= bs!1213383 (and d!1684807 d!1684629)))

(assert (=> bs!1213383 (= lambda!262359 lambda!262337)))

(declare-fun bs!1213384 () Bool)

(assert (= bs!1213384 (and d!1684807 d!1684229)))

(assert (=> bs!1213384 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262359 lambda!262281))))

(declare-fun bs!1213385 () Bool)

(assert (= bs!1213385 (and d!1684807 d!1684721)))

(assert (=> bs!1213385 (= lambda!262359 lambda!262349)))

(declare-fun bs!1213386 () Bool)

(assert (= bs!1213386 (and d!1684807 d!1684749)))

(assert (=> bs!1213386 (= lambda!262359 lambda!262351)))

(assert (=> d!1684807 true))

(assert (=> d!1684807 (= (derivationStepZipper!1083 lt!2144075 (head!11198 (t!373918 s!2326))) (flatMap!542 lt!2144075 lambda!262359))))

(declare-fun bs!1213387 () Bool)

(assert (= bs!1213387 d!1684807))

(declare-fun m!6272564 () Bool)

(assert (=> bs!1213387 m!6272564))

(assert (=> b!5224483 d!1684807))

(assert (=> b!5224483 d!1684603))

(assert (=> b!5224483 d!1684605))

(declare-fun d!1684809 () Bool)

(assert (=> d!1684809 (= (nullable!4984 (h!67068 (exprs!4699 lt!2144070))) (nullableFct!1391 (h!67068 (exprs!4699 lt!2144070))))))

(declare-fun bs!1213388 () Bool)

(assert (= bs!1213388 d!1684809))

(declare-fun m!6272566 () Bool)

(assert (=> bs!1213388 m!6272566))

(assert (=> b!5224465 d!1684809))

(declare-fun b!5225670 () Bool)

(declare-fun res!2218560 () Bool)

(declare-fun e!3252377 () Bool)

(assert (=> b!5225670 (=> res!2218560 e!3252377)))

(declare-fun e!3252378 () Bool)

(assert (=> b!5225670 (= res!2218560 e!3252378)))

(declare-fun res!2218559 () Bool)

(assert (=> b!5225670 (=> (not res!2218559) (not e!3252378))))

(declare-fun lt!2144228 () Bool)

(assert (=> b!5225670 (= res!2218559 lt!2144228)))

(declare-fun b!5225671 () Bool)

(declare-fun e!3252373 () Bool)

(assert (=> b!5225671 (= e!3252373 (not (= (head!11198 s!2326) (c!901653 (regTwo!30142 r!7292)))))))

(declare-fun b!5225672 () Bool)

(declare-fun e!3252376 () Bool)

(assert (=> b!5225672 (= e!3252376 (nullable!4984 (regTwo!30142 r!7292)))))

(declare-fun b!5225673 () Bool)

(declare-fun e!3252372 () Bool)

(assert (=> b!5225673 (= e!3252372 e!3252373)))

(declare-fun res!2218558 () Bool)

(assert (=> b!5225673 (=> res!2218558 e!3252373)))

(declare-fun call!369233 () Bool)

(assert (=> b!5225673 (= res!2218558 call!369233)))

(declare-fun bm!369228 () Bool)

(assert (=> bm!369228 (= call!369233 (isEmpty!32545 s!2326))))

(declare-fun b!5225674 () Bool)

(declare-fun e!3252374 () Bool)

(declare-fun e!3252375 () Bool)

(assert (=> b!5225674 (= e!3252374 e!3252375)))

(declare-fun c!902170 () Bool)

(assert (=> b!5225674 (= c!902170 ((_ is EmptyLang!14815) (regTwo!30142 r!7292)))))

(declare-fun b!5225675 () Bool)

(declare-fun res!2218561 () Bool)

(assert (=> b!5225675 (=> res!2218561 e!3252377)))

(assert (=> b!5225675 (= res!2218561 (not ((_ is ElementMatch!14815) (regTwo!30142 r!7292))))))

(assert (=> b!5225675 (= e!3252375 e!3252377)))

(declare-fun d!1684811 () Bool)

(assert (=> d!1684811 e!3252374))

(declare-fun c!902169 () Bool)

(assert (=> d!1684811 (= c!902169 ((_ is EmptyExpr!14815) (regTwo!30142 r!7292)))))

(assert (=> d!1684811 (= lt!2144228 e!3252376)))

(declare-fun c!902168 () Bool)

(assert (=> d!1684811 (= c!902168 (isEmpty!32545 s!2326))))

(assert (=> d!1684811 (validRegex!6551 (regTwo!30142 r!7292))))

(assert (=> d!1684811 (= (matchR!7000 (regTwo!30142 r!7292) s!2326) lt!2144228)))

(declare-fun b!5225676 () Bool)

(declare-fun res!2218562 () Bool)

(assert (=> b!5225676 (=> (not res!2218562) (not e!3252378))))

(assert (=> b!5225676 (= res!2218562 (not call!369233))))

(declare-fun b!5225677 () Bool)

(assert (=> b!5225677 (= e!3252374 (= lt!2144228 call!369233))))

(declare-fun b!5225678 () Bool)

(assert (=> b!5225678 (= e!3252378 (= (head!11198 s!2326) (c!901653 (regTwo!30142 r!7292))))))

(declare-fun b!5225679 () Bool)

(declare-fun res!2218557 () Bool)

(assert (=> b!5225679 (=> res!2218557 e!3252373)))

(assert (=> b!5225679 (= res!2218557 (not (isEmpty!32545 (tail!10295 s!2326))))))

(declare-fun b!5225680 () Bool)

(assert (=> b!5225680 (= e!3252376 (matchR!7000 (derivativeStep!4061 (regTwo!30142 r!7292) (head!11198 s!2326)) (tail!10295 s!2326)))))

(declare-fun b!5225681 () Bool)

(assert (=> b!5225681 (= e!3252375 (not lt!2144228))))

(declare-fun b!5225682 () Bool)

(assert (=> b!5225682 (= e!3252377 e!3252372)))

(declare-fun res!2218564 () Bool)

(assert (=> b!5225682 (=> (not res!2218564) (not e!3252372))))

(assert (=> b!5225682 (= res!2218564 (not lt!2144228))))

(declare-fun b!5225683 () Bool)

(declare-fun res!2218563 () Bool)

(assert (=> b!5225683 (=> (not res!2218563) (not e!3252378))))

(assert (=> b!5225683 (= res!2218563 (isEmpty!32545 (tail!10295 s!2326)))))

(assert (= (and d!1684811 c!902168) b!5225672))

(assert (= (and d!1684811 (not c!902168)) b!5225680))

(assert (= (and d!1684811 c!902169) b!5225677))

(assert (= (and d!1684811 (not c!902169)) b!5225674))

(assert (= (and b!5225674 c!902170) b!5225681))

(assert (= (and b!5225674 (not c!902170)) b!5225675))

(assert (= (and b!5225675 (not res!2218561)) b!5225670))

(assert (= (and b!5225670 res!2218559) b!5225676))

(assert (= (and b!5225676 res!2218562) b!5225683))

(assert (= (and b!5225683 res!2218563) b!5225678))

(assert (= (and b!5225670 (not res!2218560)) b!5225682))

(assert (= (and b!5225682 res!2218564) b!5225673))

(assert (= (and b!5225673 (not res!2218558)) b!5225679))

(assert (= (and b!5225679 (not res!2218557)) b!5225671))

(assert (= (or b!5225677 b!5225673 b!5225676) bm!369228))

(assert (=> b!5225672 m!6272082))

(assert (=> d!1684811 m!6271256))

(assert (=> d!1684811 m!6272086))

(assert (=> b!5225679 m!6271262))

(assert (=> b!5225679 m!6271262))

(assert (=> b!5225679 m!6271264))

(assert (=> b!5225683 m!6271262))

(assert (=> b!5225683 m!6271262))

(assert (=> b!5225683 m!6271264))

(assert (=> bm!369228 m!6271256))

(assert (=> b!5225678 m!6271266))

(assert (=> b!5225671 m!6271266))

(assert (=> b!5225680 m!6271266))

(assert (=> b!5225680 m!6271266))

(declare-fun m!6272568 () Bool)

(assert (=> b!5225680 m!6272568))

(assert (=> b!5225680 m!6271262))

(assert (=> b!5225680 m!6272568))

(assert (=> b!5225680 m!6271262))

(declare-fun m!6272570 () Bool)

(assert (=> b!5225680 m!6272570))

(assert (=> b!5224507 d!1684811))

(declare-fun bs!1213389 () Bool)

(declare-fun d!1684813 () Bool)

(assert (= bs!1213389 (and d!1684813 d!1684623)))

(declare-fun lambda!262360 () Int)

(assert (=> bs!1213389 (= lambda!262360 lambda!262335)))

(declare-fun bs!1213390 () Bool)

(assert (= bs!1213390 (and d!1684813 d!1684669)))

(assert (=> bs!1213390 (= lambda!262360 lambda!262338)))

(declare-fun bs!1213391 () Bool)

(assert (= bs!1213391 (and d!1684813 d!1684213)))

(assert (=> bs!1213391 (= lambda!262360 lambda!262278)))

(declare-fun bs!1213392 () Bool)

(assert (= bs!1213392 (and d!1684813 d!1684243)))

(assert (=> bs!1213392 (= lambda!262360 lambda!262282)))

(declare-fun bs!1213393 () Bool)

(assert (= bs!1213393 (and d!1684813 d!1684785)))

(assert (=> bs!1213393 (= lambda!262360 lambda!262356)))

(declare-fun bs!1213394 () Bool)

(assert (= bs!1213394 (and d!1684813 d!1684191)))

(assert (=> bs!1213394 (= lambda!262360 lambda!262263)))

(declare-fun bs!1213395 () Bool)

(assert (= bs!1213395 (and d!1684813 d!1684211)))

(assert (=> bs!1213395 (= lambda!262360 lambda!262275)))

(declare-fun bs!1213396 () Bool)

(assert (= bs!1213396 (and d!1684813 d!1684199)))

(assert (=> bs!1213396 (= lambda!262360 lambda!262266)))

(declare-fun bs!1213397 () Bool)

(assert (= bs!1213397 (and d!1684813 d!1684695)))

(assert (=> bs!1213397 (= lambda!262360 lambda!262345)))

(declare-fun b!5225684 () Bool)

(declare-fun e!3252384 () Bool)

(declare-fun e!3252382 () Bool)

(assert (=> b!5225684 (= e!3252384 e!3252382)))

(declare-fun c!902174 () Bool)

(assert (=> b!5225684 (= c!902174 (isEmpty!32542 (tail!10294 (t!373917 (unfocusZipperList!257 zl!343)))))))

(declare-fun b!5225685 () Bool)

(declare-fun e!3252383 () Regex!14815)

(assert (=> b!5225685 (= e!3252383 (Union!14815 (h!67068 (t!373917 (unfocusZipperList!257 zl!343))) (generalisedUnion!744 (t!373917 (t!373917 (unfocusZipperList!257 zl!343))))))))

(declare-fun b!5225686 () Bool)

(declare-fun e!3252379 () Regex!14815)

(assert (=> b!5225686 (= e!3252379 e!3252383)))

(declare-fun c!902173 () Bool)

(assert (=> b!5225686 (= c!902173 ((_ is Cons!60620) (t!373917 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5225687 () Bool)

(declare-fun lt!2144229 () Regex!14815)

(assert (=> b!5225687 (= e!3252384 (isEmptyLang!784 lt!2144229))))

(declare-fun b!5225689 () Bool)

(assert (=> b!5225689 (= e!3252382 (= lt!2144229 (head!11197 (t!373917 (unfocusZipperList!257 zl!343)))))))

(declare-fun b!5225690 () Bool)

(declare-fun e!3252380 () Bool)

(assert (=> b!5225690 (= e!3252380 e!3252384)))

(declare-fun c!902171 () Bool)

(assert (=> b!5225690 (= c!902171 (isEmpty!32542 (t!373917 (unfocusZipperList!257 zl!343))))))

(declare-fun b!5225691 () Bool)

(declare-fun e!3252381 () Bool)

(assert (=> b!5225691 (= e!3252381 (isEmpty!32542 (t!373917 (t!373917 (unfocusZipperList!257 zl!343)))))))

(declare-fun b!5225692 () Bool)

(assert (=> b!5225692 (= e!3252382 (isUnion!216 lt!2144229))))

(declare-fun b!5225693 () Bool)

(assert (=> b!5225693 (= e!3252379 (h!67068 (t!373917 (unfocusZipperList!257 zl!343))))))

(assert (=> d!1684813 e!3252380))

(declare-fun res!2218566 () Bool)

(assert (=> d!1684813 (=> (not res!2218566) (not e!3252380))))

(assert (=> d!1684813 (= res!2218566 (validRegex!6551 lt!2144229))))

(assert (=> d!1684813 (= lt!2144229 e!3252379)))

(declare-fun c!902172 () Bool)

(assert (=> d!1684813 (= c!902172 e!3252381)))

(declare-fun res!2218565 () Bool)

(assert (=> d!1684813 (=> (not res!2218565) (not e!3252381))))

(assert (=> d!1684813 (= res!2218565 ((_ is Cons!60620) (t!373917 (unfocusZipperList!257 zl!343))))))

(assert (=> d!1684813 (forall!14247 (t!373917 (unfocusZipperList!257 zl!343)) lambda!262360)))

(assert (=> d!1684813 (= (generalisedUnion!744 (t!373917 (unfocusZipperList!257 zl!343))) lt!2144229)))

(declare-fun b!5225688 () Bool)

(assert (=> b!5225688 (= e!3252383 EmptyLang!14815)))

(assert (= (and d!1684813 res!2218565) b!5225691))

(assert (= (and d!1684813 c!902172) b!5225693))

(assert (= (and d!1684813 (not c!902172)) b!5225686))

(assert (= (and b!5225686 c!902173) b!5225685))

(assert (= (and b!5225686 (not c!902173)) b!5225688))

(assert (= (and d!1684813 res!2218566) b!5225690))

(assert (= (and b!5225690 c!902171) b!5225687))

(assert (= (and b!5225690 (not c!902171)) b!5225684))

(assert (= (and b!5225684 c!902174) b!5225689))

(assert (= (and b!5225684 (not c!902174)) b!5225692))

(declare-fun m!6272572 () Bool)

(assert (=> b!5225687 m!6272572))

(declare-fun m!6272574 () Bool)

(assert (=> b!5225691 m!6272574))

(declare-fun m!6272576 () Bool)

(assert (=> b!5225689 m!6272576))

(declare-fun m!6272578 () Bool)

(assert (=> b!5225692 m!6272578))

(declare-fun m!6272580 () Bool)

(assert (=> d!1684813 m!6272580))

(declare-fun m!6272582 () Bool)

(assert (=> d!1684813 m!6272582))

(declare-fun m!6272584 () Bool)

(assert (=> b!5225684 m!6272584))

(assert (=> b!5225684 m!6272584))

(declare-fun m!6272586 () Bool)

(assert (=> b!5225684 m!6272586))

(assert (=> b!5225690 m!6271294))

(declare-fun m!6272588 () Bool)

(assert (=> b!5225685 m!6272588))

(assert (=> b!5224434 d!1684813))

(assert (=> bs!1213018 d!1684219))

(declare-fun bs!1213398 () Bool)

(declare-fun b!5225696 () Bool)

(assert (= bs!1213398 (and b!5225696 d!1684679)))

(declare-fun lambda!262361 () Int)

(assert (=> bs!1213398 (not (= lambda!262361 lambda!262343))))

(declare-fun bs!1213399 () Bool)

(assert (= bs!1213399 (and b!5225696 b!5225623)))

(assert (=> bs!1213399 (not (= lambda!262361 lambda!262354))))

(declare-fun bs!1213400 () Bool)

(assert (= bs!1213400 (and b!5225696 b!5225615)))

(assert (=> bs!1213400 (= (and (= (reg!15144 (regOne!30143 r!7292)) (reg!15144 (regTwo!30143 r!7292))) (= (regOne!30143 r!7292) (regTwo!30143 r!7292))) (= lambda!262361 lambda!262353))))

(assert (=> bs!1213398 (not (= lambda!262361 lambda!262344))))

(declare-fun bs!1213401 () Bool)

(assert (= bs!1213401 (and b!5225696 b!5223795)))

(assert (=> bs!1213401 (not (= lambda!262361 lambda!262228))))

(declare-fun bs!1213402 () Bool)

(assert (= bs!1213402 (and b!5225696 b!5224354)))

(assert (=> bs!1213402 (= (and (= (reg!15144 (regOne!30143 r!7292)) (reg!15144 r!7292)) (= (regOne!30143 r!7292) r!7292)) (= lambda!262361 lambda!262271))))

(declare-fun bs!1213403 () Bool)

(assert (= bs!1213403 (and b!5225696 b!5224362)))

(assert (=> bs!1213403 (not (= lambda!262361 lambda!262272))))

(declare-fun bs!1213404 () Bool)

(assert (= bs!1213404 (and b!5225696 d!1684251)))

(assert (=> bs!1213404 (not (= lambda!262361 lambda!262288))))

(assert (=> bs!1213401 (not (= lambda!262361 lambda!262227))))

(declare-fun bs!1213405 () Bool)

(assert (= bs!1213405 (and b!5225696 d!1684255)))

(assert (=> bs!1213405 (not (= lambda!262361 lambda!262291))))

(assert (=> bs!1213404 (not (= lambda!262361 lambda!262287))))

(assert (=> b!5225696 true))

(assert (=> b!5225696 true))

(declare-fun bs!1213406 () Bool)

(declare-fun b!5225704 () Bool)

(assert (= bs!1213406 (and b!5225704 d!1684679)))

(declare-fun lambda!262362 () Int)

(assert (=> bs!1213406 (not (= lambda!262362 lambda!262343))))

(declare-fun bs!1213407 () Bool)

(assert (= bs!1213407 (and b!5225704 b!5225623)))

(assert (=> bs!1213407 (= (and (= (regOne!30142 (regOne!30143 r!7292)) (regOne!30142 (regTwo!30143 r!7292))) (= (regTwo!30142 (regOne!30143 r!7292)) (regTwo!30142 (regTwo!30143 r!7292)))) (= lambda!262362 lambda!262354))))

(declare-fun bs!1213408 () Bool)

(assert (= bs!1213408 (and b!5225704 b!5225615)))

(assert (=> bs!1213408 (not (= lambda!262362 lambda!262353))))

(assert (=> bs!1213406 (= (and (= (regOne!30142 (regOne!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regOne!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262362 lambda!262344))))

(declare-fun bs!1213409 () Bool)

(assert (= bs!1213409 (and b!5225704 b!5223795)))

(assert (=> bs!1213409 (= (and (= (regOne!30142 (regOne!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regOne!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262362 lambda!262228))))

(declare-fun bs!1213410 () Bool)

(assert (= bs!1213410 (and b!5225704 b!5224354)))

(assert (=> bs!1213410 (not (= lambda!262362 lambda!262271))))

(declare-fun bs!1213411 () Bool)

(assert (= bs!1213411 (and b!5225704 b!5224362)))

(assert (=> bs!1213411 (= (and (= (regOne!30142 (regOne!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regOne!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262362 lambda!262272))))

(declare-fun bs!1213412 () Bool)

(assert (= bs!1213412 (and b!5225704 d!1684251)))

(assert (=> bs!1213412 (= (and (= (regOne!30142 (regOne!30143 r!7292)) (regOne!30142 r!7292)) (= (regTwo!30142 (regOne!30143 r!7292)) (regTwo!30142 r!7292))) (= lambda!262362 lambda!262288))))

(assert (=> bs!1213409 (not (= lambda!262362 lambda!262227))))

(declare-fun bs!1213413 () Bool)

(assert (= bs!1213413 (and b!5225704 d!1684255)))

(assert (=> bs!1213413 (not (= lambda!262362 lambda!262291))))

(assert (=> bs!1213412 (not (= lambda!262362 lambda!262287))))

(declare-fun bs!1213414 () Bool)

(assert (= bs!1213414 (and b!5225704 b!5225696)))

(assert (=> bs!1213414 (not (= lambda!262362 lambda!262361))))

(assert (=> b!5225704 true))

(assert (=> b!5225704 true))

(declare-fun b!5225694 () Bool)

(declare-fun res!2218569 () Bool)

(declare-fun e!3252385 () Bool)

(assert (=> b!5225694 (=> res!2218569 e!3252385)))

(declare-fun call!369235 () Bool)

(assert (=> b!5225694 (= res!2218569 call!369235)))

(declare-fun e!3252389 () Bool)

(assert (=> b!5225694 (= e!3252389 e!3252385)))

(declare-fun b!5225695 () Bool)

(declare-fun e!3252390 () Bool)

(declare-fun e!3252391 () Bool)

(assert (=> b!5225695 (= e!3252390 e!3252391)))

(declare-fun res!2218567 () Bool)

(assert (=> b!5225695 (= res!2218567 (matchRSpec!1918 (regOne!30143 (regOne!30143 r!7292)) s!2326))))

(assert (=> b!5225695 (=> res!2218567 e!3252391)))

(declare-fun call!369234 () Bool)

(assert (=> b!5225696 (= e!3252385 call!369234)))

(declare-fun b!5225697 () Bool)

(assert (=> b!5225697 (= e!3252391 (matchRSpec!1918 (regTwo!30143 (regOne!30143 r!7292)) s!2326))))

(declare-fun b!5225698 () Bool)

(declare-fun e!3252386 () Bool)

(declare-fun e!3252388 () Bool)

(assert (=> b!5225698 (= e!3252386 e!3252388)))

(declare-fun res!2218568 () Bool)

(assert (=> b!5225698 (= res!2218568 (not ((_ is EmptyLang!14815) (regOne!30143 r!7292))))))

(assert (=> b!5225698 (=> (not res!2218568) (not e!3252388))))

(declare-fun b!5225699 () Bool)

(assert (=> b!5225699 (= e!3252386 call!369235)))

(declare-fun b!5225700 () Bool)

(declare-fun c!902175 () Bool)

(assert (=> b!5225700 (= c!902175 ((_ is Union!14815) (regOne!30143 r!7292)))))

(declare-fun e!3252387 () Bool)

(assert (=> b!5225700 (= e!3252387 e!3252390)))

(declare-fun b!5225701 () Bool)

(assert (=> b!5225701 (= e!3252390 e!3252389)))

(declare-fun c!902177 () Bool)

(assert (=> b!5225701 (= c!902177 ((_ is Star!14815) (regOne!30143 r!7292)))))

(declare-fun b!5225702 () Bool)

(assert (=> b!5225702 (= e!3252387 (= s!2326 (Cons!60621 (c!901653 (regOne!30143 r!7292)) Nil!60621)))))

(declare-fun bm!369229 () Bool)

(assert (=> bm!369229 (= call!369235 (isEmpty!32545 s!2326))))

(declare-fun d!1684815 () Bool)

(declare-fun c!902178 () Bool)

(assert (=> d!1684815 (= c!902178 ((_ is EmptyExpr!14815) (regOne!30143 r!7292)))))

(assert (=> d!1684815 (= (matchRSpec!1918 (regOne!30143 r!7292) s!2326) e!3252386)))

(declare-fun b!5225703 () Bool)

(declare-fun c!902176 () Bool)

(assert (=> b!5225703 (= c!902176 ((_ is ElementMatch!14815) (regOne!30143 r!7292)))))

(assert (=> b!5225703 (= e!3252388 e!3252387)))

(assert (=> b!5225704 (= e!3252389 call!369234)))

(declare-fun bm!369230 () Bool)

(assert (=> bm!369230 (= call!369234 (Exists!1996 (ite c!902177 lambda!262361 lambda!262362)))))

(assert (= (and d!1684815 c!902178) b!5225699))

(assert (= (and d!1684815 (not c!902178)) b!5225698))

(assert (= (and b!5225698 res!2218568) b!5225703))

(assert (= (and b!5225703 c!902176) b!5225702))

(assert (= (and b!5225703 (not c!902176)) b!5225700))

(assert (= (and b!5225700 c!902175) b!5225695))

(assert (= (and b!5225700 (not c!902175)) b!5225701))

(assert (= (and b!5225695 (not res!2218567)) b!5225697))

(assert (= (and b!5225701 c!902177) b!5225694))

(assert (= (and b!5225701 (not c!902177)) b!5225704))

(assert (= (and b!5225694 (not res!2218569)) b!5225696))

(assert (= (or b!5225696 b!5225704) bm!369230))

(assert (= (or b!5225699 b!5225694) bm!369229))

(declare-fun m!6272590 () Bool)

(assert (=> b!5225695 m!6272590))

(declare-fun m!6272592 () Bool)

(assert (=> b!5225697 m!6272592))

(assert (=> bm!369229 m!6271256))

(declare-fun m!6272594 () Bool)

(assert (=> bm!369230 m!6272594))

(assert (=> b!5224353 d!1684815))

(declare-fun d!1684817 () Bool)

(assert (=> d!1684817 (= (head!11197 (unfocusZipperList!257 zl!343)) (h!67068 (unfocusZipperList!257 zl!343)))))

(assert (=> b!5224438 d!1684817))

(declare-fun d!1684819 () Bool)

(assert (=> d!1684819 (= (nullable!4984 (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))) (nullableFct!1391 (regOne!30142 (regOne!30143 (regOne!30142 r!7292)))))))

(declare-fun bs!1213415 () Bool)

(assert (= bs!1213415 d!1684819))

(declare-fun m!6272596 () Bool)

(assert (=> bs!1213415 m!6272596))

(assert (=> b!5224282 d!1684819))

(declare-fun d!1684821 () Bool)

(declare-fun c!902179 () Bool)

(assert (=> d!1684821 (= c!902179 (isEmpty!32545 (tail!10295 (t!373918 s!2326))))))

(declare-fun e!3252392 () Bool)

(assert (=> d!1684821 (= (matchZipper!1059 (derivationStepZipper!1083 ((_ map or) lt!2144073 lt!2144075) (head!11198 (t!373918 s!2326))) (tail!10295 (t!373918 s!2326))) e!3252392)))

(declare-fun b!5225705 () Bool)

(assert (=> b!5225705 (= e!3252392 (nullableZipper!1239 (derivationStepZipper!1083 ((_ map or) lt!2144073 lt!2144075) (head!11198 (t!373918 s!2326)))))))

(declare-fun b!5225706 () Bool)

(assert (=> b!5225706 (= e!3252392 (matchZipper!1059 (derivationStepZipper!1083 (derivationStepZipper!1083 ((_ map or) lt!2144073 lt!2144075) (head!11198 (t!373918 s!2326))) (head!11198 (tail!10295 (t!373918 s!2326)))) (tail!10295 (tail!10295 (t!373918 s!2326)))))))

(assert (= (and d!1684821 c!902179) b!5225705))

(assert (= (and d!1684821 (not c!902179)) b!5225706))

(assert (=> d!1684821 m!6271288))

(assert (=> d!1684821 m!6272108))

(assert (=> b!5225705 m!6271426))

(declare-fun m!6272598 () Bool)

(assert (=> b!5225705 m!6272598))

(assert (=> b!5225706 m!6271288))

(assert (=> b!5225706 m!6272112))

(assert (=> b!5225706 m!6271426))

(assert (=> b!5225706 m!6272112))

(declare-fun m!6272600 () Bool)

(assert (=> b!5225706 m!6272600))

(assert (=> b!5225706 m!6271288))

(assert (=> b!5225706 m!6272116))

(assert (=> b!5225706 m!6272600))

(assert (=> b!5225706 m!6272116))

(declare-fun m!6272602 () Bool)

(assert (=> b!5225706 m!6272602))

(assert (=> b!5224525 d!1684821))

(declare-fun bs!1213416 () Bool)

(declare-fun d!1684823 () Bool)

(assert (= bs!1213416 (and d!1684823 d!1684779)))

(declare-fun lambda!262363 () Int)

(assert (=> bs!1213416 (= lambda!262363 lambda!262355)))

(declare-fun bs!1213417 () Bool)

(assert (= bs!1213417 (and d!1684823 d!1684739)))

(assert (=> bs!1213417 (= (= (head!11198 (t!373918 s!2326)) (head!11198 s!2326)) (= lambda!262363 lambda!262350))))

(declare-fun bs!1213418 () Bool)

(assert (= bs!1213418 (and d!1684823 b!5223802)))

(assert (=> bs!1213418 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262363 lambda!262229))))

(declare-fun bs!1213419 () Bool)

(assert (= bs!1213419 (and d!1684823 d!1684615)))

(assert (=> bs!1213419 (= lambda!262363 lambda!262334)))

(declare-fun bs!1213420 () Bool)

(assert (= bs!1213420 (and d!1684823 d!1684629)))

(assert (=> bs!1213420 (= lambda!262363 lambda!262337)))

(declare-fun bs!1213421 () Bool)

(assert (= bs!1213421 (and d!1684823 d!1684229)))

(assert (=> bs!1213421 (= (= (head!11198 (t!373918 s!2326)) (h!67069 s!2326)) (= lambda!262363 lambda!262281))))

(declare-fun bs!1213422 () Bool)

(assert (= bs!1213422 (and d!1684823 d!1684601)))

(assert (=> bs!1213422 (= lambda!262363 lambda!262330)))

(declare-fun bs!1213423 () Bool)

(assert (= bs!1213423 (and d!1684823 d!1684807)))

(assert (=> bs!1213423 (= lambda!262363 lambda!262359)))

(declare-fun bs!1213424 () Bool)

(assert (= bs!1213424 (and d!1684823 d!1684721)))

(assert (=> bs!1213424 (= lambda!262363 lambda!262349)))

(declare-fun bs!1213425 () Bool)

(assert (= bs!1213425 (and d!1684823 d!1684749)))

(assert (=> bs!1213425 (= lambda!262363 lambda!262351)))

(assert (=> d!1684823 true))

(assert (=> d!1684823 (= (derivationStepZipper!1083 ((_ map or) lt!2144073 lt!2144075) (head!11198 (t!373918 s!2326))) (flatMap!542 ((_ map or) lt!2144073 lt!2144075) lambda!262363))))

(declare-fun bs!1213426 () Bool)

(assert (= bs!1213426 d!1684823))

(declare-fun m!6272604 () Bool)

(assert (=> bs!1213426 m!6272604))

(assert (=> b!5224525 d!1684823))

(assert (=> b!5224525 d!1684603))

(assert (=> b!5224525 d!1684605))

(declare-fun d!1684825 () Bool)

(assert (=> d!1684825 (= (isConcat!298 lt!2144142) ((_ is Concat!23660) lt!2144142))))

(assert (=> b!5224239 d!1684825))

(declare-fun d!1684827 () Bool)

(assert (=> d!1684827 (= (isEmpty!32546 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326)) (not ((_ is Some!14925) (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326))))))

(assert (=> d!1684253 d!1684827))

(declare-fun bs!1213427 () Bool)

(declare-fun d!1684829 () Bool)

(assert (= bs!1213427 (and d!1684829 d!1684795)))

(declare-fun lambda!262364 () Int)

(assert (=> bs!1213427 (= lambda!262364 lambda!262358)))

(declare-fun bs!1213428 () Bool)

(assert (= bs!1213428 (and d!1684829 d!1684793)))

(assert (=> bs!1213428 (= lambda!262364 lambda!262357)))

(declare-fun bs!1213429 () Bool)

(assert (= bs!1213429 (and d!1684829 d!1684715)))

(assert (=> bs!1213429 (= lambda!262364 lambda!262348)))

(declare-fun bs!1213430 () Bool)

(assert (= bs!1213430 (and d!1684829 d!1684699)))

(assert (=> bs!1213430 (= lambda!262364 lambda!262346)))

(declare-fun bs!1213431 () Bool)

(assert (= bs!1213431 (and d!1684829 d!1684609)))

(assert (=> bs!1213431 (= lambda!262364 lambda!262333)))

(declare-fun bs!1213432 () Bool)

(assert (= bs!1213432 (and d!1684829 d!1684701)))

(assert (=> bs!1213432 (= lambda!262364 lambda!262347)))

(declare-fun bs!1213433 () Bool)

(assert (= bs!1213433 (and d!1684829 d!1684761)))

(assert (=> bs!1213433 (= lambda!262364 lambda!262352)))

(declare-fun bs!1213434 () Bool)

(assert (= bs!1213434 (and d!1684829 d!1684625)))

(assert (=> bs!1213434 (= lambda!262364 lambda!262336)))

(assert (=> d!1684829 (= (nullableZipper!1239 lt!2144069) (exists!1974 lt!2144069 lambda!262364))))

(declare-fun bs!1213435 () Bool)

(assert (= bs!1213435 d!1684829))

(declare-fun m!6272606 () Bool)

(assert (=> bs!1213435 m!6272606))

(assert (=> b!5224475 d!1684829))

(declare-fun b!5225707 () Bool)

(declare-fun e!3252394 () Bool)

(assert (=> b!5225707 (= e!3252394 (nullable!4984 (regOne!30142 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))))))))

(declare-fun b!5225708 () Bool)

(declare-fun e!3252396 () (InoxSet Context!8398))

(declare-fun call!369236 () (InoxSet Context!8398))

(assert (=> b!5225708 (= e!3252396 call!369236)))

(declare-fun b!5225709 () Bool)

(declare-fun c!902180 () Bool)

(assert (=> b!5225709 (= c!902180 e!3252394)))

(declare-fun res!2218570 () Bool)

(assert (=> b!5225709 (=> (not res!2218570) (not e!3252394))))

(assert (=> b!5225709 (= res!2218570 ((_ is Concat!23660) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))))))

(declare-fun e!3252397 () (InoxSet Context!8398))

(declare-fun e!3252393 () (InoxSet Context!8398))

(assert (=> b!5225709 (= e!3252397 e!3252393)))

(declare-fun call!369238 () List!60744)

(declare-fun bm!369231 () Bool)

(declare-fun c!902183 () Bool)

(assert (=> bm!369231 (= call!369238 ($colon$colon!1289 (exprs!4699 (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957))) (ite (or c!902180 c!902183) (regTwo!30142 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))))))))

(declare-fun b!5225710 () Bool)

(declare-fun call!369241 () (InoxSet Context!8398))

(declare-fun call!369237 () (InoxSet Context!8398))

(assert (=> b!5225710 (= e!3252397 ((_ map or) call!369241 call!369237))))

(declare-fun b!5225711 () Bool)

(assert (=> b!5225711 (= e!3252393 e!3252396)))

(assert (=> b!5225711 (= c!902183 ((_ is Concat!23660) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))))))

(declare-fun b!5225712 () Bool)

(declare-fun e!3252398 () (InoxSet Context!8398))

(assert (=> b!5225712 (= e!3252398 ((as const (Array Context!8398 Bool)) false))))

(declare-fun bm!369232 () Bool)

(declare-fun c!902184 () Bool)

(assert (=> bm!369232 (= call!369241 (derivationStepZipperDown!263 (ite c!902184 (regOne!30143 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (regOne!30142 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))))) (ite c!902184 (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957)) (Context!8399 call!369238)) (h!67069 s!2326)))))

(declare-fun b!5225714 () Bool)

(assert (=> b!5225714 (= e!3252398 call!369236)))

(declare-fun bm!369233 () Bool)

(declare-fun call!369240 () List!60744)

(assert (=> bm!369233 (= call!369237 (derivationStepZipperDown!263 (ite c!902184 (regTwo!30143 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (ite c!902180 (regTwo!30142 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (ite c!902183 (regOne!30142 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (reg!15144 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))))))) (ite (or c!902184 c!902180) (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957)) (Context!8399 call!369240)) (h!67069 s!2326)))))

(declare-fun b!5225715 () Bool)

(declare-fun e!3252395 () (InoxSet Context!8398))

(assert (=> b!5225715 (= e!3252395 (store ((as const (Array Context!8398 Bool)) false) (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957)) true))))

(declare-fun b!5225716 () Bool)

(assert (=> b!5225716 (= e!3252395 e!3252397)))

(assert (=> b!5225716 (= c!902184 ((_ is Union!14815) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))))))

(declare-fun bm!369234 () Bool)

(assert (=> bm!369234 (= call!369240 call!369238)))

(declare-fun b!5225717 () Bool)

(declare-fun c!902181 () Bool)

(assert (=> b!5225717 (= c!902181 ((_ is Star!14815) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))))))

(assert (=> b!5225717 (= e!3252396 e!3252398)))

(declare-fun b!5225713 () Bool)

(declare-fun call!369239 () (InoxSet Context!8398))

(assert (=> b!5225713 (= e!3252393 ((_ map or) call!369241 call!369239))))

(declare-fun d!1684831 () Bool)

(declare-fun c!902182 () Bool)

(assert (=> d!1684831 (= c!902182 (and ((_ is ElementMatch!14815) (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (= (c!901653 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292))))))) (h!67069 s!2326))))))

(assert (=> d!1684831 (= (derivationStepZipperDown!263 (ite c!901794 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901790 (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))) (ite c!901793 (regOne!30142 (regTwo!30143 (regOne!30142 r!7292))) (reg!15144 (regTwo!30143 (regOne!30142 r!7292)))))) (ite (or c!901794 c!901790) lt!2144080 (Context!8399 call!368957)) (h!67069 s!2326)) e!3252395)))

(declare-fun bm!369235 () Bool)

(assert (=> bm!369235 (= call!369239 call!369237)))

(declare-fun bm!369236 () Bool)

(assert (=> bm!369236 (= call!369236 call!369239)))

(assert (= (and d!1684831 c!902182) b!5225715))

(assert (= (and d!1684831 (not c!902182)) b!5225716))

(assert (= (and b!5225716 c!902184) b!5225710))

(assert (= (and b!5225716 (not c!902184)) b!5225709))

(assert (= (and b!5225709 res!2218570) b!5225707))

(assert (= (and b!5225709 c!902180) b!5225713))

(assert (= (and b!5225709 (not c!902180)) b!5225711))

(assert (= (and b!5225711 c!902183) b!5225708))

(assert (= (and b!5225711 (not c!902183)) b!5225717))

(assert (= (and b!5225717 c!902181) b!5225714))

(assert (= (and b!5225717 (not c!902181)) b!5225712))

(assert (= (or b!5225708 b!5225714) bm!369234))

(assert (= (or b!5225708 b!5225714) bm!369236))

(assert (= (or b!5225713 bm!369234) bm!369231))

(assert (= (or b!5225713 bm!369236) bm!369235))

(assert (= (or b!5225710 bm!369235) bm!369233))

(assert (= (or b!5225710 b!5225713) bm!369232))

(declare-fun m!6272608 () Bool)

(assert (=> bm!369232 m!6272608))

(declare-fun m!6272610 () Bool)

(assert (=> bm!369233 m!6272610))

(declare-fun m!6272612 () Bool)

(assert (=> bm!369231 m!6272612))

(declare-fun m!6272614 () Bool)

(assert (=> b!5225707 m!6272614))

(declare-fun m!6272616 () Bool)

(assert (=> b!5225715 m!6272616))

(assert (=> bm!368950 d!1684831))

(declare-fun d!1684833 () Bool)

(assert (=> d!1684833 (= (flatMap!542 lt!2144074 lambda!262281) (choose!38856 lt!2144074 lambda!262281))))

(declare-fun bs!1213436 () Bool)

(assert (= bs!1213436 d!1684833))

(declare-fun m!6272618 () Bool)

(assert (=> bs!1213436 m!6272618))

(assert (=> d!1684229 d!1684833))

(declare-fun b!5225718 () Bool)

(declare-fun e!3252400 () Bool)

(assert (=> b!5225718 (= e!3252400 (nullable!4984 (regOne!30142 (h!67068 (exprs!4699 lt!2144080)))))))

(declare-fun b!5225719 () Bool)

(declare-fun e!3252402 () (InoxSet Context!8398))

(declare-fun call!369242 () (InoxSet Context!8398))

(assert (=> b!5225719 (= e!3252402 call!369242)))

(declare-fun b!5225720 () Bool)

(declare-fun c!902185 () Bool)

(assert (=> b!5225720 (= c!902185 e!3252400)))

(declare-fun res!2218571 () Bool)

(assert (=> b!5225720 (=> (not res!2218571) (not e!3252400))))

(assert (=> b!5225720 (= res!2218571 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144080))))))

(declare-fun e!3252403 () (InoxSet Context!8398))

(declare-fun e!3252399 () (InoxSet Context!8398))

(assert (=> b!5225720 (= e!3252403 e!3252399)))

(declare-fun call!369244 () List!60744)

(declare-fun c!902188 () Bool)

(declare-fun bm!369237 () Bool)

(assert (=> bm!369237 (= call!369244 ($colon$colon!1289 (exprs!4699 (Context!8399 (t!373917 (exprs!4699 lt!2144080)))) (ite (or c!902185 c!902188) (regTwo!30142 (h!67068 (exprs!4699 lt!2144080))) (h!67068 (exprs!4699 lt!2144080)))))))

(declare-fun b!5225721 () Bool)

(declare-fun call!369247 () (InoxSet Context!8398))

(declare-fun call!369243 () (InoxSet Context!8398))

(assert (=> b!5225721 (= e!3252403 ((_ map or) call!369247 call!369243))))

(declare-fun b!5225722 () Bool)

(assert (=> b!5225722 (= e!3252399 e!3252402)))

(assert (=> b!5225722 (= c!902188 ((_ is Concat!23660) (h!67068 (exprs!4699 lt!2144080))))))

(declare-fun b!5225723 () Bool)

(declare-fun e!3252404 () (InoxSet Context!8398))

(assert (=> b!5225723 (= e!3252404 ((as const (Array Context!8398 Bool)) false))))

(declare-fun c!902189 () Bool)

(declare-fun bm!369238 () Bool)

(assert (=> bm!369238 (= call!369247 (derivationStepZipperDown!263 (ite c!902189 (regOne!30143 (h!67068 (exprs!4699 lt!2144080))) (regOne!30142 (h!67068 (exprs!4699 lt!2144080)))) (ite c!902189 (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (Context!8399 call!369244)) (h!67069 s!2326)))))

(declare-fun b!5225725 () Bool)

(assert (=> b!5225725 (= e!3252404 call!369242)))

(declare-fun call!369246 () List!60744)

(declare-fun bm!369239 () Bool)

(assert (=> bm!369239 (= call!369243 (derivationStepZipperDown!263 (ite c!902189 (regTwo!30143 (h!67068 (exprs!4699 lt!2144080))) (ite c!902185 (regTwo!30142 (h!67068 (exprs!4699 lt!2144080))) (ite c!902188 (regOne!30142 (h!67068 (exprs!4699 lt!2144080))) (reg!15144 (h!67068 (exprs!4699 lt!2144080)))))) (ite (or c!902189 c!902185) (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (Context!8399 call!369246)) (h!67069 s!2326)))))

(declare-fun b!5225726 () Bool)

(declare-fun e!3252401 () (InoxSet Context!8398))

(assert (=> b!5225726 (= e!3252401 (store ((as const (Array Context!8398 Bool)) false) (Context!8399 (t!373917 (exprs!4699 lt!2144080))) true))))

(declare-fun b!5225727 () Bool)

(assert (=> b!5225727 (= e!3252401 e!3252403)))

(assert (=> b!5225727 (= c!902189 ((_ is Union!14815) (h!67068 (exprs!4699 lt!2144080))))))

(declare-fun bm!369240 () Bool)

(assert (=> bm!369240 (= call!369246 call!369244)))

(declare-fun b!5225728 () Bool)

(declare-fun c!902186 () Bool)

(assert (=> b!5225728 (= c!902186 ((_ is Star!14815) (h!67068 (exprs!4699 lt!2144080))))))

(assert (=> b!5225728 (= e!3252402 e!3252404)))

(declare-fun b!5225724 () Bool)

(declare-fun call!369245 () (InoxSet Context!8398))

(assert (=> b!5225724 (= e!3252399 ((_ map or) call!369247 call!369245))))

(declare-fun d!1684835 () Bool)

(declare-fun c!902187 () Bool)

(assert (=> d!1684835 (= c!902187 (and ((_ is ElementMatch!14815) (h!67068 (exprs!4699 lt!2144080))) (= (c!901653 (h!67068 (exprs!4699 lt!2144080))) (h!67069 s!2326))))))

(assert (=> d!1684835 (= (derivationStepZipperDown!263 (h!67068 (exprs!4699 lt!2144080)) (Context!8399 (t!373917 (exprs!4699 lt!2144080))) (h!67069 s!2326)) e!3252401)))

(declare-fun bm!369241 () Bool)

(assert (=> bm!369241 (= call!369245 call!369243)))

(declare-fun bm!369242 () Bool)

(assert (=> bm!369242 (= call!369242 call!369245)))

(assert (= (and d!1684835 c!902187) b!5225726))

(assert (= (and d!1684835 (not c!902187)) b!5225727))

(assert (= (and b!5225727 c!902189) b!5225721))

(assert (= (and b!5225727 (not c!902189)) b!5225720))

(assert (= (and b!5225720 res!2218571) b!5225718))

(assert (= (and b!5225720 c!902185) b!5225724))

(assert (= (and b!5225720 (not c!902185)) b!5225722))

(assert (= (and b!5225722 c!902188) b!5225719))

(assert (= (and b!5225722 (not c!902188)) b!5225728))

(assert (= (and b!5225728 c!902186) b!5225725))

(assert (= (and b!5225728 (not c!902186)) b!5225723))

(assert (= (or b!5225719 b!5225725) bm!369240))

(assert (= (or b!5225719 b!5225725) bm!369242))

(assert (= (or b!5225724 bm!369240) bm!369237))

(assert (= (or b!5225724 bm!369242) bm!369241))

(assert (= (or b!5225721 bm!369241) bm!369239))

(assert (= (or b!5225721 b!5225724) bm!369238))

(declare-fun m!6272620 () Bool)

(assert (=> bm!369238 m!6272620))

(declare-fun m!6272622 () Bool)

(assert (=> bm!369239 m!6272622))

(declare-fun m!6272624 () Bool)

(assert (=> bm!369237 m!6272624))

(declare-fun m!6272626 () Bool)

(assert (=> b!5225718 m!6272626))

(declare-fun m!6272628 () Bool)

(assert (=> b!5225726 m!6272628))

(assert (=> bm!368987 d!1684835))

(assert (=> b!5224547 d!1684279))

(assert (=> d!1684203 d!1684589))

(assert (=> d!1684203 d!1684275))

(declare-fun d!1684837 () Bool)

(assert (=> d!1684837 (= (isEmptyExpr!775 lt!2144142) ((_ is EmptyExpr!14815) lt!2144142))))

(assert (=> b!5224248 d!1684837))

(assert (=> d!1684259 d!1684261))

(assert (=> d!1684259 d!1684233))

(declare-fun e!3252405 () Bool)

(declare-fun d!1684839 () Bool)

(assert (=> d!1684839 (= (matchZipper!1059 ((_ map or) lt!2144073 lt!2144075) (t!373918 s!2326)) e!3252405)))

(declare-fun res!2218572 () Bool)

(assert (=> d!1684839 (=> res!2218572 e!3252405)))

(assert (=> d!1684839 (= res!2218572 (matchZipper!1059 lt!2144073 (t!373918 s!2326)))))

(assert (=> d!1684839 true))

(declare-fun _$48!849 () Unit!152540)

(assert (=> d!1684839 (= (choose!38858 lt!2144073 lt!2144075 (t!373918 s!2326)) _$48!849)))

(declare-fun b!5225729 () Bool)

(assert (=> b!5225729 (= e!3252405 (matchZipper!1059 lt!2144075 (t!373918 s!2326)))))

(assert (= (and d!1684839 (not res!2218572)) b!5225729))

(assert (=> d!1684839 m!6270826))

(assert (=> d!1684839 m!6270824))

(assert (=> b!5225729 m!6270848))

(assert (=> d!1684259 d!1684839))

(declare-fun d!1684841 () Bool)

(assert (=> d!1684841 (= (nullable!4984 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))) (nullableFct!1391 (h!67068 (exprs!4699 (Context!8399 (Cons!60620 (h!67068 (exprs!4699 (h!67070 zl!343))) (t!373917 (exprs!4699 (h!67070 zl!343)))))))))))

(declare-fun bs!1213437 () Bool)

(assert (= bs!1213437 d!1684841))

(declare-fun m!6272630 () Bool)

(assert (=> bs!1213437 m!6272630))

(assert (=> b!5224542 d!1684841))

(declare-fun b!5225730 () Bool)

(declare-fun res!2218574 () Bool)

(declare-fun e!3252411 () Bool)

(assert (=> b!5225730 (=> res!2218574 e!3252411)))

(assert (=> b!5225730 (= res!2218574 (not ((_ is Concat!23660) (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))

(declare-fun e!3252407 () Bool)

(assert (=> b!5225730 (= e!3252407 e!3252411)))

(declare-fun b!5225731 () Bool)

(declare-fun e!3252409 () Bool)

(declare-fun call!369248 () Bool)

(assert (=> b!5225731 (= e!3252409 call!369248)))

(declare-fun c!902191 () Bool)

(declare-fun bm!369243 () Bool)

(declare-fun c!902190 () Bool)

(declare-fun call!369250 () Bool)

(assert (=> bm!369243 (= call!369250 (validRegex!6551 (ite c!902191 (reg!15144 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))) (ite c!902190 (regOne!30143 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))) (regOne!30142 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292)))))))))))

(declare-fun b!5225732 () Bool)

(declare-fun e!3252412 () Bool)

(assert (=> b!5225732 (= e!3252412 call!369248)))

(declare-fun d!1684843 () Bool)

(declare-fun res!2218577 () Bool)

(declare-fun e!3252406 () Bool)

(assert (=> d!1684843 (=> res!2218577 e!3252406)))

(assert (=> d!1684843 (= res!2218577 ((_ is ElementMatch!14815) (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(assert (=> d!1684843 (= (validRegex!6551 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))) e!3252406)))

(declare-fun b!5225733 () Bool)

(declare-fun e!3252408 () Bool)

(assert (=> b!5225733 (= e!3252408 call!369250)))

(declare-fun b!5225734 () Bool)

(assert (=> b!5225734 (= e!3252411 e!3252412)))

(declare-fun res!2218573 () Bool)

(assert (=> b!5225734 (=> (not res!2218573) (not e!3252412))))

(declare-fun call!369249 () Bool)

(assert (=> b!5225734 (= res!2218573 call!369249)))

(declare-fun b!5225735 () Bool)

(declare-fun res!2218576 () Bool)

(assert (=> b!5225735 (=> (not res!2218576) (not e!3252409))))

(assert (=> b!5225735 (= res!2218576 call!369249)))

(assert (=> b!5225735 (= e!3252407 e!3252409)))

(declare-fun b!5225736 () Bool)

(declare-fun e!3252410 () Bool)

(assert (=> b!5225736 (= e!3252410 e!3252407)))

(assert (=> b!5225736 (= c!902190 ((_ is Union!14815) (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(declare-fun b!5225737 () Bool)

(assert (=> b!5225737 (= e!3252410 e!3252408)))

(declare-fun res!2218575 () Bool)

(assert (=> b!5225737 (= res!2218575 (not (nullable!4984 (reg!15144 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))))

(assert (=> b!5225737 (=> (not res!2218575) (not e!3252408))))

(declare-fun bm!369244 () Bool)

(assert (=> bm!369244 (= call!369248 (validRegex!6551 (ite c!902190 (regTwo!30143 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))) (regTwo!30142 (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))))

(declare-fun bm!369245 () Bool)

(assert (=> bm!369245 (= call!369249 call!369250)))

(declare-fun b!5225738 () Bool)

(assert (=> b!5225738 (= e!3252406 e!3252410)))

(assert (=> b!5225738 (= c!902191 ((_ is Star!14815) (ite c!901804 (regTwo!30143 (regTwo!30143 (regOne!30142 r!7292))) (regTwo!30142 (regTwo!30143 (regOne!30142 r!7292))))))))

(assert (= (and d!1684843 (not res!2218577)) b!5225738))

(assert (= (and b!5225738 c!902191) b!5225737))

(assert (= (and b!5225738 (not c!902191)) b!5225736))

(assert (= (and b!5225737 res!2218575) b!5225733))

(assert (= (and b!5225736 c!902190) b!5225735))

(assert (= (and b!5225736 (not c!902190)) b!5225730))

(assert (= (and b!5225735 res!2218576) b!5225731))

(assert (= (and b!5225730 (not res!2218574)) b!5225734))

(assert (= (and b!5225734 res!2218573) b!5225732))

(assert (= (or b!5225731 b!5225732) bm!369244))

(assert (= (or b!5225735 b!5225734) bm!369245))

(assert (= (or b!5225733 bm!369245) bm!369243))

(declare-fun m!6272632 () Bool)

(assert (=> bm!369243 m!6272632))

(declare-fun m!6272634 () Bool)

(assert (=> b!5225737 m!6272634))

(declare-fun m!6272636 () Bool)

(assert (=> bm!369244 m!6272636))

(assert (=> bm!368967 d!1684843))

(assert (=> d!1684227 d!1684225))

(declare-fun d!1684845 () Bool)

(assert (=> d!1684845 (= (flatMap!542 lt!2144074 lambda!262229) (dynLambda!23953 lambda!262229 lt!2144085))))

(assert (=> d!1684845 true))

(declare-fun _$13!1740 () Unit!152540)

(assert (=> d!1684845 (= (choose!38857 lt!2144074 lt!2144085 lambda!262229) _$13!1740)))

(declare-fun b_lambda!202055 () Bool)

(assert (=> (not b_lambda!202055) (not d!1684845)))

(declare-fun bs!1213438 () Bool)

(assert (= bs!1213438 d!1684845))

(assert (=> bs!1213438 m!6270884))

(assert (=> bs!1213438 m!6271336))

(assert (=> d!1684227 d!1684845))

(assert (=> d!1684255 d!1684247))

(assert (=> d!1684255 d!1684635))

(assert (=> d!1684255 d!1684253))

(declare-fun d!1684847 () Bool)

(assert (=> d!1684847 (= (Exists!1996 lambda!262291) (choose!38859 lambda!262291))))

(declare-fun bs!1213439 () Bool)

(assert (= bs!1213439 d!1684847))

(declare-fun m!6272638 () Bool)

(assert (=> bs!1213439 m!6272638))

(assert (=> d!1684255 d!1684847))

(declare-fun bs!1213440 () Bool)

(declare-fun d!1684849 () Bool)

(assert (= bs!1213440 (and d!1684849 d!1684679)))

(declare-fun lambda!262367 () Int)

(assert (=> bs!1213440 (= lambda!262367 lambda!262343)))

(declare-fun bs!1213441 () Bool)

(assert (= bs!1213441 (and d!1684849 b!5225623)))

(assert (=> bs!1213441 (not (= lambda!262367 lambda!262354))))

(declare-fun bs!1213442 () Bool)

(assert (= bs!1213442 (and d!1684849 b!5225615)))

(assert (=> bs!1213442 (not (= lambda!262367 lambda!262353))))

(assert (=> bs!1213440 (not (= lambda!262367 lambda!262344))))

(declare-fun bs!1213443 () Bool)

(assert (= bs!1213443 (and d!1684849 b!5223795)))

(assert (=> bs!1213443 (not (= lambda!262367 lambda!262228))))

(declare-fun bs!1213444 () Bool)

(assert (= bs!1213444 (and d!1684849 b!5224354)))

(assert (=> bs!1213444 (not (= lambda!262367 lambda!262271))))

(declare-fun bs!1213445 () Bool)

(assert (= bs!1213445 (and d!1684849 b!5224362)))

(assert (=> bs!1213445 (not (= lambda!262367 lambda!262272))))

(declare-fun bs!1213446 () Bool)

(assert (= bs!1213446 (and d!1684849 b!5225704)))

(assert (=> bs!1213446 (not (= lambda!262367 lambda!262362))))

(declare-fun bs!1213447 () Bool)

(assert (= bs!1213447 (and d!1684849 d!1684251)))

(assert (=> bs!1213447 (not (= lambda!262367 lambda!262288))))

(assert (=> bs!1213443 (= lambda!262367 lambda!262227)))

(declare-fun bs!1213448 () Bool)

(assert (= bs!1213448 (and d!1684849 d!1684255)))

(assert (=> bs!1213448 (= lambda!262367 lambda!262291)))

(assert (=> bs!1213447 (= lambda!262367 lambda!262287)))

(declare-fun bs!1213449 () Bool)

(assert (= bs!1213449 (and d!1684849 b!5225696)))

(assert (=> bs!1213449 (not (= lambda!262367 lambda!262361))))

(assert (=> d!1684849 true))

(assert (=> d!1684849 true))

(assert (=> d!1684849 true))

(assert (=> d!1684849 (= (isDefined!11629 (findConcatSeparation!1340 (regOne!30142 r!7292) (regTwo!30142 r!7292) Nil!60621 s!2326 s!2326)) (Exists!1996 lambda!262367))))

(assert (=> d!1684849 true))

(declare-fun _$89!1406 () Unit!152540)

(assert (=> d!1684849 (= (choose!38861 (regOne!30142 r!7292) (regTwo!30142 r!7292) s!2326) _$89!1406)))

(declare-fun bs!1213450 () Bool)

(assert (= bs!1213450 d!1684849))

(assert (=> bs!1213450 m!6270866))

(assert (=> bs!1213450 m!6270866))

(assert (=> bs!1213450 m!6270868))

(declare-fun m!6272640 () Bool)

(assert (=> bs!1213450 m!6272640))

(assert (=> d!1684255 d!1684849))

(declare-fun condSetEmpty!33259 () Bool)

(assert (=> setNonEmpty!33247 (= condSetEmpty!33259 (= setRest!33247 ((as const (Array Context!8398 Bool)) false)))))

(declare-fun setRes!33259 () Bool)

(assert (=> setNonEmpty!33247 (= tp!1464396 setRes!33259)))

(declare-fun setIsEmpty!33259 () Bool)

(assert (=> setIsEmpty!33259 setRes!33259))

(declare-fun tp!1464604 () Bool)

(declare-fun setElem!33259 () Context!8398)

(declare-fun e!3252415 () Bool)

(declare-fun setNonEmpty!33259 () Bool)

(assert (=> setNonEmpty!33259 (= setRes!33259 (and tp!1464604 (inv!80284 setElem!33259) e!3252415))))

(declare-fun setRest!33259 () (InoxSet Context!8398))

(assert (=> setNonEmpty!33259 (= setRest!33247 ((_ map or) (store ((as const (Array Context!8398 Bool)) false) setElem!33259 true) setRest!33259))))

(declare-fun b!5225743 () Bool)

(declare-fun tp!1464605 () Bool)

(assert (=> b!5225743 (= e!3252415 tp!1464605)))

(assert (= (and setNonEmpty!33247 condSetEmpty!33259) setIsEmpty!33259))

(assert (= (and setNonEmpty!33247 (not condSetEmpty!33259)) setNonEmpty!33259))

(assert (= setNonEmpty!33259 b!5225743))

(declare-fun m!6272642 () Bool)

(assert (=> setNonEmpty!33259 m!6272642))

(declare-fun b!5225747 () Bool)

(declare-fun e!3252416 () Bool)

(declare-fun tp!1464610 () Bool)

(declare-fun tp!1464607 () Bool)

(assert (=> b!5225747 (= e!3252416 (and tp!1464610 tp!1464607))))

(assert (=> b!5224615 (= tp!1464414 e!3252416)))

(declare-fun b!5225744 () Bool)

(assert (=> b!5225744 (= e!3252416 tp_is_empty!38883)))

(declare-fun b!5225745 () Bool)

(declare-fun tp!1464608 () Bool)

(declare-fun tp!1464609 () Bool)

(assert (=> b!5225745 (= e!3252416 (and tp!1464608 tp!1464609))))

(declare-fun b!5225746 () Bool)

(declare-fun tp!1464606 () Bool)

(assert (=> b!5225746 (= e!3252416 tp!1464606)))

(assert (= (and b!5224615 ((_ is ElementMatch!14815) (reg!15144 (regOne!30143 r!7292)))) b!5225744))

(assert (= (and b!5224615 ((_ is Concat!23660) (reg!15144 (regOne!30143 r!7292)))) b!5225745))

(assert (= (and b!5224615 ((_ is Star!14815) (reg!15144 (regOne!30143 r!7292)))) b!5225746))

(assert (= (and b!5224615 ((_ is Union!14815) (reg!15144 (regOne!30143 r!7292)))) b!5225747))

(declare-fun b!5225748 () Bool)

(declare-fun e!3252417 () Bool)

(declare-fun tp!1464611 () Bool)

(declare-fun tp!1464612 () Bool)

(assert (=> b!5225748 (= e!3252417 (and tp!1464611 tp!1464612))))

(assert (=> b!5224594 (= tp!1464397 e!3252417)))

(assert (= (and b!5224594 ((_ is Cons!60620) (exprs!4699 setElem!33247))) b!5225748))

(declare-fun b!5225752 () Bool)

(declare-fun e!3252418 () Bool)

(declare-fun tp!1464617 () Bool)

(declare-fun tp!1464614 () Bool)

(assert (=> b!5225752 (= e!3252418 (and tp!1464617 tp!1464614))))

(assert (=> b!5224614 (= tp!1464416 e!3252418)))

(declare-fun b!5225749 () Bool)

(assert (=> b!5225749 (= e!3252418 tp_is_empty!38883)))

(declare-fun b!5225750 () Bool)

(declare-fun tp!1464615 () Bool)

(declare-fun tp!1464616 () Bool)

(assert (=> b!5225750 (= e!3252418 (and tp!1464615 tp!1464616))))

(declare-fun b!5225751 () Bool)

(declare-fun tp!1464613 () Bool)

(assert (=> b!5225751 (= e!3252418 tp!1464613)))

(assert (= (and b!5224614 ((_ is ElementMatch!14815) (regOne!30142 (regOne!30143 r!7292)))) b!5225749))

(assert (= (and b!5224614 ((_ is Concat!23660) (regOne!30142 (regOne!30143 r!7292)))) b!5225750))

(assert (= (and b!5224614 ((_ is Star!14815) (regOne!30142 (regOne!30143 r!7292)))) b!5225751))

(assert (= (and b!5224614 ((_ is Union!14815) (regOne!30142 (regOne!30143 r!7292)))) b!5225752))

(declare-fun b!5225756 () Bool)

(declare-fun e!3252419 () Bool)

(declare-fun tp!1464622 () Bool)

(declare-fun tp!1464619 () Bool)

(assert (=> b!5225756 (= e!3252419 (and tp!1464622 tp!1464619))))

(assert (=> b!5224614 (= tp!1464417 e!3252419)))

(declare-fun b!5225753 () Bool)

(assert (=> b!5225753 (= e!3252419 tp_is_empty!38883)))

(declare-fun b!5225754 () Bool)

(declare-fun tp!1464620 () Bool)

(declare-fun tp!1464621 () Bool)

(assert (=> b!5225754 (= e!3252419 (and tp!1464620 tp!1464621))))

(declare-fun b!5225755 () Bool)

(declare-fun tp!1464618 () Bool)

(assert (=> b!5225755 (= e!3252419 tp!1464618)))

(assert (= (and b!5224614 ((_ is ElementMatch!14815) (regTwo!30142 (regOne!30143 r!7292)))) b!5225753))

(assert (= (and b!5224614 ((_ is Concat!23660) (regTwo!30142 (regOne!30143 r!7292)))) b!5225754))

(assert (= (and b!5224614 ((_ is Star!14815) (regTwo!30142 (regOne!30143 r!7292)))) b!5225755))

(assert (= (and b!5224614 ((_ is Union!14815) (regTwo!30142 (regOne!30143 r!7292)))) b!5225756))

(declare-fun b!5225760 () Bool)

(declare-fun e!3252420 () Bool)

(declare-fun tp!1464627 () Bool)

(declare-fun tp!1464624 () Bool)

(assert (=> b!5225760 (= e!3252420 (and tp!1464627 tp!1464624))))

(assert (=> b!5224587 (= tp!1464389 e!3252420)))

(declare-fun b!5225757 () Bool)

(assert (=> b!5225757 (= e!3252420 tp_is_empty!38883)))

(declare-fun b!5225758 () Bool)

(declare-fun tp!1464625 () Bool)

(declare-fun tp!1464626 () Bool)

(assert (=> b!5225758 (= e!3252420 (and tp!1464625 tp!1464626))))

(declare-fun b!5225759 () Bool)

(declare-fun tp!1464623 () Bool)

(assert (=> b!5225759 (= e!3252420 tp!1464623)))

(assert (= (and b!5224587 ((_ is ElementMatch!14815) (regOne!30142 (regTwo!30142 r!7292)))) b!5225757))

(assert (= (and b!5224587 ((_ is Concat!23660) (regOne!30142 (regTwo!30142 r!7292)))) b!5225758))

(assert (= (and b!5224587 ((_ is Star!14815) (regOne!30142 (regTwo!30142 r!7292)))) b!5225759))

(assert (= (and b!5224587 ((_ is Union!14815) (regOne!30142 (regTwo!30142 r!7292)))) b!5225760))

(declare-fun b!5225764 () Bool)

(declare-fun e!3252421 () Bool)

(declare-fun tp!1464632 () Bool)

(declare-fun tp!1464629 () Bool)

(assert (=> b!5225764 (= e!3252421 (and tp!1464632 tp!1464629))))

(assert (=> b!5224587 (= tp!1464390 e!3252421)))

(declare-fun b!5225761 () Bool)

(assert (=> b!5225761 (= e!3252421 tp_is_empty!38883)))

(declare-fun b!5225762 () Bool)

(declare-fun tp!1464630 () Bool)

(declare-fun tp!1464631 () Bool)

(assert (=> b!5225762 (= e!3252421 (and tp!1464630 tp!1464631))))

(declare-fun b!5225763 () Bool)

(declare-fun tp!1464628 () Bool)

(assert (=> b!5225763 (= e!3252421 tp!1464628)))

(assert (= (and b!5224587 ((_ is ElementMatch!14815) (regTwo!30142 (regTwo!30142 r!7292)))) b!5225761))

(assert (= (and b!5224587 ((_ is Concat!23660) (regTwo!30142 (regTwo!30142 r!7292)))) b!5225762))

(assert (= (and b!5224587 ((_ is Star!14815) (regTwo!30142 (regTwo!30142 r!7292)))) b!5225763))

(assert (= (and b!5224587 ((_ is Union!14815) (regTwo!30142 (regTwo!30142 r!7292)))) b!5225764))

(declare-fun b!5225768 () Bool)

(declare-fun e!3252422 () Bool)

(declare-fun tp!1464637 () Bool)

(declare-fun tp!1464634 () Bool)

(assert (=> b!5225768 (= e!3252422 (and tp!1464637 tp!1464634))))

(assert (=> b!5224616 (= tp!1464418 e!3252422)))

(declare-fun b!5225765 () Bool)

(assert (=> b!5225765 (= e!3252422 tp_is_empty!38883)))

(declare-fun b!5225766 () Bool)

(declare-fun tp!1464635 () Bool)

(declare-fun tp!1464636 () Bool)

(assert (=> b!5225766 (= e!3252422 (and tp!1464635 tp!1464636))))

(declare-fun b!5225767 () Bool)

(declare-fun tp!1464633 () Bool)

(assert (=> b!5225767 (= e!3252422 tp!1464633)))

(assert (= (and b!5224616 ((_ is ElementMatch!14815) (regOne!30143 (regOne!30143 r!7292)))) b!5225765))

(assert (= (and b!5224616 ((_ is Concat!23660) (regOne!30143 (regOne!30143 r!7292)))) b!5225766))

(assert (= (and b!5224616 ((_ is Star!14815) (regOne!30143 (regOne!30143 r!7292)))) b!5225767))

(assert (= (and b!5224616 ((_ is Union!14815) (regOne!30143 (regOne!30143 r!7292)))) b!5225768))

(declare-fun b!5225772 () Bool)

(declare-fun e!3252423 () Bool)

(declare-fun tp!1464642 () Bool)

(declare-fun tp!1464639 () Bool)

(assert (=> b!5225772 (= e!3252423 (and tp!1464642 tp!1464639))))

(assert (=> b!5224616 (= tp!1464415 e!3252423)))

(declare-fun b!5225769 () Bool)

(assert (=> b!5225769 (= e!3252423 tp_is_empty!38883)))

(declare-fun b!5225770 () Bool)

(declare-fun tp!1464640 () Bool)

(declare-fun tp!1464641 () Bool)

(assert (=> b!5225770 (= e!3252423 (and tp!1464640 tp!1464641))))

(declare-fun b!5225771 () Bool)

(declare-fun tp!1464638 () Bool)

(assert (=> b!5225771 (= e!3252423 tp!1464638)))

(assert (= (and b!5224616 ((_ is ElementMatch!14815) (regTwo!30143 (regOne!30143 r!7292)))) b!5225769))

(assert (= (and b!5224616 ((_ is Concat!23660) (regTwo!30143 (regOne!30143 r!7292)))) b!5225770))

(assert (= (and b!5224616 ((_ is Star!14815) (regTwo!30143 (regOne!30143 r!7292)))) b!5225771))

(assert (= (and b!5224616 ((_ is Union!14815) (regTwo!30143 (regOne!30143 r!7292)))) b!5225772))

(declare-fun b!5225776 () Bool)

(declare-fun e!3252424 () Bool)

(declare-fun tp!1464647 () Bool)

(declare-fun tp!1464644 () Bool)

(assert (=> b!5225776 (= e!3252424 (and tp!1464647 tp!1464644))))

(assert (=> b!5224571 (= tp!1464370 e!3252424)))

(declare-fun b!5225773 () Bool)

(assert (=> b!5225773 (= e!3252424 tp_is_empty!38883)))

(declare-fun b!5225774 () Bool)

(declare-fun tp!1464645 () Bool)

(declare-fun tp!1464646 () Bool)

(assert (=> b!5225774 (= e!3252424 (and tp!1464645 tp!1464646))))

(declare-fun b!5225775 () Bool)

(declare-fun tp!1464643 () Bool)

(assert (=> b!5225775 (= e!3252424 tp!1464643)))

(assert (= (and b!5224571 ((_ is ElementMatch!14815) (h!67068 (exprs!4699 (h!67070 zl!343))))) b!5225773))

(assert (= (and b!5224571 ((_ is Concat!23660) (h!67068 (exprs!4699 (h!67070 zl!343))))) b!5225774))

(assert (= (and b!5224571 ((_ is Star!14815) (h!67068 (exprs!4699 (h!67070 zl!343))))) b!5225775))

(assert (= (and b!5224571 ((_ is Union!14815) (h!67068 (exprs!4699 (h!67070 zl!343))))) b!5225776))

(declare-fun b!5225777 () Bool)

(declare-fun e!3252425 () Bool)

(declare-fun tp!1464648 () Bool)

(declare-fun tp!1464649 () Bool)

(assert (=> b!5225777 (= e!3252425 (and tp!1464648 tp!1464649))))

(assert (=> b!5224571 (= tp!1464371 e!3252425)))

(assert (= (and b!5224571 ((_ is Cons!60620) (t!373917 (exprs!4699 (h!67070 zl!343))))) b!5225777))

(declare-fun b!5225781 () Bool)

(declare-fun e!3252426 () Bool)

(declare-fun tp!1464654 () Bool)

(declare-fun tp!1464651 () Bool)

(assert (=> b!5225781 (= e!3252426 (and tp!1464654 tp!1464651))))

(assert (=> b!5224589 (= tp!1464391 e!3252426)))

(declare-fun b!5225778 () Bool)

(assert (=> b!5225778 (= e!3252426 tp_is_empty!38883)))

(declare-fun b!5225779 () Bool)

(declare-fun tp!1464652 () Bool)

(declare-fun tp!1464653 () Bool)

(assert (=> b!5225779 (= e!3252426 (and tp!1464652 tp!1464653))))

(declare-fun b!5225780 () Bool)

(declare-fun tp!1464650 () Bool)

(assert (=> b!5225780 (= e!3252426 tp!1464650)))

(assert (= (and b!5224589 ((_ is ElementMatch!14815) (regOne!30143 (regTwo!30142 r!7292)))) b!5225778))

(assert (= (and b!5224589 ((_ is Concat!23660) (regOne!30143 (regTwo!30142 r!7292)))) b!5225779))

(assert (= (and b!5224589 ((_ is Star!14815) (regOne!30143 (regTwo!30142 r!7292)))) b!5225780))

(assert (= (and b!5224589 ((_ is Union!14815) (regOne!30143 (regTwo!30142 r!7292)))) b!5225781))

(declare-fun b!5225785 () Bool)

(declare-fun e!3252427 () Bool)

(declare-fun tp!1464659 () Bool)

(declare-fun tp!1464656 () Bool)

(assert (=> b!5225785 (= e!3252427 (and tp!1464659 tp!1464656))))

(assert (=> b!5224589 (= tp!1464388 e!3252427)))

(declare-fun b!5225782 () Bool)

(assert (=> b!5225782 (= e!3252427 tp_is_empty!38883)))

(declare-fun b!5225783 () Bool)

(declare-fun tp!1464657 () Bool)

(declare-fun tp!1464658 () Bool)

(assert (=> b!5225783 (= e!3252427 (and tp!1464657 tp!1464658))))

(declare-fun b!5225784 () Bool)

(declare-fun tp!1464655 () Bool)

(assert (=> b!5225784 (= e!3252427 tp!1464655)))

(assert (= (and b!5224589 ((_ is ElementMatch!14815) (regTwo!30143 (regTwo!30142 r!7292)))) b!5225782))

(assert (= (and b!5224589 ((_ is Concat!23660) (regTwo!30143 (regTwo!30142 r!7292)))) b!5225783))

(assert (= (and b!5224589 ((_ is Star!14815) (regTwo!30143 (regTwo!30142 r!7292)))) b!5225784))

(assert (= (and b!5224589 ((_ is Union!14815) (regTwo!30143 (regTwo!30142 r!7292)))) b!5225785))

(declare-fun b!5225787 () Bool)

(declare-fun e!3252429 () Bool)

(declare-fun tp!1464660 () Bool)

(assert (=> b!5225787 (= e!3252429 tp!1464660)))

(declare-fun e!3252428 () Bool)

(declare-fun tp!1464661 () Bool)

(declare-fun b!5225786 () Bool)

(assert (=> b!5225786 (= e!3252428 (and (inv!80284 (h!67070 (t!373919 (t!373919 zl!343)))) e!3252429 tp!1464661))))

(assert (=> b!5224610 (= tp!1464411 e!3252428)))

(assert (= b!5225786 b!5225787))

(assert (= (and b!5224610 ((_ is Cons!60622) (t!373919 (t!373919 zl!343)))) b!5225786))

(declare-fun m!6272644 () Bool)

(assert (=> b!5225786 m!6272644))

(declare-fun b!5225791 () Bool)

(declare-fun e!3252430 () Bool)

(declare-fun tp!1464666 () Bool)

(declare-fun tp!1464663 () Bool)

(assert (=> b!5225791 (= e!3252430 (and tp!1464666 tp!1464663))))

(assert (=> b!5224588 (= tp!1464387 e!3252430)))

(declare-fun b!5225788 () Bool)

(assert (=> b!5225788 (= e!3252430 tp_is_empty!38883)))

(declare-fun b!5225789 () Bool)

(declare-fun tp!1464664 () Bool)

(declare-fun tp!1464665 () Bool)

(assert (=> b!5225789 (= e!3252430 (and tp!1464664 tp!1464665))))

(declare-fun b!5225790 () Bool)

(declare-fun tp!1464662 () Bool)

(assert (=> b!5225790 (= e!3252430 tp!1464662)))

(assert (= (and b!5224588 ((_ is ElementMatch!14815) (reg!15144 (regTwo!30142 r!7292)))) b!5225788))

(assert (= (and b!5224588 ((_ is Concat!23660) (reg!15144 (regTwo!30142 r!7292)))) b!5225789))

(assert (= (and b!5224588 ((_ is Star!14815) (reg!15144 (regTwo!30142 r!7292)))) b!5225790))

(assert (= (and b!5224588 ((_ is Union!14815) (reg!15144 (regTwo!30142 r!7292)))) b!5225791))

(declare-fun b!5225792 () Bool)

(declare-fun e!3252431 () Bool)

(declare-fun tp!1464667 () Bool)

(assert (=> b!5225792 (= e!3252431 (and tp_is_empty!38883 tp!1464667))))

(assert (=> b!5224603 (= tp!1464405 e!3252431)))

(assert (= (and b!5224603 ((_ is Cons!60621) (t!373918 (t!373918 s!2326)))) b!5225792))

(declare-fun b!5225796 () Bool)

(declare-fun e!3252432 () Bool)

(declare-fun tp!1464672 () Bool)

(declare-fun tp!1464669 () Bool)

(assert (=> b!5225796 (= e!3252432 (and tp!1464672 tp!1464669))))

(assert (=> b!5224596 (= tp!1464400 e!3252432)))

(declare-fun b!5225793 () Bool)

(assert (=> b!5225793 (= e!3252432 tp_is_empty!38883)))

(declare-fun b!5225794 () Bool)

(declare-fun tp!1464670 () Bool)

(declare-fun tp!1464671 () Bool)

(assert (=> b!5225794 (= e!3252432 (and tp!1464670 tp!1464671))))

(declare-fun b!5225795 () Bool)

(declare-fun tp!1464668 () Bool)

(assert (=> b!5225795 (= e!3252432 tp!1464668)))

(assert (= (and b!5224596 ((_ is ElementMatch!14815) (regOne!30142 (reg!15144 r!7292)))) b!5225793))

(assert (= (and b!5224596 ((_ is Concat!23660) (regOne!30142 (reg!15144 r!7292)))) b!5225794))

(assert (= (and b!5224596 ((_ is Star!14815) (regOne!30142 (reg!15144 r!7292)))) b!5225795))

(assert (= (and b!5224596 ((_ is Union!14815) (regOne!30142 (reg!15144 r!7292)))) b!5225796))

(declare-fun b!5225800 () Bool)

(declare-fun e!3252433 () Bool)

(declare-fun tp!1464677 () Bool)

(declare-fun tp!1464674 () Bool)

(assert (=> b!5225800 (= e!3252433 (and tp!1464677 tp!1464674))))

(assert (=> b!5224596 (= tp!1464401 e!3252433)))

(declare-fun b!5225797 () Bool)

(assert (=> b!5225797 (= e!3252433 tp_is_empty!38883)))

(declare-fun b!5225798 () Bool)

(declare-fun tp!1464675 () Bool)

(declare-fun tp!1464676 () Bool)

(assert (=> b!5225798 (= e!3252433 (and tp!1464675 tp!1464676))))

(declare-fun b!5225799 () Bool)

(declare-fun tp!1464673 () Bool)

(assert (=> b!5225799 (= e!3252433 tp!1464673)))

(assert (= (and b!5224596 ((_ is ElementMatch!14815) (regTwo!30142 (reg!15144 r!7292)))) b!5225797))

(assert (= (and b!5224596 ((_ is Concat!23660) (regTwo!30142 (reg!15144 r!7292)))) b!5225798))

(assert (= (and b!5224596 ((_ is Star!14815) (regTwo!30142 (reg!15144 r!7292)))) b!5225799))

(assert (= (and b!5224596 ((_ is Union!14815) (regTwo!30142 (reg!15144 r!7292)))) b!5225800))

(declare-fun b!5225801 () Bool)

(declare-fun e!3252434 () Bool)

(declare-fun tp!1464678 () Bool)

(declare-fun tp!1464679 () Bool)

(assert (=> b!5225801 (= e!3252434 (and tp!1464678 tp!1464679))))

(assert (=> b!5224611 (= tp!1464410 e!3252434)))

(assert (= (and b!5224611 ((_ is Cons!60620) (exprs!4699 (h!67070 (t!373919 zl!343))))) b!5225801))

(declare-fun b!5225805 () Bool)

(declare-fun e!3252435 () Bool)

(declare-fun tp!1464684 () Bool)

(declare-fun tp!1464681 () Bool)

(assert (=> b!5225805 (= e!3252435 (and tp!1464684 tp!1464681))))

(assert (=> b!5224619 (= tp!1464419 e!3252435)))

(declare-fun b!5225802 () Bool)

(assert (=> b!5225802 (= e!3252435 tp_is_empty!38883)))

(declare-fun b!5225803 () Bool)

(declare-fun tp!1464682 () Bool)

(declare-fun tp!1464683 () Bool)

(assert (=> b!5225803 (= e!3252435 (and tp!1464682 tp!1464683))))

(declare-fun b!5225804 () Bool)

(declare-fun tp!1464680 () Bool)

(assert (=> b!5225804 (= e!3252435 tp!1464680)))

(assert (= (and b!5224619 ((_ is ElementMatch!14815) (reg!15144 (regTwo!30143 r!7292)))) b!5225802))

(assert (= (and b!5224619 ((_ is Concat!23660) (reg!15144 (regTwo!30143 r!7292)))) b!5225803))

(assert (= (and b!5224619 ((_ is Star!14815) (reg!15144 (regTwo!30143 r!7292)))) b!5225804))

(assert (= (and b!5224619 ((_ is Union!14815) (reg!15144 (regTwo!30143 r!7292)))) b!5225805))

(declare-fun b!5225809 () Bool)

(declare-fun e!3252436 () Bool)

(declare-fun tp!1464689 () Bool)

(declare-fun tp!1464686 () Bool)

(assert (=> b!5225809 (= e!3252436 (and tp!1464689 tp!1464686))))

(assert (=> b!5224598 (= tp!1464402 e!3252436)))

(declare-fun b!5225806 () Bool)

(assert (=> b!5225806 (= e!3252436 tp_is_empty!38883)))

(declare-fun b!5225807 () Bool)

(declare-fun tp!1464687 () Bool)

(declare-fun tp!1464688 () Bool)

(assert (=> b!5225807 (= e!3252436 (and tp!1464687 tp!1464688))))

(declare-fun b!5225808 () Bool)

(declare-fun tp!1464685 () Bool)

(assert (=> b!5225808 (= e!3252436 tp!1464685)))

(assert (= (and b!5224598 ((_ is ElementMatch!14815) (regOne!30143 (reg!15144 r!7292)))) b!5225806))

(assert (= (and b!5224598 ((_ is Concat!23660) (regOne!30143 (reg!15144 r!7292)))) b!5225807))

(assert (= (and b!5224598 ((_ is Star!14815) (regOne!30143 (reg!15144 r!7292)))) b!5225808))

(assert (= (and b!5224598 ((_ is Union!14815) (regOne!30143 (reg!15144 r!7292)))) b!5225809))

(declare-fun b!5225813 () Bool)

(declare-fun e!3252437 () Bool)

(declare-fun tp!1464694 () Bool)

(declare-fun tp!1464691 () Bool)

(assert (=> b!5225813 (= e!3252437 (and tp!1464694 tp!1464691))))

(assert (=> b!5224598 (= tp!1464399 e!3252437)))

(declare-fun b!5225810 () Bool)

(assert (=> b!5225810 (= e!3252437 tp_is_empty!38883)))

(declare-fun b!5225811 () Bool)

(declare-fun tp!1464692 () Bool)

(declare-fun tp!1464693 () Bool)

(assert (=> b!5225811 (= e!3252437 (and tp!1464692 tp!1464693))))

(declare-fun b!5225812 () Bool)

(declare-fun tp!1464690 () Bool)

(assert (=> b!5225812 (= e!3252437 tp!1464690)))

(assert (= (and b!5224598 ((_ is ElementMatch!14815) (regTwo!30143 (reg!15144 r!7292)))) b!5225810))

(assert (= (and b!5224598 ((_ is Concat!23660) (regTwo!30143 (reg!15144 r!7292)))) b!5225811))

(assert (= (and b!5224598 ((_ is Star!14815) (regTwo!30143 (reg!15144 r!7292)))) b!5225812))

(assert (= (and b!5224598 ((_ is Union!14815) (regTwo!30143 (reg!15144 r!7292)))) b!5225813))

(declare-fun b!5225817 () Bool)

(declare-fun e!3252438 () Bool)

(declare-fun tp!1464699 () Bool)

(declare-fun tp!1464696 () Bool)

(assert (=> b!5225817 (= e!3252438 (and tp!1464699 tp!1464696))))

(assert (=> b!5224620 (= tp!1464423 e!3252438)))

(declare-fun b!5225814 () Bool)

(assert (=> b!5225814 (= e!3252438 tp_is_empty!38883)))

(declare-fun b!5225815 () Bool)

(declare-fun tp!1464697 () Bool)

(declare-fun tp!1464698 () Bool)

(assert (=> b!5225815 (= e!3252438 (and tp!1464697 tp!1464698))))

(declare-fun b!5225816 () Bool)

(declare-fun tp!1464695 () Bool)

(assert (=> b!5225816 (= e!3252438 tp!1464695)))

(assert (= (and b!5224620 ((_ is ElementMatch!14815) (regOne!30143 (regTwo!30143 r!7292)))) b!5225814))

(assert (= (and b!5224620 ((_ is Concat!23660) (regOne!30143 (regTwo!30143 r!7292)))) b!5225815))

(assert (= (and b!5224620 ((_ is Star!14815) (regOne!30143 (regTwo!30143 r!7292)))) b!5225816))

(assert (= (and b!5224620 ((_ is Union!14815) (regOne!30143 (regTwo!30143 r!7292)))) b!5225817))

(declare-fun b!5225821 () Bool)

(declare-fun e!3252439 () Bool)

(declare-fun tp!1464704 () Bool)

(declare-fun tp!1464701 () Bool)

(assert (=> b!5225821 (= e!3252439 (and tp!1464704 tp!1464701))))

(assert (=> b!5224620 (= tp!1464420 e!3252439)))

(declare-fun b!5225818 () Bool)

(assert (=> b!5225818 (= e!3252439 tp_is_empty!38883)))

(declare-fun b!5225819 () Bool)

(declare-fun tp!1464702 () Bool)

(declare-fun tp!1464703 () Bool)

(assert (=> b!5225819 (= e!3252439 (and tp!1464702 tp!1464703))))

(declare-fun b!5225820 () Bool)

(declare-fun tp!1464700 () Bool)

(assert (=> b!5225820 (= e!3252439 tp!1464700)))

(assert (= (and b!5224620 ((_ is ElementMatch!14815) (regTwo!30143 (regTwo!30143 r!7292)))) b!5225818))

(assert (= (and b!5224620 ((_ is Concat!23660) (regTwo!30143 (regTwo!30143 r!7292)))) b!5225819))

(assert (= (and b!5224620 ((_ is Star!14815) (regTwo!30143 (regTwo!30143 r!7292)))) b!5225820))

(assert (= (and b!5224620 ((_ is Union!14815) (regTwo!30143 (regTwo!30143 r!7292)))) b!5225821))

(declare-fun b!5225825 () Bool)

(declare-fun e!3252440 () Bool)

(declare-fun tp!1464709 () Bool)

(declare-fun tp!1464706 () Bool)

(assert (=> b!5225825 (= e!3252440 (and tp!1464709 tp!1464706))))

(assert (=> b!5224618 (= tp!1464421 e!3252440)))

(declare-fun b!5225822 () Bool)

(assert (=> b!5225822 (= e!3252440 tp_is_empty!38883)))

(declare-fun b!5225823 () Bool)

(declare-fun tp!1464707 () Bool)

(declare-fun tp!1464708 () Bool)

(assert (=> b!5225823 (= e!3252440 (and tp!1464707 tp!1464708))))

(declare-fun b!5225824 () Bool)

(declare-fun tp!1464705 () Bool)

(assert (=> b!5225824 (= e!3252440 tp!1464705)))

(assert (= (and b!5224618 ((_ is ElementMatch!14815) (regOne!30142 (regTwo!30143 r!7292)))) b!5225822))

(assert (= (and b!5224618 ((_ is Concat!23660) (regOne!30142 (regTwo!30143 r!7292)))) b!5225823))

(assert (= (and b!5224618 ((_ is Star!14815) (regOne!30142 (regTwo!30143 r!7292)))) b!5225824))

(assert (= (and b!5224618 ((_ is Union!14815) (regOne!30142 (regTwo!30143 r!7292)))) b!5225825))

(declare-fun b!5225829 () Bool)

(declare-fun e!3252441 () Bool)

(declare-fun tp!1464714 () Bool)

(declare-fun tp!1464711 () Bool)

(assert (=> b!5225829 (= e!3252441 (and tp!1464714 tp!1464711))))

(assert (=> b!5224618 (= tp!1464422 e!3252441)))

(declare-fun b!5225826 () Bool)

(assert (=> b!5225826 (= e!3252441 tp_is_empty!38883)))

(declare-fun b!5225827 () Bool)

(declare-fun tp!1464712 () Bool)

(declare-fun tp!1464713 () Bool)

(assert (=> b!5225827 (= e!3252441 (and tp!1464712 tp!1464713))))

(declare-fun b!5225828 () Bool)

(declare-fun tp!1464710 () Bool)

(assert (=> b!5225828 (= e!3252441 tp!1464710)))

(assert (= (and b!5224618 ((_ is ElementMatch!14815) (regTwo!30142 (regTwo!30143 r!7292)))) b!5225826))

(assert (= (and b!5224618 ((_ is Concat!23660) (regTwo!30142 (regTwo!30143 r!7292)))) b!5225827))

(assert (= (and b!5224618 ((_ is Star!14815) (regTwo!30142 (regTwo!30143 r!7292)))) b!5225828))

(assert (= (and b!5224618 ((_ is Union!14815) (regTwo!30142 (regTwo!30143 r!7292)))) b!5225829))

(declare-fun b!5225833 () Bool)

(declare-fun e!3252442 () Bool)

(declare-fun tp!1464719 () Bool)

(declare-fun tp!1464716 () Bool)

(assert (=> b!5225833 (= e!3252442 (and tp!1464719 tp!1464716))))

(assert (=> b!5224597 (= tp!1464398 e!3252442)))

(declare-fun b!5225830 () Bool)

(assert (=> b!5225830 (= e!3252442 tp_is_empty!38883)))

(declare-fun b!5225831 () Bool)

(declare-fun tp!1464717 () Bool)

(declare-fun tp!1464718 () Bool)

(assert (=> b!5225831 (= e!3252442 (and tp!1464717 tp!1464718))))

(declare-fun b!5225832 () Bool)

(declare-fun tp!1464715 () Bool)

(assert (=> b!5225832 (= e!3252442 tp!1464715)))

(assert (= (and b!5224597 ((_ is ElementMatch!14815) (reg!15144 (reg!15144 r!7292)))) b!5225830))

(assert (= (and b!5224597 ((_ is Concat!23660) (reg!15144 (reg!15144 r!7292)))) b!5225831))

(assert (= (and b!5224597 ((_ is Star!14815) (reg!15144 (reg!15144 r!7292)))) b!5225832))

(assert (= (and b!5224597 ((_ is Union!14815) (reg!15144 (reg!15144 r!7292)))) b!5225833))

(declare-fun b!5225837 () Bool)

(declare-fun e!3252443 () Bool)

(declare-fun tp!1464724 () Bool)

(declare-fun tp!1464721 () Bool)

(assert (=> b!5225837 (= e!3252443 (and tp!1464724 tp!1464721))))

(assert (=> b!5224612 (= tp!1464412 e!3252443)))

(declare-fun b!5225834 () Bool)

(assert (=> b!5225834 (= e!3252443 tp_is_empty!38883)))

(declare-fun b!5225835 () Bool)

(declare-fun tp!1464722 () Bool)

(declare-fun tp!1464723 () Bool)

(assert (=> b!5225835 (= e!3252443 (and tp!1464722 tp!1464723))))

(declare-fun b!5225836 () Bool)

(declare-fun tp!1464720 () Bool)

(assert (=> b!5225836 (= e!3252443 tp!1464720)))

(assert (= (and b!5224612 ((_ is ElementMatch!14815) (h!67068 (exprs!4699 setElem!33241)))) b!5225834))

(assert (= (and b!5224612 ((_ is Concat!23660) (h!67068 (exprs!4699 setElem!33241)))) b!5225835))

(assert (= (and b!5224612 ((_ is Star!14815) (h!67068 (exprs!4699 setElem!33241)))) b!5225836))

(assert (= (and b!5224612 ((_ is Union!14815) (h!67068 (exprs!4699 setElem!33241)))) b!5225837))

(declare-fun b!5225838 () Bool)

(declare-fun e!3252444 () Bool)

(declare-fun tp!1464725 () Bool)

(declare-fun tp!1464726 () Bool)

(assert (=> b!5225838 (= e!3252444 (and tp!1464725 tp!1464726))))

(assert (=> b!5224612 (= tp!1464413 e!3252444)))

(assert (= (and b!5224612 ((_ is Cons!60620) (t!373917 (exprs!4699 setElem!33241)))) b!5225838))

(declare-fun b!5225842 () Bool)

(declare-fun e!3252445 () Bool)

(declare-fun tp!1464731 () Bool)

(declare-fun tp!1464728 () Bool)

(assert (=> b!5225842 (= e!3252445 (and tp!1464731 tp!1464728))))

(assert (=> b!5224585 (= tp!1464386 e!3252445)))

(declare-fun b!5225839 () Bool)

(assert (=> b!5225839 (= e!3252445 tp_is_empty!38883)))

(declare-fun b!5225840 () Bool)

(declare-fun tp!1464729 () Bool)

(declare-fun tp!1464730 () Bool)

(assert (=> b!5225840 (= e!3252445 (and tp!1464729 tp!1464730))))

(declare-fun b!5225841 () Bool)

(declare-fun tp!1464727 () Bool)

(assert (=> b!5225841 (= e!3252445 tp!1464727)))

(assert (= (and b!5224585 ((_ is ElementMatch!14815) (regOne!30143 (regOne!30142 r!7292)))) b!5225839))

(assert (= (and b!5224585 ((_ is Concat!23660) (regOne!30143 (regOne!30142 r!7292)))) b!5225840))

(assert (= (and b!5224585 ((_ is Star!14815) (regOne!30143 (regOne!30142 r!7292)))) b!5225841))

(assert (= (and b!5224585 ((_ is Union!14815) (regOne!30143 (regOne!30142 r!7292)))) b!5225842))

(declare-fun b!5225846 () Bool)

(declare-fun e!3252446 () Bool)

(declare-fun tp!1464736 () Bool)

(declare-fun tp!1464733 () Bool)

(assert (=> b!5225846 (= e!3252446 (and tp!1464736 tp!1464733))))

(assert (=> b!5224585 (= tp!1464383 e!3252446)))

(declare-fun b!5225843 () Bool)

(assert (=> b!5225843 (= e!3252446 tp_is_empty!38883)))

(declare-fun b!5225844 () Bool)

(declare-fun tp!1464734 () Bool)

(declare-fun tp!1464735 () Bool)

(assert (=> b!5225844 (= e!3252446 (and tp!1464734 tp!1464735))))

(declare-fun b!5225845 () Bool)

(declare-fun tp!1464732 () Bool)

(assert (=> b!5225845 (= e!3252446 tp!1464732)))

(assert (= (and b!5224585 ((_ is ElementMatch!14815) (regTwo!30143 (regOne!30142 r!7292)))) b!5225843))

(assert (= (and b!5224585 ((_ is Concat!23660) (regTwo!30143 (regOne!30142 r!7292)))) b!5225844))

(assert (= (and b!5224585 ((_ is Star!14815) (regTwo!30143 (regOne!30142 r!7292)))) b!5225845))

(assert (= (and b!5224585 ((_ is Union!14815) (regTwo!30143 (regOne!30142 r!7292)))) b!5225846))

(declare-fun b!5225850 () Bool)

(declare-fun e!3252447 () Bool)

(declare-fun tp!1464741 () Bool)

(declare-fun tp!1464738 () Bool)

(assert (=> b!5225850 (= e!3252447 (and tp!1464741 tp!1464738))))

(assert (=> b!5224583 (= tp!1464384 e!3252447)))

(declare-fun b!5225847 () Bool)

(assert (=> b!5225847 (= e!3252447 tp_is_empty!38883)))

(declare-fun b!5225848 () Bool)

(declare-fun tp!1464739 () Bool)

(declare-fun tp!1464740 () Bool)

(assert (=> b!5225848 (= e!3252447 (and tp!1464739 tp!1464740))))

(declare-fun b!5225849 () Bool)

(declare-fun tp!1464737 () Bool)

(assert (=> b!5225849 (= e!3252447 tp!1464737)))

(assert (= (and b!5224583 ((_ is ElementMatch!14815) (regOne!30142 (regOne!30142 r!7292)))) b!5225847))

(assert (= (and b!5224583 ((_ is Concat!23660) (regOne!30142 (regOne!30142 r!7292)))) b!5225848))

(assert (= (and b!5224583 ((_ is Star!14815) (regOne!30142 (regOne!30142 r!7292)))) b!5225849))

(assert (= (and b!5224583 ((_ is Union!14815) (regOne!30142 (regOne!30142 r!7292)))) b!5225850))

(declare-fun b!5225854 () Bool)

(declare-fun e!3252448 () Bool)

(declare-fun tp!1464746 () Bool)

(declare-fun tp!1464743 () Bool)

(assert (=> b!5225854 (= e!3252448 (and tp!1464746 tp!1464743))))

(assert (=> b!5224583 (= tp!1464385 e!3252448)))

(declare-fun b!5225851 () Bool)

(assert (=> b!5225851 (= e!3252448 tp_is_empty!38883)))

(declare-fun b!5225852 () Bool)

(declare-fun tp!1464744 () Bool)

(declare-fun tp!1464745 () Bool)

(assert (=> b!5225852 (= e!3252448 (and tp!1464744 tp!1464745))))

(declare-fun b!5225853 () Bool)

(declare-fun tp!1464742 () Bool)

(assert (=> b!5225853 (= e!3252448 tp!1464742)))

(assert (= (and b!5224583 ((_ is ElementMatch!14815) (regTwo!30142 (regOne!30142 r!7292)))) b!5225851))

(assert (= (and b!5224583 ((_ is Concat!23660) (regTwo!30142 (regOne!30142 r!7292)))) b!5225852))

(assert (= (and b!5224583 ((_ is Star!14815) (regTwo!30142 (regOne!30142 r!7292)))) b!5225853))

(assert (= (and b!5224583 ((_ is Union!14815) (regTwo!30142 (regOne!30142 r!7292)))) b!5225854))

(declare-fun b!5225858 () Bool)

(declare-fun e!3252449 () Bool)

(declare-fun tp!1464751 () Bool)

(declare-fun tp!1464748 () Bool)

(assert (=> b!5225858 (= e!3252449 (and tp!1464751 tp!1464748))))

(assert (=> b!5224584 (= tp!1464382 e!3252449)))

(declare-fun b!5225855 () Bool)

(assert (=> b!5225855 (= e!3252449 tp_is_empty!38883)))

(declare-fun b!5225856 () Bool)

(declare-fun tp!1464749 () Bool)

(declare-fun tp!1464750 () Bool)

(assert (=> b!5225856 (= e!3252449 (and tp!1464749 tp!1464750))))

(declare-fun b!5225857 () Bool)

(declare-fun tp!1464747 () Bool)

(assert (=> b!5225857 (= e!3252449 tp!1464747)))

(assert (= (and b!5224584 ((_ is ElementMatch!14815) (reg!15144 (regOne!30142 r!7292)))) b!5225855))

(assert (= (and b!5224584 ((_ is Concat!23660) (reg!15144 (regOne!30142 r!7292)))) b!5225856))

(assert (= (and b!5224584 ((_ is Star!14815) (reg!15144 (regOne!30142 r!7292)))) b!5225857))

(assert (= (and b!5224584 ((_ is Union!14815) (reg!15144 (regOne!30142 r!7292)))) b!5225858))

(declare-fun b_lambda!202057 () Bool)

(assert (= b_lambda!202047 (or d!1684199 b_lambda!202057)))

(declare-fun bs!1213451 () Bool)

(declare-fun d!1684851 () Bool)

(assert (= bs!1213451 (and d!1684851 d!1684199)))

(assert (=> bs!1213451 (= (dynLambda!23955 lambda!262266 (h!67068 (exprs!4699 setElem!33241))) (validRegex!6551 (h!67068 (exprs!4699 setElem!33241))))))

(declare-fun m!6272646 () Bool)

(assert (=> bs!1213451 m!6272646))

(assert (=> b!5225497 d!1684851))

(declare-fun b_lambda!202059 () Bool)

(assert (= b_lambda!202055 (or b!5223802 b_lambda!202059)))

(assert (=> d!1684845 d!1684293))

(declare-fun b_lambda!202061 () Bool)

(assert (= b_lambda!202043 (or b!5223802 b_lambda!202061)))

(assert (=> d!1684639 d!1684291))

(declare-fun b_lambda!202063 () Bool)

(assert (= b_lambda!202045 (or d!1684213 b_lambda!202063)))

(declare-fun bs!1213452 () Bool)

(declare-fun d!1684853 () Bool)

(assert (= bs!1213452 (and d!1684853 d!1684213)))

(assert (=> bs!1213452 (= (dynLambda!23955 lambda!262278 (h!67068 lt!2144154)) (validRegex!6551 (h!67068 lt!2144154)))))

(declare-fun m!6272648 () Bool)

(assert (=> bs!1213452 m!6272648))

(assert (=> b!5225408 d!1684853))

(declare-fun b_lambda!202065 () Bool)

(assert (= b_lambda!202051 (or d!1684191 b_lambda!202065)))

(declare-fun bs!1213453 () Bool)

(declare-fun d!1684855 () Bool)

(assert (= bs!1213453 (and d!1684855 d!1684191)))

(assert (=> bs!1213453 (= (dynLambda!23955 lambda!262263 (h!67068 (exprs!4699 (h!67070 zl!343)))) (validRegex!6551 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(declare-fun m!6272650 () Bool)

(assert (=> bs!1213453 m!6272650))

(assert (=> b!5225572 d!1684855))

(declare-fun b_lambda!202067 () Bool)

(assert (= b_lambda!202049 (or d!1684243 b_lambda!202067)))

(declare-fun bs!1213454 () Bool)

(declare-fun d!1684857 () Bool)

(assert (= bs!1213454 (and d!1684857 d!1684243)))

(assert (=> bs!1213454 (= (dynLambda!23955 lambda!262282 (h!67068 (exprs!4699 (h!67070 zl!343)))) (validRegex!6551 (h!67068 (exprs!4699 (h!67070 zl!343)))))))

(assert (=> bs!1213454 m!6272650))

(assert (=> b!5225526 d!1684857))

(declare-fun b_lambda!202069 () Bool)

(assert (= b_lambda!202053 (or b!5223802 b_lambda!202069)))

(assert (=> d!1684791 d!1684295))

(declare-fun b_lambda!202071 () Bool)

(assert (= b_lambda!202041 (or d!1684211 b_lambda!202071)))

(declare-fun bs!1213455 () Bool)

(declare-fun d!1684859 () Bool)

(assert (= bs!1213455 (and d!1684859 d!1684211)))

(assert (=> bs!1213455 (= (dynLambda!23955 lambda!262275 (h!67068 (unfocusZipperList!257 zl!343))) (validRegex!6551 (h!67068 (unfocusZipperList!257 zl!343))))))

(declare-fun m!6272652 () Bool)

(assert (=> bs!1213455 m!6272652))

(assert (=> b!5225253 d!1684859))

(check-sat (not b!5225429) (not b!5225482) (not d!1684673) (not d!1684641) (not b!5225752) (not b!5225771) (not d!1684639) (not b!5225779) (not bm!369145) (not b!5225351) (not b_lambda!202065) (not d!1684731) (not d!1684617) (not b!5225264) (not d!1684615) (not b!5225799) (not b!5225842) (not b!5225268) (not bm!369123) (not d!1684795) (not b!5225672) (not bm!369162) (not b!5225838) (not bm!369144) (not bm!369171) (not b!5225420) (not d!1684811) (not bm!369197) (not b_lambda!202069) (not b!5225718) (not b!5225485) (not bm!369218) (not b!5225780) (not bs!1213453) (not d!1684801) (not b!5225777) (not b!5225737) (not b!5225750) (not b!5225812) (not b!5225758) (not d!1684737) (not bm!369133) (not d!1684685) (not b!5225365) (not b!5225807) (not b!5225550) (not b!5225551) (not b!5225448) (not b!5225766) (not d!1684651) (not b!5225687) (not bm!369243) (not b!5225328) (not b!5225801) (not bm!369223) (not b!5225307) (not b!5225263) (not b!5225419) (not b!5225831) (not d!1684719) (not b!5225751) (not b!5225837) (not b!5225539) (not b!5225597) (not b!5225638) (not b!5225412) (not b!5225306) (not b!5225257) (not b!5225689) (not d!1684601) (not d!1684791) (not d!1684823) (not bm!369224) (not b!5225794) (not bm!369174) (not b!5225524) (not b!5225329) (not b!5225671) (not d!1684747) (not bm!369167) (not b!5225254) (not d!1684625) (not b!5225679) (not b!5225486) (not b!5225816) (not d!1684779) (not b!5225813) (not b!5225820) (not d!1684841) (not b!5225852) (not b!5225774) (not b!5225856) (not bm!369141) (not b!5225844) (not setNonEmpty!33256) (not bm!369121) (not d!1684623) (not bm!369187) (not b!5225759) (not bm!369180) (not b!5225626) (not bm!369203) (not b!5225653) (not b!5225767) (not b!5225332) (not b!5225458) (not bm!369177) (not d!1684633) (not d!1684793) (not d!1684693) (not b!5225428) (not d!1684649) (not bm!369229) (not b!5225835) (not b!5225705) (not bm!369157) (not b!5225291) (not bm!369192) (not b!5225833) (not d!1684739) (not b!5225754) (not bm!369131) (not d!1684809) (not b!5225457) (not bs!1213455) (not b!5225745) (not d!1684849) (not b!5225684) (not b!5225624) (not b!5225552) (not b!5225647) (not d!1684583) (not b!5225451) (not bm!369214) (not b!5225695) (not bm!369128) (not b_lambda!202005) (not d!1684683) (not b!5225406) (not b!5225480) (not bm!369143) (not b!5225321) (not bm!369238) (not bm!369198) (not b_lambda!202063) (not b!5225776) (not bs!1213451) (not bm!369179) (not b!5225825) (not b!5225781) (not b!5225265) (not b!5225792) (not b!5225447) (not bm!369191) (not b!5225690) (not d!1684695) (not b!5225460) (not b!5225854) (not b!5225639) (not b!5225836) (not bm!369244) (not b!5225357) (not bm!369237) (not b_lambda!202071) (not d!1684681) (not b!5225575) (not b!5225645) (not b!5225528) (not d!1684613) (not b!5225350) (not b!5225522) (not b!5225685) (not b!5225808) (not d!1684627) (not d!1684669) (not bm!369158) (not b!5225297) (not b!5225760) (not b!5225364) (not b!5225665) (not b!5225678) (not b!5225667) (not b!5225573) (not bm!369140) (not b!5225513) (not bm!369130) tp_is_empty!38883 (not b!5225763) (not b!5225308) (not d!1684807) (not b!5225427) (not bm!369207) (not b!5225570) (not b!5225363) (not d!1684609) (not b!5225646) (not bm!369233) (not b!5225295) (not bm!369161) (not b!5225641) (not d!1684821) (not b!5225828) (not b!5225747) (not b!5225344) (not bm!369231) (not b!5225845) (not bm!369173) (not b!5225470) (not b!5225827) (not bm!369154) (not bm!369185) (not b_lambda!202061) (not b!5225772) (not b!5225853) (not b!5225811) (not b!5225796) (not b!5225413) (not b!5225755) (not bm!369232) (not bm!369228) (not b!5225849) (not bm!369129) (not d!1684629) (not d!1684755) (not b!5225527) (not b!5225637) (not d!1684761) (not b_lambda!202059) (not d!1684661) (not b!5225815) (not b!5225525) (not d!1684805) (not b!5225389) (not b!5225756) (not b!5225669) (not d!1684847) (not bm!369215) (not d!1684679) (not bm!369159) (not b!5225848) (not bs!1213452) (not b!5225823) (not b!5225666) (not bm!369222) (not b!5225786) (not b!5225498) (not bm!369135) (not b!5225459) (not d!1684675) (not b!5225775) (not bm!369216) (not b!5225697) (not bm!369186) (not b!5225296) (not d!1684759) (not b!5225643) (not d!1684687) (not bm!369166) (not bm!369217) (not d!1684749) (not bm!369202) (not b!5225829) (not b!5225368) (not bm!369209) (not b!5225850) (not bm!369208) (not b!5225680) (not bs!1213454) (not bm!369200) (not b!5225668) (not b!5225821) (not d!1684839) (not b!5225247) (not b!5225768) (not b!5225762) (not b!5225791) (not bm!369230) (not bm!369181) (not b!5225654) (not bm!369120) (not b!5225784) (not b!5225581) (not b!5225576) (not b!5225819) (not bm!369210) (not b!5225789) (not b!5225770) (not b!5225706) (not bm!369239) (not b!5225320) (not bm!369193) (not b!5225598) (not d!1684677) (not bm!369176) (not b!5225764) (not bm!369134) (not b!5225691) (not b!5225748) (not b!5225593) (not b!5225356) (not d!1684785) (not b!5225327) (not b!5225616) (not d!1684751) (not d!1684715) (not b_lambda!202067) (not d!1684721) (not b_lambda!202007) (not b!5225846) (not d!1684845) (not d!1684689) (not b!5225614) (not d!1684699) (not b!5225743) (not b!5225577) (not b!5225809) (not b!5225409) (not d!1684819) (not b!5225625) (not d!1684833) (not b!5225800) (not d!1684619) (not b!5225692) (not b!5225602) (not b!5225729) (not b!5225857) (not b!5225790) (not b!5225474) (not b!5225832) (not d!1684813) (not d!1684777) (not bm!369164) (not setNonEmpty!33258) (not b!5225824) (not d!1684611) (not d!1684599) (not d!1684829) (not b!5225452) (not b!5225256) (not b!5225805) (not b!5225683) (not b!5225462) (not b!5225817) (not b!5225783) (not b!5225858) (not b!5225340) (not b_lambda!202003) (not b!5225574) (not bm!369172) (not bm!369165) (not b!5225346) (not d!1684665) (not b!5225454) (not bm!369139) (not b!5225345) (not b!5225481) (not d!1684803) (not b_lambda!202057) (not b!5225787) (not b!5225298) (not setNonEmpty!33257) (not b!5225707) (not b!5225798) (not bm!369132) (not b!5225803) (not d!1684799) (not b!5225841) (not b!5225804) (not b!5225840) (not d!1684701) (not b!5225473) (not setNonEmpty!33259) (not b!5225785) (not b!5225746) (not b!5225596) (not b!5225594) (not bm!369201) (not b!5225290) (not b!5225795))
(check-sat)
