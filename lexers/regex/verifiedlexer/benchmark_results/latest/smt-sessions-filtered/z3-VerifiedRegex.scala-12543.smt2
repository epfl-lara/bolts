; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696640 () Bool)

(assert start!696640)

(declare-fun b!7144857 () Bool)

(assert (=> b!7144857 true))

(declare-fun bs!1889008 () Bool)

(declare-fun b!7144859 () Bool)

(declare-fun b!7144867 () Bool)

(assert (= bs!1889008 (and b!7144859 b!7144867)))

(declare-fun lambda!435486 () Int)

(declare-fun lambda!435484 () Int)

(assert (=> bs!1889008 (not (= lambda!435486 lambda!435484))))

(declare-fun b!7144856 () Bool)

(declare-fun e!4293727 () Bool)

(declare-fun e!4293733 () Bool)

(assert (=> b!7144856 (= e!4293727 e!4293733)))

(declare-fun res!2915126 () Bool)

(assert (=> b!7144856 (=> res!2915126 e!4293733)))

(declare-datatypes ((C!36664 0))(
  ( (C!36665 (val!28280 Int)) )
))
(declare-datatypes ((Regex!18195 0))(
  ( (ElementMatch!18195 (c!1332436 C!36664)) (Concat!27040 (regOne!36902 Regex!18195) (regTwo!36902 Regex!18195)) (EmptyExpr!18195) (Star!18195 (reg!18524 Regex!18195)) (EmptyLang!18195) (Union!18195 (regOne!36903 Regex!18195) (regTwo!36903 Regex!18195)) )
))
(declare-fun lt!2568472 () Regex!18195)

(declare-fun lt!2568474 () Regex!18195)

(assert (=> b!7144856 (= res!2915126 (not (= lt!2568472 lt!2568474)))))

(declare-datatypes ((List!69468 0))(
  ( (Nil!69344) (Cons!69344 (h!75792 Regex!18195) (t!383485 List!69468)) )
))
(declare-datatypes ((Context!14378 0))(
  ( (Context!14379 (exprs!7689 List!69468)) )
))
(declare-fun lt!2568470 () Context!14378)

(declare-fun generalisedConcat!2372 (List!69468) Regex!18195)

(assert (=> b!7144856 (= lt!2568472 (generalisedConcat!2372 (exprs!7689 lt!2568470)))))

(declare-fun e!4293730 () Bool)

(declare-fun e!4293729 () Bool)

(assert (=> b!7144857 (= e!4293730 e!4293729)))

(declare-fun res!2915116 () Bool)

(assert (=> b!7144857 (=> res!2915116 e!4293729)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14378))

(declare-fun lambda!435485 () Int)

(declare-fun exists!4011 ((InoxSet Context!14378) Int) Bool)

(assert (=> b!7144857 (= res!2915116 (not (exists!4011 z!3189 lambda!435485)))))

(declare-datatypes ((List!69469 0))(
  ( (Nil!69345) (Cons!69345 (h!75793 Context!14378) (t!383486 List!69469)) )
))
(declare-fun lt!2568475 () List!69469)

(declare-fun exists!4012 (List!69469 Int) Bool)

(assert (=> b!7144857 (exists!4012 lt!2568475 lambda!435485)))

(declare-datatypes ((Unit!163257 0))(
  ( (Unit!163258) )
))
(declare-fun lt!2568471 () Unit!163257)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!32 (List!69469 Regex!18195) Unit!163257)

(assert (=> b!7144857 (= lt!2568471 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!32 lt!2568475 lt!2568474))))

(declare-fun tp!1970937 () Bool)

(declare-fun setRes!52693 () Bool)

(declare-fun setElem!52693 () Context!14378)

(declare-fun e!4293732 () Bool)

(declare-fun setNonEmpty!52693 () Bool)

(declare-fun inv!88551 (Context!14378) Bool)

(assert (=> setNonEmpty!52693 (= setRes!52693 (and tp!1970937 (inv!88551 setElem!52693) e!4293732))))

(declare-fun setRest!52693 () (InoxSet Context!14378))

(assert (=> setNonEmpty!52693 (= z!3189 ((_ map or) (store ((as const (Array Context!14378 Bool)) false) setElem!52693 true) setRest!52693))))

(declare-fun b!7144858 () Bool)

(declare-fun res!2915122 () Bool)

(declare-fun e!4293735 () Bool)

(assert (=> b!7144858 (=> res!2915122 e!4293735)))

(declare-fun lt!2568476 () Bool)

(assert (=> b!7144858 (= res!2915122 (not lt!2568476))))

(declare-fun res!2915119 () Bool)

(assert (=> b!7144859 (=> res!2915119 e!4293733)))

(declare-fun forall!17033 (List!69468 Int) Bool)

(assert (=> b!7144859 (= res!2915119 (not (forall!17033 (exprs!7689 lt!2568470) lambda!435486)))))

(declare-fun b!7144860 () Bool)

(declare-fun e!4293734 () Bool)

(declare-fun tp_is_empty!46027 () Bool)

(assert (=> b!7144860 (= e!4293734 tp_is_empty!46027)))

(declare-fun b!7144861 () Bool)

(assert (=> b!7144861 (= e!4293733 (= lt!2568474 lt!2568472))))

(declare-fun b!7144862 () Bool)

(declare-fun res!2915127 () Bool)

(assert (=> b!7144862 (=> res!2915127 e!4293733)))

(declare-fun nullable!7712 (Regex!18195) Bool)

(assert (=> b!7144862 (= res!2915127 (not (nullable!7712 lt!2568472)))))

(declare-fun res!2915120 () Bool)

(declare-fun e!4293728 () Bool)

(assert (=> start!696640 (=> (not res!2915120) (not e!4293728))))

(declare-fun r!11483 () Regex!18195)

(declare-fun validRegex!9362 (Regex!18195) Bool)

(assert (=> start!696640 (= res!2915120 (validRegex!9362 r!11483))))

(assert (=> start!696640 e!4293728))

(assert (=> start!696640 e!4293734))

(declare-fun condSetEmpty!52693 () Bool)

(assert (=> start!696640 (= condSetEmpty!52693 (= z!3189 ((as const (Array Context!14378 Bool)) false)))))

(assert (=> start!696640 setRes!52693))

(declare-fun b!7144863 () Bool)

(declare-fun res!2915118 () Bool)

(assert (=> b!7144863 (=> res!2915118 e!4293730)))

(declare-fun lt!2568478 () List!69468)

(declare-fun contains!20627 (List!69468 Regex!18195) Bool)

(assert (=> b!7144863 (= res!2915118 (not (contains!20627 lt!2568478 lt!2568474)))))

(declare-fun b!7144864 () Bool)

(declare-fun e!4293731 () Bool)

(declare-fun e!4293736 () Bool)

(assert (=> b!7144864 (= e!4293731 e!4293736)))

(declare-fun res!2915115 () Bool)

(assert (=> b!7144864 (=> (not res!2915115) (not e!4293736))))

(declare-fun lt!2568473 () Regex!18195)

(assert (=> b!7144864 (= res!2915115 (= r!11483 lt!2568473))))

(declare-fun generalisedUnion!2700 (List!69468) Regex!18195)

(assert (=> b!7144864 (= lt!2568473 (generalisedUnion!2700 lt!2568478))))

(declare-fun unfocusZipperList!2236 (List!69469) List!69468)

(assert (=> b!7144864 (= lt!2568478 (unfocusZipperList!2236 lt!2568475))))

(declare-fun b!7144865 () Bool)

(declare-fun tp!1970933 () Bool)

(declare-fun tp!1970939 () Bool)

(assert (=> b!7144865 (= e!4293734 (and tp!1970933 tp!1970939))))

(declare-fun b!7144866 () Bool)

(declare-fun tp!1970935 () Bool)

(assert (=> b!7144866 (= e!4293734 tp!1970935)))

(assert (=> b!7144867 (= e!4293736 (not e!4293735))))

(declare-fun res!2915123 () Bool)

(assert (=> b!7144867 (=> res!2915123 e!4293735)))

(declare-fun exists!4013 (List!69468 Int) Bool)

(assert (=> b!7144867 (= res!2915123 (not (= lt!2568476 (exists!4013 lt!2568478 lambda!435484))))))

(assert (=> b!7144867 (= lt!2568476 (exists!4013 lt!2568478 lambda!435484))))

(assert (=> b!7144867 (= lt!2568476 (nullable!7712 lt!2568473))))

(declare-fun lt!2568477 () Unit!163257)

(declare-fun nullableGenUnionSpec!76 (Regex!18195 List!69468) Unit!163257)

(assert (=> b!7144867 (= lt!2568477 (nullableGenUnionSpec!76 lt!2568473 lt!2568478))))

(declare-fun b!7144868 () Bool)

(declare-fun res!2915125 () Bool)

(assert (=> b!7144868 (=> res!2915125 e!4293735)))

(assert (=> b!7144868 (= res!2915125 (not (exists!4013 lt!2568478 lambda!435484)))))

(declare-fun b!7144869 () Bool)

(assert (=> b!7144869 (= e!4293728 e!4293731)))

(declare-fun res!2915124 () Bool)

(assert (=> b!7144869 (=> (not res!2915124) (not e!4293731))))

(declare-fun unfocusZipper!2543 (List!69469) Regex!18195)

(assert (=> b!7144869 (= res!2915124 (= r!11483 (unfocusZipper!2543 lt!2568475)))))

(declare-fun toList!11226 ((InoxSet Context!14378)) List!69469)

(assert (=> b!7144869 (= lt!2568475 (toList!11226 z!3189))))

(declare-fun b!7144870 () Bool)

(declare-fun tp!1970938 () Bool)

(assert (=> b!7144870 (= e!4293732 tp!1970938)))

(declare-fun b!7144871 () Bool)

(declare-fun tp!1970936 () Bool)

(declare-fun tp!1970934 () Bool)

(assert (=> b!7144871 (= e!4293734 (and tp!1970936 tp!1970934))))

(declare-fun b!7144872 () Bool)

(assert (=> b!7144872 (= e!4293735 e!4293730)))

(declare-fun res!2915121 () Bool)

(assert (=> b!7144872 (=> res!2915121 e!4293730)))

(assert (=> b!7144872 (= res!2915121 (not (nullable!7712 lt!2568474)))))

(declare-fun getWitness!1977 (List!69468 Int) Regex!18195)

(assert (=> b!7144872 (= lt!2568474 (getWitness!1977 lt!2568478 lambda!435484))))

(declare-fun setIsEmpty!52693 () Bool)

(assert (=> setIsEmpty!52693 setRes!52693))

(declare-fun b!7144873 () Bool)

(assert (=> b!7144873 (= e!4293729 e!4293727)))

(declare-fun res!2915117 () Bool)

(assert (=> b!7144873 (=> res!2915117 e!4293727)))

(assert (=> b!7144873 (= res!2915117 (not (select z!3189 lt!2568470)))))

(declare-fun getWitness!1978 ((InoxSet Context!14378) Int) Context!14378)

(assert (=> b!7144873 (= lt!2568470 (getWitness!1978 z!3189 lambda!435485))))

(assert (= (and start!696640 res!2915120) b!7144869))

(assert (= (and b!7144869 res!2915124) b!7144864))

(assert (= (and b!7144864 res!2915115) b!7144867))

(assert (= (and b!7144867 (not res!2915123)) b!7144858))

(assert (= (and b!7144858 (not res!2915122)) b!7144868))

(assert (= (and b!7144868 (not res!2915125)) b!7144872))

(assert (= (and b!7144872 (not res!2915121)) b!7144863))

(assert (= (and b!7144863 (not res!2915118)) b!7144857))

(assert (= (and b!7144857 (not res!2915116)) b!7144873))

(assert (= (and b!7144873 (not res!2915117)) b!7144856))

(assert (= (and b!7144856 (not res!2915126)) b!7144862))

(assert (= (and b!7144862 (not res!2915127)) b!7144859))

(assert (= (and b!7144859 (not res!2915119)) b!7144861))

(get-info :version)

(assert (= (and start!696640 ((_ is ElementMatch!18195) r!11483)) b!7144860))

(assert (= (and start!696640 ((_ is Concat!27040) r!11483)) b!7144871))

(assert (= (and start!696640 ((_ is Star!18195) r!11483)) b!7144866))

(assert (= (and start!696640 ((_ is Union!18195) r!11483)) b!7144865))

(assert (= (and start!696640 condSetEmpty!52693) setIsEmpty!52693))

(assert (= (and start!696640 (not condSetEmpty!52693)) setNonEmpty!52693))

(assert (= setNonEmpty!52693 b!7144870))

(declare-fun m!7858394 () Bool)

(assert (=> b!7144863 m!7858394))

(declare-fun m!7858396 () Bool)

(assert (=> setNonEmpty!52693 m!7858396))

(declare-fun m!7858398 () Bool)

(assert (=> b!7144857 m!7858398))

(declare-fun m!7858400 () Bool)

(assert (=> b!7144857 m!7858400))

(declare-fun m!7858402 () Bool)

(assert (=> b!7144857 m!7858402))

(declare-fun m!7858404 () Bool)

(assert (=> b!7144864 m!7858404))

(declare-fun m!7858406 () Bool)

(assert (=> b!7144864 m!7858406))

(declare-fun m!7858408 () Bool)

(assert (=> b!7144859 m!7858408))

(declare-fun m!7858410 () Bool)

(assert (=> b!7144869 m!7858410))

(declare-fun m!7858412 () Bool)

(assert (=> b!7144869 m!7858412))

(declare-fun m!7858414 () Bool)

(assert (=> b!7144856 m!7858414))

(declare-fun m!7858416 () Bool)

(assert (=> b!7144867 m!7858416))

(assert (=> b!7144867 m!7858416))

(declare-fun m!7858418 () Bool)

(assert (=> b!7144867 m!7858418))

(declare-fun m!7858420 () Bool)

(assert (=> b!7144867 m!7858420))

(declare-fun m!7858422 () Bool)

(assert (=> b!7144873 m!7858422))

(declare-fun m!7858424 () Bool)

(assert (=> b!7144873 m!7858424))

(declare-fun m!7858426 () Bool)

(assert (=> b!7144862 m!7858426))

(declare-fun m!7858428 () Bool)

(assert (=> b!7144872 m!7858428))

(declare-fun m!7858430 () Bool)

(assert (=> b!7144872 m!7858430))

(declare-fun m!7858432 () Bool)

(assert (=> start!696640 m!7858432))

(assert (=> b!7144868 m!7858416))

(check-sat (not b!7144872) (not b!7144865) (not b!7144868) (not b!7144870) (not b!7144866) (not b!7144873) tp_is_empty!46027 (not b!7144869) (not b!7144859) (not setNonEmpty!52693) (not b!7144856) (not b!7144863) (not b!7144867) (not b!7144871) (not b!7144864) (not b!7144857) (not start!696640) (not b!7144862))
(check-sat)
