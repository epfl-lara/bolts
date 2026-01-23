; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695596 () Bool)

(assert start!695596)

(declare-fun bs!1887792 () Bool)

(declare-fun b!7137884 () Bool)

(declare-fun b!7137892 () Bool)

(assert (= bs!1887792 (and b!7137884 b!7137892)))

(declare-fun lambda!434014 () Int)

(declare-fun lambda!434012 () Int)

(assert (=> bs!1887792 (not (= lambda!434014 lambda!434012))))

(declare-fun b!7137879 () Bool)

(declare-fun res!2912500 () Bool)

(declare-fun e!4289755 () Bool)

(assert (=> b!7137879 (=> res!2912500 e!4289755)))

(declare-datatypes ((C!36552 0))(
  ( (C!36553 (val!28224 Int)) )
))
(declare-datatypes ((Regex!18139 0))(
  ( (ElementMatch!18139 (c!1331114 C!36552)) (Concat!26984 (regOne!36790 Regex!18139) (regTwo!36790 Regex!18139)) (EmptyExpr!18139) (Star!18139 (reg!18468 Regex!18139)) (EmptyLang!18139) (Union!18139 (regOne!36791 Regex!18139) (regTwo!36791 Regex!18139)) )
))
(declare-datatypes ((List!69356 0))(
  ( (Nil!69232) (Cons!69232 (h!75680 Regex!18139) (t!383373 List!69356)) )
))
(declare-datatypes ((Context!14266 0))(
  ( (Context!14267 (exprs!7633 List!69356)) )
))
(declare-fun lt!2566356 () Context!14266)

(declare-fun nullableContext!138 (Context!14266) Bool)

(assert (=> b!7137879 (= res!2912500 (not (nullableContext!138 lt!2566356)))))

(declare-fun b!7137880 () Bool)

(declare-fun res!2912502 () Bool)

(declare-fun e!4289760 () Bool)

(assert (=> b!7137880 (=> res!2912502 e!4289760)))

(declare-fun lt!2566352 () List!69356)

(declare-fun exists!3901 (List!69356 Int) Bool)

(assert (=> b!7137880 (= res!2912502 (exists!3901 lt!2566352 lambda!434012))))

(declare-fun b!7137881 () Bool)

(declare-fun e!4289758 () Bool)

(declare-fun tp!1968165 () Bool)

(declare-fun tp!1968159 () Bool)

(assert (=> b!7137881 (= e!4289758 (and tp!1968165 tp!1968159))))

(declare-fun b!7137882 () Bool)

(declare-fun tp!1968163 () Bool)

(declare-fun tp!1968162 () Bool)

(assert (=> b!7137882 (= e!4289758 (and tp!1968163 tp!1968162))))

(declare-fun b!7137883 () Bool)

(declare-fun e!4289759 () Bool)

(declare-fun e!4289754 () Bool)

(assert (=> b!7137883 (= e!4289759 e!4289754)))

(declare-fun res!2912505 () Bool)

(assert (=> b!7137883 (=> (not res!2912505) (not e!4289754))))

(declare-fun r!11483 () Regex!18139)

(declare-fun lt!2566357 () Regex!18139)

(assert (=> b!7137883 (= res!2912505 (= r!11483 lt!2566357))))

(declare-fun generalisedUnion!2644 (List!69356) Regex!18139)

(assert (=> b!7137883 (= lt!2566357 (generalisedUnion!2644 lt!2566352))))

(declare-datatypes ((List!69357 0))(
  ( (Nil!69233) (Cons!69233 (h!75681 Context!14266) (t!383374 List!69357)) )
))
(declare-fun lt!2566353 () List!69357)

(declare-fun unfocusZipperList!2180 (List!69357) List!69356)

(assert (=> b!7137883 (= lt!2566352 (unfocusZipperList!2180 lt!2566353))))

(declare-fun e!4289757 () Bool)

(assert (=> b!7137884 (= e!4289755 e!4289757)))

(declare-fun res!2912504 () Bool)

(assert (=> b!7137884 (=> res!2912504 e!4289757)))

(declare-fun forall!16979 (List!69356 Int) Bool)

(assert (=> b!7137884 (= res!2912504 (not (forall!16979 (exprs!7633 lt!2566356) lambda!434014)))))

(declare-fun contains!20581 (List!69356 Regex!18139) Bool)

(declare-fun generalisedConcat!2330 (List!69356) Regex!18139)

(assert (=> b!7137884 (contains!20581 lt!2566352 (generalisedConcat!2330 (exprs!7633 lt!2566356)))))

(declare-datatypes ((Unit!163137 0))(
  ( (Unit!163138) )
))
(declare-fun lt!2566355 () Unit!163137)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!4 (List!69357 Context!14266) Unit!163137)

(assert (=> b!7137884 (= lt!2566355 (lemmaZipperContainsContextThenUnfocusZipperListContains!4 lt!2566353 lt!2566356))))

(declare-fun b!7137885 () Bool)

(assert (=> b!7137885 (= e!4289757 (forall!16979 (exprs!7633 lt!2566356) lambda!434014))))

(declare-fun b!7137886 () Bool)

(declare-fun res!2912503 () Bool)

(assert (=> b!7137886 (=> res!2912503 e!4289760)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14266))

(declare-fun lambda!434013 () Int)

(declare-fun exists!3902 ((InoxSet Context!14266) Int) Bool)

(assert (=> b!7137886 (= res!2912503 (not (exists!3902 z!3189 lambda!434013)))))

(declare-fun b!7137887 () Bool)

(declare-fun tp_is_empty!45915 () Bool)

(assert (=> b!7137887 (= e!4289758 tp_is_empty!45915)))

(declare-fun res!2912508 () Bool)

(declare-fun e!4289756 () Bool)

(assert (=> start!695596 (=> (not res!2912508) (not e!4289756))))

(declare-fun validRegex!9306 (Regex!18139) Bool)

(assert (=> start!695596 (= res!2912508 (validRegex!9306 r!11483))))

(assert (=> start!695596 e!4289756))

(assert (=> start!695596 e!4289758))

(declare-fun condSetEmpty!52423 () Bool)

(assert (=> start!695596 (= condSetEmpty!52423 (= z!3189 ((as const (Array Context!14266 Bool)) false)))))

(declare-fun setRes!52423 () Bool)

(assert (=> start!695596 setRes!52423))

(declare-fun tp!1968160 () Bool)

(declare-fun setElem!52423 () Context!14266)

(declare-fun setNonEmpty!52423 () Bool)

(declare-fun e!4289753 () Bool)

(declare-fun inv!88411 (Context!14266) Bool)

(assert (=> setNonEmpty!52423 (= setRes!52423 (and tp!1968160 (inv!88411 setElem!52423) e!4289753))))

(declare-fun setRest!52423 () (InoxSet Context!14266))

(assert (=> setNonEmpty!52423 (= z!3189 ((_ map or) (store ((as const (Array Context!14266 Bool)) false) setElem!52423 true) setRest!52423))))

(declare-fun b!7137888 () Bool)

(declare-fun res!2912506 () Bool)

(assert (=> b!7137888 (=> res!2912506 e!4289760)))

(declare-fun lt!2566354 () Bool)

(assert (=> b!7137888 (= res!2912506 lt!2566354)))

(declare-fun setIsEmpty!52423 () Bool)

(assert (=> setIsEmpty!52423 setRes!52423))

(declare-fun b!7137889 () Bool)

(assert (=> b!7137889 (= e!4289760 e!4289755)))

(declare-fun res!2912507 () Bool)

(assert (=> b!7137889 (=> res!2912507 e!4289755)))

(assert (=> b!7137889 (= res!2912507 (not (select z!3189 lt!2566356)))))

(declare-fun getWitness!1902 ((InoxSet Context!14266) Int) Context!14266)

(assert (=> b!7137889 (= lt!2566356 (getWitness!1902 z!3189 lambda!434013))))

(declare-fun b!7137890 () Bool)

(assert (=> b!7137890 (= e!4289756 e!4289759)))

(declare-fun res!2912501 () Bool)

(assert (=> b!7137890 (=> (not res!2912501) (not e!4289759))))

(declare-fun unfocusZipper!2487 (List!69357) Regex!18139)

(assert (=> b!7137890 (= res!2912501 (= r!11483 (unfocusZipper!2487 lt!2566353)))))

(declare-fun toList!11170 ((InoxSet Context!14266)) List!69357)

(assert (=> b!7137890 (= lt!2566353 (toList!11170 z!3189))))

(declare-fun b!7137891 () Bool)

(declare-fun tp!1968161 () Bool)

(assert (=> b!7137891 (= e!4289753 tp!1968161)))

(assert (=> b!7137892 (= e!4289754 (not e!4289760))))

(declare-fun res!2912509 () Bool)

(assert (=> b!7137892 (=> res!2912509 e!4289760)))

(assert (=> b!7137892 (= res!2912509 (not (= lt!2566354 (exists!3901 lt!2566352 lambda!434012))))))

(assert (=> b!7137892 (= lt!2566354 (exists!3901 lt!2566352 lambda!434012))))

(declare-fun nullable!7659 (Regex!18139) Bool)

(assert (=> b!7137892 (= lt!2566354 (nullable!7659 lt!2566357))))

(declare-fun lt!2566358 () Unit!163137)

(declare-fun nullableGenUnionSpec!28 (Regex!18139 List!69356) Unit!163137)

(assert (=> b!7137892 (= lt!2566358 (nullableGenUnionSpec!28 lt!2566357 lt!2566352))))

(declare-fun b!7137893 () Bool)

(declare-fun tp!1968164 () Bool)

(assert (=> b!7137893 (= e!4289758 tp!1968164)))

(assert (= (and start!695596 res!2912508) b!7137890))

(assert (= (and b!7137890 res!2912501) b!7137883))

(assert (= (and b!7137883 res!2912505) b!7137892))

(assert (= (and b!7137892 (not res!2912509)) b!7137888))

(assert (= (and b!7137888 (not res!2912506)) b!7137880))

(assert (= (and b!7137880 (not res!2912502)) b!7137886))

(assert (= (and b!7137886 (not res!2912503)) b!7137889))

(assert (= (and b!7137889 (not res!2912507)) b!7137879))

(assert (= (and b!7137879 (not res!2912500)) b!7137884))

(assert (= (and b!7137884 (not res!2912504)) b!7137885))

(get-info :version)

(assert (= (and start!695596 ((_ is ElementMatch!18139) r!11483)) b!7137887))

(assert (= (and start!695596 ((_ is Concat!26984) r!11483)) b!7137882))

(assert (= (and start!695596 ((_ is Star!18139) r!11483)) b!7137893))

(assert (= (and start!695596 ((_ is Union!18139) r!11483)) b!7137881))

(assert (= (and start!695596 condSetEmpty!52423) setIsEmpty!52423))

(assert (= (and start!695596 (not condSetEmpty!52423)) setNonEmpty!52423))

(assert (= setNonEmpty!52423 b!7137891))

(declare-fun m!7853540 () Bool)

(assert (=> setNonEmpty!52423 m!7853540))

(declare-fun m!7853542 () Bool)

(assert (=> b!7137889 m!7853542))

(declare-fun m!7853544 () Bool)

(assert (=> b!7137889 m!7853544))

(declare-fun m!7853546 () Bool)

(assert (=> b!7137884 m!7853546))

(declare-fun m!7853548 () Bool)

(assert (=> b!7137884 m!7853548))

(assert (=> b!7137884 m!7853548))

(declare-fun m!7853550 () Bool)

(assert (=> b!7137884 m!7853550))

(declare-fun m!7853552 () Bool)

(assert (=> b!7137884 m!7853552))

(declare-fun m!7853554 () Bool)

(assert (=> start!695596 m!7853554))

(declare-fun m!7853556 () Bool)

(assert (=> b!7137883 m!7853556))

(declare-fun m!7853558 () Bool)

(assert (=> b!7137883 m!7853558))

(declare-fun m!7853560 () Bool)

(assert (=> b!7137880 m!7853560))

(assert (=> b!7137892 m!7853560))

(assert (=> b!7137892 m!7853560))

(declare-fun m!7853562 () Bool)

(assert (=> b!7137892 m!7853562))

(declare-fun m!7853564 () Bool)

(assert (=> b!7137892 m!7853564))

(declare-fun m!7853566 () Bool)

(assert (=> b!7137890 m!7853566))

(declare-fun m!7853568 () Bool)

(assert (=> b!7137890 m!7853568))

(declare-fun m!7853570 () Bool)

(assert (=> b!7137886 m!7853570))

(declare-fun m!7853572 () Bool)

(assert (=> b!7137879 m!7853572))

(assert (=> b!7137885 m!7853546))

(check-sat (not b!7137883) (not b!7137882) (not start!695596) (not b!7137880) (not b!7137885) tp_is_empty!45915 (not b!7137891) (not b!7137890) (not b!7137879) (not b!7137886) (not b!7137881) (not setNonEmpty!52423) (not b!7137892) (not b!7137893) (not b!7137884) (not b!7137889))
(check-sat)
