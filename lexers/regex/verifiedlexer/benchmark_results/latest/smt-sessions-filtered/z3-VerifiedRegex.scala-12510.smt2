; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695512 () Bool)

(assert start!695512)

(declare-fun b!7137135 () Bool)

(assert (=> b!7137135 true))

(declare-fun e!4289342 () Bool)

(declare-fun e!4289347 () Bool)

(assert (=> b!7137135 (= e!4289342 e!4289347)))

(declare-fun res!2912132 () Bool)

(assert (=> b!7137135 (=> res!2912132 e!4289347)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36532 0))(
  ( (C!36533 (val!28214 Int)) )
))
(declare-datatypes ((Regex!18129 0))(
  ( (ElementMatch!18129 (c!1330990 C!36532)) (Concat!26974 (regOne!36770 Regex!18129) (regTwo!36770 Regex!18129)) (EmptyExpr!18129) (Star!18129 (reg!18458 Regex!18129)) (EmptyLang!18129) (Union!18129 (regOne!36771 Regex!18129) (regTwo!36771 Regex!18129)) )
))
(declare-datatypes ((List!69336 0))(
  ( (Nil!69212) (Cons!69212 (h!75660 Regex!18129) (t!383353 List!69336)) )
))
(declare-datatypes ((Context!14246 0))(
  ( (Context!14247 (exprs!7623 List!69336)) )
))
(declare-fun z!3189 () (InoxSet Context!14246))

(declare-fun lambda!433818 () Int)

(declare-fun exists!3876 ((InoxSet Context!14246) Int) Bool)

(assert (=> b!7137135 (= res!2912132 (not (exists!3876 z!3189 lambda!433818)))))

(declare-datatypes ((List!69337 0))(
  ( (Nil!69213) (Cons!69213 (h!75661 Context!14246) (t!383354 List!69337)) )
))
(declare-fun lt!2566069 () List!69337)

(declare-fun exists!3877 (List!69337 Int) Bool)

(assert (=> b!7137135 (exists!3877 lt!2566069 lambda!433818)))

(declare-datatypes ((Unit!163117 0))(
  ( (Unit!163118) )
))
(declare-fun lt!2566068 () Unit!163117)

(declare-fun lt!2566075 () Regex!18129)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!14 (List!69337 Regex!18129) Unit!163117)

(assert (=> b!7137135 (= lt!2566068 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!14 lt!2566069 lt!2566075))))

(declare-fun b!7137136 () Bool)

(declare-fun e!4289343 () Bool)

(declare-fun e!4289344 () Bool)

(assert (=> b!7137136 (= e!4289343 e!4289344)))

(declare-fun res!2912128 () Bool)

(assert (=> b!7137136 (=> (not res!2912128) (not e!4289344))))

(declare-fun r!11483 () Regex!18129)

(declare-fun unfocusZipper!2477 (List!69337) Regex!18129)

(assert (=> b!7137136 (= res!2912128 (= r!11483 (unfocusZipper!2477 lt!2566069)))))

(declare-fun toList!11160 ((InoxSet Context!14246)) List!69337)

(assert (=> b!7137136 (= lt!2566069 (toList!11160 z!3189))))

(declare-fun b!7137137 () Bool)

(declare-fun e!4289348 () Bool)

(declare-fun tp!1967857 () Bool)

(declare-fun tp!1967861 () Bool)

(assert (=> b!7137137 (= e!4289348 (and tp!1967857 tp!1967861))))

(declare-fun setNonEmpty!52387 () Bool)

(declare-fun setRes!52387 () Bool)

(declare-fun tp!1967859 () Bool)

(declare-fun setElem!52387 () Context!14246)

(declare-fun e!4289350 () Bool)

(declare-fun inv!88386 (Context!14246) Bool)

(assert (=> setNonEmpty!52387 (= setRes!52387 (and tp!1967859 (inv!88386 setElem!52387) e!4289350))))

(declare-fun setRest!52387 () (InoxSet Context!14246))

(assert (=> setNonEmpty!52387 (= z!3189 ((_ map or) (store ((as const (Array Context!14246 Bool)) false) setElem!52387 true) setRest!52387))))

(declare-fun res!2912137 () Bool)

(assert (=> start!695512 (=> (not res!2912137) (not e!4289343))))

(declare-fun validRegex!9296 (Regex!18129) Bool)

(assert (=> start!695512 (= res!2912137 (validRegex!9296 r!11483))))

(assert (=> start!695512 e!4289343))

(assert (=> start!695512 e!4289348))

(declare-fun condSetEmpty!52387 () Bool)

(assert (=> start!695512 (= condSetEmpty!52387 (= z!3189 ((as const (Array Context!14246 Bool)) false)))))

(assert (=> start!695512 setRes!52387))

(declare-fun b!7137138 () Bool)

(declare-fun e!4289346 () Bool)

(assert (=> b!7137138 (= e!4289346 e!4289342)))

(declare-fun res!2912135 () Bool)

(assert (=> b!7137138 (=> res!2912135 e!4289342)))

(declare-fun nullable!7649 (Regex!18129) Bool)

(assert (=> b!7137138 (= res!2912135 (not (nullable!7649 lt!2566075)))))

(declare-fun lt!2566072 () List!69336)

(declare-fun lambda!433817 () Int)

(declare-fun getWitness!1889 (List!69336 Int) Regex!18129)

(assert (=> b!7137138 (= lt!2566075 (getWitness!1889 lt!2566072 lambda!433817))))

(declare-fun b!7137139 () Bool)

(declare-fun tp!1967860 () Bool)

(declare-fun tp!1967858 () Bool)

(assert (=> b!7137139 (= e!4289348 (and tp!1967860 tp!1967858))))

(declare-fun b!7137140 () Bool)

(declare-fun e!4289349 () Bool)

(assert (=> b!7137140 (= e!4289347 e!4289349)))

(declare-fun res!2912130 () Bool)

(assert (=> b!7137140 (=> res!2912130 e!4289349)))

(declare-fun lt!2566076 () Context!14246)

(assert (=> b!7137140 (= res!2912130 (not (select z!3189 lt!2566076)))))

(declare-fun getWitness!1890 ((InoxSet Context!14246) Int) Context!14246)

(assert (=> b!7137140 (= lt!2566076 (getWitness!1890 z!3189 lambda!433818))))

(declare-fun b!7137141 () Bool)

(declare-fun tp!1967856 () Bool)

(assert (=> b!7137141 (= e!4289348 tp!1967856)))

(declare-fun b!7137142 () Bool)

(declare-fun res!2912133 () Bool)

(assert (=> b!7137142 (=> res!2912133 e!4289346)))

(declare-fun lt!2566074 () Bool)

(assert (=> b!7137142 (= res!2912133 (not lt!2566074))))

(declare-fun b!7137143 () Bool)

(declare-fun e!4289345 () Bool)

(assert (=> b!7137143 (= e!4289344 e!4289345)))

(declare-fun res!2912129 () Bool)

(assert (=> b!7137143 (=> (not res!2912129) (not e!4289345))))

(declare-fun lt!2566073 () Regex!18129)

(assert (=> b!7137143 (= res!2912129 (= r!11483 lt!2566073))))

(declare-fun generalisedUnion!2634 (List!69336) Regex!18129)

(assert (=> b!7137143 (= lt!2566073 (generalisedUnion!2634 lt!2566072))))

(declare-fun unfocusZipperList!2170 (List!69337) List!69336)

(assert (=> b!7137143 (= lt!2566072 (unfocusZipperList!2170 lt!2566069))))

(declare-fun setIsEmpty!52387 () Bool)

(assert (=> setIsEmpty!52387 setRes!52387))

(declare-fun b!7137144 () Bool)

(declare-fun res!2912136 () Bool)

(assert (=> b!7137144 (=> res!2912136 e!4289342)))

(declare-fun contains!20571 (List!69336 Regex!18129) Bool)

(assert (=> b!7137144 (= res!2912136 (not (contains!20571 lt!2566072 lt!2566075)))))

(declare-fun b!7137145 () Bool)

(assert (=> b!7137145 (= e!4289345 (not e!4289346))))

(declare-fun res!2912134 () Bool)

(assert (=> b!7137145 (=> res!2912134 e!4289346)))

(declare-fun exists!3878 (List!69336 Int) Bool)

(assert (=> b!7137145 (= res!2912134 (not (= lt!2566074 (exists!3878 lt!2566072 lambda!433817))))))

(assert (=> b!7137145 (= lt!2566074 (exists!3878 lt!2566072 lambda!433817))))

(assert (=> b!7137145 (= lt!2566074 (nullable!7649 lt!2566073))))

(declare-fun lt!2566071 () Unit!163117)

(declare-fun nullableGenUnionSpec!18 (Regex!18129 List!69336) Unit!163117)

(assert (=> b!7137145 (= lt!2566071 (nullableGenUnionSpec!18 lt!2566073 lt!2566072))))

(declare-fun b!7137146 () Bool)

(declare-fun res!2912131 () Bool)

(assert (=> b!7137146 (=> res!2912131 e!4289346)))

(assert (=> b!7137146 (= res!2912131 (not (exists!3878 lt!2566072 lambda!433817)))))

(declare-fun b!7137147 () Bool)

(declare-fun tp_is_empty!45895 () Bool)

(assert (=> b!7137147 (= e!4289348 tp_is_empty!45895)))

(declare-fun b!7137148 () Bool)

(declare-fun tp!1967855 () Bool)

(assert (=> b!7137148 (= e!4289350 tp!1967855)))

(declare-fun b!7137149 () Bool)

(assert (=> b!7137149 (= e!4289349 true)))

(declare-fun lt!2566070 () Regex!18129)

(declare-fun generalisedConcat!2324 (List!69336) Regex!18129)

(assert (=> b!7137149 (= lt!2566070 (generalisedConcat!2324 (exprs!7623 lt!2566076)))))

(assert (= (and start!695512 res!2912137) b!7137136))

(assert (= (and b!7137136 res!2912128) b!7137143))

(assert (= (and b!7137143 res!2912129) b!7137145))

(assert (= (and b!7137145 (not res!2912134)) b!7137142))

(assert (= (and b!7137142 (not res!2912133)) b!7137146))

(assert (= (and b!7137146 (not res!2912131)) b!7137138))

(assert (= (and b!7137138 (not res!2912135)) b!7137144))

(assert (= (and b!7137144 (not res!2912136)) b!7137135))

(assert (= (and b!7137135 (not res!2912132)) b!7137140))

(assert (= (and b!7137140 (not res!2912130)) b!7137149))

(get-info :version)

(assert (= (and start!695512 ((_ is ElementMatch!18129) r!11483)) b!7137147))

(assert (= (and start!695512 ((_ is Concat!26974) r!11483)) b!7137139))

(assert (= (and start!695512 ((_ is Star!18129) r!11483)) b!7137141))

(assert (= (and start!695512 ((_ is Union!18129) r!11483)) b!7137137))

(assert (= (and start!695512 condSetEmpty!52387) setIsEmpty!52387))

(assert (= (and start!695512 (not condSetEmpty!52387)) setNonEmpty!52387))

(assert (= setNonEmpty!52387 b!7137148))

(declare-fun m!7853002 () Bool)

(assert (=> setNonEmpty!52387 m!7853002))

(declare-fun m!7853004 () Bool)

(assert (=> b!7137143 m!7853004))

(declare-fun m!7853006 () Bool)

(assert (=> b!7137143 m!7853006))

(declare-fun m!7853008 () Bool)

(assert (=> b!7137146 m!7853008))

(assert (=> b!7137145 m!7853008))

(assert (=> b!7137145 m!7853008))

(declare-fun m!7853010 () Bool)

(assert (=> b!7137145 m!7853010))

(declare-fun m!7853012 () Bool)

(assert (=> b!7137145 m!7853012))

(declare-fun m!7853014 () Bool)

(assert (=> b!7137149 m!7853014))

(declare-fun m!7853016 () Bool)

(assert (=> b!7137140 m!7853016))

(declare-fun m!7853018 () Bool)

(assert (=> b!7137140 m!7853018))

(declare-fun m!7853020 () Bool)

(assert (=> b!7137138 m!7853020))

(declare-fun m!7853022 () Bool)

(assert (=> b!7137138 m!7853022))

(declare-fun m!7853024 () Bool)

(assert (=> b!7137135 m!7853024))

(declare-fun m!7853026 () Bool)

(assert (=> b!7137135 m!7853026))

(declare-fun m!7853028 () Bool)

(assert (=> b!7137135 m!7853028))

(declare-fun m!7853030 () Bool)

(assert (=> b!7137144 m!7853030))

(declare-fun m!7853032 () Bool)

(assert (=> b!7137136 m!7853032))

(declare-fun m!7853034 () Bool)

(assert (=> b!7137136 m!7853034))

(declare-fun m!7853036 () Bool)

(assert (=> start!695512 m!7853036))

(check-sat (not b!7137149) (not b!7137141) (not b!7137135) (not b!7137145) (not b!7137136) tp_is_empty!45895 (not b!7137144) (not b!7137148) (not start!695512) (not b!7137143) (not b!7137139) (not b!7137138) (not b!7137140) (not setNonEmpty!52387) (not b!7137137) (not b!7137146))
(check-sat)
