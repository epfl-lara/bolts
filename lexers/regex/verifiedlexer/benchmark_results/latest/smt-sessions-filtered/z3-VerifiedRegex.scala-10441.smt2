; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539636 () Bool)

(assert start!539636)

(declare-fun b!5114802 () Bool)

(declare-fun res!2177400 () Bool)

(declare-fun e!3189989 () Bool)

(assert (=> b!5114802 (=> res!2177400 e!3189989)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28612 0))(
  ( (C!28613 (val!23958 Int)) )
))
(declare-datatypes ((Regex!14173 0))(
  ( (ElementMatch!14173 (c!878827 C!28612)) (Concat!23018 (regOne!28858 Regex!14173) (regTwo!28858 Regex!14173)) (EmptyExpr!14173) (Star!14173 (reg!14502 Regex!14173)) (EmptyLang!14173) (Union!14173 (regOne!28859 Regex!14173) (regTwo!28859 Regex!14173)) )
))
(declare-datatypes ((List!59245 0))(
  ( (Nil!59121) (Cons!59121 (h!65569 Regex!14173) (t!372252 List!59245)) )
))
(declare-datatypes ((Context!7114 0))(
  ( (Context!7115 (exprs!4057 List!59245)) )
))
(declare-fun z!4463 () (InoxSet Context!7114))

(declare-datatypes ((List!59246 0))(
  ( (Nil!59122) (Cons!59122 (h!65570 C!28612) (t!372253 List!59246)) )
))
(declare-fun testedP!265 () List!59246)

(declare-fun baseZ!46 () (InoxSet Context!7114))

(declare-fun derivationZipper!72 ((InoxSet Context!7114) List!59246) (InoxSet Context!7114))

(assert (=> b!5114802 (= res!2177400 (not (= (derivationZipper!72 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5114803 () Bool)

(declare-fun e!3190001 () Bool)

(declare-fun e!3189991 () Bool)

(assert (=> b!5114803 (= e!3190001 e!3189991)))

(declare-fun res!2177401 () Bool)

(assert (=> b!5114803 (=> res!2177401 e!3189991)))

(declare-fun lt!2107304 () List!59246)

(declare-fun input!5745 () List!59246)

(assert (=> b!5114803 (= res!2177401 (not (= lt!2107304 input!5745)))))

(declare-fun lt!2107292 () List!59246)

(declare-fun lt!2107300 () List!59246)

(declare-fun ++!12998 (List!59246 List!59246) List!59246)

(assert (=> b!5114803 (= lt!2107304 (++!12998 lt!2107292 lt!2107300))))

(declare-fun lt!2107284 () List!59246)

(assert (=> b!5114803 (= lt!2107292 (++!12998 testedP!265 lt!2107284))))

(declare-fun b!5114804 () Bool)

(declare-fun res!2177402 () Bool)

(assert (=> b!5114804 (=> res!2177402 e!3189989)))

(declare-fun lt!2107296 () Int)

(declare-fun lt!2107302 () Int)

(assert (=> b!5114804 (= res!2177402 (= lt!2107296 lt!2107302))))

(declare-fun setIsEmpty!29993 () Bool)

(declare-fun setRes!29993 () Bool)

(assert (=> setIsEmpty!29993 setRes!29993))

(declare-fun b!5114805 () Bool)

(assert (=> b!5114805 (= e!3189989 e!3190001)))

(declare-fun res!2177412 () Bool)

(assert (=> b!5114805 (=> res!2177412 e!3190001)))

(declare-fun knownP!20 () List!59246)

(assert (=> b!5114805 (= res!2177412 (not (= (++!12998 knownP!20 lt!2107300) input!5745)))))

(declare-fun getSuffix!3252 (List!59246 List!59246) List!59246)

(assert (=> b!5114805 (= lt!2107300 (getSuffix!3252 input!5745 knownP!20))))

(declare-fun lt!2107293 () List!59246)

(declare-fun lt!2107298 () List!59246)

(assert (=> b!5114805 (= lt!2107293 (getSuffix!3252 knownP!20 lt!2107298))))

(declare-fun isPrefix!5578 (List!59246 List!59246) Bool)

(assert (=> b!5114805 (isPrefix!5578 lt!2107298 knownP!20)))

(declare-datatypes ((Unit!150241 0))(
  ( (Unit!150242) )
))
(declare-fun lt!2107299 () Unit!150241)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!715 (List!59246 List!59246 List!59246) Unit!150241)

(assert (=> b!5114805 (= lt!2107299 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!715 knownP!20 lt!2107298 input!5745))))

(declare-fun lt!2107297 () C!28612)

(declare-fun derivationStepZipper!808 ((InoxSet Context!7114) C!28612) (InoxSet Context!7114))

(assert (=> b!5114805 (= (derivationZipper!72 baseZ!46 lt!2107298) (derivationStepZipper!808 z!4463 lt!2107297))))

(declare-fun lt!2107287 () Unit!150241)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!33 ((InoxSet Context!7114) (InoxSet Context!7114) List!59246 C!28612) Unit!150241)

(assert (=> b!5114805 (= lt!2107287 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!33 baseZ!46 z!4463 testedP!265 lt!2107297))))

(assert (=> b!5114805 (isPrefix!5578 lt!2107298 input!5745)))

(declare-fun lt!2107288 () Unit!150241)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!968 (List!59246 List!59246) Unit!150241)

(assert (=> b!5114805 (= lt!2107288 (lemmaAddHeadSuffixToPrefixStillPrefix!968 testedP!265 input!5745))))

(declare-fun lt!2107290 () List!59246)

(assert (=> b!5114805 (= lt!2107298 (++!12998 testedP!265 lt!2107290))))

(assert (=> b!5114805 (= lt!2107290 (Cons!59122 lt!2107297 Nil!59122))))

(declare-fun lt!2107306 () List!59246)

(declare-fun head!10901 (List!59246) C!28612)

(assert (=> b!5114805 (= lt!2107297 (head!10901 lt!2107306))))

(assert (=> b!5114805 (= lt!2107306 (getSuffix!3252 input!5745 testedP!265))))

(declare-fun b!5114806 () Bool)

(declare-fun e!3189994 () Bool)

(declare-fun tp_is_empty!37619 () Bool)

(declare-fun tp!1427013 () Bool)

(assert (=> b!5114806 (= e!3189994 (and tp_is_empty!37619 tp!1427013))))

(declare-fun b!5114808 () Bool)

(declare-fun e!3189998 () Bool)

(declare-fun e!3189990 () Bool)

(assert (=> b!5114808 (= e!3189998 e!3189990)))

(declare-fun res!2177403 () Bool)

(assert (=> b!5114808 (=> res!2177403 e!3189990)))

(declare-fun lt!2107305 () List!59246)

(assert (=> b!5114808 (= res!2177403 (not (= lt!2107305 knownP!20)))))

(assert (=> b!5114808 (= lt!2107305 (++!12998 lt!2107298 lt!2107293))))

(declare-fun b!5114809 () Bool)

(declare-fun e!3189992 () Bool)

(declare-fun tp!1427017 () Bool)

(assert (=> b!5114809 (= e!3189992 tp!1427017)))

(declare-fun b!5114810 () Bool)

(declare-fun res!2177411 () Bool)

(assert (=> b!5114810 (=> res!2177411 e!3189998)))

(declare-fun $colon$colon!1119 (List!59246 C!28612) List!59246)

(declare-fun tail!10042 (List!59246) List!59246)

(assert (=> b!5114810 (= res!2177411 (not (= lt!2107284 ($colon$colon!1119 (tail!10042 lt!2107284) lt!2107297))))))

(declare-fun b!5114811 () Bool)

(declare-fun res!2177405 () Bool)

(declare-fun e!3189993 () Bool)

(assert (=> b!5114811 (=> (not res!2177405) (not e!3189993))))

(assert (=> b!5114811 (= res!2177405 (isPrefix!5578 knownP!20 input!5745))))

(declare-fun b!5114812 () Bool)

(declare-fun e!3189997 () Bool)

(assert (=> b!5114812 (= e!3189997 e!3189998)))

(declare-fun res!2177413 () Bool)

(assert (=> b!5114812 (=> res!2177413 e!3189998)))

(assert (=> b!5114812 (= res!2177413 (not (= (head!10901 lt!2107284) lt!2107297)))))

(declare-fun lt!2107295 () List!59246)

(assert (=> b!5114812 (= lt!2107295 lt!2107306)))

(declare-fun lt!2107294 () Unit!150241)

(declare-fun lemmaSamePrefixThenSameSuffix!2624 (List!59246 List!59246 List!59246 List!59246 List!59246) Unit!150241)

(assert (=> b!5114812 (= lt!2107294 (lemmaSamePrefixThenSameSuffix!2624 testedP!265 lt!2107295 testedP!265 lt!2107306 input!5745))))

(declare-fun setElem!29994 () Context!7114)

(declare-fun setNonEmpty!29993 () Bool)

(declare-fun setRes!29994 () Bool)

(declare-fun tp!1427019 () Bool)

(declare-fun inv!78613 (Context!7114) Bool)

(assert (=> setNonEmpty!29993 (= setRes!29994 (and tp!1427019 (inv!78613 setElem!29994) e!3189992))))

(declare-fun setRest!29993 () (InoxSet Context!7114))

(assert (=> setNonEmpty!29993 (= z!4463 ((_ map or) (store ((as const (Array Context!7114 Bool)) false) setElem!29994 true) setRest!29993))))

(declare-fun b!5114813 () Bool)

(declare-fun e!3189999 () Bool)

(declare-fun tp!1427018 () Bool)

(assert (=> b!5114813 (= e!3189999 tp!1427018)))

(declare-fun b!5114814 () Bool)

(declare-fun e!3189996 () Bool)

(declare-fun tp!1427014 () Bool)

(assert (=> b!5114814 (= e!3189996 (and tp_is_empty!37619 tp!1427014))))

(declare-fun b!5114815 () Bool)

(declare-fun res!2177415 () Bool)

(declare-fun e!3189995 () Bool)

(assert (=> b!5114815 (=> (not res!2177415) (not e!3189995))))

(declare-fun matchZipper!841 ((InoxSet Context!7114) List!59246) Bool)

(assert (=> b!5114815 (= res!2177415 (matchZipper!841 baseZ!46 knownP!20))))

(declare-fun b!5114816 () Bool)

(assert (=> b!5114816 (= e!3189991 e!3189997)))

(declare-fun res!2177416 () Bool)

(assert (=> b!5114816 (=> res!2177416 e!3189997)))

(declare-fun lt!2107286 () List!59246)

(assert (=> b!5114816 (= res!2177416 (not (= lt!2107286 input!5745)))))

(assert (=> b!5114816 (= lt!2107304 lt!2107286)))

(assert (=> b!5114816 (= lt!2107286 (++!12998 testedP!265 lt!2107295))))

(assert (=> b!5114816 (= lt!2107295 (++!12998 lt!2107284 lt!2107300))))

(declare-fun lt!2107289 () Unit!150241)

(declare-fun lemmaConcatAssociativity!2756 (List!59246 List!59246 List!59246) Unit!150241)

(assert (=> b!5114816 (= lt!2107289 (lemmaConcatAssociativity!2756 testedP!265 lt!2107284 lt!2107300))))

(declare-fun b!5114807 () Bool)

(assert (=> b!5114807 (= e!3189993 e!3189995)))

(declare-fun res!2177404 () Bool)

(assert (=> b!5114807 (=> (not res!2177404) (not e!3189995))))

(assert (=> b!5114807 (= res!2177404 (>= lt!2107302 lt!2107296))))

(declare-fun size!39479 (List!59246) Int)

(assert (=> b!5114807 (= lt!2107296 (size!39479 testedP!265))))

(assert (=> b!5114807 (= lt!2107302 (size!39479 knownP!20))))

(declare-fun res!2177410 () Bool)

(assert (=> start!539636 (=> (not res!2177410) (not e!3189993))))

(assert (=> start!539636 (= res!2177410 (isPrefix!5578 testedP!265 input!5745))))

(assert (=> start!539636 e!3189993))

(assert (=> start!539636 e!3189996))

(declare-fun condSetEmpty!29994 () Bool)

(assert (=> start!539636 (= condSetEmpty!29994 (= z!4463 ((as const (Array Context!7114 Bool)) false)))))

(assert (=> start!539636 setRes!29994))

(assert (=> start!539636 e!3189994))

(declare-fun condSetEmpty!29993 () Bool)

(assert (=> start!539636 (= condSetEmpty!29993 (= baseZ!46 ((as const (Array Context!7114 Bool)) false)))))

(assert (=> start!539636 setRes!29993))

(declare-fun e!3190000 () Bool)

(assert (=> start!539636 e!3190000))

(declare-fun b!5114817 () Bool)

(assert (=> b!5114817 (= e!3189995 (not e!3189989))))

(declare-fun res!2177407 () Bool)

(assert (=> b!5114817 (=> res!2177407 e!3189989)))

(assert (=> b!5114817 (= res!2177407 (not (matchZipper!841 z!4463 lt!2107284)))))

(assert (=> b!5114817 (= lt!2107284 (getSuffix!3252 knownP!20 testedP!265))))

(assert (=> b!5114817 (isPrefix!5578 testedP!265 knownP!20)))

(declare-fun lt!2107301 () Unit!150241)

(assert (=> b!5114817 (= lt!2107301 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!715 knownP!20 testedP!265 input!5745))))

(declare-fun b!5114818 () Bool)

(declare-fun res!2177406 () Bool)

(assert (=> b!5114818 (=> res!2177406 e!3189989)))

(declare-fun lostCauseZipper!1059 ((InoxSet Context!7114)) Bool)

(assert (=> b!5114818 (= res!2177406 (lostCauseZipper!1059 z!4463))))

(declare-fun setElem!29993 () Context!7114)

(declare-fun tp!1427015 () Bool)

(declare-fun setNonEmpty!29994 () Bool)

(assert (=> setNonEmpty!29994 (= setRes!29993 (and tp!1427015 (inv!78613 setElem!29993) e!3189999))))

(declare-fun setRest!29994 () (InoxSet Context!7114))

(assert (=> setNonEmpty!29994 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7114 Bool)) false) setElem!29993 true) setRest!29994))))

(declare-fun b!5114819 () Bool)

(declare-fun res!2177409 () Bool)

(assert (=> b!5114819 (=> res!2177409 e!3189989)))

(assert (=> b!5114819 (= res!2177409 (>= lt!2107296 (size!39479 input!5745)))))

(declare-fun b!5114820 () Bool)

(declare-fun tp!1427016 () Bool)

(assert (=> b!5114820 (= e!3190000 (and tp_is_empty!37619 tp!1427016))))

(declare-fun b!5114821 () Bool)

(declare-fun res!2177408 () Bool)

(assert (=> b!5114821 (=> res!2177408 e!3189998)))

(assert (=> b!5114821 (= res!2177408 (not (= lt!2107292 knownP!20)))))

(declare-fun setIsEmpty!29994 () Bool)

(assert (=> setIsEmpty!29994 setRes!29994))

(declare-fun b!5114822 () Bool)

(assert (=> b!5114822 (= e!3189990 (not (= lt!2107284 Nil!59122)))))

(declare-fun lt!2107285 () List!59246)

(assert (=> b!5114822 (= lt!2107285 lt!2107284)))

(declare-fun lt!2107291 () Unit!150241)

(assert (=> b!5114822 (= lt!2107291 (lemmaSamePrefixThenSameSuffix!2624 testedP!265 lt!2107285 testedP!265 lt!2107284 knownP!20))))

(assert (=> b!5114822 (= lt!2107305 (++!12998 testedP!265 lt!2107285))))

(assert (=> b!5114822 (= lt!2107285 (++!12998 lt!2107290 lt!2107293))))

(declare-fun lt!2107303 () Unit!150241)

(assert (=> b!5114822 (= lt!2107303 (lemmaConcatAssociativity!2756 testedP!265 lt!2107290 lt!2107293))))

(declare-fun b!5114823 () Bool)

(declare-fun res!2177414 () Bool)

(assert (=> b!5114823 (=> res!2177414 e!3189991)))

(assert (=> b!5114823 (= res!2177414 (not (= (++!12998 testedP!265 lt!2107306) input!5745)))))

(assert (= (and start!539636 res!2177410) b!5114811))

(assert (= (and b!5114811 res!2177405) b!5114807))

(assert (= (and b!5114807 res!2177404) b!5114815))

(assert (= (and b!5114815 res!2177415) b!5114817))

(assert (= (and b!5114817 (not res!2177407)) b!5114802))

(assert (= (and b!5114802 (not res!2177400)) b!5114818))

(assert (= (and b!5114818 (not res!2177406)) b!5114804))

(assert (= (and b!5114804 (not res!2177402)) b!5114819))

(assert (= (and b!5114819 (not res!2177409)) b!5114805))

(assert (= (and b!5114805 (not res!2177412)) b!5114803))

(assert (= (and b!5114803 (not res!2177401)) b!5114823))

(assert (= (and b!5114823 (not res!2177414)) b!5114816))

(assert (= (and b!5114816 (not res!2177416)) b!5114812))

(assert (= (and b!5114812 (not res!2177413)) b!5114810))

(assert (= (and b!5114810 (not res!2177411)) b!5114821))

(assert (= (and b!5114821 (not res!2177408)) b!5114808))

(assert (= (and b!5114808 (not res!2177403)) b!5114822))

(get-info :version)

(assert (= (and start!539636 ((_ is Cons!59122) input!5745)) b!5114814))

(assert (= (and start!539636 condSetEmpty!29994) setIsEmpty!29994))

(assert (= (and start!539636 (not condSetEmpty!29994)) setNonEmpty!29993))

(assert (= setNonEmpty!29993 b!5114809))

(assert (= (and start!539636 ((_ is Cons!59122) testedP!265)) b!5114806))

(assert (= (and start!539636 condSetEmpty!29993) setIsEmpty!29993))

(assert (= (and start!539636 (not condSetEmpty!29993)) setNonEmpty!29994))

(assert (= setNonEmpty!29994 b!5114813))

(assert (= (and start!539636 ((_ is Cons!59122) knownP!20)) b!5114820))

(declare-fun m!6173566 () Bool)

(assert (=> b!5114812 m!6173566))

(declare-fun m!6173568 () Bool)

(assert (=> b!5114812 m!6173568))

(declare-fun m!6173570 () Bool)

(assert (=> start!539636 m!6173570))

(declare-fun m!6173572 () Bool)

(assert (=> b!5114803 m!6173572))

(declare-fun m!6173574 () Bool)

(assert (=> b!5114803 m!6173574))

(declare-fun m!6173576 () Bool)

(assert (=> b!5114818 m!6173576))

(declare-fun m!6173578 () Bool)

(assert (=> b!5114805 m!6173578))

(declare-fun m!6173580 () Bool)

(assert (=> b!5114805 m!6173580))

(declare-fun m!6173582 () Bool)

(assert (=> b!5114805 m!6173582))

(declare-fun m!6173584 () Bool)

(assert (=> b!5114805 m!6173584))

(declare-fun m!6173586 () Bool)

(assert (=> b!5114805 m!6173586))

(declare-fun m!6173588 () Bool)

(assert (=> b!5114805 m!6173588))

(declare-fun m!6173590 () Bool)

(assert (=> b!5114805 m!6173590))

(declare-fun m!6173592 () Bool)

(assert (=> b!5114805 m!6173592))

(declare-fun m!6173594 () Bool)

(assert (=> b!5114805 m!6173594))

(declare-fun m!6173596 () Bool)

(assert (=> b!5114805 m!6173596))

(declare-fun m!6173598 () Bool)

(assert (=> b!5114805 m!6173598))

(declare-fun m!6173600 () Bool)

(assert (=> b!5114805 m!6173600))

(declare-fun m!6173602 () Bool)

(assert (=> b!5114805 m!6173602))

(declare-fun m!6173604 () Bool)

(assert (=> b!5114808 m!6173604))

(declare-fun m!6173606 () Bool)

(assert (=> b!5114802 m!6173606))

(declare-fun m!6173608 () Bool)

(assert (=> b!5114807 m!6173608))

(declare-fun m!6173610 () Bool)

(assert (=> b!5114807 m!6173610))

(declare-fun m!6173612 () Bool)

(assert (=> b!5114823 m!6173612))

(declare-fun m!6173614 () Bool)

(assert (=> b!5114819 m!6173614))

(declare-fun m!6173616 () Bool)

(assert (=> b!5114817 m!6173616))

(declare-fun m!6173618 () Bool)

(assert (=> b!5114817 m!6173618))

(declare-fun m!6173620 () Bool)

(assert (=> b!5114817 m!6173620))

(declare-fun m!6173622 () Bool)

(assert (=> b!5114817 m!6173622))

(declare-fun m!6173624 () Bool)

(assert (=> b!5114822 m!6173624))

(declare-fun m!6173626 () Bool)

(assert (=> b!5114822 m!6173626))

(declare-fun m!6173628 () Bool)

(assert (=> b!5114822 m!6173628))

(declare-fun m!6173630 () Bool)

(assert (=> b!5114822 m!6173630))

(declare-fun m!6173632 () Bool)

(assert (=> b!5114810 m!6173632))

(assert (=> b!5114810 m!6173632))

(declare-fun m!6173634 () Bool)

(assert (=> b!5114810 m!6173634))

(declare-fun m!6173636 () Bool)

(assert (=> b!5114811 m!6173636))

(declare-fun m!6173638 () Bool)

(assert (=> b!5114815 m!6173638))

(declare-fun m!6173640 () Bool)

(assert (=> setNonEmpty!29993 m!6173640))

(declare-fun m!6173642 () Bool)

(assert (=> setNonEmpty!29994 m!6173642))

(declare-fun m!6173644 () Bool)

(assert (=> b!5114816 m!6173644))

(declare-fun m!6173646 () Bool)

(assert (=> b!5114816 m!6173646))

(declare-fun m!6173648 () Bool)

(assert (=> b!5114816 m!6173648))

(check-sat (not b!5114812) (not b!5114806) tp_is_empty!37619 (not start!539636) (not b!5114808) (not b!5114814) (not b!5114822) (not b!5114807) (not setNonEmpty!29993) (not b!5114809) (not b!5114803) (not b!5114820) (not b!5114810) (not b!5114816) (not b!5114823) (not b!5114805) (not b!5114802) (not b!5114817) (not setNonEmpty!29994) (not b!5114813) (not b!5114811) (not b!5114818) (not b!5114819) (not b!5114815))
(check-sat)
(get-model)

(declare-fun b!5114849 () Bool)

(declare-fun e!3190014 () List!59246)

(assert (=> b!5114849 (= e!3190014 (Cons!59122 (h!65570 testedP!265) (++!12998 (t!372253 testedP!265) lt!2107306)))))

(declare-fun b!5114848 () Bool)

(assert (=> b!5114848 (= e!3190014 lt!2107306)))

(declare-fun d!1653036 () Bool)

(declare-fun e!3190015 () Bool)

(assert (=> d!1653036 e!3190015))

(declare-fun res!2177430 () Bool)

(assert (=> d!1653036 (=> (not res!2177430) (not e!3190015))))

(declare-fun lt!2107313 () List!59246)

(declare-fun content!10511 (List!59246) (InoxSet C!28612))

(assert (=> d!1653036 (= res!2177430 (= (content!10511 lt!2107313) ((_ map or) (content!10511 testedP!265) (content!10511 lt!2107306))))))

(assert (=> d!1653036 (= lt!2107313 e!3190014)))

(declare-fun c!878834 () Bool)

(assert (=> d!1653036 (= c!878834 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653036 (= (++!12998 testedP!265 lt!2107306) lt!2107313)))

(declare-fun b!5114851 () Bool)

(assert (=> b!5114851 (= e!3190015 (or (not (= lt!2107306 Nil!59122)) (= lt!2107313 testedP!265)))))

(declare-fun b!5114850 () Bool)

(declare-fun res!2177429 () Bool)

(assert (=> b!5114850 (=> (not res!2177429) (not e!3190015))))

(assert (=> b!5114850 (= res!2177429 (= (size!39479 lt!2107313) (+ (size!39479 testedP!265) (size!39479 lt!2107306))))))

(assert (= (and d!1653036 c!878834) b!5114848))

(assert (= (and d!1653036 (not c!878834)) b!5114849))

(assert (= (and d!1653036 res!2177430) b!5114850))

(assert (= (and b!5114850 res!2177429) b!5114851))

(declare-fun m!6173676 () Bool)

(assert (=> b!5114849 m!6173676))

(declare-fun m!6173678 () Bool)

(assert (=> d!1653036 m!6173678))

(declare-fun m!6173680 () Bool)

(assert (=> d!1653036 m!6173680))

(declare-fun m!6173682 () Bool)

(assert (=> d!1653036 m!6173682))

(declare-fun m!6173684 () Bool)

(assert (=> b!5114850 m!6173684))

(assert (=> b!5114850 m!6173608))

(declare-fun m!6173686 () Bool)

(assert (=> b!5114850 m!6173686))

(assert (=> b!5114823 d!1653036))

(declare-fun d!1653042 () Bool)

(assert (=> d!1653042 (= lt!2107285 lt!2107284)))

(declare-fun lt!2107320 () Unit!150241)

(declare-fun choose!37551 (List!59246 List!59246 List!59246 List!59246 List!59246) Unit!150241)

(assert (=> d!1653042 (= lt!2107320 (choose!37551 testedP!265 lt!2107285 testedP!265 lt!2107284 knownP!20))))

(assert (=> d!1653042 (isPrefix!5578 testedP!265 knownP!20)))

(assert (=> d!1653042 (= (lemmaSamePrefixThenSameSuffix!2624 testedP!265 lt!2107285 testedP!265 lt!2107284 knownP!20) lt!2107320)))

(declare-fun bs!1192298 () Bool)

(assert (= bs!1192298 d!1653042))

(declare-fun m!6173688 () Bool)

(assert (=> bs!1192298 m!6173688))

(assert (=> bs!1192298 m!6173620))

(assert (=> b!5114822 d!1653042))

(declare-fun b!5114857 () Bool)

(declare-fun e!3190018 () List!59246)

(assert (=> b!5114857 (= e!3190018 (Cons!59122 (h!65570 testedP!265) (++!12998 (t!372253 testedP!265) lt!2107285)))))

(declare-fun b!5114856 () Bool)

(assert (=> b!5114856 (= e!3190018 lt!2107285)))

(declare-fun d!1653044 () Bool)

(declare-fun e!3190019 () Bool)

(assert (=> d!1653044 e!3190019))

(declare-fun res!2177432 () Bool)

(assert (=> d!1653044 (=> (not res!2177432) (not e!3190019))))

(declare-fun lt!2107321 () List!59246)

(assert (=> d!1653044 (= res!2177432 (= (content!10511 lt!2107321) ((_ map or) (content!10511 testedP!265) (content!10511 lt!2107285))))))

(assert (=> d!1653044 (= lt!2107321 e!3190018)))

(declare-fun c!878839 () Bool)

(assert (=> d!1653044 (= c!878839 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653044 (= (++!12998 testedP!265 lt!2107285) lt!2107321)))

(declare-fun b!5114859 () Bool)

(assert (=> b!5114859 (= e!3190019 (or (not (= lt!2107285 Nil!59122)) (= lt!2107321 testedP!265)))))

(declare-fun b!5114858 () Bool)

(declare-fun res!2177431 () Bool)

(assert (=> b!5114858 (=> (not res!2177431) (not e!3190019))))

(assert (=> b!5114858 (= res!2177431 (= (size!39479 lt!2107321) (+ (size!39479 testedP!265) (size!39479 lt!2107285))))))

(assert (= (and d!1653044 c!878839) b!5114856))

(assert (= (and d!1653044 (not c!878839)) b!5114857))

(assert (= (and d!1653044 res!2177432) b!5114858))

(assert (= (and b!5114858 res!2177431) b!5114859))

(declare-fun m!6173690 () Bool)

(assert (=> b!5114857 m!6173690))

(declare-fun m!6173692 () Bool)

(assert (=> d!1653044 m!6173692))

(assert (=> d!1653044 m!6173680))

(declare-fun m!6173694 () Bool)

(assert (=> d!1653044 m!6173694))

(declare-fun m!6173696 () Bool)

(assert (=> b!5114858 m!6173696))

(assert (=> b!5114858 m!6173608))

(declare-fun m!6173698 () Bool)

(assert (=> b!5114858 m!6173698))

(assert (=> b!5114822 d!1653044))

(declare-fun b!5114861 () Bool)

(declare-fun e!3190020 () List!59246)

(assert (=> b!5114861 (= e!3190020 (Cons!59122 (h!65570 lt!2107290) (++!12998 (t!372253 lt!2107290) lt!2107293)))))

(declare-fun b!5114860 () Bool)

(assert (=> b!5114860 (= e!3190020 lt!2107293)))

(declare-fun d!1653046 () Bool)

(declare-fun e!3190021 () Bool)

(assert (=> d!1653046 e!3190021))

(declare-fun res!2177434 () Bool)

(assert (=> d!1653046 (=> (not res!2177434) (not e!3190021))))

(declare-fun lt!2107322 () List!59246)

(assert (=> d!1653046 (= res!2177434 (= (content!10511 lt!2107322) ((_ map or) (content!10511 lt!2107290) (content!10511 lt!2107293))))))

(assert (=> d!1653046 (= lt!2107322 e!3190020)))

(declare-fun c!878840 () Bool)

(assert (=> d!1653046 (= c!878840 ((_ is Nil!59122) lt!2107290))))

(assert (=> d!1653046 (= (++!12998 lt!2107290 lt!2107293) lt!2107322)))

(declare-fun b!5114863 () Bool)

(assert (=> b!5114863 (= e!3190021 (or (not (= lt!2107293 Nil!59122)) (= lt!2107322 lt!2107290)))))

(declare-fun b!5114862 () Bool)

(declare-fun res!2177433 () Bool)

(assert (=> b!5114862 (=> (not res!2177433) (not e!3190021))))

(assert (=> b!5114862 (= res!2177433 (= (size!39479 lt!2107322) (+ (size!39479 lt!2107290) (size!39479 lt!2107293))))))

(assert (= (and d!1653046 c!878840) b!5114860))

(assert (= (and d!1653046 (not c!878840)) b!5114861))

(assert (= (and d!1653046 res!2177434) b!5114862))

(assert (= (and b!5114862 res!2177433) b!5114863))

(declare-fun m!6173700 () Bool)

(assert (=> b!5114861 m!6173700))

(declare-fun m!6173702 () Bool)

(assert (=> d!1653046 m!6173702))

(declare-fun m!6173704 () Bool)

(assert (=> d!1653046 m!6173704))

(declare-fun m!6173706 () Bool)

(assert (=> d!1653046 m!6173706))

(declare-fun m!6173708 () Bool)

(assert (=> b!5114862 m!6173708))

(declare-fun m!6173710 () Bool)

(assert (=> b!5114862 m!6173710))

(declare-fun m!6173712 () Bool)

(assert (=> b!5114862 m!6173712))

(assert (=> b!5114822 d!1653046))

(declare-fun d!1653048 () Bool)

(assert (=> d!1653048 (= (++!12998 (++!12998 testedP!265 lt!2107290) lt!2107293) (++!12998 testedP!265 (++!12998 lt!2107290 lt!2107293)))))

(declare-fun lt!2107325 () Unit!150241)

(declare-fun choose!37553 (List!59246 List!59246 List!59246) Unit!150241)

(assert (=> d!1653048 (= lt!2107325 (choose!37553 testedP!265 lt!2107290 lt!2107293))))

(assert (=> d!1653048 (= (lemmaConcatAssociativity!2756 testedP!265 lt!2107290 lt!2107293) lt!2107325)))

(declare-fun bs!1192299 () Bool)

(assert (= bs!1192299 d!1653048))

(assert (=> bs!1192299 m!6173628))

(declare-fun m!6173714 () Bool)

(assert (=> bs!1192299 m!6173714))

(assert (=> bs!1192299 m!6173590))

(declare-fun m!6173716 () Bool)

(assert (=> bs!1192299 m!6173716))

(assert (=> bs!1192299 m!6173628))

(declare-fun m!6173718 () Bool)

(assert (=> bs!1192299 m!6173718))

(assert (=> bs!1192299 m!6173590))

(assert (=> b!5114822 d!1653048))

(declare-fun d!1653050 () Bool)

(declare-fun c!878843 () Bool)

(declare-fun isEmpty!31896 (List!59246) Bool)

(assert (=> d!1653050 (= c!878843 (isEmpty!31896 knownP!20))))

(declare-fun e!3190024 () Bool)

(assert (=> d!1653050 (= (matchZipper!841 baseZ!46 knownP!20) e!3190024)))

(declare-fun b!5114868 () Bool)

(declare-fun nullableZipper!1008 ((InoxSet Context!7114)) Bool)

(assert (=> b!5114868 (= e!3190024 (nullableZipper!1008 baseZ!46))))

(declare-fun b!5114869 () Bool)

(assert (=> b!5114869 (= e!3190024 (matchZipper!841 (derivationStepZipper!808 baseZ!46 (head!10901 knownP!20)) (tail!10042 knownP!20)))))

(assert (= (and d!1653050 c!878843) b!5114868))

(assert (= (and d!1653050 (not c!878843)) b!5114869))

(declare-fun m!6173720 () Bool)

(assert (=> d!1653050 m!6173720))

(declare-fun m!6173722 () Bool)

(assert (=> b!5114868 m!6173722))

(declare-fun m!6173724 () Bool)

(assert (=> b!5114869 m!6173724))

(assert (=> b!5114869 m!6173724))

(declare-fun m!6173726 () Bool)

(assert (=> b!5114869 m!6173726))

(declare-fun m!6173728 () Bool)

(assert (=> b!5114869 m!6173728))

(assert (=> b!5114869 m!6173726))

(assert (=> b!5114869 m!6173728))

(declare-fun m!6173730 () Bool)

(assert (=> b!5114869 m!6173730))

(assert (=> b!5114815 d!1653050))

(declare-fun d!1653052 () Bool)

(declare-fun lt!2107328 () List!59246)

(assert (=> d!1653052 (= (++!12998 testedP!265 lt!2107328) input!5745)))

(declare-fun e!3190027 () List!59246)

(assert (=> d!1653052 (= lt!2107328 e!3190027)))

(declare-fun c!878846 () Bool)

(assert (=> d!1653052 (= c!878846 ((_ is Cons!59122) testedP!265))))

(assert (=> d!1653052 (>= (size!39479 input!5745) (size!39479 testedP!265))))

(assert (=> d!1653052 (= (getSuffix!3252 input!5745 testedP!265) lt!2107328)))

(declare-fun b!5114874 () Bool)

(assert (=> b!5114874 (= e!3190027 (getSuffix!3252 (tail!10042 input!5745) (t!372253 testedP!265)))))

(declare-fun b!5114875 () Bool)

(assert (=> b!5114875 (= e!3190027 input!5745)))

(assert (= (and d!1653052 c!878846) b!5114874))

(assert (= (and d!1653052 (not c!878846)) b!5114875))

(declare-fun m!6173732 () Bool)

(assert (=> d!1653052 m!6173732))

(assert (=> d!1653052 m!6173614))

(assert (=> d!1653052 m!6173608))

(declare-fun m!6173734 () Bool)

(assert (=> b!5114874 m!6173734))

(assert (=> b!5114874 m!6173734))

(declare-fun m!6173736 () Bool)

(assert (=> b!5114874 m!6173736))

(assert (=> b!5114805 d!1653052))

(declare-fun d!1653054 () Bool)

(declare-fun e!3190036 () Bool)

(assert (=> d!1653054 e!3190036))

(declare-fun res!2177444 () Bool)

(assert (=> d!1653054 (=> res!2177444 e!3190036)))

(declare-fun lt!2107331 () Bool)

(assert (=> d!1653054 (= res!2177444 (not lt!2107331))))

(declare-fun e!3190034 () Bool)

(assert (=> d!1653054 (= lt!2107331 e!3190034)))

(declare-fun res!2177443 () Bool)

(assert (=> d!1653054 (=> res!2177443 e!3190034)))

(assert (=> d!1653054 (= res!2177443 ((_ is Nil!59122) lt!2107298))))

(assert (=> d!1653054 (= (isPrefix!5578 lt!2107298 knownP!20) lt!2107331)))

(declare-fun b!5114887 () Bool)

(assert (=> b!5114887 (= e!3190036 (>= (size!39479 knownP!20) (size!39479 lt!2107298)))))

(declare-fun b!5114886 () Bool)

(declare-fun e!3190035 () Bool)

(assert (=> b!5114886 (= e!3190035 (isPrefix!5578 (tail!10042 lt!2107298) (tail!10042 knownP!20)))))

(declare-fun b!5114884 () Bool)

(assert (=> b!5114884 (= e!3190034 e!3190035)))

(declare-fun res!2177445 () Bool)

(assert (=> b!5114884 (=> (not res!2177445) (not e!3190035))))

(assert (=> b!5114884 (= res!2177445 (not ((_ is Nil!59122) knownP!20)))))

(declare-fun b!5114885 () Bool)

(declare-fun res!2177446 () Bool)

(assert (=> b!5114885 (=> (not res!2177446) (not e!3190035))))

(assert (=> b!5114885 (= res!2177446 (= (head!10901 lt!2107298) (head!10901 knownP!20)))))

(assert (= (and d!1653054 (not res!2177443)) b!5114884))

(assert (= (and b!5114884 res!2177445) b!5114885))

(assert (= (and b!5114885 res!2177446) b!5114886))

(assert (= (and d!1653054 (not res!2177444)) b!5114887))

(assert (=> b!5114887 m!6173610))

(declare-fun m!6173738 () Bool)

(assert (=> b!5114887 m!6173738))

(declare-fun m!6173740 () Bool)

(assert (=> b!5114886 m!6173740))

(assert (=> b!5114886 m!6173728))

(assert (=> b!5114886 m!6173740))

(assert (=> b!5114886 m!6173728))

(declare-fun m!6173742 () Bool)

(assert (=> b!5114886 m!6173742))

(declare-fun m!6173744 () Bool)

(assert (=> b!5114885 m!6173744))

(assert (=> b!5114885 m!6173724))

(assert (=> b!5114805 d!1653054))

(declare-fun d!1653056 () Bool)

(assert (=> d!1653056 (isPrefix!5578 lt!2107298 knownP!20)))

(declare-fun lt!2107334 () Unit!150241)

(declare-fun choose!37554 (List!59246 List!59246 List!59246) Unit!150241)

(assert (=> d!1653056 (= lt!2107334 (choose!37554 knownP!20 lt!2107298 input!5745))))

(assert (=> d!1653056 (isPrefix!5578 knownP!20 input!5745)))

(assert (=> d!1653056 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!715 knownP!20 lt!2107298 input!5745) lt!2107334)))

(declare-fun bs!1192300 () Bool)

(assert (= bs!1192300 d!1653056))

(assert (=> bs!1192300 m!6173584))

(declare-fun m!6173746 () Bool)

(assert (=> bs!1192300 m!6173746))

(assert (=> bs!1192300 m!6173636))

(assert (=> b!5114805 d!1653056))

(declare-fun d!1653058 () Bool)

(declare-fun e!3190039 () Bool)

(assert (=> d!1653058 e!3190039))

(declare-fun res!2177448 () Bool)

(assert (=> d!1653058 (=> res!2177448 e!3190039)))

(declare-fun lt!2107335 () Bool)

(assert (=> d!1653058 (= res!2177448 (not lt!2107335))))

(declare-fun e!3190037 () Bool)

(assert (=> d!1653058 (= lt!2107335 e!3190037)))

(declare-fun res!2177447 () Bool)

(assert (=> d!1653058 (=> res!2177447 e!3190037)))

(assert (=> d!1653058 (= res!2177447 ((_ is Nil!59122) lt!2107298))))

(assert (=> d!1653058 (= (isPrefix!5578 lt!2107298 input!5745) lt!2107335)))

(declare-fun b!5114891 () Bool)

(assert (=> b!5114891 (= e!3190039 (>= (size!39479 input!5745) (size!39479 lt!2107298)))))

(declare-fun b!5114890 () Bool)

(declare-fun e!3190038 () Bool)

(assert (=> b!5114890 (= e!3190038 (isPrefix!5578 (tail!10042 lt!2107298) (tail!10042 input!5745)))))

(declare-fun b!5114888 () Bool)

(assert (=> b!5114888 (= e!3190037 e!3190038)))

(declare-fun res!2177449 () Bool)

(assert (=> b!5114888 (=> (not res!2177449) (not e!3190038))))

(assert (=> b!5114888 (= res!2177449 (not ((_ is Nil!59122) input!5745)))))

(declare-fun b!5114889 () Bool)

(declare-fun res!2177450 () Bool)

(assert (=> b!5114889 (=> (not res!2177450) (not e!3190038))))

(assert (=> b!5114889 (= res!2177450 (= (head!10901 lt!2107298) (head!10901 input!5745)))))

(assert (= (and d!1653058 (not res!2177447)) b!5114888))

(assert (= (and b!5114888 res!2177449) b!5114889))

(assert (= (and b!5114889 res!2177450) b!5114890))

(assert (= (and d!1653058 (not res!2177448)) b!5114891))

(assert (=> b!5114891 m!6173614))

(assert (=> b!5114891 m!6173738))

(assert (=> b!5114890 m!6173740))

(assert (=> b!5114890 m!6173734))

(assert (=> b!5114890 m!6173740))

(assert (=> b!5114890 m!6173734))

(declare-fun m!6173748 () Bool)

(assert (=> b!5114890 m!6173748))

(assert (=> b!5114889 m!6173744))

(declare-fun m!6173750 () Bool)

(assert (=> b!5114889 m!6173750))

(assert (=> b!5114805 d!1653058))

(declare-fun d!1653060 () Bool)

(declare-fun lt!2107336 () List!59246)

(assert (=> d!1653060 (= (++!12998 lt!2107298 lt!2107336) knownP!20)))

(declare-fun e!3190040 () List!59246)

(assert (=> d!1653060 (= lt!2107336 e!3190040)))

(declare-fun c!878847 () Bool)

(assert (=> d!1653060 (= c!878847 ((_ is Cons!59122) lt!2107298))))

(assert (=> d!1653060 (>= (size!39479 knownP!20) (size!39479 lt!2107298))))

(assert (=> d!1653060 (= (getSuffix!3252 knownP!20 lt!2107298) lt!2107336)))

(declare-fun b!5114892 () Bool)

(assert (=> b!5114892 (= e!3190040 (getSuffix!3252 (tail!10042 knownP!20) (t!372253 lt!2107298)))))

(declare-fun b!5114893 () Bool)

(assert (=> b!5114893 (= e!3190040 knownP!20)))

(assert (= (and d!1653060 c!878847) b!5114892))

(assert (= (and d!1653060 (not c!878847)) b!5114893))

(declare-fun m!6173752 () Bool)

(assert (=> d!1653060 m!6173752))

(assert (=> d!1653060 m!6173610))

(assert (=> d!1653060 m!6173738))

(assert (=> b!5114892 m!6173728))

(assert (=> b!5114892 m!6173728))

(declare-fun m!6173754 () Bool)

(assert (=> b!5114892 m!6173754))

(assert (=> b!5114805 d!1653060))

(declare-fun d!1653062 () Bool)

(assert (=> d!1653062 (= (derivationZipper!72 baseZ!46 (++!12998 testedP!265 (Cons!59122 lt!2107297 Nil!59122))) (derivationStepZipper!808 z!4463 lt!2107297))))

(declare-fun lt!2107339 () Unit!150241)

(declare-fun choose!37555 ((InoxSet Context!7114) (InoxSet Context!7114) List!59246 C!28612) Unit!150241)

(assert (=> d!1653062 (= lt!2107339 (choose!37555 baseZ!46 z!4463 testedP!265 lt!2107297))))

(assert (=> d!1653062 (= (derivationZipper!72 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653062 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!33 baseZ!46 z!4463 testedP!265 lt!2107297) lt!2107339)))

(declare-fun bs!1192301 () Bool)

(assert (= bs!1192301 d!1653062))

(assert (=> bs!1192301 m!6173606))

(assert (=> bs!1192301 m!6173594))

(declare-fun m!6173756 () Bool)

(assert (=> bs!1192301 m!6173756))

(assert (=> bs!1192301 m!6173756))

(declare-fun m!6173758 () Bool)

(assert (=> bs!1192301 m!6173758))

(declare-fun m!6173760 () Bool)

(assert (=> bs!1192301 m!6173760))

(assert (=> b!5114805 d!1653062))

(declare-fun b!5114895 () Bool)

(declare-fun e!3190041 () List!59246)

(assert (=> b!5114895 (= e!3190041 (Cons!59122 (h!65570 testedP!265) (++!12998 (t!372253 testedP!265) lt!2107290)))))

(declare-fun b!5114894 () Bool)

(assert (=> b!5114894 (= e!3190041 lt!2107290)))

(declare-fun d!1653064 () Bool)

(declare-fun e!3190042 () Bool)

(assert (=> d!1653064 e!3190042))

(declare-fun res!2177452 () Bool)

(assert (=> d!1653064 (=> (not res!2177452) (not e!3190042))))

(declare-fun lt!2107340 () List!59246)

(assert (=> d!1653064 (= res!2177452 (= (content!10511 lt!2107340) ((_ map or) (content!10511 testedP!265) (content!10511 lt!2107290))))))

(assert (=> d!1653064 (= lt!2107340 e!3190041)))

(declare-fun c!878849 () Bool)

(assert (=> d!1653064 (= c!878849 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653064 (= (++!12998 testedP!265 lt!2107290) lt!2107340)))

(declare-fun b!5114897 () Bool)

(assert (=> b!5114897 (= e!3190042 (or (not (= lt!2107290 Nil!59122)) (= lt!2107340 testedP!265)))))

(declare-fun b!5114896 () Bool)

(declare-fun res!2177451 () Bool)

(assert (=> b!5114896 (=> (not res!2177451) (not e!3190042))))

(assert (=> b!5114896 (= res!2177451 (= (size!39479 lt!2107340) (+ (size!39479 testedP!265) (size!39479 lt!2107290))))))

(assert (= (and d!1653064 c!878849) b!5114894))

(assert (= (and d!1653064 (not c!878849)) b!5114895))

(assert (= (and d!1653064 res!2177452) b!5114896))

(assert (= (and b!5114896 res!2177451) b!5114897))

(declare-fun m!6173762 () Bool)

(assert (=> b!5114895 m!6173762))

(declare-fun m!6173764 () Bool)

(assert (=> d!1653064 m!6173764))

(assert (=> d!1653064 m!6173680))

(assert (=> d!1653064 m!6173704))

(declare-fun m!6173766 () Bool)

(assert (=> b!5114896 m!6173766))

(assert (=> b!5114896 m!6173608))

(assert (=> b!5114896 m!6173710))

(assert (=> b!5114805 d!1653064))

(declare-fun d!1653066 () Bool)

(assert (=> d!1653066 (isPrefix!5578 (++!12998 testedP!265 (Cons!59122 (head!10901 (getSuffix!3252 input!5745 testedP!265)) Nil!59122)) input!5745)))

(declare-fun lt!2107343 () Unit!150241)

(declare-fun choose!37556 (List!59246 List!59246) Unit!150241)

(assert (=> d!1653066 (= lt!2107343 (choose!37556 testedP!265 input!5745))))

(assert (=> d!1653066 (isPrefix!5578 testedP!265 input!5745)))

(assert (=> d!1653066 (= (lemmaAddHeadSuffixToPrefixStillPrefix!968 testedP!265 input!5745) lt!2107343)))

(declare-fun bs!1192302 () Bool)

(assert (= bs!1192302 d!1653066))

(declare-fun m!6173768 () Bool)

(assert (=> bs!1192302 m!6173768))

(declare-fun m!6173770 () Bool)

(assert (=> bs!1192302 m!6173770))

(assert (=> bs!1192302 m!6173578))

(assert (=> bs!1192302 m!6173570))

(assert (=> bs!1192302 m!6173768))

(declare-fun m!6173772 () Bool)

(assert (=> bs!1192302 m!6173772))

(assert (=> bs!1192302 m!6173578))

(declare-fun m!6173774 () Bool)

(assert (=> bs!1192302 m!6173774))

(assert (=> b!5114805 d!1653066))

(declare-fun d!1653068 () Bool)

(assert (=> d!1653068 true))

(declare-fun lambda!250771 () Int)

(declare-fun flatMap!342 ((InoxSet Context!7114) Int) (InoxSet Context!7114))

(assert (=> d!1653068 (= (derivationStepZipper!808 z!4463 lt!2107297) (flatMap!342 z!4463 lambda!250771))))

(declare-fun bs!1192318 () Bool)

(assert (= bs!1192318 d!1653068))

(declare-fun m!6173980 () Bool)

(assert (=> bs!1192318 m!6173980))

(assert (=> b!5114805 d!1653068))

(declare-fun b!5115022 () Bool)

(declare-fun e!3190117 () List!59246)

(assert (=> b!5115022 (= e!3190117 (Cons!59122 (h!65570 knownP!20) (++!12998 (t!372253 knownP!20) lt!2107300)))))

(declare-fun b!5115021 () Bool)

(assert (=> b!5115021 (= e!3190117 lt!2107300)))

(declare-fun d!1653148 () Bool)

(declare-fun e!3190118 () Bool)

(assert (=> d!1653148 e!3190118))

(declare-fun res!2177498 () Bool)

(assert (=> d!1653148 (=> (not res!2177498) (not e!3190118))))

(declare-fun lt!2107408 () List!59246)

(assert (=> d!1653148 (= res!2177498 (= (content!10511 lt!2107408) ((_ map or) (content!10511 knownP!20) (content!10511 lt!2107300))))))

(assert (=> d!1653148 (= lt!2107408 e!3190117)))

(declare-fun c!878889 () Bool)

(assert (=> d!1653148 (= c!878889 ((_ is Nil!59122) knownP!20))))

(assert (=> d!1653148 (= (++!12998 knownP!20 lt!2107300) lt!2107408)))

(declare-fun b!5115024 () Bool)

(assert (=> b!5115024 (= e!3190118 (or (not (= lt!2107300 Nil!59122)) (= lt!2107408 knownP!20)))))

(declare-fun b!5115023 () Bool)

(declare-fun res!2177497 () Bool)

(assert (=> b!5115023 (=> (not res!2177497) (not e!3190118))))

(assert (=> b!5115023 (= res!2177497 (= (size!39479 lt!2107408) (+ (size!39479 knownP!20) (size!39479 lt!2107300))))))

(assert (= (and d!1653148 c!878889) b!5115021))

(assert (= (and d!1653148 (not c!878889)) b!5115022))

(assert (= (and d!1653148 res!2177498) b!5115023))

(assert (= (and b!5115023 res!2177497) b!5115024))

(declare-fun m!6173982 () Bool)

(assert (=> b!5115022 m!6173982))

(declare-fun m!6173984 () Bool)

(assert (=> d!1653148 m!6173984))

(declare-fun m!6173986 () Bool)

(assert (=> d!1653148 m!6173986))

(declare-fun m!6173988 () Bool)

(assert (=> d!1653148 m!6173988))

(declare-fun m!6173990 () Bool)

(assert (=> b!5115023 m!6173990))

(assert (=> b!5115023 m!6173610))

(declare-fun m!6173992 () Bool)

(assert (=> b!5115023 m!6173992))

(assert (=> b!5114805 d!1653148))

(declare-fun d!1653150 () Bool)

(declare-fun c!878892 () Bool)

(assert (=> d!1653150 (= c!878892 ((_ is Cons!59122) lt!2107298))))

(declare-fun e!3190121 () (InoxSet Context!7114))

(assert (=> d!1653150 (= (derivationZipper!72 baseZ!46 lt!2107298) e!3190121)))

(declare-fun b!5115029 () Bool)

(assert (=> b!5115029 (= e!3190121 (derivationZipper!72 (derivationStepZipper!808 baseZ!46 (h!65570 lt!2107298)) (t!372253 lt!2107298)))))

(declare-fun b!5115030 () Bool)

(assert (=> b!5115030 (= e!3190121 baseZ!46)))

(assert (= (and d!1653150 c!878892) b!5115029))

(assert (= (and d!1653150 (not c!878892)) b!5115030))

(declare-fun m!6173994 () Bool)

(assert (=> b!5115029 m!6173994))

(assert (=> b!5115029 m!6173994))

(declare-fun m!6173996 () Bool)

(assert (=> b!5115029 m!6173996))

(assert (=> b!5114805 d!1653150))

(declare-fun d!1653152 () Bool)

(assert (=> d!1653152 (= (head!10901 lt!2107306) (h!65570 lt!2107306))))

(assert (=> b!5114805 d!1653152))

(declare-fun d!1653154 () Bool)

(declare-fun lt!2107409 () List!59246)

(assert (=> d!1653154 (= (++!12998 knownP!20 lt!2107409) input!5745)))

(declare-fun e!3190122 () List!59246)

(assert (=> d!1653154 (= lt!2107409 e!3190122)))

(declare-fun c!878893 () Bool)

(assert (=> d!1653154 (= c!878893 ((_ is Cons!59122) knownP!20))))

(assert (=> d!1653154 (>= (size!39479 input!5745) (size!39479 knownP!20))))

(assert (=> d!1653154 (= (getSuffix!3252 input!5745 knownP!20) lt!2107409)))

(declare-fun b!5115031 () Bool)

(assert (=> b!5115031 (= e!3190122 (getSuffix!3252 (tail!10042 input!5745) (t!372253 knownP!20)))))

(declare-fun b!5115032 () Bool)

(assert (=> b!5115032 (= e!3190122 input!5745)))

(assert (= (and d!1653154 c!878893) b!5115031))

(assert (= (and d!1653154 (not c!878893)) b!5115032))

(declare-fun m!6173998 () Bool)

(assert (=> d!1653154 m!6173998))

(assert (=> d!1653154 m!6173614))

(assert (=> d!1653154 m!6173610))

(assert (=> b!5115031 m!6173734))

(assert (=> b!5115031 m!6173734))

(declare-fun m!6174000 () Bool)

(assert (=> b!5115031 m!6174000))

(assert (=> b!5114805 d!1653154))

(declare-fun d!1653156 () Bool)

(declare-fun c!878894 () Bool)

(assert (=> d!1653156 (= c!878894 (isEmpty!31896 lt!2107284))))

(declare-fun e!3190123 () Bool)

(assert (=> d!1653156 (= (matchZipper!841 z!4463 lt!2107284) e!3190123)))

(declare-fun b!5115033 () Bool)

(assert (=> b!5115033 (= e!3190123 (nullableZipper!1008 z!4463))))

(declare-fun b!5115034 () Bool)

(assert (=> b!5115034 (= e!3190123 (matchZipper!841 (derivationStepZipper!808 z!4463 (head!10901 lt!2107284)) (tail!10042 lt!2107284)))))

(assert (= (and d!1653156 c!878894) b!5115033))

(assert (= (and d!1653156 (not c!878894)) b!5115034))

(declare-fun m!6174002 () Bool)

(assert (=> d!1653156 m!6174002))

(declare-fun m!6174004 () Bool)

(assert (=> b!5115033 m!6174004))

(assert (=> b!5115034 m!6173566))

(assert (=> b!5115034 m!6173566))

(declare-fun m!6174006 () Bool)

(assert (=> b!5115034 m!6174006))

(assert (=> b!5115034 m!6173632))

(assert (=> b!5115034 m!6174006))

(assert (=> b!5115034 m!6173632))

(declare-fun m!6174008 () Bool)

(assert (=> b!5115034 m!6174008))

(assert (=> b!5114817 d!1653156))

(declare-fun d!1653158 () Bool)

(declare-fun lt!2107410 () List!59246)

(assert (=> d!1653158 (= (++!12998 testedP!265 lt!2107410) knownP!20)))

(declare-fun e!3190124 () List!59246)

(assert (=> d!1653158 (= lt!2107410 e!3190124)))

(declare-fun c!878895 () Bool)

(assert (=> d!1653158 (= c!878895 ((_ is Cons!59122) testedP!265))))

(assert (=> d!1653158 (>= (size!39479 knownP!20) (size!39479 testedP!265))))

(assert (=> d!1653158 (= (getSuffix!3252 knownP!20 testedP!265) lt!2107410)))

(declare-fun b!5115035 () Bool)

(assert (=> b!5115035 (= e!3190124 (getSuffix!3252 (tail!10042 knownP!20) (t!372253 testedP!265)))))

(declare-fun b!5115036 () Bool)

(assert (=> b!5115036 (= e!3190124 knownP!20)))

(assert (= (and d!1653158 c!878895) b!5115035))

(assert (= (and d!1653158 (not c!878895)) b!5115036))

(declare-fun m!6174010 () Bool)

(assert (=> d!1653158 m!6174010))

(assert (=> d!1653158 m!6173610))

(assert (=> d!1653158 m!6173608))

(assert (=> b!5115035 m!6173728))

(assert (=> b!5115035 m!6173728))

(declare-fun m!6174012 () Bool)

(assert (=> b!5115035 m!6174012))

(assert (=> b!5114817 d!1653158))

(declare-fun d!1653160 () Bool)

(declare-fun e!3190127 () Bool)

(assert (=> d!1653160 e!3190127))

(declare-fun res!2177500 () Bool)

(assert (=> d!1653160 (=> res!2177500 e!3190127)))

(declare-fun lt!2107411 () Bool)

(assert (=> d!1653160 (= res!2177500 (not lt!2107411))))

(declare-fun e!3190125 () Bool)

(assert (=> d!1653160 (= lt!2107411 e!3190125)))

(declare-fun res!2177499 () Bool)

(assert (=> d!1653160 (=> res!2177499 e!3190125)))

(assert (=> d!1653160 (= res!2177499 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653160 (= (isPrefix!5578 testedP!265 knownP!20) lt!2107411)))

(declare-fun b!5115040 () Bool)

(assert (=> b!5115040 (= e!3190127 (>= (size!39479 knownP!20) (size!39479 testedP!265)))))

(declare-fun b!5115039 () Bool)

(declare-fun e!3190126 () Bool)

(assert (=> b!5115039 (= e!3190126 (isPrefix!5578 (tail!10042 testedP!265) (tail!10042 knownP!20)))))

(declare-fun b!5115037 () Bool)

(assert (=> b!5115037 (= e!3190125 e!3190126)))

(declare-fun res!2177501 () Bool)

(assert (=> b!5115037 (=> (not res!2177501) (not e!3190126))))

(assert (=> b!5115037 (= res!2177501 (not ((_ is Nil!59122) knownP!20)))))

(declare-fun b!5115038 () Bool)

(declare-fun res!2177502 () Bool)

(assert (=> b!5115038 (=> (not res!2177502) (not e!3190126))))

(assert (=> b!5115038 (= res!2177502 (= (head!10901 testedP!265) (head!10901 knownP!20)))))

(assert (= (and d!1653160 (not res!2177499)) b!5115037))

(assert (= (and b!5115037 res!2177501) b!5115038))

(assert (= (and b!5115038 res!2177502) b!5115039))

(assert (= (and d!1653160 (not res!2177500)) b!5115040))

(assert (=> b!5115040 m!6173610))

(assert (=> b!5115040 m!6173608))

(declare-fun m!6174014 () Bool)

(assert (=> b!5115039 m!6174014))

(assert (=> b!5115039 m!6173728))

(assert (=> b!5115039 m!6174014))

(assert (=> b!5115039 m!6173728))

(declare-fun m!6174016 () Bool)

(assert (=> b!5115039 m!6174016))

(declare-fun m!6174018 () Bool)

(assert (=> b!5115038 m!6174018))

(assert (=> b!5115038 m!6173724))

(assert (=> b!5114817 d!1653160))

(declare-fun d!1653162 () Bool)

(assert (=> d!1653162 (isPrefix!5578 testedP!265 knownP!20)))

(declare-fun lt!2107412 () Unit!150241)

(assert (=> d!1653162 (= lt!2107412 (choose!37554 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653162 (isPrefix!5578 knownP!20 input!5745)))

(assert (=> d!1653162 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!715 knownP!20 testedP!265 input!5745) lt!2107412)))

(declare-fun bs!1192319 () Bool)

(assert (= bs!1192319 d!1653162))

(assert (=> bs!1192319 m!6173620))

(declare-fun m!6174020 () Bool)

(assert (=> bs!1192319 m!6174020))

(assert (=> bs!1192319 m!6173636))

(assert (=> b!5114817 d!1653162))

(declare-fun d!1653164 () Bool)

(declare-fun lt!2107415 () Int)

(assert (=> d!1653164 (>= lt!2107415 0)))

(declare-fun e!3190130 () Int)

(assert (=> d!1653164 (= lt!2107415 e!3190130)))

(declare-fun c!878898 () Bool)

(assert (=> d!1653164 (= c!878898 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653164 (= (size!39479 testedP!265) lt!2107415)))

(declare-fun b!5115045 () Bool)

(assert (=> b!5115045 (= e!3190130 0)))

(declare-fun b!5115046 () Bool)

(assert (=> b!5115046 (= e!3190130 (+ 1 (size!39479 (t!372253 testedP!265))))))

(assert (= (and d!1653164 c!878898) b!5115045))

(assert (= (and d!1653164 (not c!878898)) b!5115046))

(declare-fun m!6174022 () Bool)

(assert (=> b!5115046 m!6174022))

(assert (=> b!5114807 d!1653164))

(declare-fun d!1653166 () Bool)

(declare-fun lt!2107416 () Int)

(assert (=> d!1653166 (>= lt!2107416 0)))

(declare-fun e!3190131 () Int)

(assert (=> d!1653166 (= lt!2107416 e!3190131)))

(declare-fun c!878899 () Bool)

(assert (=> d!1653166 (= c!878899 ((_ is Nil!59122) knownP!20))))

(assert (=> d!1653166 (= (size!39479 knownP!20) lt!2107416)))

(declare-fun b!5115047 () Bool)

(assert (=> b!5115047 (= e!3190131 0)))

(declare-fun b!5115048 () Bool)

(assert (=> b!5115048 (= e!3190131 (+ 1 (size!39479 (t!372253 knownP!20))))))

(assert (= (and d!1653166 c!878899) b!5115047))

(assert (= (and d!1653166 (not c!878899)) b!5115048))

(declare-fun m!6174024 () Bool)

(assert (=> b!5115048 m!6174024))

(assert (=> b!5114807 d!1653166))

(declare-fun b!5115050 () Bool)

(declare-fun e!3190132 () List!59246)

(assert (=> b!5115050 (= e!3190132 (Cons!59122 (h!65570 testedP!265) (++!12998 (t!372253 testedP!265) lt!2107295)))))

(declare-fun b!5115049 () Bool)

(assert (=> b!5115049 (= e!3190132 lt!2107295)))

(declare-fun d!1653168 () Bool)

(declare-fun e!3190133 () Bool)

(assert (=> d!1653168 e!3190133))

(declare-fun res!2177504 () Bool)

(assert (=> d!1653168 (=> (not res!2177504) (not e!3190133))))

(declare-fun lt!2107417 () List!59246)

(assert (=> d!1653168 (= res!2177504 (= (content!10511 lt!2107417) ((_ map or) (content!10511 testedP!265) (content!10511 lt!2107295))))))

(assert (=> d!1653168 (= lt!2107417 e!3190132)))

(declare-fun c!878900 () Bool)

(assert (=> d!1653168 (= c!878900 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653168 (= (++!12998 testedP!265 lt!2107295) lt!2107417)))

(declare-fun b!5115052 () Bool)

(assert (=> b!5115052 (= e!3190133 (or (not (= lt!2107295 Nil!59122)) (= lt!2107417 testedP!265)))))

(declare-fun b!5115051 () Bool)

(declare-fun res!2177503 () Bool)

(assert (=> b!5115051 (=> (not res!2177503) (not e!3190133))))

(assert (=> b!5115051 (= res!2177503 (= (size!39479 lt!2107417) (+ (size!39479 testedP!265) (size!39479 lt!2107295))))))

(assert (= (and d!1653168 c!878900) b!5115049))

(assert (= (and d!1653168 (not c!878900)) b!5115050))

(assert (= (and d!1653168 res!2177504) b!5115051))

(assert (= (and b!5115051 res!2177503) b!5115052))

(declare-fun m!6174026 () Bool)

(assert (=> b!5115050 m!6174026))

(declare-fun m!6174028 () Bool)

(assert (=> d!1653168 m!6174028))

(assert (=> d!1653168 m!6173680))

(declare-fun m!6174030 () Bool)

(assert (=> d!1653168 m!6174030))

(declare-fun m!6174032 () Bool)

(assert (=> b!5115051 m!6174032))

(assert (=> b!5115051 m!6173608))

(declare-fun m!6174034 () Bool)

(assert (=> b!5115051 m!6174034))

(assert (=> b!5114816 d!1653168))

(declare-fun b!5115054 () Bool)

(declare-fun e!3190134 () List!59246)

(assert (=> b!5115054 (= e!3190134 (Cons!59122 (h!65570 lt!2107284) (++!12998 (t!372253 lt!2107284) lt!2107300)))))

(declare-fun b!5115053 () Bool)

(assert (=> b!5115053 (= e!3190134 lt!2107300)))

(declare-fun d!1653170 () Bool)

(declare-fun e!3190135 () Bool)

(assert (=> d!1653170 e!3190135))

(declare-fun res!2177506 () Bool)

(assert (=> d!1653170 (=> (not res!2177506) (not e!3190135))))

(declare-fun lt!2107418 () List!59246)

(assert (=> d!1653170 (= res!2177506 (= (content!10511 lt!2107418) ((_ map or) (content!10511 lt!2107284) (content!10511 lt!2107300))))))

(assert (=> d!1653170 (= lt!2107418 e!3190134)))

(declare-fun c!878901 () Bool)

(assert (=> d!1653170 (= c!878901 ((_ is Nil!59122) lt!2107284))))

(assert (=> d!1653170 (= (++!12998 lt!2107284 lt!2107300) lt!2107418)))

(declare-fun b!5115056 () Bool)

(assert (=> b!5115056 (= e!3190135 (or (not (= lt!2107300 Nil!59122)) (= lt!2107418 lt!2107284)))))

(declare-fun b!5115055 () Bool)

(declare-fun res!2177505 () Bool)

(assert (=> b!5115055 (=> (not res!2177505) (not e!3190135))))

(assert (=> b!5115055 (= res!2177505 (= (size!39479 lt!2107418) (+ (size!39479 lt!2107284) (size!39479 lt!2107300))))))

(assert (= (and d!1653170 c!878901) b!5115053))

(assert (= (and d!1653170 (not c!878901)) b!5115054))

(assert (= (and d!1653170 res!2177506) b!5115055))

(assert (= (and b!5115055 res!2177505) b!5115056))

(declare-fun m!6174036 () Bool)

(assert (=> b!5115054 m!6174036))

(declare-fun m!6174038 () Bool)

(assert (=> d!1653170 m!6174038))

(declare-fun m!6174040 () Bool)

(assert (=> d!1653170 m!6174040))

(assert (=> d!1653170 m!6173988))

(declare-fun m!6174042 () Bool)

(assert (=> b!5115055 m!6174042))

(declare-fun m!6174044 () Bool)

(assert (=> b!5115055 m!6174044))

(assert (=> b!5115055 m!6173992))

(assert (=> b!5114816 d!1653170))

(declare-fun d!1653172 () Bool)

(assert (=> d!1653172 (= (++!12998 (++!12998 testedP!265 lt!2107284) lt!2107300) (++!12998 testedP!265 (++!12998 lt!2107284 lt!2107300)))))

(declare-fun lt!2107419 () Unit!150241)

(assert (=> d!1653172 (= lt!2107419 (choose!37553 testedP!265 lt!2107284 lt!2107300))))

(assert (=> d!1653172 (= (lemmaConcatAssociativity!2756 testedP!265 lt!2107284 lt!2107300) lt!2107419)))

(declare-fun bs!1192320 () Bool)

(assert (= bs!1192320 d!1653172))

(assert (=> bs!1192320 m!6173646))

(declare-fun m!6174046 () Bool)

(assert (=> bs!1192320 m!6174046))

(assert (=> bs!1192320 m!6173574))

(declare-fun m!6174048 () Bool)

(assert (=> bs!1192320 m!6174048))

(assert (=> bs!1192320 m!6173646))

(declare-fun m!6174050 () Bool)

(assert (=> bs!1192320 m!6174050))

(assert (=> bs!1192320 m!6173574))

(assert (=> b!5114816 d!1653172))

(declare-fun d!1653174 () Bool)

(declare-fun e!3190138 () Bool)

(assert (=> d!1653174 e!3190138))

(declare-fun res!2177508 () Bool)

(assert (=> d!1653174 (=> res!2177508 e!3190138)))

(declare-fun lt!2107420 () Bool)

(assert (=> d!1653174 (= res!2177508 (not lt!2107420))))

(declare-fun e!3190136 () Bool)

(assert (=> d!1653174 (= lt!2107420 e!3190136)))

(declare-fun res!2177507 () Bool)

(assert (=> d!1653174 (=> res!2177507 e!3190136)))

(assert (=> d!1653174 (= res!2177507 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653174 (= (isPrefix!5578 testedP!265 input!5745) lt!2107420)))

(declare-fun b!5115060 () Bool)

(assert (=> b!5115060 (= e!3190138 (>= (size!39479 input!5745) (size!39479 testedP!265)))))

(declare-fun b!5115059 () Bool)

(declare-fun e!3190137 () Bool)

(assert (=> b!5115059 (= e!3190137 (isPrefix!5578 (tail!10042 testedP!265) (tail!10042 input!5745)))))

(declare-fun b!5115057 () Bool)

(assert (=> b!5115057 (= e!3190136 e!3190137)))

(declare-fun res!2177509 () Bool)

(assert (=> b!5115057 (=> (not res!2177509) (not e!3190137))))

(assert (=> b!5115057 (= res!2177509 (not ((_ is Nil!59122) input!5745)))))

(declare-fun b!5115058 () Bool)

(declare-fun res!2177510 () Bool)

(assert (=> b!5115058 (=> (not res!2177510) (not e!3190137))))

(assert (=> b!5115058 (= res!2177510 (= (head!10901 testedP!265) (head!10901 input!5745)))))

(assert (= (and d!1653174 (not res!2177507)) b!5115057))

(assert (= (and b!5115057 res!2177509) b!5115058))

(assert (= (and b!5115058 res!2177510) b!5115059))

(assert (= (and d!1653174 (not res!2177508)) b!5115060))

(assert (=> b!5115060 m!6173614))

(assert (=> b!5115060 m!6173608))

(assert (=> b!5115059 m!6174014))

(assert (=> b!5115059 m!6173734))

(assert (=> b!5115059 m!6174014))

(assert (=> b!5115059 m!6173734))

(declare-fun m!6174052 () Bool)

(assert (=> b!5115059 m!6174052))

(assert (=> b!5115058 m!6174018))

(assert (=> b!5115058 m!6173750))

(assert (=> start!539636 d!1653174))

(declare-fun bs!1192321 () Bool)

(declare-fun b!5115065 () Bool)

(declare-fun d!1653176 () Bool)

(assert (= bs!1192321 (and b!5115065 d!1653176)))

(declare-fun lambda!250785 () Int)

(declare-fun lambda!250784 () Int)

(assert (=> bs!1192321 (not (= lambda!250785 lambda!250784))))

(declare-fun bs!1192322 () Bool)

(declare-fun b!5115066 () Bool)

(assert (= bs!1192322 (and b!5115066 d!1653176)))

(declare-fun lambda!250786 () Int)

(assert (=> bs!1192322 (not (= lambda!250786 lambda!250784))))

(declare-fun bs!1192323 () Bool)

(assert (= bs!1192323 (and b!5115066 b!5115065)))

(assert (=> bs!1192323 (= lambda!250786 lambda!250785)))

(declare-fun bm!356492 () Bool)

(declare-datatypes ((List!59248 0))(
  ( (Nil!59124) (Cons!59124 (h!65572 Context!7114) (t!372257 List!59248)) )
))
(declare-fun lt!2107439 () List!59248)

(declare-fun call!356496 () Bool)

(declare-fun c!878912 () Bool)

(declare-fun lt!2107440 () List!59248)

(declare-fun exists!1455 (List!59248 Int) Bool)

(assert (=> bm!356492 (= call!356496 (exists!1455 (ite c!878912 lt!2107440 lt!2107439) (ite c!878912 lambda!250785 lambda!250786)))))

(declare-fun e!3190145 () Unit!150241)

(declare-fun Unit!150245 () Unit!150241)

(assert (=> b!5115066 (= e!3190145 Unit!150245)))

(declare-fun call!356497 () List!59248)

(assert (=> b!5115066 (= lt!2107439 call!356497)))

(declare-fun lt!2107437 () Unit!150241)

(declare-fun lemmaForallThenNotExists!301 (List!59248 Int) Unit!150241)

(assert (=> b!5115066 (= lt!2107437 (lemmaForallThenNotExists!301 lt!2107439 lambda!250784))))

(assert (=> b!5115066 (not call!356496)))

(declare-fun lt!2107441 () Unit!150241)

(assert (=> b!5115066 (= lt!2107441 lt!2107437)))

(declare-fun lt!2107443 () Bool)

(declare-datatypes ((Option!14678 0))(
  ( (None!14677) (Some!14677 (v!50690 List!59246)) )
))
(declare-fun isEmpty!31897 (Option!14678) Bool)

(declare-fun getLanguageWitness!795 ((InoxSet Context!7114)) Option!14678)

(assert (=> d!1653176 (= lt!2107443 (isEmpty!31897 (getLanguageWitness!795 z!4463)))))

(declare-fun forall!13571 ((InoxSet Context!7114) Int) Bool)

(assert (=> d!1653176 (= lt!2107443 (forall!13571 z!4463 lambda!250784))))

(declare-fun lt!2107438 () Unit!150241)

(assert (=> d!1653176 (= lt!2107438 e!3190145)))

(assert (=> d!1653176 (= c!878912 (not (forall!13571 z!4463 lambda!250784)))))

(assert (=> d!1653176 (= (lostCauseZipper!1059 z!4463) lt!2107443)))

(declare-fun Unit!150246 () Unit!150241)

(assert (=> b!5115065 (= e!3190145 Unit!150246)))

(assert (=> b!5115065 (= lt!2107440 call!356497)))

(declare-fun lt!2107442 () Unit!150241)

(declare-fun lemmaNotForallThenExists!318 (List!59248 Int) Unit!150241)

(assert (=> b!5115065 (= lt!2107442 (lemmaNotForallThenExists!318 lt!2107440 lambda!250784))))

(assert (=> b!5115065 call!356496))

(declare-fun lt!2107444 () Unit!150241)

(assert (=> b!5115065 (= lt!2107444 lt!2107442)))

(declare-fun bm!356491 () Bool)

(declare-fun toList!8244 ((InoxSet Context!7114)) List!59248)

(assert (=> bm!356491 (= call!356497 (toList!8244 z!4463))))

(assert (= (and d!1653176 c!878912) b!5115065))

(assert (= (and d!1653176 (not c!878912)) b!5115066))

(assert (= (or b!5115065 b!5115066) bm!356491))

(assert (= (or b!5115065 b!5115066) bm!356492))

(declare-fun m!6174054 () Bool)

(assert (=> b!5115065 m!6174054))

(declare-fun m!6174056 () Bool)

(assert (=> b!5115066 m!6174056))

(declare-fun m!6174058 () Bool)

(assert (=> bm!356491 m!6174058))

(declare-fun m!6174060 () Bool)

(assert (=> d!1653176 m!6174060))

(assert (=> d!1653176 m!6174060))

(declare-fun m!6174062 () Bool)

(assert (=> d!1653176 m!6174062))

(declare-fun m!6174064 () Bool)

(assert (=> d!1653176 m!6174064))

(assert (=> d!1653176 m!6174064))

(declare-fun m!6174066 () Bool)

(assert (=> bm!356492 m!6174066))

(assert (=> b!5114818 d!1653176))

(declare-fun b!5115068 () Bool)

(declare-fun e!3190146 () List!59246)

(assert (=> b!5115068 (= e!3190146 (Cons!59122 (h!65570 lt!2107298) (++!12998 (t!372253 lt!2107298) lt!2107293)))))

(declare-fun b!5115067 () Bool)

(assert (=> b!5115067 (= e!3190146 lt!2107293)))

(declare-fun d!1653178 () Bool)

(declare-fun e!3190147 () Bool)

(assert (=> d!1653178 e!3190147))

(declare-fun res!2177512 () Bool)

(assert (=> d!1653178 (=> (not res!2177512) (not e!3190147))))

(declare-fun lt!2107445 () List!59246)

(assert (=> d!1653178 (= res!2177512 (= (content!10511 lt!2107445) ((_ map or) (content!10511 lt!2107298) (content!10511 lt!2107293))))))

(assert (=> d!1653178 (= lt!2107445 e!3190146)))

(declare-fun c!878913 () Bool)

(assert (=> d!1653178 (= c!878913 ((_ is Nil!59122) lt!2107298))))

(assert (=> d!1653178 (= (++!12998 lt!2107298 lt!2107293) lt!2107445)))

(declare-fun b!5115070 () Bool)

(assert (=> b!5115070 (= e!3190147 (or (not (= lt!2107293 Nil!59122)) (= lt!2107445 lt!2107298)))))

(declare-fun b!5115069 () Bool)

(declare-fun res!2177511 () Bool)

(assert (=> b!5115069 (=> (not res!2177511) (not e!3190147))))

(assert (=> b!5115069 (= res!2177511 (= (size!39479 lt!2107445) (+ (size!39479 lt!2107298) (size!39479 lt!2107293))))))

(assert (= (and d!1653178 c!878913) b!5115067))

(assert (= (and d!1653178 (not c!878913)) b!5115068))

(assert (= (and d!1653178 res!2177512) b!5115069))

(assert (= (and b!5115069 res!2177511) b!5115070))

(declare-fun m!6174068 () Bool)

(assert (=> b!5115068 m!6174068))

(declare-fun m!6174070 () Bool)

(assert (=> d!1653178 m!6174070))

(declare-fun m!6174072 () Bool)

(assert (=> d!1653178 m!6174072))

(assert (=> d!1653178 m!6173706))

(declare-fun m!6174074 () Bool)

(assert (=> b!5115069 m!6174074))

(assert (=> b!5115069 m!6173738))

(assert (=> b!5115069 m!6173712))

(assert (=> b!5114808 d!1653178))

(declare-fun d!1653180 () Bool)

(assert (=> d!1653180 (= ($colon$colon!1119 (tail!10042 lt!2107284) lt!2107297) (Cons!59122 lt!2107297 (tail!10042 lt!2107284)))))

(assert (=> b!5114810 d!1653180))

(declare-fun d!1653182 () Bool)

(assert (=> d!1653182 (= (tail!10042 lt!2107284) (t!372253 lt!2107284))))

(assert (=> b!5114810 d!1653182))

(declare-fun d!1653184 () Bool)

(declare-fun lambda!250789 () Int)

(declare-fun forall!13572 (List!59245 Int) Bool)

(assert (=> d!1653184 (= (inv!78613 setElem!29993) (forall!13572 (exprs!4057 setElem!29993) lambda!250789))))

(declare-fun bs!1192324 () Bool)

(assert (= bs!1192324 d!1653184))

(declare-fun m!6174076 () Bool)

(assert (=> bs!1192324 m!6174076))

(assert (=> setNonEmpty!29994 d!1653184))

(declare-fun d!1653186 () Bool)

(declare-fun e!3190150 () Bool)

(assert (=> d!1653186 e!3190150))

(declare-fun res!2177514 () Bool)

(assert (=> d!1653186 (=> res!2177514 e!3190150)))

(declare-fun lt!2107446 () Bool)

(assert (=> d!1653186 (= res!2177514 (not lt!2107446))))

(declare-fun e!3190148 () Bool)

(assert (=> d!1653186 (= lt!2107446 e!3190148)))

(declare-fun res!2177513 () Bool)

(assert (=> d!1653186 (=> res!2177513 e!3190148)))

(assert (=> d!1653186 (= res!2177513 ((_ is Nil!59122) knownP!20))))

(assert (=> d!1653186 (= (isPrefix!5578 knownP!20 input!5745) lt!2107446)))

(declare-fun b!5115074 () Bool)

(assert (=> b!5115074 (= e!3190150 (>= (size!39479 input!5745) (size!39479 knownP!20)))))

(declare-fun b!5115073 () Bool)

(declare-fun e!3190149 () Bool)

(assert (=> b!5115073 (= e!3190149 (isPrefix!5578 (tail!10042 knownP!20) (tail!10042 input!5745)))))

(declare-fun b!5115071 () Bool)

(assert (=> b!5115071 (= e!3190148 e!3190149)))

(declare-fun res!2177515 () Bool)

(assert (=> b!5115071 (=> (not res!2177515) (not e!3190149))))

(assert (=> b!5115071 (= res!2177515 (not ((_ is Nil!59122) input!5745)))))

(declare-fun b!5115072 () Bool)

(declare-fun res!2177516 () Bool)

(assert (=> b!5115072 (=> (not res!2177516) (not e!3190149))))

(assert (=> b!5115072 (= res!2177516 (= (head!10901 knownP!20) (head!10901 input!5745)))))

(assert (= (and d!1653186 (not res!2177513)) b!5115071))

(assert (= (and b!5115071 res!2177515) b!5115072))

(assert (= (and b!5115072 res!2177516) b!5115073))

(assert (= (and d!1653186 (not res!2177514)) b!5115074))

(assert (=> b!5115074 m!6173614))

(assert (=> b!5115074 m!6173610))

(assert (=> b!5115073 m!6173728))

(assert (=> b!5115073 m!6173734))

(assert (=> b!5115073 m!6173728))

(assert (=> b!5115073 m!6173734))

(declare-fun m!6174078 () Bool)

(assert (=> b!5115073 m!6174078))

(assert (=> b!5115072 m!6173724))

(assert (=> b!5115072 m!6173750))

(assert (=> b!5114811 d!1653186))

(declare-fun d!1653188 () Bool)

(declare-fun lt!2107447 () Int)

(assert (=> d!1653188 (>= lt!2107447 0)))

(declare-fun e!3190151 () Int)

(assert (=> d!1653188 (= lt!2107447 e!3190151)))

(declare-fun c!878914 () Bool)

(assert (=> d!1653188 (= c!878914 ((_ is Nil!59122) input!5745))))

(assert (=> d!1653188 (= (size!39479 input!5745) lt!2107447)))

(declare-fun b!5115075 () Bool)

(assert (=> b!5115075 (= e!3190151 0)))

(declare-fun b!5115076 () Bool)

(assert (=> b!5115076 (= e!3190151 (+ 1 (size!39479 (t!372253 input!5745))))))

(assert (= (and d!1653188 c!878914) b!5115075))

(assert (= (and d!1653188 (not c!878914)) b!5115076))

(declare-fun m!6174080 () Bool)

(assert (=> b!5115076 m!6174080))

(assert (=> b!5114819 d!1653188))

(declare-fun b!5115078 () Bool)

(declare-fun e!3190152 () List!59246)

(assert (=> b!5115078 (= e!3190152 (Cons!59122 (h!65570 lt!2107292) (++!12998 (t!372253 lt!2107292) lt!2107300)))))

(declare-fun b!5115077 () Bool)

(assert (=> b!5115077 (= e!3190152 lt!2107300)))

(declare-fun d!1653190 () Bool)

(declare-fun e!3190153 () Bool)

(assert (=> d!1653190 e!3190153))

(declare-fun res!2177518 () Bool)

(assert (=> d!1653190 (=> (not res!2177518) (not e!3190153))))

(declare-fun lt!2107448 () List!59246)

(assert (=> d!1653190 (= res!2177518 (= (content!10511 lt!2107448) ((_ map or) (content!10511 lt!2107292) (content!10511 lt!2107300))))))

(assert (=> d!1653190 (= lt!2107448 e!3190152)))

(declare-fun c!878915 () Bool)

(assert (=> d!1653190 (= c!878915 ((_ is Nil!59122) lt!2107292))))

(assert (=> d!1653190 (= (++!12998 lt!2107292 lt!2107300) lt!2107448)))

(declare-fun b!5115080 () Bool)

(assert (=> b!5115080 (= e!3190153 (or (not (= lt!2107300 Nil!59122)) (= lt!2107448 lt!2107292)))))

(declare-fun b!5115079 () Bool)

(declare-fun res!2177517 () Bool)

(assert (=> b!5115079 (=> (not res!2177517) (not e!3190153))))

(assert (=> b!5115079 (= res!2177517 (= (size!39479 lt!2107448) (+ (size!39479 lt!2107292) (size!39479 lt!2107300))))))

(assert (= (and d!1653190 c!878915) b!5115077))

(assert (= (and d!1653190 (not c!878915)) b!5115078))

(assert (= (and d!1653190 res!2177518) b!5115079))

(assert (= (and b!5115079 res!2177517) b!5115080))

(declare-fun m!6174082 () Bool)

(assert (=> b!5115078 m!6174082))

(declare-fun m!6174084 () Bool)

(assert (=> d!1653190 m!6174084))

(declare-fun m!6174086 () Bool)

(assert (=> d!1653190 m!6174086))

(assert (=> d!1653190 m!6173988))

(declare-fun m!6174088 () Bool)

(assert (=> b!5115079 m!6174088))

(declare-fun m!6174090 () Bool)

(assert (=> b!5115079 m!6174090))

(assert (=> b!5115079 m!6173992))

(assert (=> b!5114803 d!1653190))

(declare-fun b!5115082 () Bool)

(declare-fun e!3190154 () List!59246)

(assert (=> b!5115082 (= e!3190154 (Cons!59122 (h!65570 testedP!265) (++!12998 (t!372253 testedP!265) lt!2107284)))))

(declare-fun b!5115081 () Bool)

(assert (=> b!5115081 (= e!3190154 lt!2107284)))

(declare-fun d!1653192 () Bool)

(declare-fun e!3190155 () Bool)

(assert (=> d!1653192 e!3190155))

(declare-fun res!2177520 () Bool)

(assert (=> d!1653192 (=> (not res!2177520) (not e!3190155))))

(declare-fun lt!2107449 () List!59246)

(assert (=> d!1653192 (= res!2177520 (= (content!10511 lt!2107449) ((_ map or) (content!10511 testedP!265) (content!10511 lt!2107284))))))

(assert (=> d!1653192 (= lt!2107449 e!3190154)))

(declare-fun c!878916 () Bool)

(assert (=> d!1653192 (= c!878916 ((_ is Nil!59122) testedP!265))))

(assert (=> d!1653192 (= (++!12998 testedP!265 lt!2107284) lt!2107449)))

(declare-fun b!5115084 () Bool)

(assert (=> b!5115084 (= e!3190155 (or (not (= lt!2107284 Nil!59122)) (= lt!2107449 testedP!265)))))

(declare-fun b!5115083 () Bool)

(declare-fun res!2177519 () Bool)

(assert (=> b!5115083 (=> (not res!2177519) (not e!3190155))))

(assert (=> b!5115083 (= res!2177519 (= (size!39479 lt!2107449) (+ (size!39479 testedP!265) (size!39479 lt!2107284))))))

(assert (= (and d!1653192 c!878916) b!5115081))

(assert (= (and d!1653192 (not c!878916)) b!5115082))

(assert (= (and d!1653192 res!2177520) b!5115083))

(assert (= (and b!5115083 res!2177519) b!5115084))

(declare-fun m!6174092 () Bool)

(assert (=> b!5115082 m!6174092))

(declare-fun m!6174094 () Bool)

(assert (=> d!1653192 m!6174094))

(assert (=> d!1653192 m!6173680))

(assert (=> d!1653192 m!6174040))

(declare-fun m!6174096 () Bool)

(assert (=> b!5115083 m!6174096))

(assert (=> b!5115083 m!6173608))

(assert (=> b!5115083 m!6174044))

(assert (=> b!5114803 d!1653192))

(declare-fun d!1653194 () Bool)

(assert (=> d!1653194 (= (head!10901 lt!2107284) (h!65570 lt!2107284))))

(assert (=> b!5114812 d!1653194))

(declare-fun d!1653196 () Bool)

(assert (=> d!1653196 (= lt!2107295 lt!2107306)))

(declare-fun lt!2107450 () Unit!150241)

(assert (=> d!1653196 (= lt!2107450 (choose!37551 testedP!265 lt!2107295 testedP!265 lt!2107306 input!5745))))

(assert (=> d!1653196 (isPrefix!5578 testedP!265 input!5745)))

(assert (=> d!1653196 (= (lemmaSamePrefixThenSameSuffix!2624 testedP!265 lt!2107295 testedP!265 lt!2107306 input!5745) lt!2107450)))

(declare-fun bs!1192325 () Bool)

(assert (= bs!1192325 d!1653196))

(declare-fun m!6174098 () Bool)

(assert (=> bs!1192325 m!6174098))

(assert (=> bs!1192325 m!6173570))

(assert (=> b!5114812 d!1653196))

(declare-fun d!1653198 () Bool)

(declare-fun c!878917 () Bool)

(assert (=> d!1653198 (= c!878917 ((_ is Cons!59122) testedP!265))))

(declare-fun e!3190156 () (InoxSet Context!7114))

(assert (=> d!1653198 (= (derivationZipper!72 baseZ!46 testedP!265) e!3190156)))

(declare-fun b!5115085 () Bool)

(assert (=> b!5115085 (= e!3190156 (derivationZipper!72 (derivationStepZipper!808 baseZ!46 (h!65570 testedP!265)) (t!372253 testedP!265)))))

(declare-fun b!5115086 () Bool)

(assert (=> b!5115086 (= e!3190156 baseZ!46)))

(assert (= (and d!1653198 c!878917) b!5115085))

(assert (= (and d!1653198 (not c!878917)) b!5115086))

(declare-fun m!6174100 () Bool)

(assert (=> b!5115085 m!6174100))

(assert (=> b!5115085 m!6174100))

(declare-fun m!6174102 () Bool)

(assert (=> b!5115085 m!6174102))

(assert (=> b!5114802 d!1653198))

(declare-fun bs!1192326 () Bool)

(declare-fun d!1653200 () Bool)

(assert (= bs!1192326 (and d!1653200 d!1653184)))

(declare-fun lambda!250790 () Int)

(assert (=> bs!1192326 (= lambda!250790 lambda!250789)))

(assert (=> d!1653200 (= (inv!78613 setElem!29994) (forall!13572 (exprs!4057 setElem!29994) lambda!250790))))

(declare-fun bs!1192327 () Bool)

(assert (= bs!1192327 d!1653200))

(declare-fun m!6174104 () Bool)

(assert (=> bs!1192327 m!6174104))

(assert (=> setNonEmpty!29993 d!1653200))

(declare-fun b!5115091 () Bool)

(declare-fun e!3190159 () Bool)

(declare-fun tp!1427043 () Bool)

(assert (=> b!5115091 (= e!3190159 (and tp_is_empty!37619 tp!1427043))))

(assert (=> b!5114814 (= tp!1427014 e!3190159)))

(assert (= (and b!5114814 ((_ is Cons!59122) (t!372253 input!5745))) b!5115091))

(declare-fun condSetEmpty!30001 () Bool)

(assert (=> setNonEmpty!29994 (= condSetEmpty!30001 (= setRest!29994 ((as const (Array Context!7114 Bool)) false)))))

(declare-fun setRes!30001 () Bool)

(assert (=> setNonEmpty!29994 (= tp!1427015 setRes!30001)))

(declare-fun setIsEmpty!30001 () Bool)

(assert (=> setIsEmpty!30001 setRes!30001))

(declare-fun setElem!30001 () Context!7114)

(declare-fun e!3190162 () Bool)

(declare-fun setNonEmpty!30001 () Bool)

(declare-fun tp!1427049 () Bool)

(assert (=> setNonEmpty!30001 (= setRes!30001 (and tp!1427049 (inv!78613 setElem!30001) e!3190162))))

(declare-fun setRest!30001 () (InoxSet Context!7114))

(assert (=> setNonEmpty!30001 (= setRest!29994 ((_ map or) (store ((as const (Array Context!7114 Bool)) false) setElem!30001 true) setRest!30001))))

(declare-fun b!5115096 () Bool)

(declare-fun tp!1427048 () Bool)

(assert (=> b!5115096 (= e!3190162 tp!1427048)))

(assert (= (and setNonEmpty!29994 condSetEmpty!30001) setIsEmpty!30001))

(assert (= (and setNonEmpty!29994 (not condSetEmpty!30001)) setNonEmpty!30001))

(assert (= setNonEmpty!30001 b!5115096))

(declare-fun m!6174106 () Bool)

(assert (=> setNonEmpty!30001 m!6174106))

(declare-fun b!5115101 () Bool)

(declare-fun e!3190165 () Bool)

(declare-fun tp!1427054 () Bool)

(declare-fun tp!1427055 () Bool)

(assert (=> b!5115101 (= e!3190165 (and tp!1427054 tp!1427055))))

(assert (=> b!5114809 (= tp!1427017 e!3190165)))

(assert (= (and b!5114809 ((_ is Cons!59121) (exprs!4057 setElem!29994))) b!5115101))

(declare-fun b!5115102 () Bool)

(declare-fun e!3190166 () Bool)

(declare-fun tp!1427056 () Bool)

(assert (=> b!5115102 (= e!3190166 (and tp_is_empty!37619 tp!1427056))))

(assert (=> b!5114806 (= tp!1427013 e!3190166)))

(assert (= (and b!5114806 ((_ is Cons!59122) (t!372253 testedP!265))) b!5115102))

(declare-fun b!5115103 () Bool)

(declare-fun e!3190167 () Bool)

(declare-fun tp!1427057 () Bool)

(assert (=> b!5115103 (= e!3190167 (and tp_is_empty!37619 tp!1427057))))

(assert (=> b!5114820 (= tp!1427016 e!3190167)))

(assert (= (and b!5114820 ((_ is Cons!59122) (t!372253 knownP!20))) b!5115103))

(declare-fun b!5115104 () Bool)

(declare-fun e!3190168 () Bool)

(declare-fun tp!1427058 () Bool)

(declare-fun tp!1427059 () Bool)

(assert (=> b!5115104 (= e!3190168 (and tp!1427058 tp!1427059))))

(assert (=> b!5114813 (= tp!1427018 e!3190168)))

(assert (= (and b!5114813 ((_ is Cons!59121) (exprs!4057 setElem!29993))) b!5115104))

(declare-fun condSetEmpty!30002 () Bool)

(assert (=> setNonEmpty!29993 (= condSetEmpty!30002 (= setRest!29993 ((as const (Array Context!7114 Bool)) false)))))

(declare-fun setRes!30002 () Bool)

(assert (=> setNonEmpty!29993 (= tp!1427019 setRes!30002)))

(declare-fun setIsEmpty!30002 () Bool)

(assert (=> setIsEmpty!30002 setRes!30002))

(declare-fun tp!1427061 () Bool)

(declare-fun setNonEmpty!30002 () Bool)

(declare-fun e!3190169 () Bool)

(declare-fun setElem!30002 () Context!7114)

(assert (=> setNonEmpty!30002 (= setRes!30002 (and tp!1427061 (inv!78613 setElem!30002) e!3190169))))

(declare-fun setRest!30002 () (InoxSet Context!7114))

(assert (=> setNonEmpty!30002 (= setRest!29993 ((_ map or) (store ((as const (Array Context!7114 Bool)) false) setElem!30002 true) setRest!30002))))

(declare-fun b!5115105 () Bool)

(declare-fun tp!1427060 () Bool)

(assert (=> b!5115105 (= e!3190169 tp!1427060)))

(assert (= (and setNonEmpty!29993 condSetEmpty!30002) setIsEmpty!30002))

(assert (= (and setNonEmpty!29993 (not condSetEmpty!30002)) setNonEmpty!30002))

(assert (= setNonEmpty!30002 b!5115105))

(declare-fun m!6174108 () Bool)

(assert (=> setNonEmpty!30002 m!6174108))

(check-sat (not d!1653044) (not b!5115033) (not b!5115083) (not b!5114895) (not b!5114886) (not d!1653060) (not b!5115074) (not b!5115048) (not b!5115054) (not b!5115072) (not b!5114891) (not d!1653148) (not b!5114890) (not b!5114889) (not d!1653036) (not bm!356492) (not d!1653156) (not d!1653062) (not d!1653068) (not b!5115085) (not b!5115029) (not b!5114858) (not b!5115059) (not b!5115102) (not b!5114887) (not d!1653048) (not b!5115076) (not d!1653050) (not d!1653176) (not b!5115069) (not b!5115091) tp_is_empty!37619 (not b!5115055) (not b!5115105) (not b!5115050) (not b!5115073) (not b!5115066) (not b!5115068) (not b!5115031) (not b!5115065) (not setNonEmpty!30001) (not b!5115060) (not setNonEmpty!30002) (not b!5115039) (not b!5115104) (not b!5115038) (not b!5114885) (not b!5115082) (not d!1653154) (not d!1653168) (not b!5114850) (not b!5114857) (not d!1653172) (not b!5115096) (not d!1653056) (not d!1653158) (not b!5114896) (not d!1653064) (not d!1653192) (not b!5115079) (not b!5115023) (not b!5115040) (not d!1653184) (not b!5115046) (not b!5114874) (not d!1653162) (not b!5115034) (not b!5114861) (not b!5114868) (not b!5114869) (not d!1653190) (not d!1653046) (not b!5114862) (not d!1653066) (not d!1653178) (not d!1653200) (not b!5114849) (not b!5115103) (not bm!356491) (not d!1653170) (not d!1653196) (not b!5115078) (not b!5115051) (not d!1653042) (not b!5115058) (not b!5115035) (not b!5115022) (not b!5115101) (not b!5114892) (not d!1653052))
(check-sat)
