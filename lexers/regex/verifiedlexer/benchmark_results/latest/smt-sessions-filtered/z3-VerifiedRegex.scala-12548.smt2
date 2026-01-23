; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696712 () Bool)

(assert start!696712)

(declare-fun b!7145561 () Bool)

(declare-fun e!4294121 () Bool)

(declare-fun e!4294120 () Bool)

(assert (=> b!7145561 (= e!4294121 e!4294120)))

(declare-fun res!2915491 () Bool)

(assert (=> b!7145561 (=> res!2915491 e!4294120)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36684 0))(
  ( (C!36685 (val!28290 Int)) )
))
(declare-datatypes ((Regex!18205 0))(
  ( (ElementMatch!18205 (c!1332544 C!36684)) (Concat!27050 (regOne!36922 Regex!18205) (regTwo!36922 Regex!18205)) (EmptyExpr!18205) (Star!18205 (reg!18534 Regex!18205)) (EmptyLang!18205) (Union!18205 (regOne!36923 Regex!18205) (regTwo!36923 Regex!18205)) )
))
(declare-datatypes ((List!69488 0))(
  ( (Nil!69364) (Cons!69364 (h!75812 Regex!18205) (t!383505 List!69488)) )
))
(declare-datatypes ((Context!14398 0))(
  ( (Context!14399 (exprs!7699 List!69488)) )
))
(declare-fun z!3189 () (InoxSet Context!14398))

(declare-fun lambda!435690 () Int)

(declare-fun exists!4036 ((InoxSet Context!14398) Int) Bool)

(assert (=> b!7145561 (= res!2915491 (exists!4036 z!3189 lambda!435690))))

(declare-datatypes ((Unit!163279 0))(
  ( (Unit!163280) )
))
(declare-fun lt!2568793 () Unit!163279)

(declare-fun e!4294118 () Unit!163279)

(assert (=> b!7145561 (= lt!2568793 e!4294118)))

(declare-fun c!1332543 () Bool)

(assert (=> b!7145561 (= c!1332543 (exists!4036 z!3189 lambda!435690))))

(declare-fun b!7145562 () Bool)

(declare-fun e!4294117 () Bool)

(declare-fun e!4294116 () Bool)

(assert (=> b!7145562 (= e!4294117 e!4294116)))

(declare-fun res!2915493 () Bool)

(assert (=> b!7145562 (=> (not res!2915493) (not e!4294116))))

(declare-fun r!11483 () Regex!18205)

(declare-fun lt!2568792 () Regex!18205)

(assert (=> b!7145562 (= res!2915493 (= r!11483 lt!2568792))))

(declare-fun lt!2568794 () List!69488)

(declare-fun generalisedUnion!2710 (List!69488) Regex!18205)

(assert (=> b!7145562 (= lt!2568792 (generalisedUnion!2710 lt!2568794))))

(declare-datatypes ((List!69489 0))(
  ( (Nil!69365) (Cons!69365 (h!75813 Context!14398) (t!383506 List!69489)) )
))
(declare-fun lt!2568801 () List!69489)

(declare-fun unfocusZipperList!2246 (List!69489) List!69488)

(assert (=> b!7145562 (= lt!2568794 (unfocusZipperList!2246 lt!2568801))))

(declare-fun res!2915492 () Bool)

(declare-fun e!4294115 () Bool)

(assert (=> start!696712 (=> (not res!2915492) (not e!4294115))))

(declare-fun validRegex!9372 (Regex!18205) Bool)

(assert (=> start!696712 (= res!2915492 (validRegex!9372 r!11483))))

(assert (=> start!696712 e!4294115))

(declare-fun e!4294119 () Bool)

(assert (=> start!696712 e!4294119))

(declare-fun condSetEmpty!52729 () Bool)

(assert (=> start!696712 (= condSetEmpty!52729 (= z!3189 ((as const (Array Context!14398 Bool)) false)))))

(declare-fun setRes!52729 () Bool)

(assert (=> start!696712 setRes!52729))

(declare-fun b!7145563 () Bool)

(declare-fun tp!1971237 () Bool)

(declare-fun tp!1971240 () Bool)

(assert (=> b!7145563 (= e!4294119 (and tp!1971237 tp!1971240))))

(declare-fun setElem!52729 () Context!14398)

(declare-fun setNonEmpty!52729 () Bool)

(declare-fun e!4294122 () Bool)

(declare-fun tp!1971239 () Bool)

(declare-fun inv!88576 (Context!14398) Bool)

(assert (=> setNonEmpty!52729 (= setRes!52729 (and tp!1971239 (inv!88576 setElem!52729) e!4294122))))

(declare-fun setRest!52729 () (InoxSet Context!14398))

(assert (=> setNonEmpty!52729 (= z!3189 ((_ map or) (store ((as const (Array Context!14398 Bool)) false) setElem!52729 true) setRest!52729))))

(declare-fun b!7145564 () Bool)

(declare-fun tp_is_empty!46047 () Bool)

(assert (=> b!7145564 (= e!4294119 tp_is_empty!46047)))

(declare-fun setIsEmpty!52729 () Bool)

(assert (=> setIsEmpty!52729 setRes!52729))

(declare-fun b!7145565 () Bool)

(declare-fun Unit!163281 () Unit!163279)

(assert (=> b!7145565 (= e!4294118 Unit!163281)))

(declare-fun b!7145566 () Bool)

(declare-fun tp!1971241 () Bool)

(assert (=> b!7145566 (= e!4294119 tp!1971241)))

(declare-fun b!7145567 () Bool)

(assert (=> b!7145567 (= e!4294116 (not e!4294121))))

(declare-fun res!2915486 () Bool)

(assert (=> b!7145567 (=> res!2915486 e!4294121)))

(declare-fun lt!2568800 () Bool)

(declare-fun lambda!435689 () Int)

(declare-fun exists!4037 (List!69488 Int) Bool)

(assert (=> b!7145567 (= res!2915486 (not (= lt!2568800 (exists!4037 lt!2568794 lambda!435689))))))

(assert (=> b!7145567 (= lt!2568800 (exists!4037 lt!2568794 lambda!435689))))

(declare-fun nullable!7722 (Regex!18205) Bool)

(assert (=> b!7145567 (= lt!2568800 (nullable!7722 lt!2568792))))

(declare-fun lt!2568796 () Unit!163279)

(declare-fun nullableGenUnionSpec!86 (Regex!18205 List!69488) Unit!163279)

(assert (=> b!7145567 (= lt!2568796 (nullableGenUnionSpec!86 lt!2568792 lt!2568794))))

(declare-fun b!7145568 () Bool)

(assert (=> b!7145568 (= e!4294120 (not (nullable!7722 r!11483)))))

(declare-fun b!7145569 () Bool)

(declare-fun res!2915490 () Bool)

(assert (=> b!7145569 (=> res!2915490 e!4294121)))

(assert (=> b!7145569 (= res!2915490 lt!2568800)))

(declare-fun b!7145570 () Bool)

(declare-fun tp!1971242 () Bool)

(assert (=> b!7145570 (= e!4294122 tp!1971242)))

(declare-fun b!7145571 () Bool)

(declare-fun res!2915488 () Bool)

(assert (=> b!7145571 (=> res!2915488 e!4294120)))

(declare-fun nullableZipper!2778 ((InoxSet Context!14398)) Bool)

(assert (=> b!7145571 (= res!2915488 (nullableZipper!2778 z!3189))))

(declare-fun b!7145572 () Bool)

(declare-fun res!2915489 () Bool)

(assert (=> b!7145572 (=> res!2915489 e!4294121)))

(assert (=> b!7145572 (= res!2915489 (exists!4037 lt!2568794 lambda!435689))))

(declare-fun b!7145573 () Bool)

(assert (=> b!7145573 (= e!4294115 e!4294117)))

(declare-fun res!2915487 () Bool)

(assert (=> b!7145573 (=> (not res!2915487) (not e!4294117))))

(declare-fun unfocusZipper!2553 (List!69489) Regex!18205)

(assert (=> b!7145573 (= res!2915487 (= r!11483 (unfocusZipper!2553 lt!2568801)))))

(declare-fun toList!11236 ((InoxSet Context!14398)) List!69489)

(assert (=> b!7145573 (= lt!2568801 (toList!11236 z!3189))))

(declare-fun b!7145574 () Bool)

(declare-fun tp!1971238 () Bool)

(declare-fun tp!1971243 () Bool)

(assert (=> b!7145574 (= e!4294119 (and tp!1971238 tp!1971243))))

(declare-fun b!7145575 () Bool)

(declare-fun Unit!163282 () Unit!163279)

(assert (=> b!7145575 (= e!4294118 Unit!163282)))

(declare-fun lt!2568795 () Context!14398)

(declare-fun getWitness!1992 ((InoxSet Context!14398) Int) Context!14398)

(assert (=> b!7145575 (= lt!2568795 (getWitness!1992 z!3189 lambda!435690))))

(declare-fun lt!2568797 () Unit!163279)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!28 (List!69489 Context!14398) Unit!163279)

(assert (=> b!7145575 (= lt!2568797 (lemmaZipperContainsContextThenUnfocusZipperListContains!28 lt!2568801 lt!2568795))))

(declare-fun lt!2568799 () Regex!18205)

(declare-fun generalisedConcat!2382 (List!69488) Regex!18205)

(assert (=> b!7145575 (= lt!2568799 (generalisedConcat!2382 (exprs!7699 lt!2568795)))))

(declare-fun contains!20637 (List!69488 Regex!18205) Bool)

(assert (=> b!7145575 (contains!20637 lt!2568794 lt!2568799)))

(declare-fun lt!2568802 () Unit!163279)

(declare-fun nullableGenConcatSpec!26 (Regex!18205 List!69488) Unit!163279)

(assert (=> b!7145575 (= lt!2568802 (nullableGenConcatSpec!26 lt!2568799 (exprs!7699 lt!2568795)))))

(declare-fun forall!17041 (List!69488 Int) Bool)

(assert (=> b!7145575 (= (nullable!7722 lt!2568799) (forall!17041 (exprs!7699 lt!2568795) lambda!435689))))

(declare-fun lt!2568798 () Unit!163279)

(declare-fun lemmaContainsThenExists!209 (List!69488 Regex!18205 Int) Unit!163279)

(assert (=> b!7145575 (= lt!2568798 (lemmaContainsThenExists!209 lt!2568794 lt!2568799 lambda!435689))))

(assert (=> b!7145575 false))

(assert (= (and start!696712 res!2915492) b!7145573))

(assert (= (and b!7145573 res!2915487) b!7145562))

(assert (= (and b!7145562 res!2915493) b!7145567))

(assert (= (and b!7145567 (not res!2915486)) b!7145569))

(assert (= (and b!7145569 (not res!2915490)) b!7145572))

(assert (= (and b!7145572 (not res!2915489)) b!7145561))

(assert (= (and b!7145561 c!1332543) b!7145575))

(assert (= (and b!7145561 (not c!1332543)) b!7145565))

(assert (= (and b!7145561 (not res!2915491)) b!7145571))

(assert (= (and b!7145571 (not res!2915488)) b!7145568))

(get-info :version)

(assert (= (and start!696712 ((_ is ElementMatch!18205) r!11483)) b!7145564))

(assert (= (and start!696712 ((_ is Concat!27050) r!11483)) b!7145574))

(assert (= (and start!696712 ((_ is Star!18205) r!11483)) b!7145566))

(assert (= (and start!696712 ((_ is Union!18205) r!11483)) b!7145563))

(assert (= (and start!696712 condSetEmpty!52729) setIsEmpty!52729))

(assert (= (and start!696712 (not condSetEmpty!52729)) setNonEmpty!52729))

(assert (= setNonEmpty!52729 b!7145570))

(declare-fun m!7858930 () Bool)

(assert (=> b!7145571 m!7858930))

(declare-fun m!7858932 () Bool)

(assert (=> setNonEmpty!52729 m!7858932))

(declare-fun m!7858934 () Bool)

(assert (=> b!7145572 m!7858934))

(declare-fun m!7858936 () Bool)

(assert (=> b!7145573 m!7858936))

(declare-fun m!7858938 () Bool)

(assert (=> b!7145573 m!7858938))

(declare-fun m!7858940 () Bool)

(assert (=> start!696712 m!7858940))

(declare-fun m!7858942 () Bool)

(assert (=> b!7145568 m!7858942))

(declare-fun m!7858944 () Bool)

(assert (=> b!7145561 m!7858944))

(assert (=> b!7145561 m!7858944))

(declare-fun m!7858946 () Bool)

(assert (=> b!7145562 m!7858946))

(declare-fun m!7858948 () Bool)

(assert (=> b!7145562 m!7858948))

(declare-fun m!7858950 () Bool)

(assert (=> b!7145575 m!7858950))

(declare-fun m!7858952 () Bool)

(assert (=> b!7145575 m!7858952))

(declare-fun m!7858954 () Bool)

(assert (=> b!7145575 m!7858954))

(declare-fun m!7858956 () Bool)

(assert (=> b!7145575 m!7858956))

(declare-fun m!7858958 () Bool)

(assert (=> b!7145575 m!7858958))

(declare-fun m!7858960 () Bool)

(assert (=> b!7145575 m!7858960))

(declare-fun m!7858962 () Bool)

(assert (=> b!7145575 m!7858962))

(declare-fun m!7858964 () Bool)

(assert (=> b!7145575 m!7858964))

(assert (=> b!7145567 m!7858934))

(assert (=> b!7145567 m!7858934))

(declare-fun m!7858966 () Bool)

(assert (=> b!7145567 m!7858966))

(declare-fun m!7858968 () Bool)

(assert (=> b!7145567 m!7858968))

(check-sat (not b!7145570) (not b!7145561) (not b!7145568) (not setNonEmpty!52729) (not start!696712) (not b!7145574) (not b!7145567) (not b!7145566) (not b!7145575) (not b!7145572) (not b!7145573) (not b!7145562) (not b!7145563) (not b!7145571) tp_is_empty!46047)
(check-sat)
