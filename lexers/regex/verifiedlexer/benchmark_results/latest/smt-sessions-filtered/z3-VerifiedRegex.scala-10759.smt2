; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549898 () Bool)

(assert start!549898)

(declare-fun b!5197179 () Bool)

(assert (=> b!5197179 true))

(assert (=> b!5197179 true))

(declare-fun lambda!260148 () Int)

(declare-fun lambda!260147 () Int)

(assert (=> b!5197179 (not (= lambda!260148 lambda!260147))))

(assert (=> b!5197179 true))

(assert (=> b!5197179 true))

(declare-fun b!5197194 () Bool)

(assert (=> b!5197194 true))

(declare-fun res!2207712 () Bool)

(declare-fun e!3236632 () Bool)

(assert (=> start!549898 (=> (not res!2207712) (not e!3236632))))

(declare-datatypes ((C!29800 0))(
  ( (C!29801 (val!24602 Int)) )
))
(declare-datatypes ((Regex!14765 0))(
  ( (ElementMatch!14765 (c!895756 C!29800)) (Concat!23610 (regOne!30042 Regex!14765) (regTwo!30042 Regex!14765)) (EmptyExpr!14765) (Star!14765 (reg!15094 Regex!14765)) (EmptyLang!14765) (Union!14765 (regOne!30043 Regex!14765) (regTwo!30043 Regex!14765)) )
))
(declare-fun r!7292 () Regex!14765)

(declare-fun validRegex!6501 (Regex!14765) Bool)

(assert (=> start!549898 (= res!2207712 (validRegex!6501 r!7292))))

(assert (=> start!549898 e!3236632))

(declare-fun e!3236637 () Bool)

(assert (=> start!549898 e!3236637))

(declare-fun condSetEmpty!32914 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60594 0))(
  ( (Nil!60470) (Cons!60470 (h!66918 Regex!14765) (t!373747 List!60594)) )
))
(declare-datatypes ((Context!8298 0))(
  ( (Context!8299 (exprs!4649 List!60594)) )
))
(declare-fun z!1189 () (InoxSet Context!8298))

(assert (=> start!549898 (= condSetEmpty!32914 (= z!1189 ((as const (Array Context!8298 Bool)) false)))))

(declare-fun setRes!32914 () Bool)

(assert (=> start!549898 setRes!32914))

(declare-fun e!3236630 () Bool)

(assert (=> start!549898 e!3236630))

(declare-fun e!3236635 () Bool)

(assert (=> start!549898 e!3236635))

(declare-fun e!3236636 () Bool)

(declare-fun b!5197175 () Bool)

(declare-fun tp!1457950 () Bool)

(declare-datatypes ((List!60595 0))(
  ( (Nil!60471) (Cons!60471 (h!66919 Context!8298) (t!373748 List!60595)) )
))
(declare-fun zl!343 () List!60595)

(declare-fun inv!80159 (Context!8298) Bool)

(assert (=> b!5197175 (= e!3236630 (and (inv!80159 (h!66919 zl!343)) e!3236636 tp!1457950))))

(declare-fun b!5197176 () Bool)

(declare-fun tp!1457955 () Bool)

(assert (=> b!5197176 (= e!3236637 tp!1457955)))

(declare-fun b!5197177 () Bool)

(declare-fun tp!1457957 () Bool)

(declare-fun tp!1457952 () Bool)

(assert (=> b!5197177 (= e!3236637 (and tp!1457957 tp!1457952))))

(declare-fun b!5197178 () Bool)

(declare-fun e!3236631 () Bool)

(declare-fun e!3236633 () Bool)

(assert (=> b!5197178 (= e!3236631 e!3236633)))

(declare-fun res!2207713 () Bool)

(assert (=> b!5197178 (=> res!2207713 e!3236633)))

(declare-fun lt!2139266 () (InoxSet Context!8298))

(declare-fun lt!2139272 () (InoxSet Context!8298))

(assert (=> b!5197178 (= res!2207713 (not (= lt!2139266 lt!2139272)))))

(declare-datatypes ((List!60596 0))(
  ( (Nil!60472) (Cons!60472 (h!66920 C!29800) (t!373749 List!60596)) )
))
(declare-fun s!2326 () List!60596)

(declare-fun derivationStepZipperDown!214 (Regex!14765 Context!8298 C!29800) (InoxSet Context!8298))

(assert (=> b!5197178 (= lt!2139272 (derivationStepZipperDown!214 r!7292 (Context!8299 Nil!60470) (h!66920 s!2326)))))

(declare-fun derivationStepZipperUp!137 (Context!8298 C!29800) (InoxSet Context!8298))

(assert (=> b!5197178 (= lt!2139266 (derivationStepZipperUp!137 (Context!8299 (Cons!60470 r!7292 Nil!60470)) (h!66920 s!2326)))))

(declare-fun e!3236629 () Bool)

(assert (=> b!5197179 (= e!3236629 e!3236631)))

(declare-fun res!2207710 () Bool)

(assert (=> b!5197179 (=> res!2207710 e!3236631)))

(declare-fun lt!2139274 () Bool)

(declare-fun lt!2139263 () Bool)

(get-info :version)

(assert (=> b!5197179 (= res!2207710 (or (not (= lt!2139274 lt!2139263)) ((_ is Nil!60472) s!2326)))))

(declare-fun Exists!1946 (Int) Bool)

(assert (=> b!5197179 (= (Exists!1946 lambda!260147) (Exists!1946 lambda!260148))))

(declare-datatypes ((Unit!152364 0))(
  ( (Unit!152365) )
))
(declare-fun lt!2139273 () Unit!152364)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!600 (Regex!14765 Regex!14765 List!60596) Unit!152364)

(assert (=> b!5197179 (= lt!2139273 (lemmaExistCutMatchRandMatchRSpecEquivalent!600 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326))))

(assert (=> b!5197179 (= lt!2139263 (Exists!1946 lambda!260147))))

(declare-datatypes ((tuple2!63928 0))(
  ( (tuple2!63929 (_1!35267 List!60596) (_2!35267 List!60596)) )
))
(declare-datatypes ((Option!14876 0))(
  ( (None!14875) (Some!14875 (v!50904 tuple2!63928)) )
))
(declare-fun isDefined!11579 (Option!14876) Bool)

(declare-fun findConcatSeparation!1290 (Regex!14765 Regex!14765 List!60596 List!60596 List!60596) Option!14876)

(assert (=> b!5197179 (= lt!2139263 (isDefined!11579 (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) Nil!60472 s!2326 s!2326)))))

(declare-fun lt!2139261 () Unit!152364)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1054 (Regex!14765 Regex!14765 List!60596) Unit!152364)

(assert (=> b!5197179 (= lt!2139261 (lemmaFindConcatSeparationEquivalentToExists!1054 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326))))

(declare-fun b!5197180 () Bool)

(declare-fun tp!1457948 () Bool)

(assert (=> b!5197180 (= e!3236636 tp!1457948)))

(declare-fun b!5197181 () Bool)

(declare-fun res!2207716 () Bool)

(assert (=> b!5197181 (=> res!2207716 e!3236629)))

(declare-fun generalisedConcat!434 (List!60594) Regex!14765)

(assert (=> b!5197181 (= res!2207716 (not (= r!7292 (generalisedConcat!434 (exprs!4649 (h!66919 zl!343))))))))

(declare-fun b!5197182 () Bool)

(declare-fun res!2207708 () Bool)

(assert (=> b!5197182 (=> (not res!2207708) (not e!3236632))))

(declare-fun toList!8549 ((InoxSet Context!8298)) List!60595)

(assert (=> b!5197182 (= res!2207708 (= (toList!8549 z!1189) zl!343))))

(declare-fun setNonEmpty!32914 () Bool)

(declare-fun e!3236628 () Bool)

(declare-fun tp!1457951 () Bool)

(declare-fun setElem!32914 () Context!8298)

(assert (=> setNonEmpty!32914 (= setRes!32914 (and tp!1457951 (inv!80159 setElem!32914) e!3236628))))

(declare-fun setRest!32914 () (InoxSet Context!8298))

(assert (=> setNonEmpty!32914 (= z!1189 ((_ map or) (store ((as const (Array Context!8298 Bool)) false) setElem!32914 true) setRest!32914))))

(declare-fun b!5197183 () Bool)

(assert (=> b!5197183 (= e!3236632 (not e!3236629))))

(declare-fun res!2207706 () Bool)

(assert (=> b!5197183 (=> res!2207706 e!3236629)))

(assert (=> b!5197183 (= res!2207706 (not ((_ is Cons!60471) zl!343)))))

(declare-fun matchRSpec!1868 (Regex!14765 List!60596) Bool)

(assert (=> b!5197183 (= lt!2139274 (matchRSpec!1868 r!7292 s!2326))))

(declare-fun matchR!6950 (Regex!14765 List!60596) Bool)

(assert (=> b!5197183 (= lt!2139274 (matchR!6950 r!7292 s!2326))))

(declare-fun lt!2139264 () Unit!152364)

(declare-fun mainMatchTheorem!1868 (Regex!14765 List!60596) Unit!152364)

(assert (=> b!5197183 (= lt!2139264 (mainMatchTheorem!1868 r!7292 s!2326))))

(declare-fun b!5197184 () Bool)

(declare-fun res!2207709 () Bool)

(assert (=> b!5197184 (=> res!2207709 e!3236629)))

(declare-fun isEmpty!32386 (List!60595) Bool)

(assert (=> b!5197184 (= res!2207709 (not (isEmpty!32386 (t!373748 zl!343))))))

(declare-fun b!5197185 () Bool)

(declare-fun res!2207711 () Bool)

(assert (=> b!5197185 (=> res!2207711 e!3236629)))

(assert (=> b!5197185 (= res!2207711 (not ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343)))))))

(declare-fun b!5197186 () Bool)

(declare-fun tp!1457953 () Bool)

(assert (=> b!5197186 (= e!3236628 tp!1457953)))

(declare-fun b!5197187 () Bool)

(declare-fun res!2207715 () Bool)

(assert (=> b!5197187 (=> res!2207715 e!3236629)))

(declare-fun generalisedUnion!694 (List!60594) Regex!14765)

(declare-fun unfocusZipperList!207 (List!60595) List!60594)

(assert (=> b!5197187 (= res!2207715 (not (= r!7292 (generalisedUnion!694 (unfocusZipperList!207 zl!343)))))))

(declare-fun b!5197188 () Bool)

(declare-fun tp!1457956 () Bool)

(declare-fun tp!1457954 () Bool)

(assert (=> b!5197188 (= e!3236637 (and tp!1457956 tp!1457954))))

(declare-fun b!5197189 () Bool)

(declare-fun res!2207707 () Bool)

(assert (=> b!5197189 (=> res!2207707 e!3236631)))

(declare-fun isEmpty!32387 (List!60594) Bool)

(assert (=> b!5197189 (= res!2207707 (not (isEmpty!32387 (t!373747 (exprs!4649 (h!66919 zl!343))))))))

(declare-fun b!5197190 () Bool)

(declare-fun e!3236634 () Bool)

(assert (=> b!5197190 (= e!3236634 (validRegex!6501 (regTwo!30042 r!7292)))))

(declare-fun lt!2139271 () (InoxSet Context!8298))

(declare-fun lt!2139270 () Context!8298)

(assert (=> b!5197190 (= lt!2139271 (derivationStepZipperDown!214 (regOne!30042 r!7292) lt!2139270 (h!66920 s!2326)))))

(declare-fun lambda!260149 () Int)

(declare-fun lt!2139268 () (InoxSet Context!8298))

(declare-fun flatMap!496 ((InoxSet Context!8298) Int) (InoxSet Context!8298))

(assert (=> b!5197190 (= (flatMap!496 lt!2139268 lambda!260149) (derivationStepZipperUp!137 lt!2139270 (h!66920 s!2326)))))

(declare-fun lt!2139260 () Unit!152364)

(declare-fun lemmaFlatMapOnSingletonSet!28 ((InoxSet Context!8298) Context!8298 Int) Unit!152364)

(assert (=> b!5197190 (= lt!2139260 (lemmaFlatMapOnSingletonSet!28 lt!2139268 lt!2139270 lambda!260149))))

(declare-fun lt!2139262 () (InoxSet Context!8298))

(declare-fun lt!2139269 () Context!8298)

(assert (=> b!5197190 (= (flatMap!496 lt!2139262 lambda!260149) (derivationStepZipperUp!137 lt!2139269 (h!66920 s!2326)))))

(declare-fun lt!2139258 () Unit!152364)

(assert (=> b!5197190 (= lt!2139258 (lemmaFlatMapOnSingletonSet!28 lt!2139262 lt!2139269 lambda!260149))))

(declare-fun lt!2139259 () (InoxSet Context!8298))

(assert (=> b!5197190 (= lt!2139259 (derivationStepZipperUp!137 lt!2139270 (h!66920 s!2326)))))

(declare-fun lt!2139267 () (InoxSet Context!8298))

(assert (=> b!5197190 (= lt!2139267 (derivationStepZipperUp!137 lt!2139269 (h!66920 s!2326)))))

(assert (=> b!5197190 (= lt!2139268 (store ((as const (Array Context!8298 Bool)) false) lt!2139270 true))))

(declare-fun lt!2139265 () List!60594)

(assert (=> b!5197190 (= lt!2139270 (Context!8299 lt!2139265))))

(assert (=> b!5197190 (= lt!2139262 (store ((as const (Array Context!8298 Bool)) false) lt!2139269 true))))

(assert (=> b!5197190 (= lt!2139269 (Context!8299 (Cons!60470 (regOne!30042 r!7292) lt!2139265)))))

(assert (=> b!5197190 (= lt!2139265 (Cons!60470 (regTwo!30042 r!7292) Nil!60470))))

(declare-fun setIsEmpty!32914 () Bool)

(assert (=> setIsEmpty!32914 setRes!32914))

(declare-fun b!5197191 () Bool)

(declare-fun res!2207717 () Bool)

(assert (=> b!5197191 (=> (not res!2207717) (not e!3236632))))

(declare-fun unfocusZipper!507 (List!60595) Regex!14765)

(assert (=> b!5197191 (= res!2207717 (= r!7292 (unfocusZipper!507 zl!343)))))

(declare-fun b!5197192 () Bool)

(declare-fun tp_is_empty!38783 () Bool)

(declare-fun tp!1457949 () Bool)

(assert (=> b!5197192 (= e!3236635 (and tp_is_empty!38783 tp!1457949))))

(declare-fun b!5197193 () Bool)

(declare-fun res!2207718 () Bool)

(assert (=> b!5197193 (=> res!2207718 e!3236629)))

(assert (=> b!5197193 (= res!2207718 (or ((_ is EmptyExpr!14765) r!7292) ((_ is EmptyLang!14765) r!7292) ((_ is ElementMatch!14765) r!7292) ((_ is Union!14765) r!7292) (not ((_ is Concat!23610) r!7292))))))

(assert (=> b!5197194 (= e!3236633 e!3236634)))

(declare-fun res!2207714 () Bool)

(assert (=> b!5197194 (=> res!2207714 e!3236634)))

(declare-fun derivationStepZipper!1045 ((InoxSet Context!8298) C!29800) (InoxSet Context!8298))

(assert (=> b!5197194 (= res!2207714 (not (= (derivationStepZipper!1045 z!1189 (h!66920 s!2326)) lt!2139272)))))

(assert (=> b!5197194 (= (flatMap!496 z!1189 lambda!260149) (derivationStepZipperUp!137 (h!66919 zl!343) (h!66920 s!2326)))))

(declare-fun lt!2139275 () Unit!152364)

(assert (=> b!5197194 (= lt!2139275 (lemmaFlatMapOnSingletonSet!28 z!1189 (h!66919 zl!343) lambda!260149))))

(declare-fun b!5197195 () Bool)

(assert (=> b!5197195 (= e!3236637 tp_is_empty!38783)))

(assert (= (and start!549898 res!2207712) b!5197182))

(assert (= (and b!5197182 res!2207708) b!5197191))

(assert (= (and b!5197191 res!2207717) b!5197183))

(assert (= (and b!5197183 (not res!2207706)) b!5197184))

(assert (= (and b!5197184 (not res!2207709)) b!5197181))

(assert (= (and b!5197181 (not res!2207716)) b!5197185))

(assert (= (and b!5197185 (not res!2207711)) b!5197187))

(assert (= (and b!5197187 (not res!2207715)) b!5197193))

(assert (= (and b!5197193 (not res!2207718)) b!5197179))

(assert (= (and b!5197179 (not res!2207710)) b!5197189))

(assert (= (and b!5197189 (not res!2207707)) b!5197178))

(assert (= (and b!5197178 (not res!2207713)) b!5197194))

(assert (= (and b!5197194 (not res!2207714)) b!5197190))

(assert (= (and start!549898 ((_ is ElementMatch!14765) r!7292)) b!5197195))

(assert (= (and start!549898 ((_ is Concat!23610) r!7292)) b!5197188))

(assert (= (and start!549898 ((_ is Star!14765) r!7292)) b!5197176))

(assert (= (and start!549898 ((_ is Union!14765) r!7292)) b!5197177))

(assert (= (and start!549898 condSetEmpty!32914) setIsEmpty!32914))

(assert (= (and start!549898 (not condSetEmpty!32914)) setNonEmpty!32914))

(assert (= setNonEmpty!32914 b!5197186))

(assert (= b!5197175 b!5197180))

(assert (= (and start!549898 ((_ is Cons!60471) zl!343)) b!5197175))

(assert (= (and start!549898 ((_ is Cons!60472) s!2326)) b!5197192))

(declare-fun m!6250840 () Bool)

(assert (=> setNonEmpty!32914 m!6250840))

(declare-fun m!6250842 () Bool)

(assert (=> b!5197187 m!6250842))

(assert (=> b!5197187 m!6250842))

(declare-fun m!6250844 () Bool)

(assert (=> b!5197187 m!6250844))

(declare-fun m!6250846 () Bool)

(assert (=> start!549898 m!6250846))

(declare-fun m!6250848 () Bool)

(assert (=> b!5197182 m!6250848))

(declare-fun m!6250850 () Bool)

(assert (=> b!5197175 m!6250850))

(declare-fun m!6250852 () Bool)

(assert (=> b!5197181 m!6250852))

(declare-fun m!6250854 () Bool)

(assert (=> b!5197194 m!6250854))

(declare-fun m!6250856 () Bool)

(assert (=> b!5197194 m!6250856))

(declare-fun m!6250858 () Bool)

(assert (=> b!5197194 m!6250858))

(declare-fun m!6250860 () Bool)

(assert (=> b!5197194 m!6250860))

(declare-fun m!6250862 () Bool)

(assert (=> b!5197178 m!6250862))

(declare-fun m!6250864 () Bool)

(assert (=> b!5197178 m!6250864))

(declare-fun m!6250866 () Bool)

(assert (=> b!5197189 m!6250866))

(declare-fun m!6250868 () Bool)

(assert (=> b!5197183 m!6250868))

(declare-fun m!6250870 () Bool)

(assert (=> b!5197183 m!6250870))

(declare-fun m!6250872 () Bool)

(assert (=> b!5197183 m!6250872))

(declare-fun m!6250874 () Bool)

(assert (=> b!5197190 m!6250874))

(declare-fun m!6250876 () Bool)

(assert (=> b!5197190 m!6250876))

(declare-fun m!6250878 () Bool)

(assert (=> b!5197190 m!6250878))

(declare-fun m!6250880 () Bool)

(assert (=> b!5197190 m!6250880))

(declare-fun m!6250882 () Bool)

(assert (=> b!5197190 m!6250882))

(declare-fun m!6250884 () Bool)

(assert (=> b!5197190 m!6250884))

(declare-fun m!6250886 () Bool)

(assert (=> b!5197190 m!6250886))

(declare-fun m!6250888 () Bool)

(assert (=> b!5197190 m!6250888))

(declare-fun m!6250890 () Bool)

(assert (=> b!5197190 m!6250890))

(declare-fun m!6250892 () Bool)

(assert (=> b!5197190 m!6250892))

(declare-fun m!6250894 () Bool)

(assert (=> b!5197184 m!6250894))

(declare-fun m!6250896 () Bool)

(assert (=> b!5197191 m!6250896))

(declare-fun m!6250898 () Bool)

(assert (=> b!5197179 m!6250898))

(assert (=> b!5197179 m!6250898))

(declare-fun m!6250900 () Bool)

(assert (=> b!5197179 m!6250900))

(declare-fun m!6250902 () Bool)

(assert (=> b!5197179 m!6250902))

(declare-fun m!6250904 () Bool)

(assert (=> b!5197179 m!6250904))

(declare-fun m!6250906 () Bool)

(assert (=> b!5197179 m!6250906))

(assert (=> b!5197179 m!6250900))

(declare-fun m!6250908 () Bool)

(assert (=> b!5197179 m!6250908))

(check-sat (not b!5197182) (not b!5197177) (not b!5197181) (not b!5197194) (not b!5197183) (not b!5197190) (not b!5197186) (not b!5197188) (not b!5197189) (not b!5197175) (not b!5197179) (not b!5197192) (not b!5197178) (not b!5197187) (not b!5197176) (not setNonEmpty!32914) (not b!5197184) tp_is_empty!38783 (not b!5197191) (not b!5197180) (not start!549898))
(check-sat)
(get-model)

(declare-fun bs!1209008 () Bool)

(declare-fun b!5197308 () Bool)

(assert (= bs!1209008 (and b!5197308 b!5197179)))

(declare-fun lambda!260160 () Int)

(assert (=> bs!1209008 (not (= lambda!260160 lambda!260147))))

(assert (=> bs!1209008 (not (= lambda!260160 lambda!260148))))

(assert (=> b!5197308 true))

(assert (=> b!5197308 true))

(declare-fun bs!1209009 () Bool)

(declare-fun b!5197310 () Bool)

(assert (= bs!1209009 (and b!5197310 b!5197179)))

(declare-fun lambda!260161 () Int)

(assert (=> bs!1209009 (not (= lambda!260161 lambda!260147))))

(assert (=> bs!1209009 (= lambda!260161 lambda!260148)))

(declare-fun bs!1209010 () Bool)

(assert (= bs!1209010 (and b!5197310 b!5197308)))

(assert (=> bs!1209010 (not (= lambda!260161 lambda!260160))))

(assert (=> b!5197310 true))

(assert (=> b!5197310 true))

(declare-fun bm!365338 () Bool)

(declare-fun call!365344 () Bool)

(declare-fun isEmpty!32388 (List!60596) Bool)

(assert (=> bm!365338 (= call!365344 (isEmpty!32388 s!2326))))

(declare-fun b!5197307 () Bool)

(declare-fun e!3236701 () Bool)

(declare-fun e!3236702 () Bool)

(assert (=> b!5197307 (= e!3236701 e!3236702)))

(declare-fun res!2207747 () Bool)

(assert (=> b!5197307 (= res!2207747 (not ((_ is EmptyLang!14765) r!7292)))))

(assert (=> b!5197307 (=> (not res!2207747) (not e!3236702))))

(declare-fun bm!365339 () Bool)

(declare-fun c!895799 () Bool)

(declare-fun call!365343 () Bool)

(assert (=> bm!365339 (= call!365343 (Exists!1946 (ite c!895799 lambda!260160 lambda!260161)))))

(declare-fun b!5197309 () Bool)

(declare-fun c!895796 () Bool)

(assert (=> b!5197309 (= c!895796 ((_ is Union!14765) r!7292))))

(declare-fun e!3236699 () Bool)

(declare-fun e!3236703 () Bool)

(assert (=> b!5197309 (= e!3236699 e!3236703)))

(declare-fun e!3236704 () Bool)

(assert (=> b!5197310 (= e!3236704 call!365343)))

(declare-fun b!5197311 () Bool)

(assert (=> b!5197311 (= e!3236703 e!3236704)))

(assert (=> b!5197311 (= c!895799 ((_ is Star!14765) r!7292))))

(declare-fun b!5197312 () Bool)

(declare-fun res!2207748 () Bool)

(declare-fun e!3236700 () Bool)

(assert (=> b!5197312 (=> res!2207748 e!3236700)))

(assert (=> b!5197312 (= res!2207748 call!365344)))

(assert (=> b!5197312 (= e!3236704 e!3236700)))

(declare-fun b!5197313 () Bool)

(declare-fun e!3236698 () Bool)

(assert (=> b!5197313 (= e!3236703 e!3236698)))

(declare-fun res!2207746 () Bool)

(assert (=> b!5197313 (= res!2207746 (matchRSpec!1868 (regOne!30043 r!7292) s!2326))))

(assert (=> b!5197313 (=> res!2207746 e!3236698)))

(declare-fun b!5197314 () Bool)

(assert (=> b!5197314 (= e!3236699 (= s!2326 (Cons!60472 (c!895756 r!7292) Nil!60472)))))

(declare-fun b!5197315 () Bool)

(assert (=> b!5197315 (= e!3236701 call!365344)))

(assert (=> b!5197308 (= e!3236700 call!365343)))

(declare-fun d!1677318 () Bool)

(declare-fun c!895797 () Bool)

(assert (=> d!1677318 (= c!895797 ((_ is EmptyExpr!14765) r!7292))))

(assert (=> d!1677318 (= (matchRSpec!1868 r!7292 s!2326) e!3236701)))

(declare-fun b!5197316 () Bool)

(declare-fun c!895798 () Bool)

(assert (=> b!5197316 (= c!895798 ((_ is ElementMatch!14765) r!7292))))

(assert (=> b!5197316 (= e!3236702 e!3236699)))

(declare-fun b!5197317 () Bool)

(assert (=> b!5197317 (= e!3236698 (matchRSpec!1868 (regTwo!30043 r!7292) s!2326))))

(assert (= (and d!1677318 c!895797) b!5197315))

(assert (= (and d!1677318 (not c!895797)) b!5197307))

(assert (= (and b!5197307 res!2207747) b!5197316))

(assert (= (and b!5197316 c!895798) b!5197314))

(assert (= (and b!5197316 (not c!895798)) b!5197309))

(assert (= (and b!5197309 c!895796) b!5197313))

(assert (= (and b!5197309 (not c!895796)) b!5197311))

(assert (= (and b!5197313 (not res!2207746)) b!5197317))

(assert (= (and b!5197311 c!895799) b!5197312))

(assert (= (and b!5197311 (not c!895799)) b!5197310))

(assert (= (and b!5197312 (not res!2207748)) b!5197308))

(assert (= (or b!5197308 b!5197310) bm!365339))

(assert (= (or b!5197315 b!5197312) bm!365338))

(declare-fun m!6250944 () Bool)

(assert (=> bm!365338 m!6250944))

(declare-fun m!6250946 () Bool)

(assert (=> bm!365339 m!6250946))

(declare-fun m!6250950 () Bool)

(assert (=> b!5197313 m!6250950))

(declare-fun m!6250952 () Bool)

(assert (=> b!5197317 m!6250952))

(assert (=> b!5197183 d!1677318))

(declare-fun b!5197401 () Bool)

(declare-fun e!3236764 () Bool)

(declare-fun head!11142 (List!60596) C!29800)

(assert (=> b!5197401 (= e!3236764 (not (= (head!11142 s!2326) (c!895756 r!7292))))))

(declare-fun b!5197402 () Bool)

(declare-fun e!3236761 () Bool)

(assert (=> b!5197402 (= e!3236761 e!3236764)))

(declare-fun res!2207794 () Bool)

(assert (=> b!5197402 (=> res!2207794 e!3236764)))

(declare-fun call!365370 () Bool)

(assert (=> b!5197402 (= res!2207794 call!365370)))

(declare-fun b!5197403 () Bool)

(declare-fun res!2207791 () Bool)

(declare-fun e!3236762 () Bool)

(assert (=> b!5197403 (=> (not res!2207791) (not e!3236762))))

(declare-fun tail!10239 (List!60596) List!60596)

(assert (=> b!5197403 (= res!2207791 (isEmpty!32388 (tail!10239 s!2326)))))

(declare-fun b!5197404 () Bool)

(declare-fun e!3236765 () Bool)

(declare-fun nullable!4936 (Regex!14765) Bool)

(assert (=> b!5197404 (= e!3236765 (nullable!4936 r!7292))))

(declare-fun b!5197405 () Bool)

(declare-fun e!3236763 () Bool)

(declare-fun e!3236760 () Bool)

(assert (=> b!5197405 (= e!3236763 e!3236760)))

(declare-fun c!895821 () Bool)

(assert (=> b!5197405 (= c!895821 ((_ is EmptyLang!14765) r!7292))))

(declare-fun b!5197406 () Bool)

(declare-fun res!2207795 () Bool)

(assert (=> b!5197406 (=> res!2207795 e!3236764)))

(assert (=> b!5197406 (= res!2207795 (not (isEmpty!32388 (tail!10239 s!2326))))))

(declare-fun b!5197407 () Bool)

(declare-fun res!2207796 () Bool)

(assert (=> b!5197407 (=> (not res!2207796) (not e!3236762))))

(assert (=> b!5197407 (= res!2207796 (not call!365370))))

(declare-fun b!5197408 () Bool)

(declare-fun e!3236759 () Bool)

(assert (=> b!5197408 (= e!3236759 e!3236761)))

(declare-fun res!2207792 () Bool)

(assert (=> b!5197408 (=> (not res!2207792) (not e!3236761))))

(declare-fun lt!2139294 () Bool)

(assert (=> b!5197408 (= res!2207792 (not lt!2139294))))

(declare-fun bm!365365 () Bool)

(assert (=> bm!365365 (= call!365370 (isEmpty!32388 s!2326))))

(declare-fun b!5197409 () Bool)

(assert (=> b!5197409 (= e!3236763 (= lt!2139294 call!365370))))

(declare-fun b!5197410 () Bool)

(assert (=> b!5197410 (= e!3236762 (= (head!11142 s!2326) (c!895756 r!7292)))))

(declare-fun b!5197412 () Bool)

(declare-fun res!2207790 () Bool)

(assert (=> b!5197412 (=> res!2207790 e!3236759)))

(assert (=> b!5197412 (= res!2207790 e!3236762)))

(declare-fun res!2207793 () Bool)

(assert (=> b!5197412 (=> (not res!2207793) (not e!3236762))))

(assert (=> b!5197412 (= res!2207793 lt!2139294)))

(declare-fun b!5197413 () Bool)

(assert (=> b!5197413 (= e!3236760 (not lt!2139294))))

(declare-fun b!5197414 () Bool)

(declare-fun res!2207797 () Bool)

(assert (=> b!5197414 (=> res!2207797 e!3236759)))

(assert (=> b!5197414 (= res!2207797 (not ((_ is ElementMatch!14765) r!7292)))))

(assert (=> b!5197414 (= e!3236760 e!3236759)))

(declare-fun b!5197411 () Bool)

(declare-fun derivativeStep!4033 (Regex!14765 C!29800) Regex!14765)

(assert (=> b!5197411 (= e!3236765 (matchR!6950 (derivativeStep!4033 r!7292 (head!11142 s!2326)) (tail!10239 s!2326)))))

(declare-fun d!1677332 () Bool)

(assert (=> d!1677332 e!3236763))

(declare-fun c!895823 () Bool)

(assert (=> d!1677332 (= c!895823 ((_ is EmptyExpr!14765) r!7292))))

(assert (=> d!1677332 (= lt!2139294 e!3236765)))

(declare-fun c!895822 () Bool)

(assert (=> d!1677332 (= c!895822 (isEmpty!32388 s!2326))))

(assert (=> d!1677332 (validRegex!6501 r!7292)))

(assert (=> d!1677332 (= (matchR!6950 r!7292 s!2326) lt!2139294)))

(assert (= (and d!1677332 c!895822) b!5197404))

(assert (= (and d!1677332 (not c!895822)) b!5197411))

(assert (= (and d!1677332 c!895823) b!5197409))

(assert (= (and d!1677332 (not c!895823)) b!5197405))

(assert (= (and b!5197405 c!895821) b!5197413))

(assert (= (and b!5197405 (not c!895821)) b!5197414))

(assert (= (and b!5197414 (not res!2207797)) b!5197412))

(assert (= (and b!5197412 res!2207793) b!5197407))

(assert (= (and b!5197407 res!2207796) b!5197403))

(assert (= (and b!5197403 res!2207791) b!5197410))

(assert (= (and b!5197412 (not res!2207790)) b!5197408))

(assert (= (and b!5197408 res!2207792) b!5197402))

(assert (= (and b!5197402 (not res!2207794)) b!5197406))

(assert (= (and b!5197406 (not res!2207795)) b!5197401))

(assert (= (or b!5197409 b!5197402 b!5197407) bm!365365))

(declare-fun m!6250996 () Bool)

(assert (=> b!5197406 m!6250996))

(assert (=> b!5197406 m!6250996))

(declare-fun m!6250998 () Bool)

(assert (=> b!5197406 m!6250998))

(declare-fun m!6251000 () Bool)

(assert (=> b!5197401 m!6251000))

(assert (=> b!5197411 m!6251000))

(assert (=> b!5197411 m!6251000))

(declare-fun m!6251002 () Bool)

(assert (=> b!5197411 m!6251002))

(assert (=> b!5197411 m!6250996))

(assert (=> b!5197411 m!6251002))

(assert (=> b!5197411 m!6250996))

(declare-fun m!6251004 () Bool)

(assert (=> b!5197411 m!6251004))

(assert (=> d!1677332 m!6250944))

(assert (=> d!1677332 m!6250846))

(declare-fun m!6251006 () Bool)

(assert (=> b!5197404 m!6251006))

(assert (=> bm!365365 m!6250944))

(assert (=> b!5197410 m!6251000))

(assert (=> b!5197403 m!6250996))

(assert (=> b!5197403 m!6250996))

(assert (=> b!5197403 m!6250998))

(assert (=> b!5197183 d!1677332))

(declare-fun d!1677354 () Bool)

(assert (=> d!1677354 (= (matchR!6950 r!7292 s!2326) (matchRSpec!1868 r!7292 s!2326))))

(declare-fun lt!2139306 () Unit!152364)

(declare-fun choose!38620 (Regex!14765 List!60596) Unit!152364)

(assert (=> d!1677354 (= lt!2139306 (choose!38620 r!7292 s!2326))))

(assert (=> d!1677354 (validRegex!6501 r!7292)))

(assert (=> d!1677354 (= (mainMatchTheorem!1868 r!7292 s!2326) lt!2139306)))

(declare-fun bs!1209019 () Bool)

(assert (= bs!1209019 d!1677354))

(assert (=> bs!1209019 m!6250870))

(assert (=> bs!1209019 m!6250868))

(declare-fun m!6251034 () Bool)

(assert (=> bs!1209019 m!6251034))

(assert (=> bs!1209019 m!6250846))

(assert (=> b!5197183 d!1677354))

(declare-fun b!5197468 () Bool)

(declare-fun e!3236802 () Bool)

(declare-fun e!3236804 () Bool)

(assert (=> b!5197468 (= e!3236802 e!3236804)))

(declare-fun res!2207833 () Bool)

(assert (=> b!5197468 (=> (not res!2207833) (not e!3236804))))

(declare-fun call!365378 () Bool)

(assert (=> b!5197468 (= res!2207833 call!365378)))

(declare-fun b!5197469 () Bool)

(declare-fun e!3236799 () Bool)

(declare-fun e!3236805 () Bool)

(assert (=> b!5197469 (= e!3236799 e!3236805)))

(declare-fun c!895834 () Bool)

(assert (=> b!5197469 (= c!895834 ((_ is Star!14765) r!7292))))

(declare-fun b!5197470 () Bool)

(declare-fun e!3236803 () Bool)

(assert (=> b!5197470 (= e!3236805 e!3236803)))

(declare-fun c!895835 () Bool)

(assert (=> b!5197470 (= c!895835 ((_ is Union!14765) r!7292))))

(declare-fun bm!365372 () Bool)

(declare-fun call!365377 () Bool)

(assert (=> bm!365372 (= call!365377 (validRegex!6501 (ite c!895835 (regTwo!30043 r!7292) (regTwo!30042 r!7292))))))

(declare-fun b!5197471 () Bool)

(declare-fun e!3236800 () Bool)

(declare-fun call!365379 () Bool)

(assert (=> b!5197471 (= e!3236800 call!365379)))

(declare-fun b!5197472 () Bool)

(assert (=> b!5197472 (= e!3236805 e!3236800)))

(declare-fun res!2207834 () Bool)

(assert (=> b!5197472 (= res!2207834 (not (nullable!4936 (reg!15094 r!7292))))))

(assert (=> b!5197472 (=> (not res!2207834) (not e!3236800))))

(declare-fun bm!365373 () Bool)

(assert (=> bm!365373 (= call!365379 (validRegex!6501 (ite c!895834 (reg!15094 r!7292) (ite c!895835 (regOne!30043 r!7292) (regOne!30042 r!7292)))))))

(declare-fun b!5197473 () Bool)

(declare-fun res!2207831 () Bool)

(assert (=> b!5197473 (=> res!2207831 e!3236802)))

(assert (=> b!5197473 (= res!2207831 (not ((_ is Concat!23610) r!7292)))))

(assert (=> b!5197473 (= e!3236803 e!3236802)))

(declare-fun d!1677360 () Bool)

(declare-fun res!2207835 () Bool)

(assert (=> d!1677360 (=> res!2207835 e!3236799)))

(assert (=> d!1677360 (= res!2207835 ((_ is ElementMatch!14765) r!7292))))

(assert (=> d!1677360 (= (validRegex!6501 r!7292) e!3236799)))

(declare-fun b!5197474 () Bool)

(assert (=> b!5197474 (= e!3236804 call!365377)))

(declare-fun b!5197475 () Bool)

(declare-fun e!3236801 () Bool)

(assert (=> b!5197475 (= e!3236801 call!365377)))

(declare-fun bm!365374 () Bool)

(assert (=> bm!365374 (= call!365378 call!365379)))

(declare-fun b!5197476 () Bool)

(declare-fun res!2207832 () Bool)

(assert (=> b!5197476 (=> (not res!2207832) (not e!3236801))))

(assert (=> b!5197476 (= res!2207832 call!365378)))

(assert (=> b!5197476 (= e!3236803 e!3236801)))

(assert (= (and d!1677360 (not res!2207835)) b!5197469))

(assert (= (and b!5197469 c!895834) b!5197472))

(assert (= (and b!5197469 (not c!895834)) b!5197470))

(assert (= (and b!5197472 res!2207834) b!5197471))

(assert (= (and b!5197470 c!895835) b!5197476))

(assert (= (and b!5197470 (not c!895835)) b!5197473))

(assert (= (and b!5197476 res!2207832) b!5197475))

(assert (= (and b!5197473 (not res!2207831)) b!5197468))

(assert (= (and b!5197468 res!2207833) b!5197474))

(assert (= (or b!5197475 b!5197474) bm!365372))

(assert (= (or b!5197476 b!5197468) bm!365374))

(assert (= (or b!5197471 bm!365374) bm!365373))

(declare-fun m!6251046 () Bool)

(assert (=> bm!365372 m!6251046))

(declare-fun m!6251048 () Bool)

(assert (=> b!5197472 m!6251048))

(declare-fun m!6251050 () Bool)

(assert (=> bm!365373 m!6251050))

(assert (=> start!549898 d!1677360))

(declare-fun d!1677368 () Bool)

(assert (=> d!1677368 (= (isEmpty!32386 (t!373748 zl!343)) ((_ is Nil!60471) (t!373748 zl!343)))))

(assert (=> b!5197184 d!1677368))

(declare-fun bs!1209029 () Bool)

(declare-fun d!1677370 () Bool)

(assert (= bs!1209029 (and d!1677370 b!5197194)))

(declare-fun lambda!260179 () Int)

(assert (=> bs!1209029 (= lambda!260179 lambda!260149)))

(assert (=> d!1677370 true))

(assert (=> d!1677370 (= (derivationStepZipper!1045 z!1189 (h!66920 s!2326)) (flatMap!496 z!1189 lambda!260179))))

(declare-fun bs!1209031 () Bool)

(assert (= bs!1209031 d!1677370))

(declare-fun m!6251060 () Bool)

(assert (=> bs!1209031 m!6251060))

(assert (=> b!5197194 d!1677370))

(declare-fun d!1677378 () Bool)

(declare-fun choose!38621 ((InoxSet Context!8298) Int) (InoxSet Context!8298))

(assert (=> d!1677378 (= (flatMap!496 z!1189 lambda!260149) (choose!38621 z!1189 lambda!260149))))

(declare-fun bs!1209033 () Bool)

(assert (= bs!1209033 d!1677378))

(declare-fun m!6251074 () Bool)

(assert (=> bs!1209033 m!6251074))

(assert (=> b!5197194 d!1677378))

(declare-fun b!5197544 () Bool)

(declare-fun e!3236842 () (InoxSet Context!8298))

(declare-fun e!3236843 () (InoxSet Context!8298))

(assert (=> b!5197544 (= e!3236842 e!3236843)))

(declare-fun c!895861 () Bool)

(assert (=> b!5197544 (= c!895861 ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343))))))

(declare-fun d!1677384 () Bool)

(declare-fun c!895862 () Bool)

(declare-fun e!3236844 () Bool)

(assert (=> d!1677384 (= c!895862 e!3236844)))

(declare-fun res!2207857 () Bool)

(assert (=> d!1677384 (=> (not res!2207857) (not e!3236844))))

(assert (=> d!1677384 (= res!2207857 ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343))))))

(assert (=> d!1677384 (= (derivationStepZipperUp!137 (h!66919 zl!343) (h!66920 s!2326)) e!3236842)))

(declare-fun b!5197545 () Bool)

(assert (=> b!5197545 (= e!3236844 (nullable!4936 (h!66918 (exprs!4649 (h!66919 zl!343)))))))

(declare-fun b!5197546 () Bool)

(assert (=> b!5197546 (= e!3236843 ((as const (Array Context!8298 Bool)) false))))

(declare-fun call!365390 () (InoxSet Context!8298))

(declare-fun b!5197547 () Bool)

(assert (=> b!5197547 (= e!3236842 ((_ map or) call!365390 (derivationStepZipperUp!137 (Context!8299 (t!373747 (exprs!4649 (h!66919 zl!343)))) (h!66920 s!2326))))))

(declare-fun b!5197548 () Bool)

(assert (=> b!5197548 (= e!3236843 call!365390)))

(declare-fun bm!365385 () Bool)

(assert (=> bm!365385 (= call!365390 (derivationStepZipperDown!214 (h!66918 (exprs!4649 (h!66919 zl!343))) (Context!8299 (t!373747 (exprs!4649 (h!66919 zl!343)))) (h!66920 s!2326)))))

(assert (= (and d!1677384 res!2207857) b!5197545))

(assert (= (and d!1677384 c!895862) b!5197547))

(assert (= (and d!1677384 (not c!895862)) b!5197544))

(assert (= (and b!5197544 c!895861) b!5197548))

(assert (= (and b!5197544 (not c!895861)) b!5197546))

(assert (= (or b!5197547 b!5197548) bm!365385))

(declare-fun m!6251092 () Bool)

(assert (=> b!5197545 m!6251092))

(declare-fun m!6251094 () Bool)

(assert (=> b!5197547 m!6251094))

(declare-fun m!6251096 () Bool)

(assert (=> bm!365385 m!6251096))

(assert (=> b!5197194 d!1677384))

(declare-fun d!1677390 () Bool)

(declare-fun dynLambda!23905 (Int Context!8298) (InoxSet Context!8298))

(assert (=> d!1677390 (= (flatMap!496 z!1189 lambda!260149) (dynLambda!23905 lambda!260149 (h!66919 zl!343)))))

(declare-fun lt!2139316 () Unit!152364)

(declare-fun choose!38622 ((InoxSet Context!8298) Context!8298 Int) Unit!152364)

(assert (=> d!1677390 (= lt!2139316 (choose!38622 z!1189 (h!66919 zl!343) lambda!260149))))

(assert (=> d!1677390 (= z!1189 (store ((as const (Array Context!8298 Bool)) false) (h!66919 zl!343) true))))

(assert (=> d!1677390 (= (lemmaFlatMapOnSingletonSet!28 z!1189 (h!66919 zl!343) lambda!260149) lt!2139316)))

(declare-fun b_lambda!201235 () Bool)

(assert (=> (not b_lambda!201235) (not d!1677390)))

(declare-fun bs!1209034 () Bool)

(assert (= bs!1209034 d!1677390))

(assert (=> bs!1209034 m!6250856))

(declare-fun m!6251098 () Bool)

(assert (=> bs!1209034 m!6251098))

(declare-fun m!6251100 () Bool)

(assert (=> bs!1209034 m!6251100))

(declare-fun m!6251102 () Bool)

(assert (=> bs!1209034 m!6251102))

(assert (=> b!5197194 d!1677390))

(declare-fun d!1677392 () Bool)

(declare-fun lambda!260188 () Int)

(declare-fun forall!14220 (List!60594 Int) Bool)

(assert (=> d!1677392 (= (inv!80159 (h!66919 zl!343)) (forall!14220 (exprs!4649 (h!66919 zl!343)) lambda!260188))))

(declare-fun bs!1209042 () Bool)

(assert (= bs!1209042 d!1677392))

(declare-fun m!6251104 () Bool)

(assert (=> bs!1209042 m!6251104))

(assert (=> b!5197175 d!1677392))

(declare-fun bs!1209043 () Bool)

(declare-fun d!1677394 () Bool)

(assert (= bs!1209043 (and d!1677394 d!1677392)))

(declare-fun lambda!260191 () Int)

(assert (=> bs!1209043 (= lambda!260191 lambda!260188)))

(declare-fun b!5197626 () Bool)

(declare-fun e!3236890 () Bool)

(declare-fun lt!2139322 () Regex!14765)

(declare-fun isUnion!189 (Regex!14765) Bool)

(assert (=> b!5197626 (= e!3236890 (isUnion!189 lt!2139322))))

(declare-fun b!5197627 () Bool)

(declare-fun e!3236889 () Regex!14765)

(assert (=> b!5197627 (= e!3236889 EmptyLang!14765)))

(declare-fun b!5197628 () Bool)

(declare-fun e!3236887 () Bool)

(declare-fun e!3236891 () Bool)

(assert (=> b!5197628 (= e!3236887 e!3236891)))

(declare-fun c!895887 () Bool)

(assert (=> b!5197628 (= c!895887 (isEmpty!32387 (unfocusZipperList!207 zl!343)))))

(declare-fun b!5197629 () Bool)

(declare-fun e!3236892 () Regex!14765)

(assert (=> b!5197629 (= e!3236892 (h!66918 (unfocusZipperList!207 zl!343)))))

(assert (=> d!1677394 e!3236887))

(declare-fun res!2207893 () Bool)

(assert (=> d!1677394 (=> (not res!2207893) (not e!3236887))))

(assert (=> d!1677394 (= res!2207893 (validRegex!6501 lt!2139322))))

(assert (=> d!1677394 (= lt!2139322 e!3236892)))

(declare-fun c!895885 () Bool)

(declare-fun e!3236888 () Bool)

(assert (=> d!1677394 (= c!895885 e!3236888)))

(declare-fun res!2207894 () Bool)

(assert (=> d!1677394 (=> (not res!2207894) (not e!3236888))))

(assert (=> d!1677394 (= res!2207894 ((_ is Cons!60470) (unfocusZipperList!207 zl!343)))))

(assert (=> d!1677394 (forall!14220 (unfocusZipperList!207 zl!343) lambda!260191)))

(assert (=> d!1677394 (= (generalisedUnion!694 (unfocusZipperList!207 zl!343)) lt!2139322)))

(declare-fun b!5197630 () Bool)

(declare-fun isEmptyLang!757 (Regex!14765) Bool)

(assert (=> b!5197630 (= e!3236891 (isEmptyLang!757 lt!2139322))))

(declare-fun b!5197631 () Bool)

(assert (=> b!5197631 (= e!3236891 e!3236890)))

(declare-fun c!895886 () Bool)

(declare-fun tail!10240 (List!60594) List!60594)

(assert (=> b!5197631 (= c!895886 (isEmpty!32387 (tail!10240 (unfocusZipperList!207 zl!343))))))

(declare-fun b!5197632 () Bool)

(declare-fun head!11143 (List!60594) Regex!14765)

(assert (=> b!5197632 (= e!3236890 (= lt!2139322 (head!11143 (unfocusZipperList!207 zl!343))))))

(declare-fun b!5197633 () Bool)

(assert (=> b!5197633 (= e!3236892 e!3236889)))

(declare-fun c!895884 () Bool)

(assert (=> b!5197633 (= c!895884 ((_ is Cons!60470) (unfocusZipperList!207 zl!343)))))

(declare-fun b!5197634 () Bool)

(assert (=> b!5197634 (= e!3236888 (isEmpty!32387 (t!373747 (unfocusZipperList!207 zl!343))))))

(declare-fun b!5197635 () Bool)

(assert (=> b!5197635 (= e!3236889 (Union!14765 (h!66918 (unfocusZipperList!207 zl!343)) (generalisedUnion!694 (t!373747 (unfocusZipperList!207 zl!343)))))))

(assert (= (and d!1677394 res!2207894) b!5197634))

(assert (= (and d!1677394 c!895885) b!5197629))

(assert (= (and d!1677394 (not c!895885)) b!5197633))

(assert (= (and b!5197633 c!895884) b!5197635))

(assert (= (and b!5197633 (not c!895884)) b!5197627))

(assert (= (and d!1677394 res!2207893) b!5197628))

(assert (= (and b!5197628 c!895887) b!5197630))

(assert (= (and b!5197628 (not c!895887)) b!5197631))

(assert (= (and b!5197631 c!895886) b!5197632))

(assert (= (and b!5197631 (not c!895886)) b!5197626))

(assert (=> b!5197631 m!6250842))

(declare-fun m!6251130 () Bool)

(assert (=> b!5197631 m!6251130))

(assert (=> b!5197631 m!6251130))

(declare-fun m!6251132 () Bool)

(assert (=> b!5197631 m!6251132))

(assert (=> b!5197632 m!6250842))

(declare-fun m!6251134 () Bool)

(assert (=> b!5197632 m!6251134))

(declare-fun m!6251136 () Bool)

(assert (=> b!5197635 m!6251136))

(declare-fun m!6251138 () Bool)

(assert (=> d!1677394 m!6251138))

(assert (=> d!1677394 m!6250842))

(declare-fun m!6251140 () Bool)

(assert (=> d!1677394 m!6251140))

(declare-fun m!6251142 () Bool)

(assert (=> b!5197626 m!6251142))

(assert (=> b!5197628 m!6250842))

(declare-fun m!6251144 () Bool)

(assert (=> b!5197628 m!6251144))

(declare-fun m!6251146 () Bool)

(assert (=> b!5197634 m!6251146))

(declare-fun m!6251148 () Bool)

(assert (=> b!5197630 m!6251148))

(assert (=> b!5197187 d!1677394))

(declare-fun bs!1209049 () Bool)

(declare-fun d!1677406 () Bool)

(assert (= bs!1209049 (and d!1677406 d!1677392)))

(declare-fun lambda!260197 () Int)

(assert (=> bs!1209049 (= lambda!260197 lambda!260188)))

(declare-fun bs!1209050 () Bool)

(assert (= bs!1209050 (and d!1677406 d!1677394)))

(assert (=> bs!1209050 (= lambda!260197 lambda!260191)))

(declare-fun lt!2139330 () List!60594)

(assert (=> d!1677406 (forall!14220 lt!2139330 lambda!260197)))

(declare-fun e!3236907 () List!60594)

(assert (=> d!1677406 (= lt!2139330 e!3236907)))

(declare-fun c!895898 () Bool)

(assert (=> d!1677406 (= c!895898 ((_ is Cons!60471) zl!343))))

(assert (=> d!1677406 (= (unfocusZipperList!207 zl!343) lt!2139330)))

(declare-fun b!5197660 () Bool)

(assert (=> b!5197660 (= e!3236907 (Cons!60470 (generalisedConcat!434 (exprs!4649 (h!66919 zl!343))) (unfocusZipperList!207 (t!373748 zl!343))))))

(declare-fun b!5197661 () Bool)

(assert (=> b!5197661 (= e!3236907 Nil!60470)))

(assert (= (and d!1677406 c!895898) b!5197660))

(assert (= (and d!1677406 (not c!895898)) b!5197661))

(declare-fun m!6251150 () Bool)

(assert (=> d!1677406 m!6251150))

(assert (=> b!5197660 m!6250852))

(declare-fun m!6251152 () Bool)

(assert (=> b!5197660 m!6251152))

(assert (=> b!5197187 d!1677406))

(declare-fun c!895913 () Bool)

(declare-fun call!365414 () List!60594)

(declare-fun c!895915 () Bool)

(declare-fun bm!365407 () Bool)

(declare-fun $colon$colon!1263 (List!60594 Regex!14765) List!60594)

(assert (=> bm!365407 (= call!365414 ($colon$colon!1263 (exprs!4649 (Context!8299 Nil!60470)) (ite (or c!895913 c!895915) (regTwo!30042 r!7292) r!7292)))))

(declare-fun bm!365408 () Bool)

(declare-fun call!365417 () (InoxSet Context!8298))

(declare-fun c!895914 () Bool)

(assert (=> bm!365408 (= call!365417 (derivationStepZipperDown!214 (ite c!895914 (regTwo!30043 r!7292) (regOne!30042 r!7292)) (ite c!895914 (Context!8299 Nil!60470) (Context!8299 call!365414)) (h!66920 s!2326)))))

(declare-fun call!365413 () List!60594)

(declare-fun bm!365409 () Bool)

(declare-fun call!365412 () (InoxSet Context!8298))

(assert (=> bm!365409 (= call!365412 (derivationStepZipperDown!214 (ite c!895914 (regOne!30043 r!7292) (ite c!895913 (regTwo!30042 r!7292) (ite c!895915 (regOne!30042 r!7292) (reg!15094 r!7292)))) (ite (or c!895914 c!895913) (Context!8299 Nil!60470) (Context!8299 call!365413)) (h!66920 s!2326)))))

(declare-fun bm!365410 () Bool)

(declare-fun call!365416 () (InoxSet Context!8298))

(declare-fun call!365415 () (InoxSet Context!8298))

(assert (=> bm!365410 (= call!365416 call!365415)))

(declare-fun b!5197748 () Bool)

(declare-fun c!895917 () Bool)

(assert (=> b!5197748 (= c!895917 ((_ is Star!14765) r!7292))))

(declare-fun e!3236950 () (InoxSet Context!8298))

(declare-fun e!3236951 () (InoxSet Context!8298))

(assert (=> b!5197748 (= e!3236950 e!3236951)))

(declare-fun b!5197749 () Bool)

(assert (=> b!5197749 (= e!3236951 call!365416)))

(declare-fun b!5197750 () Bool)

(declare-fun e!3236949 () (InoxSet Context!8298))

(declare-fun e!3236954 () (InoxSet Context!8298))

(assert (=> b!5197750 (= e!3236949 e!3236954)))

(assert (=> b!5197750 (= c!895914 ((_ is Union!14765) r!7292))))

(declare-fun b!5197751 () Bool)

(assert (=> b!5197751 (= e!3236950 call!365416)))

(declare-fun b!5197752 () Bool)

(assert (=> b!5197752 (= e!3236951 ((as const (Array Context!8298 Bool)) false))))

(declare-fun b!5197753 () Bool)

(assert (=> b!5197753 (= e!3236954 ((_ map or) call!365412 call!365417))))

(declare-fun b!5197754 () Bool)

(declare-fun e!3236952 () (InoxSet Context!8298))

(assert (=> b!5197754 (= e!3236952 e!3236950)))

(assert (=> b!5197754 (= c!895915 ((_ is Concat!23610) r!7292))))

(declare-fun bm!365411 () Bool)

(assert (=> bm!365411 (= call!365415 call!365412)))

(declare-fun b!5197755 () Bool)

(assert (=> b!5197755 (= e!3236952 ((_ map or) call!365417 call!365415))))

(declare-fun b!5197756 () Bool)

(assert (=> b!5197756 (= e!3236949 (store ((as const (Array Context!8298 Bool)) false) (Context!8299 Nil!60470) true))))

(declare-fun d!1677408 () Bool)

(declare-fun c!895916 () Bool)

(assert (=> d!1677408 (= c!895916 (and ((_ is ElementMatch!14765) r!7292) (= (c!895756 r!7292) (h!66920 s!2326))))))

(assert (=> d!1677408 (= (derivationStepZipperDown!214 r!7292 (Context!8299 Nil!60470) (h!66920 s!2326)) e!3236949)))

(declare-fun bm!365412 () Bool)

(assert (=> bm!365412 (= call!365413 call!365414)))

(declare-fun b!5197757 () Bool)

(declare-fun e!3236953 () Bool)

(assert (=> b!5197757 (= c!895913 e!3236953)))

(declare-fun res!2207903 () Bool)

(assert (=> b!5197757 (=> (not res!2207903) (not e!3236953))))

(assert (=> b!5197757 (= res!2207903 ((_ is Concat!23610) r!7292))))

(assert (=> b!5197757 (= e!3236954 e!3236952)))

(declare-fun b!5197758 () Bool)

(assert (=> b!5197758 (= e!3236953 (nullable!4936 (regOne!30042 r!7292)))))

(assert (= (and d!1677408 c!895916) b!5197756))

(assert (= (and d!1677408 (not c!895916)) b!5197750))

(assert (= (and b!5197750 c!895914) b!5197753))

(assert (= (and b!5197750 (not c!895914)) b!5197757))

(assert (= (and b!5197757 res!2207903) b!5197758))

(assert (= (and b!5197757 c!895913) b!5197755))

(assert (= (and b!5197757 (not c!895913)) b!5197754))

(assert (= (and b!5197754 c!895915) b!5197751))

(assert (= (and b!5197754 (not c!895915)) b!5197748))

(assert (= (and b!5197748 c!895917) b!5197749))

(assert (= (and b!5197748 (not c!895917)) b!5197752))

(assert (= (or b!5197751 b!5197749) bm!365412))

(assert (= (or b!5197751 b!5197749) bm!365410))

(assert (= (or b!5197755 bm!365412) bm!365407))

(assert (= (or b!5197755 bm!365410) bm!365411))

(assert (= (or b!5197753 b!5197755) bm!365408))

(assert (= (or b!5197753 bm!365411) bm!365409))

(declare-fun m!6251176 () Bool)

(assert (=> b!5197758 m!6251176))

(declare-fun m!6251178 () Bool)

(assert (=> b!5197756 m!6251178))

(declare-fun m!6251180 () Bool)

(assert (=> bm!365409 m!6251180))

(declare-fun m!6251182 () Bool)

(assert (=> bm!365407 m!6251182))

(declare-fun m!6251184 () Bool)

(assert (=> bm!365408 m!6251184))

(assert (=> b!5197178 d!1677408))

(declare-fun b!5197759 () Bool)

(declare-fun e!3236955 () (InoxSet Context!8298))

(declare-fun e!3236956 () (InoxSet Context!8298))

(assert (=> b!5197759 (= e!3236955 e!3236956)))

(declare-fun c!895918 () Bool)

(assert (=> b!5197759 (= c!895918 ((_ is Cons!60470) (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470)))))))

(declare-fun d!1677416 () Bool)

(declare-fun c!895919 () Bool)

(declare-fun e!3236957 () Bool)

(assert (=> d!1677416 (= c!895919 e!3236957)))

(declare-fun res!2207904 () Bool)

(assert (=> d!1677416 (=> (not res!2207904) (not e!3236957))))

(assert (=> d!1677416 (= res!2207904 ((_ is Cons!60470) (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470)))))))

(assert (=> d!1677416 (= (derivationStepZipperUp!137 (Context!8299 (Cons!60470 r!7292 Nil!60470)) (h!66920 s!2326)) e!3236955)))

(declare-fun b!5197760 () Bool)

(assert (=> b!5197760 (= e!3236957 (nullable!4936 (h!66918 (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470))))))))

(declare-fun b!5197761 () Bool)

(assert (=> b!5197761 (= e!3236956 ((as const (Array Context!8298 Bool)) false))))

(declare-fun call!365418 () (InoxSet Context!8298))

(declare-fun b!5197762 () Bool)

(assert (=> b!5197762 (= e!3236955 ((_ map or) call!365418 (derivationStepZipperUp!137 (Context!8299 (t!373747 (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470))))) (h!66920 s!2326))))))

(declare-fun b!5197763 () Bool)

(assert (=> b!5197763 (= e!3236956 call!365418)))

(declare-fun bm!365413 () Bool)

(assert (=> bm!365413 (= call!365418 (derivationStepZipperDown!214 (h!66918 (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470)))) (Context!8299 (t!373747 (exprs!4649 (Context!8299 (Cons!60470 r!7292 Nil!60470))))) (h!66920 s!2326)))))

(assert (= (and d!1677416 res!2207904) b!5197760))

(assert (= (and d!1677416 c!895919) b!5197762))

(assert (= (and d!1677416 (not c!895919)) b!5197759))

(assert (= (and b!5197759 c!895918) b!5197763))

(assert (= (and b!5197759 (not c!895918)) b!5197761))

(assert (= (or b!5197762 b!5197763) bm!365413))

(declare-fun m!6251186 () Bool)

(assert (=> b!5197760 m!6251186))

(declare-fun m!6251188 () Bool)

(assert (=> b!5197762 m!6251188))

(declare-fun m!6251190 () Bool)

(assert (=> bm!365413 m!6251190))

(assert (=> b!5197178 d!1677416))

(declare-fun b!5197782 () Bool)

(declare-fun e!3236970 () Bool)

(declare-fun lt!2139338 () Option!14876)

(declare-fun ++!13191 (List!60596 List!60596) List!60596)

(declare-fun get!20779 (Option!14876) tuple2!63928)

(assert (=> b!5197782 (= e!3236970 (= (++!13191 (_1!35267 (get!20779 lt!2139338)) (_2!35267 (get!20779 lt!2139338))) s!2326))))

(declare-fun d!1677418 () Bool)

(declare-fun e!3236969 () Bool)

(assert (=> d!1677418 e!3236969))

(declare-fun res!2207916 () Bool)

(assert (=> d!1677418 (=> res!2207916 e!3236969)))

(assert (=> d!1677418 (= res!2207916 e!3236970)))

(declare-fun res!2207915 () Bool)

(assert (=> d!1677418 (=> (not res!2207915) (not e!3236970))))

(assert (=> d!1677418 (= res!2207915 (isDefined!11579 lt!2139338))))

(declare-fun e!3236972 () Option!14876)

(assert (=> d!1677418 (= lt!2139338 e!3236972)))

(declare-fun c!895925 () Bool)

(declare-fun e!3236971 () Bool)

(assert (=> d!1677418 (= c!895925 e!3236971)))

(declare-fun res!2207919 () Bool)

(assert (=> d!1677418 (=> (not res!2207919) (not e!3236971))))

(assert (=> d!1677418 (= res!2207919 (matchR!6950 (regOne!30042 r!7292) Nil!60472))))

(assert (=> d!1677418 (validRegex!6501 (regOne!30042 r!7292))))

(assert (=> d!1677418 (= (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) Nil!60472 s!2326 s!2326) lt!2139338)))

(declare-fun b!5197783 () Bool)

(assert (=> b!5197783 (= e!3236972 (Some!14875 (tuple2!63929 Nil!60472 s!2326)))))

(declare-fun b!5197784 () Bool)

(declare-fun e!3236968 () Option!14876)

(assert (=> b!5197784 (= e!3236968 None!14875)))

(declare-fun b!5197785 () Bool)

(declare-fun lt!2139340 () Unit!152364)

(declare-fun lt!2139339 () Unit!152364)

(assert (=> b!5197785 (= lt!2139340 lt!2139339)))

(assert (=> b!5197785 (= (++!13191 (++!13191 Nil!60472 (Cons!60472 (h!66920 s!2326) Nil!60472)) (t!373749 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1606 (List!60596 C!29800 List!60596 List!60596) Unit!152364)

(assert (=> b!5197785 (= lt!2139339 (lemmaMoveElementToOtherListKeepsConcatEq!1606 Nil!60472 (h!66920 s!2326) (t!373749 s!2326) s!2326))))

(assert (=> b!5197785 (= e!3236968 (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) (++!13191 Nil!60472 (Cons!60472 (h!66920 s!2326) Nil!60472)) (t!373749 s!2326) s!2326))))

(declare-fun b!5197786 () Bool)

(assert (=> b!5197786 (= e!3236972 e!3236968)))

(declare-fun c!895924 () Bool)

(assert (=> b!5197786 (= c!895924 ((_ is Nil!60472) s!2326))))

(declare-fun b!5197787 () Bool)

(assert (=> b!5197787 (= e!3236971 (matchR!6950 (regTwo!30042 r!7292) s!2326))))

(declare-fun b!5197788 () Bool)

(declare-fun res!2207917 () Bool)

(assert (=> b!5197788 (=> (not res!2207917) (not e!3236970))))

(assert (=> b!5197788 (= res!2207917 (matchR!6950 (regOne!30042 r!7292) (_1!35267 (get!20779 lt!2139338))))))

(declare-fun b!5197789 () Bool)

(assert (=> b!5197789 (= e!3236969 (not (isDefined!11579 lt!2139338)))))

(declare-fun b!5197790 () Bool)

(declare-fun res!2207918 () Bool)

(assert (=> b!5197790 (=> (not res!2207918) (not e!3236970))))

(assert (=> b!5197790 (= res!2207918 (matchR!6950 (regTwo!30042 r!7292) (_2!35267 (get!20779 lt!2139338))))))

(assert (= (and d!1677418 res!2207919) b!5197787))

(assert (= (and d!1677418 c!895925) b!5197783))

(assert (= (and d!1677418 (not c!895925)) b!5197786))

(assert (= (and b!5197786 c!895924) b!5197784))

(assert (= (and b!5197786 (not c!895924)) b!5197785))

(assert (= (and d!1677418 res!2207915) b!5197788))

(assert (= (and b!5197788 res!2207917) b!5197790))

(assert (= (and b!5197790 res!2207918) b!5197782))

(assert (= (and d!1677418 (not res!2207916)) b!5197789))

(declare-fun m!6251192 () Bool)

(assert (=> b!5197789 m!6251192))

(assert (=> d!1677418 m!6251192))

(declare-fun m!6251194 () Bool)

(assert (=> d!1677418 m!6251194))

(declare-fun m!6251196 () Bool)

(assert (=> d!1677418 m!6251196))

(declare-fun m!6251198 () Bool)

(assert (=> b!5197787 m!6251198))

(declare-fun m!6251200 () Bool)

(assert (=> b!5197788 m!6251200))

(declare-fun m!6251202 () Bool)

(assert (=> b!5197788 m!6251202))

(declare-fun m!6251204 () Bool)

(assert (=> b!5197785 m!6251204))

(assert (=> b!5197785 m!6251204))

(declare-fun m!6251206 () Bool)

(assert (=> b!5197785 m!6251206))

(declare-fun m!6251208 () Bool)

(assert (=> b!5197785 m!6251208))

(assert (=> b!5197785 m!6251204))

(declare-fun m!6251210 () Bool)

(assert (=> b!5197785 m!6251210))

(assert (=> b!5197782 m!6251200))

(declare-fun m!6251212 () Bool)

(assert (=> b!5197782 m!6251212))

(assert (=> b!5197790 m!6251200))

(declare-fun m!6251214 () Bool)

(assert (=> b!5197790 m!6251214))

(assert (=> b!5197179 d!1677418))

(declare-fun d!1677420 () Bool)

(declare-fun choose!38624 (Int) Bool)

(assert (=> d!1677420 (= (Exists!1946 lambda!260147) (choose!38624 lambda!260147))))

(declare-fun bs!1209058 () Bool)

(assert (= bs!1209058 d!1677420))

(declare-fun m!6251216 () Bool)

(assert (=> bs!1209058 m!6251216))

(assert (=> b!5197179 d!1677420))

(declare-fun d!1677422 () Bool)

(assert (=> d!1677422 (= (Exists!1946 lambda!260148) (choose!38624 lambda!260148))))

(declare-fun bs!1209059 () Bool)

(assert (= bs!1209059 d!1677422))

(declare-fun m!6251218 () Bool)

(assert (=> bs!1209059 m!6251218))

(assert (=> b!5197179 d!1677422))

(declare-fun bs!1209060 () Bool)

(declare-fun d!1677424 () Bool)

(assert (= bs!1209060 (and d!1677424 b!5197179)))

(declare-fun lambda!260201 () Int)

(assert (=> bs!1209060 (= lambda!260201 lambda!260147)))

(assert (=> bs!1209060 (not (= lambda!260201 lambda!260148))))

(declare-fun bs!1209061 () Bool)

(assert (= bs!1209061 (and d!1677424 b!5197308)))

(assert (=> bs!1209061 (not (= lambda!260201 lambda!260160))))

(declare-fun bs!1209062 () Bool)

(assert (= bs!1209062 (and d!1677424 b!5197310)))

(assert (=> bs!1209062 (not (= lambda!260201 lambda!260161))))

(assert (=> d!1677424 true))

(assert (=> d!1677424 true))

(assert (=> d!1677424 true))

(assert (=> d!1677424 (= (isDefined!11579 (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) Nil!60472 s!2326 s!2326)) (Exists!1946 lambda!260201))))

(declare-fun lt!2139343 () Unit!152364)

(declare-fun choose!38625 (Regex!14765 Regex!14765 List!60596) Unit!152364)

(assert (=> d!1677424 (= lt!2139343 (choose!38625 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326))))

(assert (=> d!1677424 (validRegex!6501 (regOne!30042 r!7292))))

(assert (=> d!1677424 (= (lemmaFindConcatSeparationEquivalentToExists!1054 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326) lt!2139343)))

(declare-fun bs!1209063 () Bool)

(assert (= bs!1209063 d!1677424))

(declare-fun m!6251220 () Bool)

(assert (=> bs!1209063 m!6251220))

(assert (=> bs!1209063 m!6251196))

(assert (=> bs!1209063 m!6250900))

(assert (=> bs!1209063 m!6250902))

(declare-fun m!6251222 () Bool)

(assert (=> bs!1209063 m!6251222))

(assert (=> bs!1209063 m!6250900))

(assert (=> b!5197179 d!1677424))

(declare-fun bs!1209064 () Bool)

(declare-fun d!1677426 () Bool)

(assert (= bs!1209064 (and d!1677426 b!5197179)))

(declare-fun lambda!260206 () Int)

(assert (=> bs!1209064 (= lambda!260206 lambda!260147)))

(assert (=> bs!1209064 (not (= lambda!260206 lambda!260148))))

(declare-fun bs!1209065 () Bool)

(assert (= bs!1209065 (and d!1677426 d!1677424)))

(assert (=> bs!1209065 (= lambda!260206 lambda!260201)))

(declare-fun bs!1209066 () Bool)

(assert (= bs!1209066 (and d!1677426 b!5197308)))

(assert (=> bs!1209066 (not (= lambda!260206 lambda!260160))))

(declare-fun bs!1209067 () Bool)

(assert (= bs!1209067 (and d!1677426 b!5197310)))

(assert (=> bs!1209067 (not (= lambda!260206 lambda!260161))))

(assert (=> d!1677426 true))

(assert (=> d!1677426 true))

(assert (=> d!1677426 true))

(declare-fun lambda!260207 () Int)

(assert (=> bs!1209064 (not (= lambda!260207 lambda!260147))))

(declare-fun bs!1209068 () Bool)

(assert (= bs!1209068 d!1677426))

(assert (=> bs!1209068 (not (= lambda!260207 lambda!260206))))

(assert (=> bs!1209064 (= lambda!260207 lambda!260148)))

(assert (=> bs!1209065 (not (= lambda!260207 lambda!260201))))

(assert (=> bs!1209066 (not (= lambda!260207 lambda!260160))))

(assert (=> bs!1209067 (= lambda!260207 lambda!260161)))

(assert (=> d!1677426 true))

(assert (=> d!1677426 true))

(assert (=> d!1677426 true))

(assert (=> d!1677426 (= (Exists!1946 lambda!260206) (Exists!1946 lambda!260207))))

(declare-fun lt!2139346 () Unit!152364)

(declare-fun choose!38626 (Regex!14765 Regex!14765 List!60596) Unit!152364)

(assert (=> d!1677426 (= lt!2139346 (choose!38626 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326))))

(assert (=> d!1677426 (validRegex!6501 (regOne!30042 r!7292))))

(assert (=> d!1677426 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!600 (regOne!30042 r!7292) (regTwo!30042 r!7292) s!2326) lt!2139346)))

(declare-fun m!6251224 () Bool)

(assert (=> bs!1209068 m!6251224))

(declare-fun m!6251226 () Bool)

(assert (=> bs!1209068 m!6251226))

(declare-fun m!6251228 () Bool)

(assert (=> bs!1209068 m!6251228))

(assert (=> bs!1209068 m!6251196))

(assert (=> b!5197179 d!1677426))

(declare-fun d!1677428 () Bool)

(declare-fun isEmpty!32391 (Option!14876) Bool)

(assert (=> d!1677428 (= (isDefined!11579 (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) Nil!60472 s!2326 s!2326)) (not (isEmpty!32391 (findConcatSeparation!1290 (regOne!30042 r!7292) (regTwo!30042 r!7292) Nil!60472 s!2326 s!2326))))))

(declare-fun bs!1209069 () Bool)

(assert (= bs!1209069 d!1677428))

(assert (=> bs!1209069 m!6250900))

(declare-fun m!6251230 () Bool)

(assert (=> bs!1209069 m!6251230))

(assert (=> b!5197179 d!1677428))

(declare-fun d!1677430 () Bool)

(assert (=> d!1677430 (= (isEmpty!32387 (t!373747 (exprs!4649 (h!66919 zl!343)))) ((_ is Nil!60470) (t!373747 (exprs!4649 (h!66919 zl!343)))))))

(assert (=> b!5197189 d!1677430))

(declare-fun d!1677432 () Bool)

(assert (=> d!1677432 (= (flatMap!496 lt!2139268 lambda!260149) (choose!38621 lt!2139268 lambda!260149))))

(declare-fun bs!1209070 () Bool)

(assert (= bs!1209070 d!1677432))

(declare-fun m!6251232 () Bool)

(assert (=> bs!1209070 m!6251232))

(assert (=> b!5197190 d!1677432))

(declare-fun d!1677434 () Bool)

(assert (=> d!1677434 (= (flatMap!496 lt!2139262 lambda!260149) (choose!38621 lt!2139262 lambda!260149))))

(declare-fun bs!1209071 () Bool)

(assert (= bs!1209071 d!1677434))

(declare-fun m!6251234 () Bool)

(assert (=> bs!1209071 m!6251234))

(assert (=> b!5197190 d!1677434))

(declare-fun call!365421 () List!60594)

(declare-fun bm!365414 () Bool)

(declare-fun c!895926 () Bool)

(declare-fun c!895928 () Bool)

(assert (=> bm!365414 (= call!365421 ($colon$colon!1263 (exprs!4649 lt!2139270) (ite (or c!895926 c!895928) (regTwo!30042 (regOne!30042 r!7292)) (regOne!30042 r!7292))))))

(declare-fun c!895927 () Bool)

(declare-fun call!365424 () (InoxSet Context!8298))

(declare-fun bm!365415 () Bool)

(assert (=> bm!365415 (= call!365424 (derivationStepZipperDown!214 (ite c!895927 (regTwo!30043 (regOne!30042 r!7292)) (regOne!30042 (regOne!30042 r!7292))) (ite c!895927 lt!2139270 (Context!8299 call!365421)) (h!66920 s!2326)))))

(declare-fun bm!365416 () Bool)

(declare-fun call!365419 () (InoxSet Context!8298))

(declare-fun call!365420 () List!60594)

(assert (=> bm!365416 (= call!365419 (derivationStepZipperDown!214 (ite c!895927 (regOne!30043 (regOne!30042 r!7292)) (ite c!895926 (regTwo!30042 (regOne!30042 r!7292)) (ite c!895928 (regOne!30042 (regOne!30042 r!7292)) (reg!15094 (regOne!30042 r!7292))))) (ite (or c!895927 c!895926) lt!2139270 (Context!8299 call!365420)) (h!66920 s!2326)))))

(declare-fun bm!365417 () Bool)

(declare-fun call!365423 () (InoxSet Context!8298))

(declare-fun call!365422 () (InoxSet Context!8298))

(assert (=> bm!365417 (= call!365423 call!365422)))

(declare-fun b!5197803 () Bool)

(declare-fun c!895930 () Bool)

(assert (=> b!5197803 (= c!895930 ((_ is Star!14765) (regOne!30042 r!7292)))))

(declare-fun e!3236980 () (InoxSet Context!8298))

(declare-fun e!3236981 () (InoxSet Context!8298))

(assert (=> b!5197803 (= e!3236980 e!3236981)))

(declare-fun b!5197804 () Bool)

(assert (=> b!5197804 (= e!3236981 call!365423)))

(declare-fun b!5197805 () Bool)

(declare-fun e!3236979 () (InoxSet Context!8298))

(declare-fun e!3236984 () (InoxSet Context!8298))

(assert (=> b!5197805 (= e!3236979 e!3236984)))

(assert (=> b!5197805 (= c!895927 ((_ is Union!14765) (regOne!30042 r!7292)))))

(declare-fun b!5197806 () Bool)

(assert (=> b!5197806 (= e!3236980 call!365423)))

(declare-fun b!5197807 () Bool)

(assert (=> b!5197807 (= e!3236981 ((as const (Array Context!8298 Bool)) false))))

(declare-fun b!5197808 () Bool)

(assert (=> b!5197808 (= e!3236984 ((_ map or) call!365419 call!365424))))

(declare-fun b!5197809 () Bool)

(declare-fun e!3236982 () (InoxSet Context!8298))

(assert (=> b!5197809 (= e!3236982 e!3236980)))

(assert (=> b!5197809 (= c!895928 ((_ is Concat!23610) (regOne!30042 r!7292)))))

(declare-fun bm!365418 () Bool)

(assert (=> bm!365418 (= call!365422 call!365419)))

(declare-fun b!5197810 () Bool)

(assert (=> b!5197810 (= e!3236982 ((_ map or) call!365424 call!365422))))

(declare-fun b!5197811 () Bool)

(assert (=> b!5197811 (= e!3236979 (store ((as const (Array Context!8298 Bool)) false) lt!2139270 true))))

(declare-fun d!1677436 () Bool)

(declare-fun c!895929 () Bool)

(assert (=> d!1677436 (= c!895929 (and ((_ is ElementMatch!14765) (regOne!30042 r!7292)) (= (c!895756 (regOne!30042 r!7292)) (h!66920 s!2326))))))

(assert (=> d!1677436 (= (derivationStepZipperDown!214 (regOne!30042 r!7292) lt!2139270 (h!66920 s!2326)) e!3236979)))

(declare-fun bm!365419 () Bool)

(assert (=> bm!365419 (= call!365420 call!365421)))

(declare-fun b!5197812 () Bool)

(declare-fun e!3236983 () Bool)

(assert (=> b!5197812 (= c!895926 e!3236983)))

(declare-fun res!2207932 () Bool)

(assert (=> b!5197812 (=> (not res!2207932) (not e!3236983))))

(assert (=> b!5197812 (= res!2207932 ((_ is Concat!23610) (regOne!30042 r!7292)))))

(assert (=> b!5197812 (= e!3236984 e!3236982)))

(declare-fun b!5197813 () Bool)

(assert (=> b!5197813 (= e!3236983 (nullable!4936 (regOne!30042 (regOne!30042 r!7292))))))

(assert (= (and d!1677436 c!895929) b!5197811))

(assert (= (and d!1677436 (not c!895929)) b!5197805))

(assert (= (and b!5197805 c!895927) b!5197808))

(assert (= (and b!5197805 (not c!895927)) b!5197812))

(assert (= (and b!5197812 res!2207932) b!5197813))

(assert (= (and b!5197812 c!895926) b!5197810))

(assert (= (and b!5197812 (not c!895926)) b!5197809))

(assert (= (and b!5197809 c!895928) b!5197806))

(assert (= (and b!5197809 (not c!895928)) b!5197803))

(assert (= (and b!5197803 c!895930) b!5197804))

(assert (= (and b!5197803 (not c!895930)) b!5197807))

(assert (= (or b!5197806 b!5197804) bm!365419))

(assert (= (or b!5197806 b!5197804) bm!365417))

(assert (= (or b!5197810 bm!365419) bm!365414))

(assert (= (or b!5197810 bm!365417) bm!365418))

(assert (= (or b!5197808 b!5197810) bm!365415))

(assert (= (or b!5197808 bm!365418) bm!365416))

(declare-fun m!6251236 () Bool)

(assert (=> b!5197813 m!6251236))

(assert (=> b!5197811 m!6250880))

(declare-fun m!6251238 () Bool)

(assert (=> bm!365416 m!6251238))

(declare-fun m!6251240 () Bool)

(assert (=> bm!365414 m!6251240))

(declare-fun m!6251242 () Bool)

(assert (=> bm!365415 m!6251242))

(assert (=> b!5197190 d!1677436))

(declare-fun b!5197814 () Bool)

(declare-fun e!3236985 () (InoxSet Context!8298))

(declare-fun e!3236986 () (InoxSet Context!8298))

(assert (=> b!5197814 (= e!3236985 e!3236986)))

(declare-fun c!895931 () Bool)

(assert (=> b!5197814 (= c!895931 ((_ is Cons!60470) (exprs!4649 lt!2139269)))))

(declare-fun d!1677438 () Bool)

(declare-fun c!895932 () Bool)

(declare-fun e!3236987 () Bool)

(assert (=> d!1677438 (= c!895932 e!3236987)))

(declare-fun res!2207933 () Bool)

(assert (=> d!1677438 (=> (not res!2207933) (not e!3236987))))

(assert (=> d!1677438 (= res!2207933 ((_ is Cons!60470) (exprs!4649 lt!2139269)))))

(assert (=> d!1677438 (= (derivationStepZipperUp!137 lt!2139269 (h!66920 s!2326)) e!3236985)))

(declare-fun b!5197815 () Bool)

(assert (=> b!5197815 (= e!3236987 (nullable!4936 (h!66918 (exprs!4649 lt!2139269))))))

(declare-fun b!5197816 () Bool)

(assert (=> b!5197816 (= e!3236986 ((as const (Array Context!8298 Bool)) false))))

(declare-fun b!5197817 () Bool)

(declare-fun call!365425 () (InoxSet Context!8298))

(assert (=> b!5197817 (= e!3236985 ((_ map or) call!365425 (derivationStepZipperUp!137 (Context!8299 (t!373747 (exprs!4649 lt!2139269))) (h!66920 s!2326))))))

(declare-fun b!5197818 () Bool)

(assert (=> b!5197818 (= e!3236986 call!365425)))

(declare-fun bm!365420 () Bool)

(assert (=> bm!365420 (= call!365425 (derivationStepZipperDown!214 (h!66918 (exprs!4649 lt!2139269)) (Context!8299 (t!373747 (exprs!4649 lt!2139269))) (h!66920 s!2326)))))

(assert (= (and d!1677438 res!2207933) b!5197815))

(assert (= (and d!1677438 c!895932) b!5197817))

(assert (= (and d!1677438 (not c!895932)) b!5197814))

(assert (= (and b!5197814 c!895931) b!5197818))

(assert (= (and b!5197814 (not c!895931)) b!5197816))

(assert (= (or b!5197817 b!5197818) bm!365420))

(declare-fun m!6251244 () Bool)

(assert (=> b!5197815 m!6251244))

(declare-fun m!6251246 () Bool)

(assert (=> b!5197817 m!6251246))

(declare-fun m!6251248 () Bool)

(assert (=> bm!365420 m!6251248))

(assert (=> b!5197190 d!1677438))

(declare-fun b!5197819 () Bool)

(declare-fun e!3236988 () (InoxSet Context!8298))

(declare-fun e!3236989 () (InoxSet Context!8298))

(assert (=> b!5197819 (= e!3236988 e!3236989)))

(declare-fun c!895933 () Bool)

(assert (=> b!5197819 (= c!895933 ((_ is Cons!60470) (exprs!4649 lt!2139270)))))

(declare-fun d!1677440 () Bool)

(declare-fun c!895934 () Bool)

(declare-fun e!3236990 () Bool)

(assert (=> d!1677440 (= c!895934 e!3236990)))

(declare-fun res!2207934 () Bool)

(assert (=> d!1677440 (=> (not res!2207934) (not e!3236990))))

(assert (=> d!1677440 (= res!2207934 ((_ is Cons!60470) (exprs!4649 lt!2139270)))))

(assert (=> d!1677440 (= (derivationStepZipperUp!137 lt!2139270 (h!66920 s!2326)) e!3236988)))

(declare-fun b!5197820 () Bool)

(assert (=> b!5197820 (= e!3236990 (nullable!4936 (h!66918 (exprs!4649 lt!2139270))))))

(declare-fun b!5197821 () Bool)

(assert (=> b!5197821 (= e!3236989 ((as const (Array Context!8298 Bool)) false))))

(declare-fun b!5197822 () Bool)

(declare-fun call!365426 () (InoxSet Context!8298))

(assert (=> b!5197822 (= e!3236988 ((_ map or) call!365426 (derivationStepZipperUp!137 (Context!8299 (t!373747 (exprs!4649 lt!2139270))) (h!66920 s!2326))))))

(declare-fun b!5197823 () Bool)

(assert (=> b!5197823 (= e!3236989 call!365426)))

(declare-fun bm!365421 () Bool)

(assert (=> bm!365421 (= call!365426 (derivationStepZipperDown!214 (h!66918 (exprs!4649 lt!2139270)) (Context!8299 (t!373747 (exprs!4649 lt!2139270))) (h!66920 s!2326)))))

(assert (= (and d!1677440 res!2207934) b!5197820))

(assert (= (and d!1677440 c!895934) b!5197822))

(assert (= (and d!1677440 (not c!895934)) b!5197819))

(assert (= (and b!5197819 c!895933) b!5197823))

(assert (= (and b!5197819 (not c!895933)) b!5197821))

(assert (= (or b!5197822 b!5197823) bm!365421))

(declare-fun m!6251250 () Bool)

(assert (=> b!5197820 m!6251250))

(declare-fun m!6251252 () Bool)

(assert (=> b!5197822 m!6251252))

(declare-fun m!6251254 () Bool)

(assert (=> bm!365421 m!6251254))

(assert (=> b!5197190 d!1677440))

(declare-fun b!5197824 () Bool)

(declare-fun e!3236994 () Bool)

(declare-fun e!3236996 () Bool)

(assert (=> b!5197824 (= e!3236994 e!3236996)))

(declare-fun res!2207937 () Bool)

(assert (=> b!5197824 (=> (not res!2207937) (not e!3236996))))

(declare-fun call!365428 () Bool)

(assert (=> b!5197824 (= res!2207937 call!365428)))

(declare-fun b!5197825 () Bool)

(declare-fun e!3236991 () Bool)

(declare-fun e!3236997 () Bool)

(assert (=> b!5197825 (= e!3236991 e!3236997)))

(declare-fun c!895935 () Bool)

(assert (=> b!5197825 (= c!895935 ((_ is Star!14765) (regTwo!30042 r!7292)))))

(declare-fun b!5197826 () Bool)

(declare-fun e!3236995 () Bool)

(assert (=> b!5197826 (= e!3236997 e!3236995)))

(declare-fun c!895936 () Bool)

(assert (=> b!5197826 (= c!895936 ((_ is Union!14765) (regTwo!30042 r!7292)))))

(declare-fun bm!365422 () Bool)

(declare-fun call!365427 () Bool)

(assert (=> bm!365422 (= call!365427 (validRegex!6501 (ite c!895936 (regTwo!30043 (regTwo!30042 r!7292)) (regTwo!30042 (regTwo!30042 r!7292)))))))

(declare-fun b!5197827 () Bool)

(declare-fun e!3236992 () Bool)

(declare-fun call!365429 () Bool)

(assert (=> b!5197827 (= e!3236992 call!365429)))

(declare-fun b!5197828 () Bool)

(assert (=> b!5197828 (= e!3236997 e!3236992)))

(declare-fun res!2207938 () Bool)

(assert (=> b!5197828 (= res!2207938 (not (nullable!4936 (reg!15094 (regTwo!30042 r!7292)))))))

(assert (=> b!5197828 (=> (not res!2207938) (not e!3236992))))

(declare-fun bm!365423 () Bool)

(assert (=> bm!365423 (= call!365429 (validRegex!6501 (ite c!895935 (reg!15094 (regTwo!30042 r!7292)) (ite c!895936 (regOne!30043 (regTwo!30042 r!7292)) (regOne!30042 (regTwo!30042 r!7292))))))))

(declare-fun b!5197829 () Bool)

(declare-fun res!2207935 () Bool)

(assert (=> b!5197829 (=> res!2207935 e!3236994)))

(assert (=> b!5197829 (= res!2207935 (not ((_ is Concat!23610) (regTwo!30042 r!7292))))))

(assert (=> b!5197829 (= e!3236995 e!3236994)))

(declare-fun d!1677442 () Bool)

(declare-fun res!2207939 () Bool)

(assert (=> d!1677442 (=> res!2207939 e!3236991)))

(assert (=> d!1677442 (= res!2207939 ((_ is ElementMatch!14765) (regTwo!30042 r!7292)))))

(assert (=> d!1677442 (= (validRegex!6501 (regTwo!30042 r!7292)) e!3236991)))

(declare-fun b!5197830 () Bool)

(assert (=> b!5197830 (= e!3236996 call!365427)))

(declare-fun b!5197831 () Bool)

(declare-fun e!3236993 () Bool)

(assert (=> b!5197831 (= e!3236993 call!365427)))

(declare-fun bm!365424 () Bool)

(assert (=> bm!365424 (= call!365428 call!365429)))

(declare-fun b!5197832 () Bool)

(declare-fun res!2207936 () Bool)

(assert (=> b!5197832 (=> (not res!2207936) (not e!3236993))))

(assert (=> b!5197832 (= res!2207936 call!365428)))

(assert (=> b!5197832 (= e!3236995 e!3236993)))

(assert (= (and d!1677442 (not res!2207939)) b!5197825))

(assert (= (and b!5197825 c!895935) b!5197828))

(assert (= (and b!5197825 (not c!895935)) b!5197826))

(assert (= (and b!5197828 res!2207938) b!5197827))

(assert (= (and b!5197826 c!895936) b!5197832))

(assert (= (and b!5197826 (not c!895936)) b!5197829))

(assert (= (and b!5197832 res!2207936) b!5197831))

(assert (= (and b!5197829 (not res!2207935)) b!5197824))

(assert (= (and b!5197824 res!2207937) b!5197830))

(assert (= (or b!5197831 b!5197830) bm!365422))

(assert (= (or b!5197832 b!5197824) bm!365424))

(assert (= (or b!5197827 bm!365424) bm!365423))

(declare-fun m!6251256 () Bool)

(assert (=> bm!365422 m!6251256))

(declare-fun m!6251258 () Bool)

(assert (=> b!5197828 m!6251258))

(declare-fun m!6251260 () Bool)

(assert (=> bm!365423 m!6251260))

(assert (=> b!5197190 d!1677442))

(declare-fun d!1677444 () Bool)

(assert (=> d!1677444 (= (flatMap!496 lt!2139268 lambda!260149) (dynLambda!23905 lambda!260149 lt!2139270))))

(declare-fun lt!2139347 () Unit!152364)

(assert (=> d!1677444 (= lt!2139347 (choose!38622 lt!2139268 lt!2139270 lambda!260149))))

(assert (=> d!1677444 (= lt!2139268 (store ((as const (Array Context!8298 Bool)) false) lt!2139270 true))))

(assert (=> d!1677444 (= (lemmaFlatMapOnSingletonSet!28 lt!2139268 lt!2139270 lambda!260149) lt!2139347)))

(declare-fun b_lambda!201243 () Bool)

(assert (=> (not b_lambda!201243) (not d!1677444)))

(declare-fun bs!1209072 () Bool)

(assert (= bs!1209072 d!1677444))

(assert (=> bs!1209072 m!6250874))

(declare-fun m!6251262 () Bool)

(assert (=> bs!1209072 m!6251262))

(declare-fun m!6251264 () Bool)

(assert (=> bs!1209072 m!6251264))

(assert (=> bs!1209072 m!6250880))

(assert (=> b!5197190 d!1677444))

(declare-fun d!1677446 () Bool)

(assert (=> d!1677446 (= (flatMap!496 lt!2139262 lambda!260149) (dynLambda!23905 lambda!260149 lt!2139269))))

(declare-fun lt!2139348 () Unit!152364)

(assert (=> d!1677446 (= lt!2139348 (choose!38622 lt!2139262 lt!2139269 lambda!260149))))

(assert (=> d!1677446 (= lt!2139262 (store ((as const (Array Context!8298 Bool)) false) lt!2139269 true))))

(assert (=> d!1677446 (= (lemmaFlatMapOnSingletonSet!28 lt!2139262 lt!2139269 lambda!260149) lt!2139348)))

(declare-fun b_lambda!201245 () Bool)

(assert (=> (not b_lambda!201245) (not d!1677446)))

(declare-fun bs!1209073 () Bool)

(assert (= bs!1209073 d!1677446))

(assert (=> bs!1209073 m!6250892))

(declare-fun m!6251266 () Bool)

(assert (=> bs!1209073 m!6251266))

(declare-fun m!6251268 () Bool)

(assert (=> bs!1209073 m!6251268))

(assert (=> bs!1209073 m!6250888))

(assert (=> b!5197190 d!1677446))

(declare-fun bs!1209074 () Bool)

(declare-fun d!1677448 () Bool)

(assert (= bs!1209074 (and d!1677448 d!1677392)))

(declare-fun lambda!260210 () Int)

(assert (=> bs!1209074 (= lambda!260210 lambda!260188)))

(declare-fun bs!1209075 () Bool)

(assert (= bs!1209075 (and d!1677448 d!1677394)))

(assert (=> bs!1209075 (= lambda!260210 lambda!260191)))

(declare-fun bs!1209076 () Bool)

(assert (= bs!1209076 (and d!1677448 d!1677406)))

(assert (=> bs!1209076 (= lambda!260210 lambda!260197)))

(declare-fun b!5197853 () Bool)

(declare-fun e!3237015 () Bool)

(declare-fun e!3237014 () Bool)

(assert (=> b!5197853 (= e!3237015 e!3237014)))

(declare-fun c!895948 () Bool)

(assert (=> b!5197853 (= c!895948 (isEmpty!32387 (exprs!4649 (h!66919 zl!343))))))

(declare-fun b!5197854 () Bool)

(declare-fun e!3237012 () Bool)

(declare-fun lt!2139351 () Regex!14765)

(declare-fun isConcat!271 (Regex!14765) Bool)

(assert (=> b!5197854 (= e!3237012 (isConcat!271 lt!2139351))))

(assert (=> d!1677448 e!3237015))

(declare-fun res!2207944 () Bool)

(assert (=> d!1677448 (=> (not res!2207944) (not e!3237015))))

(assert (=> d!1677448 (= res!2207944 (validRegex!6501 lt!2139351))))

(declare-fun e!3237011 () Regex!14765)

(assert (=> d!1677448 (= lt!2139351 e!3237011)))

(declare-fun c!895946 () Bool)

(declare-fun e!3237010 () Bool)

(assert (=> d!1677448 (= c!895946 e!3237010)))

(declare-fun res!2207945 () Bool)

(assert (=> d!1677448 (=> (not res!2207945) (not e!3237010))))

(assert (=> d!1677448 (= res!2207945 ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343))))))

(assert (=> d!1677448 (forall!14220 (exprs!4649 (h!66919 zl!343)) lambda!260210)))

(assert (=> d!1677448 (= (generalisedConcat!434 (exprs!4649 (h!66919 zl!343))) lt!2139351)))

(declare-fun b!5197855 () Bool)

(declare-fun e!3237013 () Regex!14765)

(assert (=> b!5197855 (= e!3237011 e!3237013)))

(declare-fun c!895945 () Bool)

(assert (=> b!5197855 (= c!895945 ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343))))))

(declare-fun b!5197856 () Bool)

(assert (=> b!5197856 (= e!3237011 (h!66918 (exprs!4649 (h!66919 zl!343))))))

(declare-fun b!5197857 () Bool)

(assert (=> b!5197857 (= e!3237014 e!3237012)))

(declare-fun c!895947 () Bool)

(assert (=> b!5197857 (= c!895947 (isEmpty!32387 (tail!10240 (exprs!4649 (h!66919 zl!343)))))))

(declare-fun b!5197858 () Bool)

(assert (=> b!5197858 (= e!3237013 EmptyExpr!14765)))

(declare-fun b!5197859 () Bool)

(assert (=> b!5197859 (= e!3237012 (= lt!2139351 (head!11143 (exprs!4649 (h!66919 zl!343)))))))

(declare-fun b!5197860 () Bool)

(declare-fun isEmptyExpr!748 (Regex!14765) Bool)

(assert (=> b!5197860 (= e!3237014 (isEmptyExpr!748 lt!2139351))))

(declare-fun b!5197861 () Bool)

(assert (=> b!5197861 (= e!3237010 (isEmpty!32387 (t!373747 (exprs!4649 (h!66919 zl!343)))))))

(declare-fun b!5197862 () Bool)

(assert (=> b!5197862 (= e!3237013 (Concat!23610 (h!66918 (exprs!4649 (h!66919 zl!343))) (generalisedConcat!434 (t!373747 (exprs!4649 (h!66919 zl!343))))))))

(assert (= (and d!1677448 res!2207945) b!5197861))

(assert (= (and d!1677448 c!895946) b!5197856))

(assert (= (and d!1677448 (not c!895946)) b!5197855))

(assert (= (and b!5197855 c!895945) b!5197862))

(assert (= (and b!5197855 (not c!895945)) b!5197858))

(assert (= (and d!1677448 res!2207944) b!5197853))

(assert (= (and b!5197853 c!895948) b!5197860))

(assert (= (and b!5197853 (not c!895948)) b!5197857))

(assert (= (and b!5197857 c!895947) b!5197859))

(assert (= (and b!5197857 (not c!895947)) b!5197854))

(declare-fun m!6251270 () Bool)

(assert (=> d!1677448 m!6251270))

(declare-fun m!6251272 () Bool)

(assert (=> d!1677448 m!6251272))

(declare-fun m!6251274 () Bool)

(assert (=> b!5197854 m!6251274))

(declare-fun m!6251276 () Bool)

(assert (=> b!5197857 m!6251276))

(assert (=> b!5197857 m!6251276))

(declare-fun m!6251278 () Bool)

(assert (=> b!5197857 m!6251278))

(assert (=> b!5197861 m!6250866))

(declare-fun m!6251280 () Bool)

(assert (=> b!5197853 m!6251280))

(declare-fun m!6251282 () Bool)

(assert (=> b!5197860 m!6251282))

(declare-fun m!6251284 () Bool)

(assert (=> b!5197859 m!6251284))

(declare-fun m!6251286 () Bool)

(assert (=> b!5197862 m!6251286))

(assert (=> b!5197181 d!1677448))

(declare-fun d!1677450 () Bool)

(declare-fun e!3237018 () Bool)

(assert (=> d!1677450 e!3237018))

(declare-fun res!2207948 () Bool)

(assert (=> d!1677450 (=> (not res!2207948) (not e!3237018))))

(declare-fun lt!2139354 () List!60595)

(declare-fun noDuplicate!1167 (List!60595) Bool)

(assert (=> d!1677450 (= res!2207948 (noDuplicate!1167 lt!2139354))))

(declare-fun choose!38627 ((InoxSet Context!8298)) List!60595)

(assert (=> d!1677450 (= lt!2139354 (choose!38627 z!1189))))

(assert (=> d!1677450 (= (toList!8549 z!1189) lt!2139354)))

(declare-fun b!5197865 () Bool)

(declare-fun content!10705 (List!60595) (InoxSet Context!8298))

(assert (=> b!5197865 (= e!3237018 (= (content!10705 lt!2139354) z!1189))))

(assert (= (and d!1677450 res!2207948) b!5197865))

(declare-fun m!6251288 () Bool)

(assert (=> d!1677450 m!6251288))

(declare-fun m!6251290 () Bool)

(assert (=> d!1677450 m!6251290))

(declare-fun m!6251292 () Bool)

(assert (=> b!5197865 m!6251292))

(assert (=> b!5197182 d!1677450))

(declare-fun d!1677452 () Bool)

(declare-fun lt!2139357 () Regex!14765)

(assert (=> d!1677452 (validRegex!6501 lt!2139357)))

(assert (=> d!1677452 (= lt!2139357 (generalisedUnion!694 (unfocusZipperList!207 zl!343)))))

(assert (=> d!1677452 (= (unfocusZipper!507 zl!343) lt!2139357)))

(declare-fun bs!1209077 () Bool)

(assert (= bs!1209077 d!1677452))

(declare-fun m!6251294 () Bool)

(assert (=> bs!1209077 m!6251294))

(assert (=> bs!1209077 m!6250842))

(assert (=> bs!1209077 m!6250842))

(assert (=> bs!1209077 m!6250844))

(assert (=> b!5197191 d!1677452))

(declare-fun bs!1209078 () Bool)

(declare-fun d!1677454 () Bool)

(assert (= bs!1209078 (and d!1677454 d!1677392)))

(declare-fun lambda!260211 () Int)

(assert (=> bs!1209078 (= lambda!260211 lambda!260188)))

(declare-fun bs!1209079 () Bool)

(assert (= bs!1209079 (and d!1677454 d!1677394)))

(assert (=> bs!1209079 (= lambda!260211 lambda!260191)))

(declare-fun bs!1209080 () Bool)

(assert (= bs!1209080 (and d!1677454 d!1677406)))

(assert (=> bs!1209080 (= lambda!260211 lambda!260197)))

(declare-fun bs!1209081 () Bool)

(assert (= bs!1209081 (and d!1677454 d!1677448)))

(assert (=> bs!1209081 (= lambda!260211 lambda!260210)))

(assert (=> d!1677454 (= (inv!80159 setElem!32914) (forall!14220 (exprs!4649 setElem!32914) lambda!260211))))

(declare-fun bs!1209082 () Bool)

(assert (= bs!1209082 d!1677454))

(declare-fun m!6251296 () Bool)

(assert (=> bs!1209082 m!6251296))

(assert (=> setNonEmpty!32914 d!1677454))

(declare-fun b!5197870 () Bool)

(declare-fun e!3237021 () Bool)

(declare-fun tp!1458020 () Bool)

(declare-fun tp!1458021 () Bool)

(assert (=> b!5197870 (= e!3237021 (and tp!1458020 tp!1458021))))

(assert (=> b!5197180 (= tp!1457948 e!3237021)))

(assert (= (and b!5197180 ((_ is Cons!60470) (exprs!4649 (h!66919 zl!343)))) b!5197870))

(declare-fun b!5197878 () Bool)

(declare-fun e!3237027 () Bool)

(declare-fun tp!1458026 () Bool)

(assert (=> b!5197878 (= e!3237027 tp!1458026)))

(declare-fun tp!1458027 () Bool)

(declare-fun b!5197877 () Bool)

(declare-fun e!3237026 () Bool)

(assert (=> b!5197877 (= e!3237026 (and (inv!80159 (h!66919 (t!373748 zl!343))) e!3237027 tp!1458027))))

(assert (=> b!5197175 (= tp!1457950 e!3237026)))

(assert (= b!5197877 b!5197878))

(assert (= (and b!5197175 ((_ is Cons!60471) (t!373748 zl!343))) b!5197877))

(declare-fun m!6251298 () Bool)

(assert (=> b!5197877 m!6251298))

(declare-fun e!3237030 () Bool)

(assert (=> b!5197176 (= tp!1457955 e!3237030)))

(declare-fun b!5197891 () Bool)

(declare-fun tp!1458038 () Bool)

(assert (=> b!5197891 (= e!3237030 tp!1458038)))

(declare-fun b!5197889 () Bool)

(assert (=> b!5197889 (= e!3237030 tp_is_empty!38783)))

(declare-fun b!5197892 () Bool)

(declare-fun tp!1458039 () Bool)

(declare-fun tp!1458041 () Bool)

(assert (=> b!5197892 (= e!3237030 (and tp!1458039 tp!1458041))))

(declare-fun b!5197890 () Bool)

(declare-fun tp!1458042 () Bool)

(declare-fun tp!1458040 () Bool)

(assert (=> b!5197890 (= e!3237030 (and tp!1458042 tp!1458040))))

(assert (= (and b!5197176 ((_ is ElementMatch!14765) (reg!15094 r!7292))) b!5197889))

(assert (= (and b!5197176 ((_ is Concat!23610) (reg!15094 r!7292))) b!5197890))

(assert (= (and b!5197176 ((_ is Star!14765) (reg!15094 r!7292))) b!5197891))

(assert (= (and b!5197176 ((_ is Union!14765) (reg!15094 r!7292))) b!5197892))

(declare-fun b!5197893 () Bool)

(declare-fun e!3237031 () Bool)

(declare-fun tp!1458043 () Bool)

(declare-fun tp!1458044 () Bool)

(assert (=> b!5197893 (= e!3237031 (and tp!1458043 tp!1458044))))

(assert (=> b!5197186 (= tp!1457953 e!3237031)))

(assert (= (and b!5197186 ((_ is Cons!60470) (exprs!4649 setElem!32914))) b!5197893))

(declare-fun e!3237032 () Bool)

(assert (=> b!5197177 (= tp!1457957 e!3237032)))

(declare-fun b!5197896 () Bool)

(declare-fun tp!1458045 () Bool)

(assert (=> b!5197896 (= e!3237032 tp!1458045)))

(declare-fun b!5197894 () Bool)

(assert (=> b!5197894 (= e!3237032 tp_is_empty!38783)))

(declare-fun b!5197897 () Bool)

(declare-fun tp!1458046 () Bool)

(declare-fun tp!1458048 () Bool)

(assert (=> b!5197897 (= e!3237032 (and tp!1458046 tp!1458048))))

(declare-fun b!5197895 () Bool)

(declare-fun tp!1458049 () Bool)

(declare-fun tp!1458047 () Bool)

(assert (=> b!5197895 (= e!3237032 (and tp!1458049 tp!1458047))))

(assert (= (and b!5197177 ((_ is ElementMatch!14765) (regOne!30043 r!7292))) b!5197894))

(assert (= (and b!5197177 ((_ is Concat!23610) (regOne!30043 r!7292))) b!5197895))

(assert (= (and b!5197177 ((_ is Star!14765) (regOne!30043 r!7292))) b!5197896))

(assert (= (and b!5197177 ((_ is Union!14765) (regOne!30043 r!7292))) b!5197897))

(declare-fun e!3237033 () Bool)

(assert (=> b!5197177 (= tp!1457952 e!3237033)))

(declare-fun b!5197900 () Bool)

(declare-fun tp!1458050 () Bool)

(assert (=> b!5197900 (= e!3237033 tp!1458050)))

(declare-fun b!5197898 () Bool)

(assert (=> b!5197898 (= e!3237033 tp_is_empty!38783)))

(declare-fun b!5197901 () Bool)

(declare-fun tp!1458051 () Bool)

(declare-fun tp!1458053 () Bool)

(assert (=> b!5197901 (= e!3237033 (and tp!1458051 tp!1458053))))

(declare-fun b!5197899 () Bool)

(declare-fun tp!1458054 () Bool)

(declare-fun tp!1458052 () Bool)

(assert (=> b!5197899 (= e!3237033 (and tp!1458054 tp!1458052))))

(assert (= (and b!5197177 ((_ is ElementMatch!14765) (regTwo!30043 r!7292))) b!5197898))

(assert (= (and b!5197177 ((_ is Concat!23610) (regTwo!30043 r!7292))) b!5197899))

(assert (= (and b!5197177 ((_ is Star!14765) (regTwo!30043 r!7292))) b!5197900))

(assert (= (and b!5197177 ((_ is Union!14765) (regTwo!30043 r!7292))) b!5197901))

(declare-fun condSetEmpty!32920 () Bool)

(assert (=> setNonEmpty!32914 (= condSetEmpty!32920 (= setRest!32914 ((as const (Array Context!8298 Bool)) false)))))

(declare-fun setRes!32920 () Bool)

(assert (=> setNonEmpty!32914 (= tp!1457951 setRes!32920)))

(declare-fun setIsEmpty!32920 () Bool)

(assert (=> setIsEmpty!32920 setRes!32920))

(declare-fun setNonEmpty!32920 () Bool)

(declare-fun tp!1458059 () Bool)

(declare-fun setElem!32920 () Context!8298)

(declare-fun e!3237036 () Bool)

(assert (=> setNonEmpty!32920 (= setRes!32920 (and tp!1458059 (inv!80159 setElem!32920) e!3237036))))

(declare-fun setRest!32920 () (InoxSet Context!8298))

(assert (=> setNonEmpty!32920 (= setRest!32914 ((_ map or) (store ((as const (Array Context!8298 Bool)) false) setElem!32920 true) setRest!32920))))

(declare-fun b!5197906 () Bool)

(declare-fun tp!1458060 () Bool)

(assert (=> b!5197906 (= e!3237036 tp!1458060)))

(assert (= (and setNonEmpty!32914 condSetEmpty!32920) setIsEmpty!32920))

(assert (= (and setNonEmpty!32914 (not condSetEmpty!32920)) setNonEmpty!32920))

(assert (= setNonEmpty!32920 b!5197906))

(declare-fun m!6251300 () Bool)

(assert (=> setNonEmpty!32920 m!6251300))

(declare-fun b!5197911 () Bool)

(declare-fun e!3237039 () Bool)

(declare-fun tp!1458063 () Bool)

(assert (=> b!5197911 (= e!3237039 (and tp_is_empty!38783 tp!1458063))))

(assert (=> b!5197192 (= tp!1457949 e!3237039)))

(assert (= (and b!5197192 ((_ is Cons!60472) (t!373749 s!2326))) b!5197911))

(declare-fun e!3237040 () Bool)

(assert (=> b!5197188 (= tp!1457956 e!3237040)))

(declare-fun b!5197914 () Bool)

(declare-fun tp!1458064 () Bool)

(assert (=> b!5197914 (= e!3237040 tp!1458064)))

(declare-fun b!5197912 () Bool)

(assert (=> b!5197912 (= e!3237040 tp_is_empty!38783)))

(declare-fun b!5197915 () Bool)

(declare-fun tp!1458065 () Bool)

(declare-fun tp!1458067 () Bool)

(assert (=> b!5197915 (= e!3237040 (and tp!1458065 tp!1458067))))

(declare-fun b!5197913 () Bool)

(declare-fun tp!1458068 () Bool)

(declare-fun tp!1458066 () Bool)

(assert (=> b!5197913 (= e!3237040 (and tp!1458068 tp!1458066))))

(assert (= (and b!5197188 ((_ is ElementMatch!14765) (regOne!30042 r!7292))) b!5197912))

(assert (= (and b!5197188 ((_ is Concat!23610) (regOne!30042 r!7292))) b!5197913))

(assert (= (and b!5197188 ((_ is Star!14765) (regOne!30042 r!7292))) b!5197914))

(assert (= (and b!5197188 ((_ is Union!14765) (regOne!30042 r!7292))) b!5197915))

(declare-fun e!3237041 () Bool)

(assert (=> b!5197188 (= tp!1457954 e!3237041)))

(declare-fun b!5197918 () Bool)

(declare-fun tp!1458069 () Bool)

(assert (=> b!5197918 (= e!3237041 tp!1458069)))

(declare-fun b!5197916 () Bool)

(assert (=> b!5197916 (= e!3237041 tp_is_empty!38783)))

(declare-fun b!5197919 () Bool)

(declare-fun tp!1458070 () Bool)

(declare-fun tp!1458072 () Bool)

(assert (=> b!5197919 (= e!3237041 (and tp!1458070 tp!1458072))))

(declare-fun b!5197917 () Bool)

(declare-fun tp!1458073 () Bool)

(declare-fun tp!1458071 () Bool)

(assert (=> b!5197917 (= e!3237041 (and tp!1458073 tp!1458071))))

(assert (= (and b!5197188 ((_ is ElementMatch!14765) (regTwo!30042 r!7292))) b!5197916))

(assert (= (and b!5197188 ((_ is Concat!23610) (regTwo!30042 r!7292))) b!5197917))

(assert (= (and b!5197188 ((_ is Star!14765) (regTwo!30042 r!7292))) b!5197918))

(assert (= (and b!5197188 ((_ is Union!14765) (regTwo!30042 r!7292))) b!5197919))

(declare-fun b_lambda!201247 () Bool)

(assert (= b_lambda!201243 (or b!5197194 b_lambda!201247)))

(declare-fun bs!1209083 () Bool)

(declare-fun d!1677456 () Bool)

(assert (= bs!1209083 (and d!1677456 b!5197194)))

(assert (=> bs!1209083 (= (dynLambda!23905 lambda!260149 lt!2139270) (derivationStepZipperUp!137 lt!2139270 (h!66920 s!2326)))))

(assert (=> bs!1209083 m!6250882))

(assert (=> d!1677444 d!1677456))

(declare-fun b_lambda!201249 () Bool)

(assert (= b_lambda!201245 (or b!5197194 b_lambda!201249)))

(declare-fun bs!1209084 () Bool)

(declare-fun d!1677458 () Bool)

(assert (= bs!1209084 (and d!1677458 b!5197194)))

(assert (=> bs!1209084 (= (dynLambda!23905 lambda!260149 lt!2139269) (derivationStepZipperUp!137 lt!2139269 (h!66920 s!2326)))))

(assert (=> bs!1209084 m!6250890))

(assert (=> d!1677446 d!1677458))

(declare-fun b_lambda!201251 () Bool)

(assert (= b_lambda!201235 (or b!5197194 b_lambda!201251)))

(declare-fun bs!1209085 () Bool)

(declare-fun d!1677460 () Bool)

(assert (= bs!1209085 (and d!1677460 b!5197194)))

(assert (=> bs!1209085 (= (dynLambda!23905 lambda!260149 (h!66919 zl!343)) (derivationStepZipperUp!137 (h!66919 zl!343) (h!66920 s!2326)))))

(assert (=> bs!1209085 m!6250858))

(assert (=> d!1677390 d!1677460))

(check-sat (not b!5197401) (not b!5197635) (not bm!365409) (not b!5197820) (not b!5197828) (not b!5197913) (not d!1677426) (not b!5197857) (not b!5197631) (not b!5197634) (not b!5197660) (not bs!1209083) (not d!1677406) (not bm!365414) (not b!5197411) (not d!1677452) (not b!5197817) (not setNonEmpty!32920) (not b!5197899) (not b!5197790) (not b!5197918) (not bm!365423) (not b_lambda!201247) (not d!1677422) (not b!5197789) (not b!5197822) (not b!5197788) (not d!1677428) (not b!5197895) (not b!5197860) (not b!5197870) (not b!5197891) (not b!5197815) (not b!5197862) (not b!5197906) (not b!5197854) (not d!1677390) (not b!5197878) (not d!1677354) (not d!1677420) (not b!5197892) (not b!5197762) (not b!5197547) (not b!5197410) (not bs!1209084) (not bm!365372) (not b!5197919) (not b!5197545) (not d!1677454) (not b!5197406) (not b!5197317) (not b!5197785) (not b!5197901) (not bm!365338) (not d!1677394) (not bs!1209085) (not d!1677450) (not d!1677444) (not b!5197630) (not bm!365407) (not b_lambda!201251) (not bm!365365) (not b!5197893) (not d!1677332) (not b!5197472) (not d!1677448) (not bm!365420) (not d!1677378) (not d!1677424) tp_is_empty!38783 (not d!1677392) (not b!5197758) (not bm!365408) (not d!1677370) (not b!5197626) (not bm!365416) (not b!5197859) (not b!5197853) (not bm!365415) (not b!5197628) (not b!5197897) (not bm!365413) (not b!5197896) (not bm!365385) (not b!5197890) (not b!5197915) (not b!5197914) (not bm!365373) (not b!5197313) (not d!1677432) (not b!5197787) (not b!5197917) (not d!1677418) (not b!5197760) (not b!5197403) (not b!5197404) (not b!5197865) (not b!5197877) (not bm!365422) (not d!1677446) (not b!5197782) (not b!5197632) (not b!5197900) (not b!5197911) (not b_lambda!201249) (not bm!365421) (not b!5197861) (not d!1677434) (not b!5197813) (not bm!365339))
(check-sat)
