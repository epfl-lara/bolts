; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182926 () Bool)

(assert start!182926)

(declare-fun res!826344 () Bool)

(declare-fun e!1175012 () Bool)

(assert (=> start!182926 (=> (not res!826344) (not e!1175012))))

(declare-fun i!750 () Int)

(declare-datatypes ((B!1497 0))(
  ( (B!1498 (val!5696 Int)) )
))
(declare-datatypes ((List!20296 0))(
  ( (Nil!20226) (Cons!20226 (h!25627 B!1497) (t!171725 List!20296)) )
))
(declare-fun l!2915 () List!20296)

(get-info :version)

(assert (=> start!182926 (= res!826344 (and (>= i!750 0) (not ((_ is Nil!20226) l!2915)) (not (= i!750 0))))))

(assert (=> start!182926 e!1175012))

(assert (=> start!182926 true))

(declare-fun e!1175014 () Bool)

(assert (=> start!182926 e!1175014))

(declare-fun e!1175013 () Bool)

(assert (=> start!182926 e!1175013))

(declare-fun b!1838884 () Bool)

(declare-fun ListPrimitiveSize!118 (List!20296) Int)

(assert (=> b!1838884 (= e!1175012 (>= (ListPrimitiveSize!118 (t!171725 l!2915)) (ListPrimitiveSize!118 l!2915)))))

(declare-fun lt!713642 () List!20296)

(declare-fun acc!270 () List!20296)

(declare-fun ++!5497 (List!20296 List!20296) List!20296)

(assert (=> b!1838884 (= lt!713642 (++!5497 acc!270 (Cons!20226 (h!25627 l!2915) Nil!20226)))))

(declare-fun b!1838885 () Bool)

(declare-fun tp_is_empty!8245 () Bool)

(declare-fun tp!520100 () Bool)

(assert (=> b!1838885 (= e!1175014 (and tp_is_empty!8245 tp!520100))))

(declare-fun b!1838886 () Bool)

(declare-fun tp!520099 () Bool)

(assert (=> b!1838886 (= e!1175013 (and tp_is_empty!8245 tp!520099))))

(assert (= (and start!182926 res!826344) b!1838884))

(assert (= (and start!182926 ((_ is Cons!20226) l!2915)) b!1838885))

(assert (= (and start!182926 ((_ is Cons!20226) acc!270)) b!1838886))

(declare-fun m!2266735 () Bool)

(assert (=> b!1838884 m!2266735))

(declare-fun m!2266737 () Bool)

(assert (=> b!1838884 m!2266737))

(declare-fun m!2266739 () Bool)

(assert (=> b!1838884 m!2266739))

(check-sat (not b!1838884) (not b!1838885) (not b!1838886) tp_is_empty!8245)
(check-sat)
(get-model)

(declare-fun d!562328 () Bool)

(declare-fun lt!713648 () Int)

(assert (=> d!562328 (>= lt!713648 0)))

(declare-fun e!1175020 () Int)

(assert (=> d!562328 (= lt!713648 e!1175020)))

(declare-fun c!300175 () Bool)

(assert (=> d!562328 (= c!300175 ((_ is Nil!20226) (t!171725 l!2915)))))

(assert (=> d!562328 (= (ListPrimitiveSize!118 (t!171725 l!2915)) lt!713648)))

(declare-fun b!1838897 () Bool)

(assert (=> b!1838897 (= e!1175020 0)))

(declare-fun b!1838898 () Bool)

(assert (=> b!1838898 (= e!1175020 (+ 1 (ListPrimitiveSize!118 (t!171725 (t!171725 l!2915)))))))

(assert (= (and d!562328 c!300175) b!1838897))

(assert (= (and d!562328 (not c!300175)) b!1838898))

(declare-fun m!2266743 () Bool)

(assert (=> b!1838898 m!2266743))

(assert (=> b!1838884 d!562328))

(declare-fun d!562334 () Bool)

(declare-fun lt!713650 () Int)

(assert (=> d!562334 (>= lt!713650 0)))

(declare-fun e!1175022 () Int)

(assert (=> d!562334 (= lt!713650 e!1175022)))

(declare-fun c!300177 () Bool)

(assert (=> d!562334 (= c!300177 ((_ is Nil!20226) l!2915))))

(assert (=> d!562334 (= (ListPrimitiveSize!118 l!2915) lt!713650)))

(declare-fun b!1838901 () Bool)

(assert (=> b!1838901 (= e!1175022 0)))

(declare-fun b!1838902 () Bool)

(assert (=> b!1838902 (= e!1175022 (+ 1 (ListPrimitiveSize!118 (t!171725 l!2915))))))

(assert (= (and d!562334 c!300177) b!1838901))

(assert (= (and d!562334 (not c!300177)) b!1838902))

(assert (=> b!1838902 m!2266735))

(assert (=> b!1838884 d!562334))

(declare-fun b!1838924 () Bool)

(declare-fun e!1175033 () List!20296)

(assert (=> b!1838924 (= e!1175033 (Cons!20226 (h!25627 acc!270) (++!5497 (t!171725 acc!270) (Cons!20226 (h!25627 l!2915) Nil!20226))))))

(declare-fun b!1838926 () Bool)

(declare-fun lt!713656 () List!20296)

(declare-fun e!1175034 () Bool)

(assert (=> b!1838926 (= e!1175034 (or (not (= (Cons!20226 (h!25627 l!2915) Nil!20226) Nil!20226)) (= lt!713656 acc!270)))))

(declare-fun b!1838925 () Bool)

(declare-fun res!826356 () Bool)

(assert (=> b!1838925 (=> (not res!826356) (not e!1175034))))

(declare-fun size!16035 (List!20296) Int)

(assert (=> b!1838925 (= res!826356 (= (size!16035 lt!713656) (+ (size!16035 acc!270) (size!16035 (Cons!20226 (h!25627 l!2915) Nil!20226)))))))

(declare-fun d!562338 () Bool)

(assert (=> d!562338 e!1175034))

(declare-fun res!826355 () Bool)

(assert (=> d!562338 (=> (not res!826355) (not e!1175034))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3014 (List!20296) (InoxSet B!1497))

(assert (=> d!562338 (= res!826355 (= (content!3014 lt!713656) ((_ map or) (content!3014 acc!270) (content!3014 (Cons!20226 (h!25627 l!2915) Nil!20226)))))))

(assert (=> d!562338 (= lt!713656 e!1175033)))

(declare-fun c!300183 () Bool)

(assert (=> d!562338 (= c!300183 ((_ is Nil!20226) acc!270))))

(assert (=> d!562338 (= (++!5497 acc!270 (Cons!20226 (h!25627 l!2915) Nil!20226)) lt!713656)))

(declare-fun b!1838923 () Bool)

(assert (=> b!1838923 (= e!1175033 (Cons!20226 (h!25627 l!2915) Nil!20226))))

(assert (= (and d!562338 c!300183) b!1838923))

(assert (= (and d!562338 (not c!300183)) b!1838924))

(assert (= (and d!562338 res!826355) b!1838925))

(assert (= (and b!1838925 res!826356) b!1838926))

(declare-fun m!2266759 () Bool)

(assert (=> b!1838924 m!2266759))

(declare-fun m!2266761 () Bool)

(assert (=> b!1838925 m!2266761))

(declare-fun m!2266763 () Bool)

(assert (=> b!1838925 m!2266763))

(declare-fun m!2266765 () Bool)

(assert (=> b!1838925 m!2266765))

(declare-fun m!2266767 () Bool)

(assert (=> d!562338 m!2266767))

(declare-fun m!2266769 () Bool)

(assert (=> d!562338 m!2266769))

(declare-fun m!2266771 () Bool)

(assert (=> d!562338 m!2266771))

(assert (=> b!1838884 d!562338))

(declare-fun b!1838937 () Bool)

(declare-fun e!1175041 () Bool)

(declare-fun tp!520107 () Bool)

(assert (=> b!1838937 (= e!1175041 (and tp_is_empty!8245 tp!520107))))

(assert (=> b!1838885 (= tp!520100 e!1175041)))

(assert (= (and b!1838885 ((_ is Cons!20226) (t!171725 l!2915))) b!1838937))

(declare-fun b!1838938 () Bool)

(declare-fun e!1175042 () Bool)

(declare-fun tp!520108 () Bool)

(assert (=> b!1838938 (= e!1175042 (and tp_is_empty!8245 tp!520108))))

(assert (=> b!1838886 (= tp!520099 e!1175042)))

(assert (= (and b!1838886 ((_ is Cons!20226) (t!171725 acc!270))) b!1838938))

(check-sat (not b!1838898) (not b!1838924) (not b!1838925) tp_is_empty!8245 (not b!1838902) (not b!1838938) (not b!1838937) (not d!562338))
(check-sat)
