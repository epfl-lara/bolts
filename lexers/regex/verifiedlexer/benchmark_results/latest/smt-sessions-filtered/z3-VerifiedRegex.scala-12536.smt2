; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696424 () Bool)

(assert start!696424)

(declare-fun setIsEmpty!52627 () Bool)

(declare-fun setRes!52627 () Bool)

(assert (=> setIsEmpty!52627 setRes!52627))

(declare-fun b!7143225 () Bool)

(declare-fun e!4292799 () Bool)

(declare-fun e!4292797 () Bool)

(assert (=> b!7143225 (= e!4292799 (not e!4292797))))

(declare-fun res!2914545 () Bool)

(assert (=> b!7143225 (=> res!2914545 e!4292797)))

(declare-fun lambda!435193 () Int)

(declare-fun lt!2568030 () Bool)

(declare-datatypes ((C!36636 0))(
  ( (C!36637 (val!28266 Int)) )
))
(declare-datatypes ((Regex!18181 0))(
  ( (ElementMatch!18181 (c!1332112 C!36636)) (Concat!27026 (regOne!36874 Regex!18181) (regTwo!36874 Regex!18181)) (EmptyExpr!18181) (Star!18181 (reg!18510 Regex!18181)) (EmptyLang!18181) (Union!18181 (regOne!36875 Regex!18181) (regTwo!36875 Regex!18181)) )
))
(declare-datatypes ((List!69440 0))(
  ( (Nil!69316) (Cons!69316 (h!75764 Regex!18181) (t!383457 List!69440)) )
))
(declare-fun lt!2568031 () List!69440)

(declare-fun exists!3991 (List!69440 Int) Bool)

(assert (=> b!7143225 (= res!2914545 (not (= lt!2568030 (exists!3991 lt!2568031 lambda!435193))))))

(assert (=> b!7143225 (= lt!2568030 (exists!3991 lt!2568031 lambda!435193))))

(declare-fun lt!2568025 () Regex!18181)

(declare-fun nullable!7700 (Regex!18181) Bool)

(assert (=> b!7143225 (= lt!2568030 (nullable!7700 lt!2568025))))

(declare-datatypes ((Unit!163231 0))(
  ( (Unit!163232) )
))
(declare-fun lt!2568026 () Unit!163231)

(declare-fun nullableGenUnionSpec!68 (Regex!18181 List!69440) Unit!163231)

(assert (=> b!7143225 (= lt!2568026 (nullableGenUnionSpec!68 lt!2568025 lt!2568031))))

(declare-fun b!7143226 () Bool)

(declare-fun e!4292802 () Bool)

(declare-fun tp!1970265 () Bool)

(declare-fun tp!1970263 () Bool)

(assert (=> b!7143226 (= e!4292802 (and tp!1970265 tp!1970263))))

(declare-fun b!7143227 () Bool)

(declare-fun e!4292800 () Bool)

(declare-fun e!4292796 () Bool)

(assert (=> b!7143227 (= e!4292800 e!4292796)))

(declare-fun res!2914544 () Bool)

(assert (=> b!7143227 (=> (not res!2914544) (not e!4292796))))

(declare-fun r!11483 () Regex!18181)

(declare-datatypes ((Context!14350 0))(
  ( (Context!14351 (exprs!7675 List!69440)) )
))
(declare-datatypes ((List!69441 0))(
  ( (Nil!69317) (Cons!69317 (h!75765 Context!14350) (t!383458 List!69441)) )
))
(declare-fun lt!2568029 () List!69441)

(declare-fun unfocusZipper!2529 (List!69441) Regex!18181)

(assert (=> b!7143227 (= res!2914544 (= r!11483 (unfocusZipper!2529 lt!2568029)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14350))

(declare-fun toList!11212 ((InoxSet Context!14350)) List!69441)

(assert (=> b!7143227 (= lt!2568029 (toList!11212 z!3189))))

(declare-fun b!7143228 () Bool)

(declare-fun e!4292798 () Bool)

(assert (=> b!7143228 (= e!4292797 e!4292798)))

(declare-fun res!2914538 () Bool)

(assert (=> b!7143228 (=> res!2914538 e!4292798)))

(declare-fun lt!2568024 () Context!14350)

(assert (=> b!7143228 (= res!2914538 (not (select z!3189 lt!2568024)))))

(declare-fun lambda!435194 () Int)

(declare-fun getWitness!1962 ((InoxSet Context!14350) Int) Context!14350)

(assert (=> b!7143228 (= lt!2568024 (getWitness!1962 z!3189 lambda!435194))))

(declare-fun b!7143229 () Bool)

(declare-fun res!2914540 () Bool)

(assert (=> b!7143229 (=> res!2914540 e!4292798)))

(declare-fun nullableContext!159 (Context!14350) Bool)

(assert (=> b!7143229 (= res!2914540 (not (nullableContext!159 lt!2568024)))))

(declare-fun b!7143230 () Bool)

(declare-fun e!4292801 () Bool)

(assert (=> b!7143230 (= e!4292801 (exists!3991 lt!2568031 lambda!435193))))

(assert (=> b!7143230 (exists!3991 lt!2568031 lambda!435193)))

(declare-fun lt!2568034 () Unit!163231)

(declare-fun lt!2568028 () Regex!18181)

(declare-fun lemmaContainsThenExists!199 (List!69440 Regex!18181 Int) Unit!163231)

(assert (=> b!7143230 (= lt!2568034 (lemmaContainsThenExists!199 lt!2568031 lt!2568028 lambda!435193))))

(declare-fun b!7143231 () Bool)

(declare-fun res!2914543 () Bool)

(assert (=> b!7143231 (=> res!2914543 e!4292797)))

(declare-fun exists!3992 ((InoxSet Context!14350) Int) Bool)

(assert (=> b!7143231 (= res!2914543 (not (exists!3992 z!3189 lambda!435194)))))

(declare-fun b!7143232 () Bool)

(declare-fun tp!1970268 () Bool)

(assert (=> b!7143232 (= e!4292802 tp!1970268)))

(declare-fun b!7143233 () Bool)

(declare-fun res!2914536 () Bool)

(assert (=> b!7143233 (=> res!2914536 e!4292797)))

(assert (=> b!7143233 (= res!2914536 lt!2568030)))

(declare-fun setNonEmpty!52627 () Bool)

(declare-fun e!4292795 () Bool)

(declare-fun tp!1970269 () Bool)

(declare-fun setElem!52627 () Context!14350)

(declare-fun inv!88516 (Context!14350) Bool)

(assert (=> setNonEmpty!52627 (= setRes!52627 (and tp!1970269 (inv!88516 setElem!52627) e!4292795))))

(declare-fun setRest!52627 () (InoxSet Context!14350))

(assert (=> setNonEmpty!52627 (= z!3189 ((_ map or) (store ((as const (Array Context!14350 Bool)) false) setElem!52627 true) setRest!52627))))

(declare-fun b!7143234 () Bool)

(assert (=> b!7143234 (= e!4292796 e!4292799)))

(declare-fun res!2914541 () Bool)

(assert (=> b!7143234 (=> (not res!2914541) (not e!4292799))))

(assert (=> b!7143234 (= res!2914541 (= r!11483 lt!2568025))))

(declare-fun generalisedUnion!2686 (List!69440) Regex!18181)

(assert (=> b!7143234 (= lt!2568025 (generalisedUnion!2686 lt!2568031))))

(declare-fun unfocusZipperList!2222 (List!69441) List!69440)

(assert (=> b!7143234 (= lt!2568031 (unfocusZipperList!2222 lt!2568029))))

(declare-fun b!7143235 () Bool)

(declare-fun res!2914542 () Bool)

(assert (=> b!7143235 (=> res!2914542 e!4292797)))

(assert (=> b!7143235 (= res!2914542 (exists!3991 lt!2568031 lambda!435193))))

(declare-fun b!7143236 () Bool)

(declare-fun tp_is_empty!45999 () Bool)

(assert (=> b!7143236 (= e!4292802 tp_is_empty!45999)))

(declare-fun res!2914537 () Bool)

(assert (=> start!696424 (=> (not res!2914537) (not e!4292800))))

(declare-fun validRegex!9348 (Regex!18181) Bool)

(assert (=> start!696424 (= res!2914537 (validRegex!9348 r!11483))))

(assert (=> start!696424 e!4292800))

(assert (=> start!696424 e!4292802))

(declare-fun condSetEmpty!52627 () Bool)

(assert (=> start!696424 (= condSetEmpty!52627 (= z!3189 ((as const (Array Context!14350 Bool)) false)))))

(assert (=> start!696424 setRes!52627))

(declare-fun b!7143237 () Bool)

(assert (=> b!7143237 (= e!4292798 e!4292801)))

(declare-fun res!2914539 () Bool)

(assert (=> b!7143237 (=> res!2914539 e!4292801)))

(declare-fun lt!2568033 () Bool)

(assert (=> b!7143237 (= res!2914539 (not lt!2568033))))

(declare-fun forall!17019 (List!69440 Int) Bool)

(assert (=> b!7143237 (= lt!2568033 (forall!17019 (exprs!7675 lt!2568024) lambda!435193))))

(assert (=> b!7143237 (= lt!2568033 (nullable!7700 lt!2568028))))

(declare-fun lt!2568027 () Unit!163231)

(declare-fun nullableGenConcatSpec!16 (Regex!18181 List!69440) Unit!163231)

(assert (=> b!7143237 (= lt!2568027 (nullableGenConcatSpec!16 lt!2568028 (exprs!7675 lt!2568024)))))

(declare-fun contains!20617 (List!69440 Regex!18181) Bool)

(assert (=> b!7143237 (contains!20617 lt!2568031 lt!2568028)))

(declare-fun generalisedConcat!2362 (List!69440) Regex!18181)

(assert (=> b!7143237 (= lt!2568028 (generalisedConcat!2362 (exprs!7675 lt!2568024)))))

(declare-fun lt!2568032 () Unit!163231)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!18 (List!69441 Context!14350) Unit!163231)

(assert (=> b!7143237 (= lt!2568032 (lemmaZipperContainsContextThenUnfocusZipperListContains!18 lt!2568029 lt!2568024))))

(declare-fun b!7143238 () Bool)

(declare-fun tp!1970267 () Bool)

(assert (=> b!7143238 (= e!4292795 tp!1970267)))

(declare-fun b!7143239 () Bool)

(declare-fun tp!1970264 () Bool)

(declare-fun tp!1970266 () Bool)

(assert (=> b!7143239 (= e!4292802 (and tp!1970264 tp!1970266))))

(assert (= (and start!696424 res!2914537) b!7143227))

(assert (= (and b!7143227 res!2914544) b!7143234))

(assert (= (and b!7143234 res!2914541) b!7143225))

(assert (= (and b!7143225 (not res!2914545)) b!7143233))

(assert (= (and b!7143233 (not res!2914536)) b!7143235))

(assert (= (and b!7143235 (not res!2914542)) b!7143231))

(assert (= (and b!7143231 (not res!2914543)) b!7143228))

(assert (= (and b!7143228 (not res!2914538)) b!7143229))

(assert (= (and b!7143229 (not res!2914540)) b!7143237))

(assert (= (and b!7143237 (not res!2914539)) b!7143230))

(get-info :version)

(assert (= (and start!696424 ((_ is ElementMatch!18181) r!11483)) b!7143236))

(assert (= (and start!696424 ((_ is Concat!27026) r!11483)) b!7143226))

(assert (= (and start!696424 ((_ is Star!18181) r!11483)) b!7143232))

(assert (= (and start!696424 ((_ is Union!18181) r!11483)) b!7143239))

(assert (= (and start!696424 condSetEmpty!52627) setIsEmpty!52627))

(assert (= (and start!696424 (not condSetEmpty!52627)) setNonEmpty!52627))

(assert (= setNonEmpty!52627 b!7143238))

(declare-fun m!7857362 () Bool)

(assert (=> b!7143234 m!7857362))

(declare-fun m!7857364 () Bool)

(assert (=> b!7143234 m!7857364))

(declare-fun m!7857366 () Bool)

(assert (=> b!7143225 m!7857366))

(assert (=> b!7143225 m!7857366))

(declare-fun m!7857368 () Bool)

(assert (=> b!7143225 m!7857368))

(declare-fun m!7857370 () Bool)

(assert (=> b!7143225 m!7857370))

(declare-fun m!7857372 () Bool)

(assert (=> setNonEmpty!52627 m!7857372))

(declare-fun m!7857374 () Bool)

(assert (=> b!7143229 m!7857374))

(assert (=> b!7143230 m!7857366))

(assert (=> b!7143230 m!7857366))

(declare-fun m!7857376 () Bool)

(assert (=> b!7143230 m!7857376))

(assert (=> b!7143235 m!7857366))

(declare-fun m!7857378 () Bool)

(assert (=> b!7143228 m!7857378))

(declare-fun m!7857380 () Bool)

(assert (=> b!7143228 m!7857380))

(declare-fun m!7857382 () Bool)

(assert (=> b!7143227 m!7857382))

(declare-fun m!7857384 () Bool)

(assert (=> b!7143227 m!7857384))

(declare-fun m!7857386 () Bool)

(assert (=> b!7143237 m!7857386))

(declare-fun m!7857388 () Bool)

(assert (=> b!7143237 m!7857388))

(declare-fun m!7857390 () Bool)

(assert (=> b!7143237 m!7857390))

(declare-fun m!7857392 () Bool)

(assert (=> b!7143237 m!7857392))

(declare-fun m!7857394 () Bool)

(assert (=> b!7143237 m!7857394))

(declare-fun m!7857396 () Bool)

(assert (=> b!7143237 m!7857396))

(declare-fun m!7857398 () Bool)

(assert (=> b!7143231 m!7857398))

(declare-fun m!7857400 () Bool)

(assert (=> start!696424 m!7857400))

(check-sat (not b!7143229) (not b!7143230) (not b!7143238) (not b!7143228) (not b!7143232) (not b!7143235) (not setNonEmpty!52627) (not b!7143239) (not b!7143226) tp_is_empty!45999 (not start!696424) (not b!7143234) (not b!7143231) (not b!7143237) (not b!7143225) (not b!7143227))
(check-sat)
