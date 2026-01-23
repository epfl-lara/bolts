; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694588 () Bool)

(assert start!694588)

(declare-fun setIsEmpty!51978 () Bool)

(declare-fun setRes!51979 () Bool)

(assert (=> setIsEmpty!51978 setRes!51979))

(declare-fun b!7130246 () Bool)

(declare-fun e!4284937 () Bool)

(assert (=> b!7130246 (= e!4284937 false)))

(declare-datatypes ((C!36384 0))(
  ( (C!36385 (val!28118 Int)) )
))
(declare-datatypes ((List!69168 0))(
  ( (Nil!69044) (Cons!69044 (h!75492 C!36384) (t!383145 List!69168)) )
))
(declare-fun s1!1688 () List!69168)

(declare-fun s1Rec!140 () List!69168)

(assert (=> b!7130246 (= s1!1688 s1Rec!140)))

(declare-datatypes ((Unit!162961 0))(
  ( (Unit!162962) )
))
(declare-fun lt!2564206 () Unit!162961)

(declare-fun s!7390 () List!69168)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1447 (List!69168 List!69168 List!69168) Unit!162961)

(assert (=> b!7130246 (= lt!2564206 (lemmaIsPrefixSameLengthThenSameList!1447 s1!1688 s1Rec!140 s!7390))))

(declare-fun b!7130247 () Bool)

(declare-fun e!4284932 () Bool)

(declare-fun tp_is_empty!45715 () Bool)

(declare-fun tp!1964909 () Bool)

(assert (=> b!7130247 (= e!4284932 (and tp_is_empty!45715 tp!1964909))))

(declare-fun b!7130248 () Bool)

(declare-fun e!4284931 () Bool)

(declare-fun tp!1964905 () Bool)

(assert (=> b!7130248 (= e!4284931 (and tp_is_empty!45715 tp!1964905))))

(declare-fun b!7130249 () Bool)

(declare-fun res!2909311 () Bool)

(declare-fun e!4284934 () Bool)

(assert (=> b!7130249 (=> (not res!2909311) (not e!4284934))))

(declare-fun s2Rec!140 () List!69168)

(get-info :version)

(assert (=> b!7130249 (= res!2909311 (not ((_ is Nil!69044) s2Rec!140)))))

(declare-fun b!7130250 () Bool)

(declare-fun res!2909313 () Bool)

(declare-fun e!4284941 () Bool)

(assert (=> b!7130250 (=> (not res!2909313) (not e!4284941))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18057 0))(
  ( (ElementMatch!18057 (c!1329997 C!36384)) (Concat!26902 (regOne!36626 Regex!18057) (regTwo!36626 Regex!18057)) (EmptyExpr!18057) (Star!18057 (reg!18386 Regex!18057)) (EmptyLang!18057) (Union!18057 (regOne!36627 Regex!18057) (regTwo!36627 Regex!18057)) )
))
(declare-datatypes ((List!69169 0))(
  ( (Nil!69045) (Cons!69045 (h!75493 Regex!18057) (t!383146 List!69169)) )
))
(declare-datatypes ((Context!14102 0))(
  ( (Context!14103 (exprs!7551 List!69169)) )
))
(declare-fun z2!471 () (InoxSet Context!14102))

(declare-fun s2!1620 () List!69168)

(declare-fun matchZipper!3313 ((InoxSet Context!14102) List!69168) Bool)

(assert (=> b!7130250 (= res!2909313 (matchZipper!3313 z2!471 s2!1620))))

(declare-fun b!7130251 () Bool)

(declare-fun e!4284936 () Bool)

(declare-fun tp!1964906 () Bool)

(assert (=> b!7130251 (= e!4284936 (and tp_is_empty!45715 tp!1964906))))

(declare-fun b!7130252 () Bool)

(declare-fun e!4284943 () Unit!162961)

(declare-fun Unit!162963 () Unit!162961)

(assert (=> b!7130252 (= e!4284943 Unit!162963)))

(declare-fun b!7130253 () Bool)

(declare-fun e!4284942 () Bool)

(declare-fun tp!1964902 () Bool)

(assert (=> b!7130253 (= e!4284942 tp!1964902)))

(declare-fun b!7130254 () Bool)

(assert (=> b!7130254 (= e!4284934 (not e!4284937))))

(declare-fun res!2909309 () Bool)

(assert (=> b!7130254 (=> res!2909309 e!4284937)))

(declare-fun size!41482 (List!69168) Int)

(assert (=> b!7130254 (= res!2909309 (not (= (size!41482 s1Rec!140) (size!41482 s1!1688))))))

(declare-fun lt!2564207 () List!69168)

(declare-fun lt!2564205 () List!69168)

(declare-fun isPrefix!5926 (List!69168 List!69168) Bool)

(assert (=> b!7130254 (isPrefix!5926 lt!2564207 lt!2564205)))

(declare-fun lt!2564209 () Unit!162961)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3639 (List!69168 List!69168) Unit!162961)

(assert (=> b!7130254 (= lt!2564209 (lemmaConcatTwoListThenFirstIsPrefix!3639 lt!2564207 (t!383145 s2Rec!140)))))

(assert (=> b!7130254 (= lt!2564205 s!7390)))

(declare-fun ++!16195 (List!69168 List!69168) List!69168)

(assert (=> b!7130254 (= lt!2564205 (++!16195 lt!2564207 (t!383145 s2Rec!140)))))

(assert (=> b!7130254 (= lt!2564207 (++!16195 s1Rec!140 (Cons!69044 (h!75492 s2Rec!140) Nil!69044)))))

(declare-fun lt!2564208 () Unit!162961)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3017 (List!69168 C!36384 List!69168 List!69168) Unit!162961)

(assert (=> b!7130254 (= lt!2564208 (lemmaMoveElementToOtherListKeepsConcatEq!3017 s1Rec!140 (h!75492 s2Rec!140) (t!383145 s2Rec!140) s!7390))))

(declare-fun lt!2564213 () Unit!162961)

(assert (=> b!7130254 (= lt!2564213 e!4284943)))

(declare-fun c!1329996 () Bool)

(assert (=> b!7130254 (= c!1329996 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564214 () List!69168)

(assert (=> b!7130254 (isPrefix!5926 s1Rec!140 lt!2564214)))

(declare-fun lt!2564204 () Unit!162961)

(assert (=> b!7130254 (= lt!2564204 (lemmaConcatTwoListThenFirstIsPrefix!3639 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564212 () List!69168)

(assert (=> b!7130254 (isPrefix!5926 s1!1688 lt!2564212)))

(declare-fun lt!2564211 () Unit!162961)

(assert (=> b!7130254 (= lt!2564211 (lemmaConcatTwoListThenFirstIsPrefix!3639 s1!1688 s2!1620))))

(declare-fun b!7130255 () Bool)

(declare-fun res!2909314 () Bool)

(declare-fun e!4284938 () Bool)

(assert (=> b!7130255 (=> (not res!2909314) (not e!4284938))))

(assert (=> b!7130255 (= res!2909314 (isPrefix!5926 s1Rec!140 s1!1688))))

(declare-fun b!7130256 () Bool)

(declare-fun e!4284935 () Bool)

(declare-fun tp!1964908 () Bool)

(assert (=> b!7130256 (= e!4284935 (and tp_is_empty!45715 tp!1964908))))

(declare-fun res!2909315 () Bool)

(assert (=> start!694588 (=> (not res!2909315) (not e!4284941))))

(declare-fun z1!552 () (InoxSet Context!14102))

(assert (=> start!694588 (= res!2909315 (matchZipper!3313 z1!552 s1!1688))))

(assert (=> start!694588 e!4284941))

(assert (=> start!694588 e!4284935))

(declare-fun condSetEmpty!51979 () Bool)

(assert (=> start!694588 (= condSetEmpty!51979 (= z1!552 ((as const (Array Context!14102 Bool)) false)))))

(declare-fun setRes!51978 () Bool)

(assert (=> start!694588 setRes!51978))

(assert (=> start!694588 e!4284936))

(declare-fun condSetEmpty!51978 () Bool)

(assert (=> start!694588 (= condSetEmpty!51978 (= z2!471 ((as const (Array Context!14102 Bool)) false)))))

(assert (=> start!694588 setRes!51979))

(declare-fun e!4284933 () Bool)

(assert (=> start!694588 e!4284933))

(assert (=> start!694588 e!4284931))

(assert (=> start!694588 e!4284932))

(declare-fun setElem!51979 () Context!14102)

(declare-fun setNonEmpty!51978 () Bool)

(declare-fun tp!1964903 () Bool)

(declare-fun e!4284940 () Bool)

(declare-fun inv!88170 (Context!14102) Bool)

(assert (=> setNonEmpty!51978 (= setRes!51979 (and tp!1964903 (inv!88170 setElem!51979) e!4284940))))

(declare-fun setRest!51979 () (InoxSet Context!14102))

(assert (=> setNonEmpty!51978 (= z2!471 ((_ map or) (store ((as const (Array Context!14102 Bool)) false) setElem!51979 true) setRest!51979))))

(declare-fun b!7130257 () Bool)

(declare-fun e!4284939 () Bool)

(assert (=> b!7130257 (= e!4284939 (not (matchZipper!3313 z2!471 s2Rec!140)))))

(declare-fun b!7130258 () Bool)

(assert (=> b!7130258 (= e!4284941 e!4284938)))

(declare-fun res!2909310 () Bool)

(assert (=> b!7130258 (=> (not res!2909310) (not e!4284938))))

(assert (=> b!7130258 (= res!2909310 (= lt!2564212 s!7390))))

(assert (=> b!7130258 (= lt!2564212 (++!16195 s1!1688 s2!1620))))

(declare-fun b!7130259 () Bool)

(declare-fun tp!1964904 () Bool)

(assert (=> b!7130259 (= e!4284933 (and tp_is_empty!45715 tp!1964904))))

(declare-fun b!7130260 () Bool)

(declare-fun tp!1964907 () Bool)

(assert (=> b!7130260 (= e!4284940 tp!1964907)))

(declare-fun b!7130261 () Bool)

(assert (=> b!7130261 (= e!4284938 e!4284934)))

(declare-fun res!2909312 () Bool)

(assert (=> b!7130261 (=> (not res!2909312) (not e!4284934))))

(assert (=> b!7130261 (= res!2909312 (= lt!2564214 s!7390))))

(assert (=> b!7130261 (= lt!2564214 (++!16195 s1Rec!140 s2Rec!140))))

(declare-fun setIsEmpty!51979 () Bool)

(assert (=> setIsEmpty!51979 setRes!51978))

(declare-fun setNonEmpty!51979 () Bool)

(declare-fun setElem!51978 () Context!14102)

(declare-fun tp!1964901 () Bool)

(assert (=> setNonEmpty!51979 (= setRes!51978 (and tp!1964901 (inv!88170 setElem!51978) e!4284942))))

(declare-fun setRest!51978 () (InoxSet Context!14102))

(assert (=> setNonEmpty!51979 (= z1!552 ((_ map or) (store ((as const (Array Context!14102 Bool)) false) setElem!51978 true) setRest!51978))))

(declare-fun b!7130262 () Bool)

(declare-fun res!2909307 () Bool)

(assert (=> b!7130262 (=> (not res!2909307) (not e!4284934))))

(assert (=> b!7130262 (= res!2909307 e!4284939)))

(declare-fun res!2909308 () Bool)

(assert (=> b!7130262 (=> res!2909308 e!4284939)))

(assert (=> b!7130262 (= res!2909308 (not (matchZipper!3313 z1!552 s1Rec!140)))))

(declare-fun b!7130263 () Bool)

(declare-fun Unit!162964 () Unit!162961)

(assert (=> b!7130263 (= e!4284943 Unit!162964)))

(declare-fun lt!2564210 () Unit!162961)

(declare-fun lemmaSamePrefixThenSameSuffix!2737 (List!69168 List!69168 List!69168 List!69168 List!69168) Unit!162961)

(assert (=> b!7130263 (= lt!2564210 (lemmaSamePrefixThenSameSuffix!2737 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130263 false))

(assert (= (and start!694588 res!2909315) b!7130250))

(assert (= (and b!7130250 res!2909313) b!7130258))

(assert (= (and b!7130258 res!2909310) b!7130255))

(assert (= (and b!7130255 res!2909314) b!7130261))

(assert (= (and b!7130261 res!2909312) b!7130262))

(assert (= (and b!7130262 (not res!2909308)) b!7130257))

(assert (= (and b!7130262 res!2909307) b!7130249))

(assert (= (and b!7130249 res!2909311) b!7130254))

(assert (= (and b!7130254 c!1329996) b!7130263))

(assert (= (and b!7130254 (not c!1329996)) b!7130252))

(assert (= (and b!7130254 (not res!2909309)) b!7130246))

(assert (= (and start!694588 ((_ is Cons!69044) s1Rec!140)) b!7130256))

(assert (= (and start!694588 condSetEmpty!51979) setIsEmpty!51979))

(assert (= (and start!694588 (not condSetEmpty!51979)) setNonEmpty!51979))

(assert (= setNonEmpty!51979 b!7130253))

(assert (= (and start!694588 ((_ is Cons!69044) s2Rec!140)) b!7130251))

(assert (= (and start!694588 condSetEmpty!51978) setIsEmpty!51978))

(assert (= (and start!694588 (not condSetEmpty!51978)) setNonEmpty!51978))

(assert (= setNonEmpty!51978 b!7130260))

(assert (= (and start!694588 ((_ is Cons!69044) s2!1620)) b!7130259))

(assert (= (and start!694588 ((_ is Cons!69044) s1!1688)) b!7130248))

(assert (= (and start!694588 ((_ is Cons!69044) s!7390)) b!7130247))

(declare-fun m!7847160 () Bool)

(assert (=> b!7130261 m!7847160))

(declare-fun m!7847162 () Bool)

(assert (=> b!7130255 m!7847162))

(declare-fun m!7847164 () Bool)

(assert (=> b!7130263 m!7847164))

(declare-fun m!7847166 () Bool)

(assert (=> start!694588 m!7847166))

(declare-fun m!7847168 () Bool)

(assert (=> b!7130262 m!7847168))

(declare-fun m!7847170 () Bool)

(assert (=> setNonEmpty!51979 m!7847170))

(declare-fun m!7847172 () Bool)

(assert (=> b!7130250 m!7847172))

(declare-fun m!7847174 () Bool)

(assert (=> b!7130254 m!7847174))

(declare-fun m!7847176 () Bool)

(assert (=> b!7130254 m!7847176))

(declare-fun m!7847178 () Bool)

(assert (=> b!7130254 m!7847178))

(declare-fun m!7847180 () Bool)

(assert (=> b!7130254 m!7847180))

(declare-fun m!7847182 () Bool)

(assert (=> b!7130254 m!7847182))

(declare-fun m!7847184 () Bool)

(assert (=> b!7130254 m!7847184))

(declare-fun m!7847186 () Bool)

(assert (=> b!7130254 m!7847186))

(declare-fun m!7847188 () Bool)

(assert (=> b!7130254 m!7847188))

(declare-fun m!7847190 () Bool)

(assert (=> b!7130254 m!7847190))

(declare-fun m!7847192 () Bool)

(assert (=> b!7130254 m!7847192))

(declare-fun m!7847194 () Bool)

(assert (=> b!7130254 m!7847194))

(declare-fun m!7847196 () Bool)

(assert (=> b!7130258 m!7847196))

(declare-fun m!7847198 () Bool)

(assert (=> b!7130257 m!7847198))

(declare-fun m!7847200 () Bool)

(assert (=> b!7130246 m!7847200))

(declare-fun m!7847202 () Bool)

(assert (=> setNonEmpty!51978 m!7847202))

(check-sat (not setNonEmpty!51978) (not b!7130247) (not b!7130246) (not b!7130250) (not start!694588) (not b!7130258) (not b!7130255) (not b!7130263) (not b!7130251) (not b!7130254) (not b!7130260) (not b!7130253) (not b!7130256) tp_is_empty!45715 (not b!7130262) (not b!7130248) (not b!7130257) (not b!7130261) (not setNonEmpty!51979) (not b!7130259))
(check-sat)
