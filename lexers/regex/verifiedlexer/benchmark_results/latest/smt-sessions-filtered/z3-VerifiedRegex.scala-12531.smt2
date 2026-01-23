; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696244 () Bool)

(assert start!696244)

(declare-fun b!7142072 () Bool)

(declare-fun e!4292164 () Bool)

(declare-fun tp!1969773 () Bool)

(assert (=> b!7142072 (= e!4292164 tp!1969773)))

(declare-fun b!7142073 () Bool)

(declare-fun e!4292165 () Bool)

(declare-fun tp_is_empty!45979 () Bool)

(assert (=> b!7142073 (= e!4292165 tp_is_empty!45979)))

(declare-fun b!7142074 () Bool)

(declare-fun e!4292163 () Bool)

(declare-datatypes ((C!36616 0))(
  ( (C!36617 (val!28256 Int)) )
))
(declare-datatypes ((Regex!18171 0))(
  ( (ElementMatch!18171 (c!1331906 C!36616)) (Concat!27016 (regOne!36854 Regex!18171) (regTwo!36854 Regex!18171)) (EmptyExpr!18171) (Star!18171 (reg!18500 Regex!18171)) (EmptyLang!18171) (Union!18171 (regOne!36855 Regex!18171) (regTwo!36855 Regex!18171)) )
))
(declare-datatypes ((List!69420 0))(
  ( (Nil!69296) (Cons!69296 (h!75744 Regex!18171) (t!383437 List!69420)) )
))
(declare-fun lt!2567649 () List!69420)

(declare-fun lambda!434920 () Int)

(declare-fun exists!3967 (List!69420 Int) Bool)

(assert (=> b!7142074 (= e!4292163 (not (exists!3967 lt!2567649 lambda!434920)))))

(declare-fun b!7142075 () Bool)

(declare-fun e!4292166 () Bool)

(assert (=> b!7142075 (= e!4292166 (not e!4292163))))

(declare-fun res!2914086 () Bool)

(assert (=> b!7142075 (=> res!2914086 e!4292163)))

(declare-fun lt!2567647 () Bool)

(assert (=> b!7142075 (= res!2914086 (not (= lt!2567647 (exists!3967 lt!2567649 lambda!434920))))))

(assert (=> b!7142075 (= lt!2567647 (exists!3967 lt!2567649 lambda!434920))))

(declare-fun lt!2567648 () Regex!18171)

(declare-fun nullable!7690 (Regex!18171) Bool)

(assert (=> b!7142075 (= lt!2567647 (nullable!7690 lt!2567648))))

(declare-datatypes ((Unit!163211 0))(
  ( (Unit!163212) )
))
(declare-fun lt!2567650 () Unit!163211)

(declare-fun nullableGenUnionSpec!58 (Regex!18171 List!69420) Unit!163211)

(assert (=> b!7142075 (= lt!2567650 (nullableGenUnionSpec!58 lt!2567648 lt!2567649))))

(declare-fun res!2914089 () Bool)

(declare-fun e!4292161 () Bool)

(assert (=> start!696244 (=> (not res!2914089) (not e!4292161))))

(declare-fun r!11483 () Regex!18171)

(declare-fun validRegex!9338 (Regex!18171) Bool)

(assert (=> start!696244 (= res!2914089 (validRegex!9338 r!11483))))

(assert (=> start!696244 e!4292161))

(assert (=> start!696244 e!4292165))

(declare-fun condSetEmpty!52579 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!14330 0))(
  ( (Context!14331 (exprs!7665 List!69420)) )
))
(declare-fun z!3189 () (InoxSet Context!14330))

(assert (=> start!696244 (= condSetEmpty!52579 (= z!3189 ((as const (Array Context!14330 Bool)) false)))))

(declare-fun setRes!52579 () Bool)

(assert (=> start!696244 setRes!52579))

(declare-fun b!7142076 () Bool)

(declare-fun res!2914088 () Bool)

(assert (=> b!7142076 (=> res!2914088 e!4292163)))

(assert (=> b!7142076 (= res!2914088 lt!2567647)))

(declare-fun b!7142077 () Bool)

(declare-fun e!4292162 () Bool)

(assert (=> b!7142077 (= e!4292162 e!4292166)))

(declare-fun res!2914087 () Bool)

(assert (=> b!7142077 (=> (not res!2914087) (not e!4292166))))

(assert (=> b!7142077 (= res!2914087 (= r!11483 lt!2567648))))

(declare-fun generalisedUnion!2676 (List!69420) Regex!18171)

(assert (=> b!7142077 (= lt!2567648 (generalisedUnion!2676 lt!2567649))))

(declare-datatypes ((List!69421 0))(
  ( (Nil!69297) (Cons!69297 (h!75745 Context!14330) (t!383438 List!69421)) )
))
(declare-fun lt!2567646 () List!69421)

(declare-fun unfocusZipperList!2212 (List!69421) List!69420)

(assert (=> b!7142077 (= lt!2567649 (unfocusZipperList!2212 lt!2567646))))

(declare-fun b!7142078 () Bool)

(declare-fun tp!1969771 () Bool)

(declare-fun tp!1969772 () Bool)

(assert (=> b!7142078 (= e!4292165 (and tp!1969771 tp!1969772))))

(declare-fun setNonEmpty!52579 () Bool)

(declare-fun setElem!52579 () Context!14330)

(declare-fun tp!1969776 () Bool)

(declare-fun inv!88491 (Context!14330) Bool)

(assert (=> setNonEmpty!52579 (= setRes!52579 (and tp!1969776 (inv!88491 setElem!52579) e!4292164))))

(declare-fun setRest!52579 () (InoxSet Context!14330))

(assert (=> setNonEmpty!52579 (= z!3189 ((_ map or) (store ((as const (Array Context!14330 Bool)) false) setElem!52579 true) setRest!52579))))

(declare-fun b!7142079 () Bool)

(assert (=> b!7142079 (= e!4292161 e!4292162)))

(declare-fun res!2914085 () Bool)

(assert (=> b!7142079 (=> (not res!2914085) (not e!4292162))))

(declare-fun unfocusZipper!2519 (List!69421) Regex!18171)

(assert (=> b!7142079 (= res!2914085 (= r!11483 (unfocusZipper!2519 lt!2567646)))))

(declare-fun toList!11202 ((InoxSet Context!14330)) List!69421)

(assert (=> b!7142079 (= lt!2567646 (toList!11202 z!3189))))

(declare-fun b!7142080 () Bool)

(declare-fun tp!1969774 () Bool)

(declare-fun tp!1969777 () Bool)

(assert (=> b!7142080 (= e!4292165 (and tp!1969774 tp!1969777))))

(declare-fun setIsEmpty!52579 () Bool)

(assert (=> setIsEmpty!52579 setRes!52579))

(declare-fun b!7142081 () Bool)

(declare-fun tp!1969775 () Bool)

(assert (=> b!7142081 (= e!4292165 tp!1969775)))

(assert (= (and start!696244 res!2914089) b!7142079))

(assert (= (and b!7142079 res!2914085) b!7142077))

(assert (= (and b!7142077 res!2914087) b!7142075))

(assert (= (and b!7142075 (not res!2914086)) b!7142076))

(assert (= (and b!7142076 (not res!2914088)) b!7142074))

(get-info :version)

(assert (= (and start!696244 ((_ is ElementMatch!18171) r!11483)) b!7142073))

(assert (= (and start!696244 ((_ is Concat!27016) r!11483)) b!7142078))

(assert (= (and start!696244 ((_ is Star!18171) r!11483)) b!7142081))

(assert (= (and start!696244 ((_ is Union!18171) r!11483)) b!7142080))

(assert (= (and start!696244 condSetEmpty!52579) setIsEmpty!52579))

(assert (= (and start!696244 (not condSetEmpty!52579)) setNonEmpty!52579))

(assert (= setNonEmpty!52579 b!7142072))

(declare-fun m!7856556 () Bool)

(assert (=> start!696244 m!7856556))

(declare-fun m!7856558 () Bool)

(assert (=> b!7142077 m!7856558))

(declare-fun m!7856560 () Bool)

(assert (=> b!7142077 m!7856560))

(declare-fun m!7856562 () Bool)

(assert (=> b!7142079 m!7856562))

(declare-fun m!7856564 () Bool)

(assert (=> b!7142079 m!7856564))

(declare-fun m!7856566 () Bool)

(assert (=> b!7142075 m!7856566))

(assert (=> b!7142075 m!7856566))

(declare-fun m!7856568 () Bool)

(assert (=> b!7142075 m!7856568))

(declare-fun m!7856570 () Bool)

(assert (=> b!7142075 m!7856570))

(declare-fun m!7856572 () Bool)

(assert (=> setNonEmpty!52579 m!7856572))

(assert (=> b!7142074 m!7856566))

(check-sat (not b!7142081) (not b!7142080) (not b!7142079) (not b!7142075) (not b!7142074) (not b!7142072) (not b!7142078) tp_is_empty!45979 (not b!7142077) (not setNonEmpty!52579) (not start!696244))
(check-sat)
