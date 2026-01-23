; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573606 () Bool)

(assert start!573606)

(declare-fun b!5485925 () Bool)

(assert (=> b!5485925 true))

(declare-fun b!5485912 () Bool)

(declare-fun e!3394752 () Bool)

(declare-datatypes ((C!31080 0))(
  ( (C!31081 (val!25242 Int)) )
))
(declare-datatypes ((Regex!15405 0))(
  ( (ElementMatch!15405 (c!958345 C!31080)) (Concat!24250 (regOne!31322 Regex!15405) (regTwo!31322 Regex!15405)) (EmptyExpr!15405) (Star!15405 (reg!15734 Regex!15405)) (EmptyLang!15405) (Union!15405 (regOne!31323 Regex!15405) (regTwo!31323 Regex!15405)) )
))
(declare-datatypes ((List!62514 0))(
  ( (Nil!62390) (Cons!62390 (h!68838 Regex!15405) (t!375745 List!62514)) )
))
(declare-fun lt!2240891 () List!62514)

(declare-fun lambda!293251 () Int)

(declare-fun exists!2037 (List!62514 Int) Bool)

(assert (=> b!5485912 (= e!3394752 (exists!2037 lt!2240891 lambda!293251))))

(declare-fun b!5485913 () Bool)

(declare-fun e!3394751 () Bool)

(declare-datatypes ((Context!9578 0))(
  ( (Context!9579 (exprs!5289 List!62514)) )
))
(declare-datatypes ((List!62515 0))(
  ( (Nil!62391) (Cons!62391 (h!68839 Context!9578) (t!375746 List!62515)) )
))
(declare-fun zl!343 () List!62515)

(declare-fun isEmpty!34291 (List!62515) Bool)

(assert (=> b!5485913 (= e!3394751 (isEmpty!34291 (t!375746 zl!343)))))

(declare-fun b!5485914 () Bool)

(declare-fun e!3394755 () Bool)

(declare-fun e!3394750 () Bool)

(assert (=> b!5485914 (= e!3394755 (not e!3394750))))

(declare-fun res!2339376 () Bool)

(assert (=> b!5485914 (=> res!2339376 e!3394750)))

(assert (=> b!5485914 (= res!2339376 e!3394751)))

(declare-fun res!2339375 () Bool)

(assert (=> b!5485914 (=> (not res!2339375) (not e!3394751))))

(get-info :version)

(assert (=> b!5485914 (= res!2339375 ((_ is Cons!62391) zl!343))))

(declare-fun lt!2240889 () Bool)

(declare-fun r!7292 () Regex!15405)

(declare-datatypes ((List!62516 0))(
  ( (Nil!62392) (Cons!62392 (h!68840 C!31080) (t!375747 List!62516)) )
))
(declare-fun s!2326 () List!62516)

(declare-fun matchRSpec!2508 (Regex!15405 List!62516) Bool)

(assert (=> b!5485914 (= lt!2240889 (matchRSpec!2508 r!7292 s!2326))))

(declare-fun matchR!7590 (Regex!15405 List!62516) Bool)

(assert (=> b!5485914 (= lt!2240889 (matchR!7590 r!7292 s!2326))))

(declare-datatypes ((Unit!155264 0))(
  ( (Unit!155265) )
))
(declare-fun lt!2240888 () Unit!155264)

(declare-fun mainMatchTheorem!2508 (Regex!15405 List!62516) Unit!155264)

(assert (=> b!5485914 (= lt!2240888 (mainMatchTheorem!2508 r!7292 s!2326))))

(declare-fun e!3394757 () Bool)

(declare-fun setElem!36171 () Context!9578)

(declare-fun setRes!36171 () Bool)

(declare-fun tp!1507707 () Bool)

(declare-fun setNonEmpty!36171 () Bool)

(declare-fun inv!81759 (Context!9578) Bool)

(assert (=> setNonEmpty!36171 (= setRes!36171 (and tp!1507707 (inv!81759 setElem!36171) e!3394757))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9578))

(declare-fun setRest!36171 () (InoxSet Context!9578))

(assert (=> setNonEmpty!36171 (= z!1189 ((_ map or) (store ((as const (Array Context!9578 Bool)) false) setElem!36171 true) setRest!36171))))

(declare-fun res!2339372 () Bool)

(assert (=> start!573606 (=> (not res!2339372) (not e!3394755))))

(declare-fun validRegex!7141 (Regex!15405) Bool)

(assert (=> start!573606 (= res!2339372 (validRegex!7141 r!7292))))

(assert (=> start!573606 e!3394755))

(declare-fun e!3394753 () Bool)

(assert (=> start!573606 e!3394753))

(declare-fun condSetEmpty!36171 () Bool)

(assert (=> start!573606 (= condSetEmpty!36171 (= z!1189 ((as const (Array Context!9578 Bool)) false)))))

(assert (=> start!573606 setRes!36171))

(declare-fun e!3394758 () Bool)

(assert (=> start!573606 e!3394758))

(declare-fun e!3394756 () Bool)

(assert (=> start!573606 e!3394756))

(declare-fun b!5485915 () Bool)

(declare-fun tp!1507698 () Bool)

(assert (=> b!5485915 (= e!3394757 tp!1507698)))

(declare-fun b!5485916 () Bool)

(declare-fun tp!1507706 () Bool)

(declare-fun tp!1507705 () Bool)

(assert (=> b!5485916 (= e!3394753 (and tp!1507706 tp!1507705))))

(declare-fun b!5485917 () Bool)

(declare-fun tp_is_empty!40063 () Bool)

(declare-fun tp!1507702 () Bool)

(assert (=> b!5485917 (= e!3394756 (and tp_is_empty!40063 tp!1507702))))

(declare-fun b!5485918 () Bool)

(declare-fun res!2339379 () Bool)

(assert (=> b!5485918 (=> res!2339379 e!3394752)))

(assert (=> b!5485918 (= res!2339379 (not (exists!2037 lt!2240891 lambda!293251)))))

(declare-fun b!5485919 () Bool)

(declare-fun tp!1507703 () Bool)

(assert (=> b!5485919 (= e!3394753 tp!1507703)))

(declare-fun b!5485920 () Bool)

(declare-fun res!2339380 () Bool)

(assert (=> b!5485920 (=> (not res!2339380) (not e!3394755))))

(declare-fun unfocusZipper!1147 (List!62515) Regex!15405)

(assert (=> b!5485920 (= res!2339380 (= r!7292 (unfocusZipper!1147 zl!343)))))

(declare-fun b!5485921 () Bool)

(declare-fun res!2339378 () Bool)

(assert (=> b!5485921 (=> res!2339378 e!3394750)))

(assert (=> b!5485921 (= res!2339378 (isEmpty!34291 (t!375746 zl!343)))))

(declare-fun b!5485922 () Bool)

(declare-fun e!3394754 () Bool)

(declare-fun tp!1507704 () Bool)

(assert (=> b!5485922 (= e!3394754 tp!1507704)))

(declare-fun b!5485923 () Bool)

(declare-fun res!2339373 () Bool)

(assert (=> b!5485923 (=> (not res!2339373) (not e!3394755))))

(declare-fun toList!9189 ((InoxSet Context!9578)) List!62515)

(assert (=> b!5485923 (= res!2339373 (= (toList!9189 z!1189) zl!343))))

(declare-fun b!5485924 () Bool)

(assert (=> b!5485924 (= e!3394753 tp_is_empty!40063)))

(assert (=> b!5485925 (= e!3394750 e!3394752)))

(declare-fun res!2339377 () Bool)

(assert (=> b!5485925 (=> res!2339377 e!3394752)))

(assert (=> b!5485925 (= res!2339377 (not lt!2240889))))

(assert (=> b!5485925 (= lt!2240889 (exists!2037 lt!2240891 lambda!293251))))

(declare-fun lt!2240890 () Unit!155264)

(declare-fun matchRGenUnionSpec!238 (Regex!15405 List!62514 List!62516) Unit!155264)

(assert (=> b!5485925 (= lt!2240890 (matchRGenUnionSpec!238 r!7292 lt!2240891 s!2326))))

(declare-fun unfocusZipperList!837 (List!62515) List!62514)

(assert (=> b!5485925 (= lt!2240891 (unfocusZipperList!837 zl!343))))

(declare-fun b!5485926 () Bool)

(declare-fun res!2339374 () Bool)

(assert (=> b!5485926 (=> res!2339374 e!3394750)))

(assert (=> b!5485926 (= res!2339374 (or (not ((_ is Cons!62391) zl!343)) ((_ is Nil!62392) s!2326) (not (= zl!343 (Cons!62391 (h!68839 zl!343) (t!375746 zl!343))))))))

(declare-fun b!5485927 () Bool)

(declare-fun tp!1507700 () Bool)

(assert (=> b!5485927 (= e!3394758 (and (inv!81759 (h!68839 zl!343)) e!3394754 tp!1507700))))

(declare-fun setIsEmpty!36171 () Bool)

(assert (=> setIsEmpty!36171 setRes!36171))

(declare-fun b!5485928 () Bool)

(declare-fun tp!1507701 () Bool)

(declare-fun tp!1507699 () Bool)

(assert (=> b!5485928 (= e!3394753 (and tp!1507701 tp!1507699))))

(assert (= (and start!573606 res!2339372) b!5485923))

(assert (= (and b!5485923 res!2339373) b!5485920))

(assert (= (and b!5485920 res!2339380) b!5485914))

(assert (= (and b!5485914 res!2339375) b!5485913))

(assert (= (and b!5485914 (not res!2339376)) b!5485926))

(assert (= (and b!5485926 (not res!2339374)) b!5485921))

(assert (= (and b!5485921 (not res!2339378)) b!5485925))

(assert (= (and b!5485925 (not res!2339377)) b!5485918))

(assert (= (and b!5485918 (not res!2339379)) b!5485912))

(assert (= (and start!573606 ((_ is ElementMatch!15405) r!7292)) b!5485924))

(assert (= (and start!573606 ((_ is Concat!24250) r!7292)) b!5485916))

(assert (= (and start!573606 ((_ is Star!15405) r!7292)) b!5485919))

(assert (= (and start!573606 ((_ is Union!15405) r!7292)) b!5485928))

(assert (= (and start!573606 condSetEmpty!36171) setIsEmpty!36171))

(assert (= (and start!573606 (not condSetEmpty!36171)) setNonEmpty!36171))

(assert (= setNonEmpty!36171 b!5485915))

(assert (= b!5485927 b!5485922))

(assert (= (and start!573606 ((_ is Cons!62391) zl!343)) b!5485927))

(assert (= (and start!573606 ((_ is Cons!62392) s!2326)) b!5485917))

(declare-fun m!6500944 () Bool)

(assert (=> b!5485925 m!6500944))

(declare-fun m!6500946 () Bool)

(assert (=> b!5485925 m!6500946))

(declare-fun m!6500948 () Bool)

(assert (=> b!5485925 m!6500948))

(assert (=> b!5485912 m!6500944))

(declare-fun m!6500950 () Bool)

(assert (=> b!5485923 m!6500950))

(declare-fun m!6500952 () Bool)

(assert (=> setNonEmpty!36171 m!6500952))

(declare-fun m!6500954 () Bool)

(assert (=> b!5485921 m!6500954))

(declare-fun m!6500956 () Bool)

(assert (=> b!5485914 m!6500956))

(declare-fun m!6500958 () Bool)

(assert (=> b!5485914 m!6500958))

(declare-fun m!6500960 () Bool)

(assert (=> b!5485914 m!6500960))

(assert (=> b!5485913 m!6500954))

(declare-fun m!6500962 () Bool)

(assert (=> b!5485920 m!6500962))

(assert (=> b!5485918 m!6500944))

(declare-fun m!6500964 () Bool)

(assert (=> b!5485927 m!6500964))

(declare-fun m!6500966 () Bool)

(assert (=> start!573606 m!6500966))

(check-sat (not b!5485917) (not b!5485920) (not b!5485927) (not b!5485928) (not b!5485919) (not b!5485913) (not b!5485921) (not start!573606) (not b!5485923) (not b!5485922) (not setNonEmpty!36171) (not b!5485912) (not b!5485918) (not b!5485916) (not b!5485914) tp_is_empty!40063 (not b!5485925) (not b!5485915))
(check-sat)
