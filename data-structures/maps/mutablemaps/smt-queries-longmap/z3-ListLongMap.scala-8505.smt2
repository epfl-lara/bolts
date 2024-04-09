; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103706 () Bool)

(assert start!103706)

(declare-fun b!1241512 () Bool)

(declare-fun res!828221 () Bool)

(declare-fun e!703745 () Bool)

(assert (=> b!1241512 (=> (not res!828221) (not e!703745))))

(declare-datatypes ((B!1858 0))(
  ( (B!1859 (val!15691 Int)) )
))
(declare-datatypes ((tuple2!20410 0))(
  ( (tuple2!20411 (_1!10215 (_ BitVec 64)) (_2!10215 B!1858)) )
))
(declare-datatypes ((List!27520 0))(
  ( (Nil!27517) (Cons!27516 (h!28725 tuple2!20410) (t!40990 List!27520)) )
))
(declare-fun l!644 () List!27520)

(get-info :version)

(assert (=> b!1241512 (= res!828221 (not ((_ is Cons!27516) l!644)))))

(declare-fun b!1241511 () Bool)

(declare-fun res!828222 () Bool)

(assert (=> b!1241511 (=> (not res!828222) (not e!703745))))

(declare-fun isStrictlySorted!748 (List!27520) Bool)

(assert (=> b!1241511 (= res!828222 (isStrictlySorted!748 l!644))))

(declare-fun v1!20 () B!1858)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun b!1241513 () Bool)

(declare-fun insertStrictlySorted!435 (List!27520 (_ BitVec 64) B!1858) List!27520)

(assert (=> b!1241513 (= e!703745 (not (isStrictlySorted!748 (insertStrictlySorted!435 l!644 key1!25 v1!20))))))

(declare-fun res!828223 () Bool)

(assert (=> start!103706 (=> (not res!828223) (not e!703745))))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103706 (= res!828223 (not (= key1!25 key2!15)))))

(assert (=> start!103706 e!703745))

(assert (=> start!103706 true))

(declare-fun e!703744 () Bool)

(assert (=> start!103706 e!703744))

(declare-fun tp_is_empty!31257 () Bool)

(assert (=> start!103706 tp_is_empty!31257))

(declare-fun b!1241514 () Bool)

(declare-fun tp!92667 () Bool)

(assert (=> b!1241514 (= e!703744 (and tp_is_empty!31257 tp!92667))))

(assert (= (and start!103706 res!828223) b!1241511))

(assert (= (and b!1241511 res!828222) b!1241512))

(assert (= (and b!1241512 res!828221) b!1241513))

(assert (= (and start!103706 ((_ is Cons!27516) l!644)) b!1241514))

(declare-fun m!1144547 () Bool)

(assert (=> b!1241511 m!1144547))

(declare-fun m!1144549 () Bool)

(assert (=> b!1241513 m!1144549))

(assert (=> b!1241513 m!1144549))

(declare-fun m!1144551 () Bool)

(assert (=> b!1241513 m!1144551))

(check-sat (not b!1241513) (not b!1241511) (not b!1241514) tp_is_empty!31257)
(check-sat)
(get-model)

(declare-fun d!136421 () Bool)

(declare-fun res!828241 () Bool)

(declare-fun e!703760 () Bool)

(assert (=> d!136421 (=> res!828241 e!703760)))

(assert (=> d!136421 (= res!828241 (or ((_ is Nil!27517) (insertStrictlySorted!435 l!644 key1!25 v1!20)) ((_ is Nil!27517) (t!40990 (insertStrictlySorted!435 l!644 key1!25 v1!20)))))))

(assert (=> d!136421 (= (isStrictlySorted!748 (insertStrictlySorted!435 l!644 key1!25 v1!20)) e!703760)))

(declare-fun b!1241535 () Bool)

(declare-fun e!703761 () Bool)

(assert (=> b!1241535 (= e!703760 e!703761)))

(declare-fun res!828242 () Bool)

(assert (=> b!1241535 (=> (not res!828242) (not e!703761))))

(assert (=> b!1241535 (= res!828242 (bvslt (_1!10215 (h!28725 (insertStrictlySorted!435 l!644 key1!25 v1!20))) (_1!10215 (h!28725 (t!40990 (insertStrictlySorted!435 l!644 key1!25 v1!20))))))))

(declare-fun b!1241536 () Bool)

(assert (=> b!1241536 (= e!703761 (isStrictlySorted!748 (t!40990 (insertStrictlySorted!435 l!644 key1!25 v1!20))))))

(assert (= (and d!136421 (not res!828241)) b!1241535))

(assert (= (and b!1241535 res!828242) b!1241536))

(declare-fun m!1144559 () Bool)

(assert (=> b!1241536 m!1144559))

(assert (=> b!1241513 d!136421))

(declare-fun bm!61246 () Bool)

(declare-fun call!61250 () List!27520)

(declare-fun call!61251 () List!27520)

(assert (=> bm!61246 (= call!61250 call!61251)))

(declare-fun b!1241569 () Bool)

(declare-fun e!703782 () List!27520)

(declare-fun call!61249 () List!27520)

(assert (=> b!1241569 (= e!703782 call!61249)))

(declare-fun b!1241570 () Bool)

(declare-fun e!703783 () List!27520)

(assert (=> b!1241570 (= e!703783 call!61251)))

(declare-fun b!1241572 () Bool)

(declare-fun res!828257 () Bool)

(declare-fun e!703785 () Bool)

(assert (=> b!1241572 (=> (not res!828257) (not e!703785))))

(declare-fun lt!562092 () List!27520)

(declare-fun containsKey!610 (List!27520 (_ BitVec 64)) Bool)

(assert (=> b!1241572 (= res!828257 (containsKey!610 lt!562092 key1!25))))

(declare-fun b!1241573 () Bool)

(declare-fun contains!7407 (List!27520 tuple2!20410) Bool)

(assert (=> b!1241573 (= e!703785 (contains!7407 lt!562092 (tuple2!20411 key1!25 v1!20)))))

(declare-fun bm!61247 () Bool)

(assert (=> bm!61247 (= call!61249 call!61250)))

(declare-fun b!1241574 () Bool)

(declare-fun e!703786 () List!27520)

(assert (=> b!1241574 (= e!703786 call!61250)))

(declare-fun b!1241575 () Bool)

(assert (=> b!1241575 (= e!703783 e!703786)))

(declare-fun c!121420 () Bool)

(assert (=> b!1241575 (= c!121420 (and ((_ is Cons!27516) l!644) (= (_1!10215 (h!28725 l!644)) key1!25)))))

(declare-fun b!1241576 () Bool)

(declare-fun c!121418 () Bool)

(assert (=> b!1241576 (= c!121418 (and ((_ is Cons!27516) l!644) (bvsgt (_1!10215 (h!28725 l!644)) key1!25)))))

(assert (=> b!1241576 (= e!703786 e!703782)))

(declare-fun b!1241577 () Bool)

(declare-fun e!703784 () List!27520)

(assert (=> b!1241577 (= e!703784 (ite c!121420 (t!40990 l!644) (ite c!121418 (Cons!27516 (h!28725 l!644) (t!40990 l!644)) Nil!27517)))))

(declare-fun b!1241578 () Bool)

(assert (=> b!1241578 (= e!703784 (insertStrictlySorted!435 (t!40990 l!644) key1!25 v1!20))))

(declare-fun bm!61248 () Bool)

(declare-fun c!121417 () Bool)

(declare-fun $colon$colon!626 (List!27520 tuple2!20410) List!27520)

(assert (=> bm!61248 (= call!61251 ($colon$colon!626 e!703784 (ite c!121417 (h!28725 l!644) (tuple2!20411 key1!25 v1!20))))))

(declare-fun c!121419 () Bool)

(assert (=> bm!61248 (= c!121419 c!121417)))

(declare-fun b!1241571 () Bool)

(assert (=> b!1241571 (= e!703782 call!61249)))

(declare-fun d!136425 () Bool)

(assert (=> d!136425 e!703785))

(declare-fun res!828258 () Bool)

(assert (=> d!136425 (=> (not res!828258) (not e!703785))))

(assert (=> d!136425 (= res!828258 (isStrictlySorted!748 lt!562092))))

(assert (=> d!136425 (= lt!562092 e!703783)))

(assert (=> d!136425 (= c!121417 (and ((_ is Cons!27516) l!644) (bvslt (_1!10215 (h!28725 l!644)) key1!25)))))

(assert (=> d!136425 (isStrictlySorted!748 l!644)))

(assert (=> d!136425 (= (insertStrictlySorted!435 l!644 key1!25 v1!20) lt!562092)))

(assert (= (and d!136425 c!121417) b!1241570))

(assert (= (and d!136425 (not c!121417)) b!1241575))

(assert (= (and b!1241575 c!121420) b!1241574))

(assert (= (and b!1241575 (not c!121420)) b!1241576))

(assert (= (and b!1241576 c!121418) b!1241571))

(assert (= (and b!1241576 (not c!121418)) b!1241569))

(assert (= (or b!1241571 b!1241569) bm!61247))

(assert (= (or b!1241574 bm!61247) bm!61246))

(assert (= (or b!1241570 bm!61246) bm!61248))

(assert (= (and bm!61248 c!121419) b!1241578))

(assert (= (and bm!61248 (not c!121419)) b!1241577))

(assert (= (and d!136425 res!828258) b!1241572))

(assert (= (and b!1241572 res!828257) b!1241573))

(declare-fun m!1144567 () Bool)

(assert (=> d!136425 m!1144567))

(assert (=> d!136425 m!1144547))

(declare-fun m!1144569 () Bool)

(assert (=> bm!61248 m!1144569))

(declare-fun m!1144571 () Bool)

(assert (=> b!1241572 m!1144571))

(declare-fun m!1144573 () Bool)

(assert (=> b!1241573 m!1144573))

(declare-fun m!1144575 () Bool)

(assert (=> b!1241578 m!1144575))

(assert (=> b!1241513 d!136425))

(declare-fun d!136433 () Bool)

(declare-fun res!828259 () Bool)

(declare-fun e!703793 () Bool)

(assert (=> d!136433 (=> res!828259 e!703793)))

(assert (=> d!136433 (= res!828259 (or ((_ is Nil!27517) l!644) ((_ is Nil!27517) (t!40990 l!644))))))

(assert (=> d!136433 (= (isStrictlySorted!748 l!644) e!703793)))

(declare-fun b!1241589 () Bool)

(declare-fun e!703794 () Bool)

(assert (=> b!1241589 (= e!703793 e!703794)))

(declare-fun res!828260 () Bool)

(assert (=> b!1241589 (=> (not res!828260) (not e!703794))))

(assert (=> b!1241589 (= res!828260 (bvslt (_1!10215 (h!28725 l!644)) (_1!10215 (h!28725 (t!40990 l!644)))))))

(declare-fun b!1241590 () Bool)

(assert (=> b!1241590 (= e!703794 (isStrictlySorted!748 (t!40990 l!644)))))

(assert (= (and d!136433 (not res!828259)) b!1241589))

(assert (= (and b!1241589 res!828260) b!1241590))

(declare-fun m!1144577 () Bool)

(assert (=> b!1241590 m!1144577))

(assert (=> b!1241511 d!136433))

(declare-fun b!1241595 () Bool)

(declare-fun e!703797 () Bool)

(declare-fun tp!92673 () Bool)

(assert (=> b!1241595 (= e!703797 (and tp_is_empty!31257 tp!92673))))

(assert (=> b!1241514 (= tp!92667 e!703797)))

(assert (= (and b!1241514 ((_ is Cons!27516) (t!40990 l!644))) b!1241595))

(check-sat (not b!1241578) tp_is_empty!31257 (not b!1241536) (not b!1241595) (not b!1241572) (not b!1241573) (not b!1241590) (not bm!61248) (not d!136425))
(check-sat)
