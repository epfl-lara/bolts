; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73156 () Bool)

(assert start!73156)

(declare-fun res!378572 () Bool)

(declare-fun e!541829 () Bool)

(assert (=> start!73156 (=> (not res!378572) (not e!541829))))

(declare-datatypes ((B!1193 0))(
  ( (B!1194 (val!2553 Int)) )
))
(declare-datatypes ((K!1919 0))(
  ( (K!1920 (val!2554 Int)) )
))
(declare-datatypes ((tuple2!10304 0))(
  ( (tuple2!10305 (_1!5978 K!1919) (_2!5978 B!1193)) )
))
(declare-datatypes ((List!8824 0))(
  ( (Nil!8808) (Cons!8808 (h!14209 tuple2!10304) (t!92936 List!8824)) )
))
(declare-datatypes ((ListMap!441 0))(
  ( (ListMap!442 (toList!566 List!8824)) )
))
(declare-fun thiss!41805 () ListMap!441)

(declare-fun size!7459 (List!8824) Int)

(assert (=> start!73156 (= res!378572 (< (size!7459 (toList!566 thiss!41805)) 2147483647))))

(assert (=> start!73156 e!541829))

(declare-fun e!541830 () Bool)

(declare-fun inv!11162 (ListMap!441) Bool)

(assert (=> start!73156 (and (inv!11162 thiss!41805) e!541830)))

(declare-fun b!820133 () Bool)

(declare-datatypes ((List!8825 0))(
  ( (Nil!8809) (Cons!8809 (h!14210 K!1919) (t!92937 List!8825)) )
))
(declare-fun length!15 (List!8825) Int)

(declare-fun getKeysList!10 (List!8824) List!8825)

(assert (=> b!820133 (= e!541829 (>= (length!15 (getKeysList!10 (toList!566 thiss!41805))) 2147483647))))

(declare-fun b!820134 () Bool)

(declare-fun tp!256520 () Bool)

(assert (=> b!820134 (= e!541830 tp!256520)))

(assert (= (and start!73156 res!378572) b!820133))

(assert (= start!73156 b!820134))

(declare-fun m!1061111 () Bool)

(assert (=> start!73156 m!1061111))

(declare-fun m!1061113 () Bool)

(assert (=> start!73156 m!1061113))

(declare-fun m!1061115 () Bool)

(assert (=> b!820133 m!1061115))

(assert (=> b!820133 m!1061115))

(declare-fun m!1061117 () Bool)

(assert (=> b!820133 m!1061117))

(check-sat (not b!820133) (not start!73156) (not b!820134))
(check-sat)
(get-model)

(declare-fun d!258259 () Bool)

(declare-fun size!7461 (List!8825) Int)

(assert (=> d!258259 (= (length!15 (getKeysList!10 (toList!566 thiss!41805))) (size!7461 (getKeysList!10 (toList!566 thiss!41805))))))

(declare-fun bs!228709 () Bool)

(assert (= bs!228709 d!258259))

(assert (=> bs!228709 m!1061115))

(declare-fun m!1061121 () Bool)

(assert (=> bs!228709 m!1061121))

(assert (=> b!820133 d!258259))

(declare-fun b!820193 () Bool)

(assert (=> b!820193 true))

(declare-fun bs!228715 () Bool)

(declare-fun b!820197 () Bool)

(assert (= bs!228715 (and b!820197 b!820193)))

(declare-fun lambda!24369 () Int)

(declare-fun lambda!24368 () Int)

(assert (=> bs!228715 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (t!92936 (toList!566 thiss!41805))) (= lambda!24369 lambda!24368))))

(assert (=> b!820197 true))

(declare-fun bs!228716 () Bool)

(declare-fun b!820196 () Bool)

(assert (= bs!228716 (and b!820196 b!820193)))

(declare-fun lambda!24370 () Int)

(assert (=> bs!228716 (= (= (toList!566 thiss!41805) (t!92936 (toList!566 thiss!41805))) (= lambda!24370 lambda!24368))))

(declare-fun bs!228717 () Bool)

(assert (= bs!228717 (and b!820196 b!820197)))

(assert (=> bs!228717 (= (= (toList!566 thiss!41805) (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805)))) (= lambda!24370 lambda!24369))))

(assert (=> b!820196 true))

(assert (=> b!820193 false))

(declare-datatypes ((Unit!13315 0))(
  ( (Unit!13316) )
))
(declare-fun lt!316983 () Unit!13315)

(declare-fun forallContained!472 (List!8825 Int K!1919) Unit!13315)

(assert (=> b!820193 (= lt!316983 (forallContained!472 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) lambda!24368 (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun e!541859 () Unit!13315)

(declare-fun Unit!13317 () Unit!13315)

(assert (=> b!820193 (= e!541859 Unit!13317)))

(declare-fun d!258263 () Bool)

(declare-fun e!541858 () Bool)

(assert (=> d!258263 e!541858))

(declare-fun res!378589 () Bool)

(assert (=> d!258263 (=> (not res!378589) (not e!541858))))

(declare-fun lt!316985 () List!8825)

(declare-fun noDuplicate!173 (List!8825) Bool)

(assert (=> d!258263 (= res!378589 (noDuplicate!173 lt!316985))))

(declare-fun e!541860 () List!8825)

(assert (=> d!258263 (= lt!316985 e!541860)))

(declare-fun c!132899 () Bool)

(get-info :version)

(assert (=> d!258263 (= c!132899 ((_ is Cons!8808) (toList!566 thiss!41805)))))

(declare-fun invariantList!196 (List!8824) Bool)

(assert (=> d!258263 (invariantList!196 (toList!566 thiss!41805))))

(assert (=> d!258263 (= (getKeysList!10 (toList!566 thiss!41805)) lt!316985)))

(declare-fun b!820194 () Bool)

(assert (=> b!820194 false))

(declare-fun e!541857 () Unit!13315)

(declare-fun Unit!13318 () Unit!13315)

(assert (=> b!820194 (= e!541857 Unit!13318)))

(declare-fun b!820195 () Bool)

(declare-fun Unit!13319 () Unit!13315)

(assert (=> b!820195 (= e!541857 Unit!13319)))

(declare-fun res!378590 () Bool)

(assert (=> b!820196 (=> (not res!378590) (not e!541858))))

(declare-fun forall!2081 (List!8825 Int) Bool)

(assert (=> b!820196 (= res!378590 (forall!2081 lt!316985 lambda!24370))))

(assert (=> b!820197 (= e!541860 (Cons!8809 (_1!5978 (h!14209 (toList!566 thiss!41805))) (getKeysList!10 (t!92936 (toList!566 thiss!41805)))))))

(declare-fun c!132898 () Bool)

(declare-fun containsKey!32 (List!8824 K!1919) Bool)

(assert (=> b!820197 (= c!132898 (containsKey!32 (t!92936 (toList!566 thiss!41805)) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun lt!316984 () Unit!13315)

(assert (=> b!820197 (= lt!316984 e!541857)))

(declare-fun c!132897 () Bool)

(declare-fun contains!1614 (List!8825 K!1919) Bool)

(assert (=> b!820197 (= c!132897 (contains!1614 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun lt!316982 () Unit!13315)

(assert (=> b!820197 (= lt!316982 e!541859)))

(declare-fun lt!316987 () List!8825)

(assert (=> b!820197 (= lt!316987 (getKeysList!10 (t!92936 (toList!566 thiss!41805))))))

(declare-fun lt!316986 () Unit!13315)

(declare-fun lemmaForallContainsAddHeadPreserves!4 (List!8824 List!8825 tuple2!10304) Unit!13315)

(assert (=> b!820197 (= lt!316986 (lemmaForallContainsAddHeadPreserves!4 (t!92936 (toList!566 thiss!41805)) lt!316987 (h!14209 (toList!566 thiss!41805))))))

(assert (=> b!820197 (forall!2081 lt!316987 lambda!24369)))

(declare-fun lt!316988 () Unit!13315)

(assert (=> b!820197 (= lt!316988 lt!316986)))

(declare-fun b!820198 () Bool)

(declare-fun Unit!13320 () Unit!13315)

(assert (=> b!820198 (= e!541859 Unit!13320)))

(declare-fun b!820199 () Bool)

(declare-fun lambda!24371 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1272 (List!8825) (InoxSet K!1919))

(declare-fun map!1817 (List!8824 Int) List!8825)

(assert (=> b!820199 (= e!541858 (= (content!1272 lt!316985) (content!1272 (map!1817 (toList!566 thiss!41805) lambda!24371))))))

(declare-fun b!820200 () Bool)

(declare-fun res!378588 () Bool)

(assert (=> b!820200 (=> (not res!378588) (not e!541858))))

(declare-fun length!17 (List!8824) Int)

(assert (=> b!820200 (= res!378588 (= (length!15 lt!316985) (length!17 (toList!566 thiss!41805))))))

(declare-fun b!820201 () Bool)

(assert (=> b!820201 (= e!541860 Nil!8809)))

(assert (= (and d!258263 c!132899) b!820197))

(assert (= (and d!258263 (not c!132899)) b!820201))

(assert (= (and b!820197 c!132898) b!820194))

(assert (= (and b!820197 (not c!132898)) b!820195))

(assert (= (and b!820197 c!132897) b!820193))

(assert (= (and b!820197 (not c!132897)) b!820198))

(assert (= (and d!258263 res!378589) b!820200))

(assert (= (and b!820200 res!378588) b!820196))

(assert (= (and b!820196 res!378590) b!820199))

(declare-fun m!1061153 () Bool)

(assert (=> b!820193 m!1061153))

(assert (=> b!820193 m!1061153))

(declare-fun m!1061155 () Bool)

(assert (=> b!820193 m!1061155))

(declare-fun m!1061157 () Bool)

(assert (=> b!820200 m!1061157))

(declare-fun m!1061159 () Bool)

(assert (=> b!820200 m!1061159))

(declare-fun m!1061161 () Bool)

(assert (=> b!820196 m!1061161))

(declare-fun m!1061163 () Bool)

(assert (=> d!258263 m!1061163))

(declare-fun m!1061165 () Bool)

(assert (=> d!258263 m!1061165))

(assert (=> b!820197 m!1061153))

(declare-fun m!1061167 () Bool)

(assert (=> b!820197 m!1061167))

(assert (=> b!820197 m!1061153))

(declare-fun m!1061169 () Bool)

(assert (=> b!820197 m!1061169))

(declare-fun m!1061171 () Bool)

(assert (=> b!820197 m!1061171))

(declare-fun m!1061173 () Bool)

(assert (=> b!820197 m!1061173))

(declare-fun m!1061175 () Bool)

(assert (=> b!820199 m!1061175))

(declare-fun m!1061177 () Bool)

(assert (=> b!820199 m!1061177))

(assert (=> b!820199 m!1061177))

(declare-fun m!1061179 () Bool)

(assert (=> b!820199 m!1061179))

(assert (=> b!820133 d!258263))

(declare-fun d!258269 () Bool)

(declare-fun lt!316991 () Int)

(assert (=> d!258269 (>= lt!316991 0)))

(declare-fun e!541863 () Int)

(assert (=> d!258269 (= lt!316991 e!541863)))

(declare-fun c!132902 () Bool)

(assert (=> d!258269 (= c!132902 ((_ is Nil!8808) (toList!566 thiss!41805)))))

(assert (=> d!258269 (= (size!7459 (toList!566 thiss!41805)) lt!316991)))

(declare-fun b!820208 () Bool)

(assert (=> b!820208 (= e!541863 0)))

(declare-fun b!820209 () Bool)

(assert (=> b!820209 (= e!541863 (+ 1 (size!7459 (t!92936 (toList!566 thiss!41805)))))))

(assert (= (and d!258269 c!132902) b!820208))

(assert (= (and d!258269 (not c!132902)) b!820209))

(declare-fun m!1061181 () Bool)

(assert (=> b!820209 m!1061181))

(assert (=> start!73156 d!258269))

(declare-fun d!258271 () Bool)

(assert (=> d!258271 (= (inv!11162 thiss!41805) (invariantList!196 (toList!566 thiss!41805)))))

(declare-fun bs!228718 () Bool)

(assert (= bs!228718 d!258271))

(assert (=> bs!228718 m!1061165))

(assert (=> start!73156 d!258271))

(declare-fun b!820214 () Bool)

(declare-fun tp_is_empty!3765 () Bool)

(declare-fun e!541866 () Bool)

(declare-fun tp!256526 () Bool)

(declare-fun tp_is_empty!3763 () Bool)

(assert (=> b!820214 (= e!541866 (and tp_is_empty!3763 tp_is_empty!3765 tp!256526))))

(assert (=> b!820134 (= tp!256520 e!541866)))

(assert (= (and b!820134 ((_ is Cons!8808) (toList!566 thiss!41805))) b!820214))

(check-sat (not b!820199) (not b!820193) tp_is_empty!3765 (not b!820200) (not b!820196) (not b!820209) (not b!820197) (not b!820214) (not d!258271) (not d!258259) tp_is_empty!3763 (not d!258263))
(check-sat)
(get-model)

(declare-fun d!258289 () Bool)

(declare-fun c!132915 () Bool)

(assert (=> d!258289 (= c!132915 ((_ is Nil!8809) lt!316985))))

(declare-fun e!541895 () (InoxSet K!1919))

(assert (=> d!258289 (= (content!1272 lt!316985) e!541895)))

(declare-fun b!820257 () Bool)

(assert (=> b!820257 (= e!541895 ((as const (Array K!1919 Bool)) false))))

(declare-fun b!820258 () Bool)

(assert (=> b!820258 (= e!541895 ((_ map or) (store ((as const (Array K!1919 Bool)) false) (h!14210 lt!316985) true) (content!1272 (t!92937 lt!316985))))))

(assert (= (and d!258289 c!132915) b!820257))

(assert (= (and d!258289 (not c!132915)) b!820258))

(declare-fun m!1061241 () Bool)

(assert (=> b!820258 m!1061241))

(declare-fun m!1061243 () Bool)

(assert (=> b!820258 m!1061243))

(assert (=> b!820199 d!258289))

(declare-fun d!258293 () Bool)

(declare-fun c!132916 () Bool)

(assert (=> d!258293 (= c!132916 ((_ is Nil!8809) (map!1817 (toList!566 thiss!41805) lambda!24371)))))

(declare-fun e!541896 () (InoxSet K!1919))

(assert (=> d!258293 (= (content!1272 (map!1817 (toList!566 thiss!41805) lambda!24371)) e!541896)))

(declare-fun b!820259 () Bool)

(assert (=> b!820259 (= e!541896 ((as const (Array K!1919 Bool)) false))))

(declare-fun b!820260 () Bool)

(assert (=> b!820260 (= e!541896 ((_ map or) (store ((as const (Array K!1919 Bool)) false) (h!14210 (map!1817 (toList!566 thiss!41805) lambda!24371)) true) (content!1272 (t!92937 (map!1817 (toList!566 thiss!41805) lambda!24371)))))))

(assert (= (and d!258293 c!132916) b!820259))

(assert (= (and d!258293 (not c!132916)) b!820260))

(declare-fun m!1061245 () Bool)

(assert (=> b!820260 m!1061245))

(declare-fun m!1061247 () Bool)

(assert (=> b!820260 m!1061247))

(assert (=> b!820199 d!258293))

(declare-fun d!258295 () Bool)

(declare-fun lt!317013 () List!8825)

(assert (=> d!258295 (= (size!7461 lt!317013) (size!7459 (toList!566 thiss!41805)))))

(declare-fun e!541905 () List!8825)

(assert (=> d!258295 (= lt!317013 e!541905)))

(declare-fun c!132919 () Bool)

(assert (=> d!258295 (= c!132919 ((_ is Nil!8808) (toList!566 thiss!41805)))))

(assert (=> d!258295 (= (map!1817 (toList!566 thiss!41805) lambda!24371) lt!317013)))

(declare-fun b!820273 () Bool)

(assert (=> b!820273 (= e!541905 Nil!8809)))

(declare-fun b!820274 () Bool)

(declare-fun $colon$colon!58 (List!8825 K!1919) List!8825)

(declare-fun dynLambda!4102 (Int tuple2!10304) K!1919)

(assert (=> b!820274 (= e!541905 ($colon$colon!58 (map!1817 (t!92936 (toList!566 thiss!41805)) lambda!24371) (dynLambda!4102 lambda!24371 (h!14209 (toList!566 thiss!41805)))))))

(assert (= (and d!258295 c!132919) b!820273))

(assert (= (and d!258295 (not c!132919)) b!820274))

(declare-fun b_lambda!27527 () Bool)

(assert (=> (not b_lambda!27527) (not b!820274)))

(declare-fun m!1061259 () Bool)

(assert (=> d!258295 m!1061259))

(assert (=> d!258295 m!1061111))

(declare-fun m!1061261 () Bool)

(assert (=> b!820274 m!1061261))

(declare-fun m!1061263 () Bool)

(assert (=> b!820274 m!1061263))

(assert (=> b!820274 m!1061261))

(assert (=> b!820274 m!1061263))

(declare-fun m!1061265 () Bool)

(assert (=> b!820274 m!1061265))

(assert (=> b!820199 d!258295))

(declare-fun d!258301 () Bool)

(declare-fun dynLambda!4103 (Int K!1919) Bool)

(assert (=> d!258301 (dynLambda!4103 lambda!24368 (_1!5978 (h!14209 (toList!566 thiss!41805))))))

(declare-fun lt!317018 () Unit!13315)

(declare-fun choose!4909 (List!8825 Int K!1919) Unit!13315)

(assert (=> d!258301 (= lt!317018 (choose!4909 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) lambda!24368 (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun e!541916 () Bool)

(assert (=> d!258301 e!541916))

(declare-fun res!378623 () Bool)

(assert (=> d!258301 (=> (not res!378623) (not e!541916))))

(assert (=> d!258301 (= res!378623 (forall!2081 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) lambda!24368))))

(assert (=> d!258301 (= (forallContained!472 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) lambda!24368 (_1!5978 (h!14209 (toList!566 thiss!41805)))) lt!317018)))

(declare-fun b!820287 () Bool)

(assert (=> b!820287 (= e!541916 (contains!1614 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(assert (= (and d!258301 res!378623) b!820287))

(declare-fun b_lambda!27531 () Bool)

(assert (=> (not b_lambda!27531) (not d!258301)))

(declare-fun m!1061273 () Bool)

(assert (=> d!258301 m!1061273))

(assert (=> d!258301 m!1061153))

(declare-fun m!1061275 () Bool)

(assert (=> d!258301 m!1061275))

(assert (=> d!258301 m!1061153))

(declare-fun m!1061279 () Bool)

(assert (=> d!258301 m!1061279))

(assert (=> b!820287 m!1061153))

(assert (=> b!820287 m!1061169))

(assert (=> b!820193 d!258301))

(declare-fun bs!228742 () Bool)

(declare-fun b!820292 () Bool)

(assert (= bs!228742 (and b!820292 b!820193)))

(declare-fun lambda!24379 () Int)

(assert (=> bs!228742 (= (= (t!92936 (t!92936 (toList!566 thiss!41805))) (t!92936 (toList!566 thiss!41805))) (= lambda!24379 lambda!24368))))

(declare-fun bs!228743 () Bool)

(assert (= bs!228743 (and b!820292 b!820197)))

(assert (=> bs!228743 (= (= (t!92936 (t!92936 (toList!566 thiss!41805))) (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805)))) (= lambda!24379 lambda!24369))))

(declare-fun bs!228744 () Bool)

(assert (= bs!228744 (and b!820292 b!820196)))

(assert (=> bs!228744 (= (= (t!92936 (t!92936 (toList!566 thiss!41805))) (toList!566 thiss!41805)) (= lambda!24379 lambda!24370))))

(assert (=> b!820292 true))

(declare-fun bs!228746 () Bool)

(declare-fun b!820296 () Bool)

(assert (= bs!228746 (and b!820296 b!820193)))

(declare-fun lambda!24380 () Int)

(assert (=> bs!228746 (= (= (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (t!92936 (toList!566 thiss!41805))) (= lambda!24380 lambda!24368))))

(declare-fun bs!228747 () Bool)

(assert (= bs!228747 (and b!820296 b!820197)))

(assert (=> bs!228747 (= (= (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805)))) (= lambda!24380 lambda!24369))))

(declare-fun bs!228749 () Bool)

(assert (= bs!228749 (and b!820296 b!820196)))

(assert (=> bs!228749 (= (= (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (toList!566 thiss!41805)) (= lambda!24380 lambda!24370))))

(declare-fun bs!228750 () Bool)

(assert (= bs!228750 (and b!820296 b!820292)))

(assert (=> bs!228750 (= (= (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (= lambda!24380 lambda!24379))))

(assert (=> b!820296 true))

(declare-fun bs!228753 () Bool)

(declare-fun b!820295 () Bool)

(assert (= bs!228753 (and b!820295 b!820296)))

(declare-fun lambda!24381 () Int)

(assert (=> bs!228753 (= (= (t!92936 (toList!566 thiss!41805)) (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805))))) (= lambda!24381 lambda!24380))))

(declare-fun bs!228754 () Bool)

(assert (= bs!228754 (and b!820295 b!820292)))

(assert (=> bs!228754 (= (= (t!92936 (toList!566 thiss!41805)) (t!92936 (t!92936 (toList!566 thiss!41805)))) (= lambda!24381 lambda!24379))))

(declare-fun bs!228755 () Bool)

(assert (= bs!228755 (and b!820295 b!820197)))

(assert (=> bs!228755 (= (= (t!92936 (toList!566 thiss!41805)) (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805)))) (= lambda!24381 lambda!24369))))

(declare-fun bs!228756 () Bool)

(assert (= bs!228756 (and b!820295 b!820193)))

(assert (=> bs!228756 (= lambda!24381 lambda!24368)))

(declare-fun bs!228757 () Bool)

(assert (= bs!228757 (and b!820295 b!820196)))

(assert (=> bs!228757 (= (= (t!92936 (toList!566 thiss!41805)) (toList!566 thiss!41805)) (= lambda!24381 lambda!24370))))

(assert (=> b!820295 true))

(declare-fun bs!228758 () Bool)

(declare-fun b!820298 () Bool)

(assert (= bs!228758 (and b!820298 b!820199)))

(declare-fun lambda!24382 () Int)

(assert (=> bs!228758 (= lambda!24382 lambda!24371)))

(assert (=> b!820292 false))

(declare-fun lt!317021 () Unit!13315)

(assert (=> b!820292 (= lt!317021 (forallContained!472 (getKeysList!10 (t!92936 (t!92936 (toList!566 thiss!41805)))) lambda!24379 (_1!5978 (h!14209 (t!92936 (toList!566 thiss!41805))))))))

(declare-fun e!541922 () Unit!13315)

(declare-fun Unit!13325 () Unit!13315)

(assert (=> b!820292 (= e!541922 Unit!13325)))

(declare-fun d!258311 () Bool)

(declare-fun e!541921 () Bool)

(assert (=> d!258311 e!541921))

(declare-fun res!378627 () Bool)

(assert (=> d!258311 (=> (not res!378627) (not e!541921))))

(declare-fun lt!317023 () List!8825)

(assert (=> d!258311 (= res!378627 (noDuplicate!173 lt!317023))))

(declare-fun e!541923 () List!8825)

(assert (=> d!258311 (= lt!317023 e!541923)))

(declare-fun c!132925 () Bool)

(assert (=> d!258311 (= c!132925 ((_ is Cons!8808) (t!92936 (toList!566 thiss!41805))))))

(assert (=> d!258311 (invariantList!196 (t!92936 (toList!566 thiss!41805)))))

(assert (=> d!258311 (= (getKeysList!10 (t!92936 (toList!566 thiss!41805))) lt!317023)))

(declare-fun b!820293 () Bool)

(assert (=> b!820293 false))

(declare-fun e!541920 () Unit!13315)

(declare-fun Unit!13326 () Unit!13315)

(assert (=> b!820293 (= e!541920 Unit!13326)))

(declare-fun b!820294 () Bool)

(declare-fun Unit!13327 () Unit!13315)

(assert (=> b!820294 (= e!541920 Unit!13327)))

(declare-fun res!378628 () Bool)

(assert (=> b!820295 (=> (not res!378628) (not e!541921))))

(assert (=> b!820295 (= res!378628 (forall!2081 lt!317023 lambda!24381))))

(assert (=> b!820296 (= e!541923 (Cons!8809 (_1!5978 (h!14209 (t!92936 (toList!566 thiss!41805)))) (getKeysList!10 (t!92936 (t!92936 (toList!566 thiss!41805))))))))

(declare-fun c!132924 () Bool)

(assert (=> b!820296 (= c!132924 (containsKey!32 (t!92936 (t!92936 (toList!566 thiss!41805))) (_1!5978 (h!14209 (t!92936 (toList!566 thiss!41805))))))))

(declare-fun lt!317022 () Unit!13315)

(assert (=> b!820296 (= lt!317022 e!541920)))

(declare-fun c!132923 () Bool)

(assert (=> b!820296 (= c!132923 (contains!1614 (getKeysList!10 (t!92936 (t!92936 (toList!566 thiss!41805)))) (_1!5978 (h!14209 (t!92936 (toList!566 thiss!41805))))))))

(declare-fun lt!317020 () Unit!13315)

(assert (=> b!820296 (= lt!317020 e!541922)))

(declare-fun lt!317025 () List!8825)

(assert (=> b!820296 (= lt!317025 (getKeysList!10 (t!92936 (t!92936 (toList!566 thiss!41805)))))))

(declare-fun lt!317024 () Unit!13315)

(assert (=> b!820296 (= lt!317024 (lemmaForallContainsAddHeadPreserves!4 (t!92936 (t!92936 (toList!566 thiss!41805))) lt!317025 (h!14209 (t!92936 (toList!566 thiss!41805)))))))

(assert (=> b!820296 (forall!2081 lt!317025 lambda!24380)))

(declare-fun lt!317026 () Unit!13315)

(assert (=> b!820296 (= lt!317026 lt!317024)))

(declare-fun b!820297 () Bool)

(declare-fun Unit!13328 () Unit!13315)

(assert (=> b!820297 (= e!541922 Unit!13328)))

(assert (=> b!820298 (= e!541921 (= (content!1272 lt!317023) (content!1272 (map!1817 (t!92936 (toList!566 thiss!41805)) lambda!24382))))))

(declare-fun b!820299 () Bool)

(declare-fun res!378626 () Bool)

(assert (=> b!820299 (=> (not res!378626) (not e!541921))))

(assert (=> b!820299 (= res!378626 (= (length!15 lt!317023) (length!17 (t!92936 (toList!566 thiss!41805)))))))

(declare-fun b!820300 () Bool)

(assert (=> b!820300 (= e!541923 Nil!8809)))

(assert (= (and d!258311 c!132925) b!820296))

(assert (= (and d!258311 (not c!132925)) b!820300))

(assert (= (and b!820296 c!132924) b!820293))

(assert (= (and b!820296 (not c!132924)) b!820294))

(assert (= (and b!820296 c!132923) b!820292))

(assert (= (and b!820296 (not c!132923)) b!820297))

(assert (= (and d!258311 res!378627) b!820299))

(assert (= (and b!820299 res!378626) b!820295))

(assert (= (and b!820295 res!378628) b!820298))

(declare-fun m!1061291 () Bool)

(assert (=> b!820292 m!1061291))

(assert (=> b!820292 m!1061291))

(declare-fun m!1061293 () Bool)

(assert (=> b!820292 m!1061293))

(declare-fun m!1061295 () Bool)

(assert (=> b!820299 m!1061295))

(declare-fun m!1061297 () Bool)

(assert (=> b!820299 m!1061297))

(declare-fun m!1061299 () Bool)

(assert (=> b!820295 m!1061299))

(declare-fun m!1061301 () Bool)

(assert (=> d!258311 m!1061301))

(declare-fun m!1061303 () Bool)

(assert (=> d!258311 m!1061303))

(assert (=> b!820296 m!1061291))

(declare-fun m!1061305 () Bool)

(assert (=> b!820296 m!1061305))

(assert (=> b!820296 m!1061291))

(declare-fun m!1061307 () Bool)

(assert (=> b!820296 m!1061307))

(declare-fun m!1061309 () Bool)

(assert (=> b!820296 m!1061309))

(declare-fun m!1061311 () Bool)

(assert (=> b!820296 m!1061311))

(declare-fun m!1061313 () Bool)

(assert (=> b!820298 m!1061313))

(declare-fun m!1061315 () Bool)

(assert (=> b!820298 m!1061315))

(assert (=> b!820298 m!1061315))

(declare-fun m!1061317 () Bool)

(assert (=> b!820298 m!1061317))

(assert (=> b!820193 d!258311))

(declare-fun d!258323 () Bool)

(declare-fun lt!317030 () Int)

(assert (=> d!258323 (>= lt!317030 0)))

(declare-fun e!541928 () Int)

(assert (=> d!258323 (= lt!317030 e!541928)))

(declare-fun c!132929 () Bool)

(assert (=> d!258323 (= c!132929 ((_ is Nil!8809) (getKeysList!10 (toList!566 thiss!41805))))))

(assert (=> d!258323 (= (size!7461 (getKeysList!10 (toList!566 thiss!41805))) lt!317030)))

(declare-fun b!820308 () Bool)

(assert (=> b!820308 (= e!541928 0)))

(declare-fun b!820309 () Bool)

(assert (=> b!820309 (= e!541928 (+ 1 (size!7461 (t!92937 (getKeysList!10 (toList!566 thiss!41805))))))))

(assert (= (and d!258323 c!132929) b!820308))

(assert (= (and d!258323 (not c!132929)) b!820309))

(declare-fun m!1061319 () Bool)

(assert (=> b!820309 m!1061319))

(assert (=> d!258259 d!258323))

(declare-fun d!258325 () Bool)

(declare-fun noDuplicatedKeys!37 (List!8824) Bool)

(assert (=> d!258325 (= (invariantList!196 (toList!566 thiss!41805)) (noDuplicatedKeys!37 (toList!566 thiss!41805)))))

(declare-fun bs!228759 () Bool)

(assert (= bs!228759 d!258325))

(declare-fun m!1061321 () Bool)

(assert (=> bs!228759 m!1061321))

(assert (=> d!258271 d!258325))

(declare-fun d!258327 () Bool)

(assert (=> d!258327 (= (length!15 lt!316985) (size!7461 lt!316985))))

(declare-fun bs!228760 () Bool)

(assert (= bs!228760 d!258327))

(declare-fun m!1061323 () Bool)

(assert (=> bs!228760 m!1061323))

(assert (=> b!820200 d!258327))

(declare-fun d!258329 () Bool)

(assert (=> d!258329 (= (length!17 (toList!566 thiss!41805)) (size!7459 (toList!566 thiss!41805)))))

(declare-fun bs!228761 () Bool)

(assert (= bs!228761 d!258329))

(assert (=> bs!228761 m!1061111))

(assert (=> b!820200 d!258329))

(declare-fun d!258331 () Bool)

(declare-fun res!378633 () Bool)

(declare-fun e!541933 () Bool)

(assert (=> d!258331 (=> res!378633 e!541933)))

(assert (=> d!258331 (= res!378633 ((_ is Nil!8809) lt!316985))))

(assert (=> d!258331 (= (noDuplicate!173 lt!316985) e!541933)))

(declare-fun b!820314 () Bool)

(declare-fun e!541934 () Bool)

(assert (=> b!820314 (= e!541933 e!541934)))

(declare-fun res!378634 () Bool)

(assert (=> b!820314 (=> (not res!378634) (not e!541934))))

(assert (=> b!820314 (= res!378634 (not (contains!1614 (t!92937 lt!316985) (h!14210 lt!316985))))))

(declare-fun b!820315 () Bool)

(assert (=> b!820315 (= e!541934 (noDuplicate!173 (t!92937 lt!316985)))))

(assert (= (and d!258331 (not res!378633)) b!820314))

(assert (= (and b!820314 res!378634) b!820315))

(declare-fun m!1061325 () Bool)

(assert (=> b!820314 m!1061325))

(declare-fun m!1061327 () Bool)

(assert (=> b!820315 m!1061327))

(assert (=> d!258263 d!258331))

(assert (=> d!258263 d!258325))

(declare-fun d!258333 () Bool)

(declare-fun lt!317031 () Int)

(assert (=> d!258333 (>= lt!317031 0)))

(declare-fun e!541935 () Int)

(assert (=> d!258333 (= lt!317031 e!541935)))

(declare-fun c!132930 () Bool)

(assert (=> d!258333 (= c!132930 ((_ is Nil!8808) (t!92936 (toList!566 thiss!41805))))))

(assert (=> d!258333 (= (size!7459 (t!92936 (toList!566 thiss!41805))) lt!317031)))

(declare-fun b!820316 () Bool)

(assert (=> b!820316 (= e!541935 0)))

(declare-fun b!820317 () Bool)

(assert (=> b!820317 (= e!541935 (+ 1 (size!7459 (t!92936 (t!92936 (toList!566 thiss!41805))))))))

(assert (= (and d!258333 c!132930) b!820316))

(assert (= (and d!258333 (not c!132930)) b!820317))

(declare-fun m!1061329 () Bool)

(assert (=> b!820317 m!1061329))

(assert (=> b!820209 d!258333))

(declare-fun d!258335 () Bool)

(declare-fun res!378639 () Bool)

(declare-fun e!541940 () Bool)

(assert (=> d!258335 (=> res!378639 e!541940)))

(assert (=> d!258335 (= res!378639 ((_ is Nil!8809) lt!316985))))

(assert (=> d!258335 (= (forall!2081 lt!316985 lambda!24370) e!541940)))

(declare-fun b!820322 () Bool)

(declare-fun e!541941 () Bool)

(assert (=> b!820322 (= e!541940 e!541941)))

(declare-fun res!378640 () Bool)

(assert (=> b!820322 (=> (not res!378640) (not e!541941))))

(assert (=> b!820322 (= res!378640 (dynLambda!4103 lambda!24370 (h!14210 lt!316985)))))

(declare-fun b!820323 () Bool)

(assert (=> b!820323 (= e!541941 (forall!2081 (t!92937 lt!316985) lambda!24370))))

(assert (= (and d!258335 (not res!378639)) b!820322))

(assert (= (and b!820322 res!378640) b!820323))

(declare-fun b_lambda!27543 () Bool)

(assert (=> (not b_lambda!27543) (not b!820322)))

(declare-fun m!1061331 () Bool)

(assert (=> b!820322 m!1061331))

(declare-fun m!1061333 () Bool)

(assert (=> b!820323 m!1061333))

(assert (=> b!820196 d!258335))

(assert (=> b!820197 d!258311))

(declare-fun d!258337 () Bool)

(declare-fun res!378645 () Bool)

(declare-fun e!541946 () Bool)

(assert (=> d!258337 (=> res!378645 e!541946)))

(assert (=> d!258337 (= res!378645 (and ((_ is Cons!8808) (t!92936 (toList!566 thiss!41805))) (= (_1!5978 (h!14209 (t!92936 (toList!566 thiss!41805)))) (_1!5978 (h!14209 (toList!566 thiss!41805))))))))

(assert (=> d!258337 (= (containsKey!32 (t!92936 (toList!566 thiss!41805)) (_1!5978 (h!14209 (toList!566 thiss!41805)))) e!541946)))

(declare-fun b!820328 () Bool)

(declare-fun e!541947 () Bool)

(assert (=> b!820328 (= e!541946 e!541947)))

(declare-fun res!378646 () Bool)

(assert (=> b!820328 (=> (not res!378646) (not e!541947))))

(assert (=> b!820328 (= res!378646 ((_ is Cons!8808) (t!92936 (toList!566 thiss!41805))))))

(declare-fun b!820329 () Bool)

(assert (=> b!820329 (= e!541947 (containsKey!32 (t!92936 (t!92936 (toList!566 thiss!41805))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(assert (= (and d!258337 (not res!378645)) b!820328))

(assert (= (and b!820328 res!378646) b!820329))

(declare-fun m!1061335 () Bool)

(assert (=> b!820329 m!1061335))

(assert (=> b!820197 d!258337))

(declare-fun d!258339 () Bool)

(declare-fun res!378647 () Bool)

(declare-fun e!541948 () Bool)

(assert (=> d!258339 (=> res!378647 e!541948)))

(assert (=> d!258339 (= res!378647 ((_ is Nil!8809) lt!316987))))

(assert (=> d!258339 (= (forall!2081 lt!316987 lambda!24369) e!541948)))

(declare-fun b!820330 () Bool)

(declare-fun e!541949 () Bool)

(assert (=> b!820330 (= e!541948 e!541949)))

(declare-fun res!378648 () Bool)

(assert (=> b!820330 (=> (not res!378648) (not e!541949))))

(assert (=> b!820330 (= res!378648 (dynLambda!4103 lambda!24369 (h!14210 lt!316987)))))

(declare-fun b!820331 () Bool)

(assert (=> b!820331 (= e!541949 (forall!2081 (t!92937 lt!316987) lambda!24369))))

(assert (= (and d!258339 (not res!378647)) b!820330))

(assert (= (and b!820330 res!378648) b!820331))

(declare-fun b_lambda!27545 () Bool)

(assert (=> (not b_lambda!27545) (not b!820330)))

(declare-fun m!1061337 () Bool)

(assert (=> b!820330 m!1061337))

(declare-fun m!1061339 () Bool)

(assert (=> b!820331 m!1061339))

(assert (=> b!820197 d!258339))

(declare-fun d!258341 () Bool)

(declare-fun lt!317034 () Bool)

(assert (=> d!258341 (= lt!317034 (select (content!1272 (getKeysList!10 (t!92936 (toList!566 thiss!41805)))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun e!541955 () Bool)

(assert (=> d!258341 (= lt!317034 e!541955)))

(declare-fun res!378653 () Bool)

(assert (=> d!258341 (=> (not res!378653) (not e!541955))))

(assert (=> d!258341 (= res!378653 ((_ is Cons!8809) (getKeysList!10 (t!92936 (toList!566 thiss!41805)))))))

(assert (=> d!258341 (= (contains!1614 (getKeysList!10 (t!92936 (toList!566 thiss!41805))) (_1!5978 (h!14209 (toList!566 thiss!41805)))) lt!317034)))

(declare-fun b!820336 () Bool)

(declare-fun e!541954 () Bool)

(assert (=> b!820336 (= e!541955 e!541954)))

(declare-fun res!378654 () Bool)

(assert (=> b!820336 (=> res!378654 e!541954)))

(assert (=> b!820336 (= res!378654 (= (h!14210 (getKeysList!10 (t!92936 (toList!566 thiss!41805)))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(declare-fun b!820337 () Bool)

(assert (=> b!820337 (= e!541954 (contains!1614 (t!92937 (getKeysList!10 (t!92936 (toList!566 thiss!41805)))) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(assert (= (and d!258341 res!378653) b!820336))

(assert (= (and b!820336 (not res!378654)) b!820337))

(assert (=> d!258341 m!1061153))

(declare-fun m!1061341 () Bool)

(assert (=> d!258341 m!1061341))

(declare-fun m!1061343 () Bool)

(assert (=> d!258341 m!1061343))

(declare-fun m!1061345 () Bool)

(assert (=> b!820337 m!1061345))

(assert (=> b!820197 d!258341))

(declare-fun bs!228762 () Bool)

(declare-fun d!258343 () Bool)

(assert (= bs!228762 (and d!258343 b!820296)))

(declare-fun lambda!24385 () Int)

(assert (=> bs!228762 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (Cons!8808 (h!14209 (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805))))) (= lambda!24385 lambda!24380))))

(declare-fun bs!228763 () Bool)

(assert (= bs!228763 (and d!258343 b!820292)))

(assert (=> bs!228763 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (t!92936 (t!92936 (toList!566 thiss!41805)))) (= lambda!24385 lambda!24379))))

(declare-fun bs!228764 () Bool)

(assert (= bs!228764 (and d!258343 b!820193)))

(assert (=> bs!228764 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (t!92936 (toList!566 thiss!41805))) (= lambda!24385 lambda!24368))))

(declare-fun bs!228765 () Bool)

(assert (= bs!228765 (and d!258343 b!820196)))

(assert (=> bs!228765 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (toList!566 thiss!41805)) (= lambda!24385 lambda!24370))))

(declare-fun bs!228766 () Bool)

(assert (= bs!228766 (and d!258343 b!820295)))

(assert (=> bs!228766 (= (= (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (t!92936 (toList!566 thiss!41805))) (= lambda!24385 lambda!24381))))

(declare-fun bs!228767 () Bool)

(assert (= bs!228767 (and d!258343 b!820197)))

(assert (=> bs!228767 (= lambda!24385 lambda!24369)))

(assert (=> d!258343 true))

(assert (=> d!258343 true))

(assert (=> d!258343 (forall!2081 lt!316987 lambda!24385)))

(declare-fun lt!317037 () Unit!13315)

(declare-fun choose!4911 (List!8824 List!8825 tuple2!10304) Unit!13315)

(assert (=> d!258343 (= lt!317037 (choose!4911 (t!92936 (toList!566 thiss!41805)) lt!316987 (h!14209 (toList!566 thiss!41805))))))

(assert (=> d!258343 (invariantList!196 (t!92936 (toList!566 thiss!41805)))))

(assert (=> d!258343 (= (lemmaForallContainsAddHeadPreserves!4 (t!92936 (toList!566 thiss!41805)) lt!316987 (h!14209 (toList!566 thiss!41805))) lt!317037)))

(declare-fun bs!228768 () Bool)

(assert (= bs!228768 d!258343))

(declare-fun m!1061347 () Bool)

(assert (=> bs!228768 m!1061347))

(declare-fun m!1061349 () Bool)

(assert (=> bs!228768 m!1061349))

(assert (=> bs!228768 m!1061303))

(assert (=> b!820197 d!258343))

(declare-fun tp!256528 () Bool)

(declare-fun e!541956 () Bool)

(declare-fun b!820340 () Bool)

(assert (=> b!820340 (= e!541956 (and tp_is_empty!3763 tp_is_empty!3765 tp!256528))))

(assert (=> b!820214 (= tp!256526 e!541956)))

(assert (= (and b!820214 ((_ is Cons!8808) (t!92936 (toList!566 thiss!41805)))) b!820340))

(declare-fun b_lambda!27547 () Bool)

(assert (= b_lambda!27543 (or b!820196 b_lambda!27547)))

(declare-fun bs!228769 () Bool)

(declare-fun d!258345 () Bool)

(assert (= bs!228769 (and d!258345 b!820196)))

(assert (=> bs!228769 (= (dynLambda!4103 lambda!24370 (h!14210 lt!316985)) (containsKey!32 (toList!566 thiss!41805) (h!14210 lt!316985)))))

(declare-fun m!1061351 () Bool)

(assert (=> bs!228769 m!1061351))

(assert (=> b!820322 d!258345))

(declare-fun b_lambda!27549 () Bool)

(assert (= b_lambda!27545 (or b!820197 b_lambda!27549)))

(declare-fun bs!228770 () Bool)

(declare-fun d!258347 () Bool)

(assert (= bs!228770 (and d!258347 b!820197)))

(assert (=> bs!228770 (= (dynLambda!4103 lambda!24369 (h!14210 lt!316987)) (containsKey!32 (Cons!8808 (h!14209 (toList!566 thiss!41805)) (t!92936 (toList!566 thiss!41805))) (h!14210 lt!316987)))))

(declare-fun m!1061353 () Bool)

(assert (=> bs!228770 m!1061353))

(assert (=> b!820330 d!258347))

(declare-fun b_lambda!27551 () Bool)

(assert (= b_lambda!27527 (or b!820199 b_lambda!27551)))

(declare-fun bs!228771 () Bool)

(declare-fun d!258349 () Bool)

(assert (= bs!228771 (and d!258349 b!820199)))

(assert (=> bs!228771 (= (dynLambda!4102 lambda!24371 (h!14209 (toList!566 thiss!41805))) (_1!5978 (h!14209 (toList!566 thiss!41805))))))

(assert (=> b!820274 d!258349))

(declare-fun b_lambda!27553 () Bool)

(assert (= b_lambda!27531 (or b!820193 b_lambda!27553)))

(declare-fun bs!228772 () Bool)

(declare-fun d!258351 () Bool)

(assert (= bs!228772 (and d!258351 b!820193)))

(assert (=> bs!228772 (= (dynLambda!4103 lambda!24368 (_1!5978 (h!14209 (toList!566 thiss!41805)))) (containsKey!32 (t!92936 (toList!566 thiss!41805)) (_1!5978 (h!14209 (toList!566 thiss!41805)))))))

(assert (=> bs!228772 m!1061171))

(assert (=> d!258301 d!258351))

(check-sat (not bs!228770) (not b!820274) (not b!820295) (not d!258327) (not b!820309) (not d!258343) tp_is_empty!3765 (not d!258341) tp_is_empty!3763 (not d!258301) (not b!820331) (not b_lambda!27547) (not b!820296) (not b!820292) (not d!258295) (not b!820329) (not b!820298) (not b!820337) (not b!820258) (not b!820323) (not b!820314) (not bs!228772) (not b!820299) (not d!258311) (not bs!228769) (not b!820315) (not b_lambda!27551) (not b!820340) (not b!820287) (not d!258325) (not b_lambda!27553) (not d!258329) (not b!820317) (not b!820260) (not b_lambda!27549))
(check-sat)
