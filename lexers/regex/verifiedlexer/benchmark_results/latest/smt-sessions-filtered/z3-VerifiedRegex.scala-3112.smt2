; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184146 () Bool)

(assert start!184146)

(declare-fun b_free!51597 () Bool)

(declare-fun b_next!52301 () Bool)

(assert (=> start!184146 (= b_free!51597 (not b_next!52301))))

(declare-fun tp!522015 () Bool)

(declare-fun b_and!143805 () Bool)

(assert (=> start!184146 (= tp!522015 b_and!143805)))

(declare-fun b!1846102 () Bool)

(assert (=> b!1846102 true))

(assert (=> b!1846102 true))

(declare-fun f!1069 () Int)

(declare-fun lambda!72698 () Int)

(declare-fun order!13153 () Int)

(declare-fun order!13155 () Int)

(declare-fun dynLambda!10139 (Int Int) Int)

(declare-fun dynLambda!10140 (Int Int) Int)

(assert (=> b!1846102 (< (dynLambda!10139 order!13153 f!1069) (dynLambda!10140 order!13155 lambda!72698))))

(declare-fun b!1846101 () Bool)

(declare-fun e!1179775 () Bool)

(declare-fun tp_is_empty!8421 () Bool)

(declare-fun tp!522014 () Bool)

(assert (=> b!1846101 (= e!1179775 (and tp_is_empty!8421 tp!522014))))

(declare-fun res!828988 () Bool)

(declare-fun e!1179776 () Bool)

(assert (=> start!184146 (=> (not res!828988) (not e!1179776))))

(declare-datatypes ((A!451 0))(
  ( (A!452 (val!5787 Int)) )
))
(declare-fun a!855 () A!451)

(declare-datatypes ((B!1609 0))(
  ( (B!1610 (val!5788 Int)) )
))
(declare-datatypes ((List!20455 0))(
  ( (Nil!20383) (Cons!20383 (h!25784 B!1609) (t!172128 List!20455)) )
))
(declare-fun l!2946 () List!20455)

(declare-datatypes ((List!20456 0))(
  ( (Nil!20384) (Cons!20384 (h!25785 A!451) (t!172129 List!20456)) )
))
(declare-fun contains!3754 (List!20456 A!451) Bool)

(declare-fun map!4286 (List!20455 Int) List!20456)

(assert (=> start!184146 (= res!828988 (contains!3754 (map!4286 l!2946 f!1069) a!855))))

(assert (=> start!184146 e!1179776))

(assert (=> start!184146 e!1179775))

(assert (=> start!184146 tp!522015))

(declare-fun tp_is_empty!8423 () Bool)

(assert (=> start!184146 tp_is_empty!8423))

(declare-fun exists!677 (List!20455 Int) Bool)

(assert (=> b!1846102 (= e!1179776 (not (exists!677 l!2946 lambda!72698)))))

(assert (=> b!1846102 (exists!677 (t!172128 l!2946) lambda!72698)))

(declare-datatypes ((Unit!35047 0))(
  ( (Unit!35048) )
))
(declare-fun lt!714894 () Unit!35047)

(declare-fun lemmaMapContains!198 (List!20455 Int A!451) Unit!35047)

(assert (=> b!1846102 (= lt!714894 (lemmaMapContains!198 (t!172128 l!2946) f!1069 a!855))))

(declare-fun b!1846103 () Bool)

(declare-fun res!828987 () Bool)

(assert (=> b!1846103 (=> (not res!828987) (not e!1179776))))

(get-info :version)

(assert (=> b!1846103 (= res!828987 (not ((_ is Nil!20383) l!2946)))))

(declare-fun b!1846104 () Bool)

(declare-fun res!828986 () Bool)

(assert (=> b!1846104 (=> (not res!828986) (not e!1179776))))

(declare-fun dynLambda!10141 (Int B!1609) A!451)

(assert (=> b!1846104 (= res!828986 (not (= (dynLambda!10141 f!1069 (h!25784 l!2946)) a!855)))))

(declare-fun b!1846105 () Bool)

(declare-fun res!828989 () Bool)

(assert (=> b!1846105 (=> (not res!828989) (not e!1179776))))

(assert (=> b!1846105 (= res!828989 (contains!3754 (map!4286 (t!172128 l!2946) f!1069) a!855))))

(assert (= (and start!184146 res!828988) b!1846103))

(assert (= (and b!1846103 res!828987) b!1846104))

(assert (= (and b!1846104 res!828986) b!1846105))

(assert (= (and b!1846105 res!828989) b!1846102))

(assert (= (and start!184146 ((_ is Cons!20383) l!2946)) b!1846101))

(declare-fun b_lambda!61327 () Bool)

(assert (=> (not b_lambda!61327) (not b!1846104)))

(declare-fun t!172127 () Bool)

(declare-fun tb!112867 () Bool)

(assert (=> (and start!184146 (= f!1069 f!1069) t!172127) tb!112867))

(declare-fun result!135976 () Bool)

(assert (=> tb!112867 (= result!135976 tp_is_empty!8423)))

(assert (=> b!1846104 t!172127))

(declare-fun b_and!143807 () Bool)

(assert (= b_and!143805 (and (=> t!172127 result!135976) b_and!143807)))

(declare-fun m!2274379 () Bool)

(assert (=> start!184146 m!2274379))

(assert (=> start!184146 m!2274379))

(declare-fun m!2274381 () Bool)

(assert (=> start!184146 m!2274381))

(declare-fun m!2274383 () Bool)

(assert (=> b!1846102 m!2274383))

(declare-fun m!2274385 () Bool)

(assert (=> b!1846102 m!2274385))

(declare-fun m!2274387 () Bool)

(assert (=> b!1846102 m!2274387))

(declare-fun m!2274389 () Bool)

(assert (=> b!1846104 m!2274389))

(declare-fun m!2274391 () Bool)

(assert (=> b!1846105 m!2274391))

(assert (=> b!1846105 m!2274391))

(declare-fun m!2274393 () Bool)

(assert (=> b!1846105 m!2274393))

(check-sat (not b_next!52301) (not b_lambda!61327) (not b!1846105) tp_is_empty!8423 (not b!1846101) tp_is_empty!8421 (not b!1846102) (not start!184146) b_and!143807)
(check-sat b_and!143807 (not b_next!52301))
(get-model)

(declare-fun b_lambda!61331 () Bool)

(assert (= b_lambda!61327 (or (and start!184146 b_free!51597) b_lambda!61331)))

(check-sat (not b_next!52301) (not b_lambda!61331) (not b!1846105) tp_is_empty!8423 (not b!1846101) tp_is_empty!8421 (not b!1846102) (not start!184146) b_and!143807)
(check-sat b_and!143807 (not b_next!52301))
(get-model)

(declare-fun d!565053 () Bool)

(declare-fun lt!714903 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3038 (List!20456) (InoxSet A!451))

(assert (=> d!565053 (= lt!714903 (select (content!3038 (map!4286 l!2946 f!1069)) a!855))))

(declare-fun e!1179790 () Bool)

(assert (=> d!565053 (= lt!714903 e!1179790)))

(declare-fun res!829001 () Bool)

(assert (=> d!565053 (=> (not res!829001) (not e!1179790))))

(assert (=> d!565053 (= res!829001 ((_ is Cons!20384) (map!4286 l!2946 f!1069)))))

(assert (=> d!565053 (= (contains!3754 (map!4286 l!2946 f!1069) a!855) lt!714903)))

(declare-fun b!1846130 () Bool)

(declare-fun e!1179791 () Bool)

(assert (=> b!1846130 (= e!1179790 e!1179791)))

(declare-fun res!829000 () Bool)

(assert (=> b!1846130 (=> res!829000 e!1179791)))

(assert (=> b!1846130 (= res!829000 (= (h!25785 (map!4286 l!2946 f!1069)) a!855))))

(declare-fun b!1846131 () Bool)

(assert (=> b!1846131 (= e!1179791 (contains!3754 (t!172129 (map!4286 l!2946 f!1069)) a!855))))

(assert (= (and d!565053 res!829001) b!1846130))

(assert (= (and b!1846130 (not res!829000)) b!1846131))

(assert (=> d!565053 m!2274379))

(declare-fun m!2274411 () Bool)

(assert (=> d!565053 m!2274411))

(declare-fun m!2274413 () Bool)

(assert (=> d!565053 m!2274413))

(declare-fun m!2274415 () Bool)

(assert (=> b!1846131 m!2274415))

(assert (=> start!184146 d!565053))

(declare-fun d!565061 () Bool)

(declare-fun lt!714909 () List!20456)

(declare-fun size!16134 (List!20456) Int)

(declare-fun size!16135 (List!20455) Int)

(assert (=> d!565061 (= (size!16134 lt!714909) (size!16135 l!2946))))

(declare-fun e!1179794 () List!20456)

(assert (=> d!565061 (= lt!714909 e!1179794)))

(declare-fun c!301410 () Bool)

(assert (=> d!565061 (= c!301410 ((_ is Nil!20383) l!2946))))

(assert (=> d!565061 (= (map!4286 l!2946 f!1069) lt!714909)))

(declare-fun b!1846138 () Bool)

(assert (=> b!1846138 (= e!1179794 Nil!20384)))

(declare-fun b!1846139 () Bool)

(declare-fun $colon$colon!486 (List!20456 A!451) List!20456)

(assert (=> b!1846139 (= e!1179794 ($colon$colon!486 (map!4286 (t!172128 l!2946) f!1069) (dynLambda!10141 f!1069 (h!25784 l!2946))))))

(assert (= (and d!565061 c!301410) b!1846138))

(assert (= (and d!565061 (not c!301410)) b!1846139))

(declare-fun b_lambda!61335 () Bool)

(assert (=> (not b_lambda!61335) (not b!1846139)))

(assert (=> b!1846139 t!172127))

(declare-fun b_and!143811 () Bool)

(assert (= b_and!143807 (and (=> t!172127 result!135976) b_and!143811)))

(declare-fun m!2274417 () Bool)

(assert (=> d!565061 m!2274417))

(declare-fun m!2274419 () Bool)

(assert (=> d!565061 m!2274419))

(assert (=> b!1846139 m!2274391))

(assert (=> b!1846139 m!2274389))

(assert (=> b!1846139 m!2274391))

(assert (=> b!1846139 m!2274389))

(declare-fun m!2274425 () Bool)

(assert (=> b!1846139 m!2274425))

(assert (=> start!184146 d!565061))

(declare-fun bs!409287 () Bool)

(declare-fun d!565063 () Bool)

(assert (= bs!409287 (and d!565063 b!1846102)))

(declare-fun lambda!72708 () Int)

(assert (=> bs!409287 (not (= lambda!72708 lambda!72698))))

(assert (=> d!565063 true))

(assert (=> d!565063 (< (dynLambda!10140 order!13155 lambda!72698) (dynLambda!10140 order!13155 lambda!72708))))

(declare-fun forall!4385 (List!20455 Int) Bool)

(assert (=> d!565063 (= (exists!677 l!2946 lambda!72698) (not (forall!4385 l!2946 lambda!72708)))))

(declare-fun bs!409288 () Bool)

(assert (= bs!409288 d!565063))

(declare-fun m!2274443 () Bool)

(assert (=> bs!409288 m!2274443))

(assert (=> b!1846102 d!565063))

(declare-fun bs!409289 () Bool)

(declare-fun d!565069 () Bool)

(assert (= bs!409289 (and d!565069 b!1846102)))

(declare-fun lambda!72709 () Int)

(assert (=> bs!409289 (not (= lambda!72709 lambda!72698))))

(declare-fun bs!409290 () Bool)

(assert (= bs!409290 (and d!565069 d!565063)))

(assert (=> bs!409290 (= lambda!72709 lambda!72708)))

(assert (=> d!565069 true))

(assert (=> d!565069 (< (dynLambda!10140 order!13155 lambda!72698) (dynLambda!10140 order!13155 lambda!72709))))

(assert (=> d!565069 (= (exists!677 (t!172128 l!2946) lambda!72698) (not (forall!4385 (t!172128 l!2946) lambda!72709)))))

(declare-fun bs!409291 () Bool)

(assert (= bs!409291 d!565069))

(declare-fun m!2274445 () Bool)

(assert (=> bs!409291 m!2274445))

(assert (=> b!1846102 d!565069))

(declare-fun bs!409292 () Bool)

(declare-fun d!565071 () Bool)

(assert (= bs!409292 (and d!565071 b!1846102)))

(declare-fun lambda!72712 () Int)

(assert (=> bs!409292 (= lambda!72712 lambda!72698)))

(declare-fun bs!409293 () Bool)

(assert (= bs!409293 (and d!565071 d!565063)))

(assert (=> bs!409293 (not (= lambda!72712 lambda!72708))))

(declare-fun bs!409294 () Bool)

(assert (= bs!409294 (and d!565071 d!565069)))

(assert (=> bs!409294 (not (= lambda!72712 lambda!72709))))

(assert (=> d!565071 true))

(assert (=> d!565071 true))

(assert (=> d!565071 (< (dynLambda!10139 order!13153 f!1069) (dynLambda!10140 order!13155 lambda!72712))))

(assert (=> d!565071 (exists!677 (t!172128 l!2946) lambda!72712)))

(declare-fun lt!714914 () Unit!35047)

(declare-fun choose!11614 (List!20455 Int A!451) Unit!35047)

(assert (=> d!565071 (= lt!714914 (choose!11614 (t!172128 l!2946) f!1069 a!855))))

(assert (=> d!565071 (contains!3754 (map!4286 (t!172128 l!2946) f!1069) a!855)))

(assert (=> d!565071 (= (lemmaMapContains!198 (t!172128 l!2946) f!1069 a!855) lt!714914)))

(declare-fun bs!409295 () Bool)

(assert (= bs!409295 d!565071))

(declare-fun m!2274447 () Bool)

(assert (=> bs!409295 m!2274447))

(declare-fun m!2274449 () Bool)

(assert (=> bs!409295 m!2274449))

(assert (=> bs!409295 m!2274391))

(assert (=> bs!409295 m!2274391))

(assert (=> bs!409295 m!2274393))

(assert (=> b!1846102 d!565071))

(declare-fun lt!714915 () Bool)

(declare-fun d!565073 () Bool)

(assert (=> d!565073 (= lt!714915 (select (content!3038 (map!4286 (t!172128 l!2946) f!1069)) a!855))))

(declare-fun e!1179801 () Bool)

(assert (=> d!565073 (= lt!714915 e!1179801)))

(declare-fun res!829005 () Bool)

(assert (=> d!565073 (=> (not res!829005) (not e!1179801))))

(assert (=> d!565073 (= res!829005 ((_ is Cons!20384) (map!4286 (t!172128 l!2946) f!1069)))))

(assert (=> d!565073 (= (contains!3754 (map!4286 (t!172128 l!2946) f!1069) a!855) lt!714915)))

(declare-fun b!1846153 () Bool)

(declare-fun e!1179802 () Bool)

(assert (=> b!1846153 (= e!1179801 e!1179802)))

(declare-fun res!829004 () Bool)

(assert (=> b!1846153 (=> res!829004 e!1179802)))

(assert (=> b!1846153 (= res!829004 (= (h!25785 (map!4286 (t!172128 l!2946) f!1069)) a!855))))

(declare-fun b!1846154 () Bool)

(assert (=> b!1846154 (= e!1179802 (contains!3754 (t!172129 (map!4286 (t!172128 l!2946) f!1069)) a!855))))

(assert (= (and d!565073 res!829005) b!1846153))

(assert (= (and b!1846153 (not res!829004)) b!1846154))

(assert (=> d!565073 m!2274391))

(declare-fun m!2274451 () Bool)

(assert (=> d!565073 m!2274451))

(declare-fun m!2274453 () Bool)

(assert (=> d!565073 m!2274453))

(declare-fun m!2274455 () Bool)

(assert (=> b!1846154 m!2274455))

(assert (=> b!1846105 d!565073))

(declare-fun d!565075 () Bool)

(declare-fun lt!714916 () List!20456)

(assert (=> d!565075 (= (size!16134 lt!714916) (size!16135 (t!172128 l!2946)))))

(declare-fun e!1179803 () List!20456)

(assert (=> d!565075 (= lt!714916 e!1179803)))

(declare-fun c!301412 () Bool)

(assert (=> d!565075 (= c!301412 ((_ is Nil!20383) (t!172128 l!2946)))))

(assert (=> d!565075 (= (map!4286 (t!172128 l!2946) f!1069) lt!714916)))

(declare-fun b!1846155 () Bool)

(assert (=> b!1846155 (= e!1179803 Nil!20384)))

(declare-fun b!1846156 () Bool)

(assert (=> b!1846156 (= e!1179803 ($colon$colon!486 (map!4286 (t!172128 (t!172128 l!2946)) f!1069) (dynLambda!10141 f!1069 (h!25784 (t!172128 l!2946)))))))

(assert (= (and d!565075 c!301412) b!1846155))

(assert (= (and d!565075 (not c!301412)) b!1846156))

(declare-fun b_lambda!61343 () Bool)

(assert (=> (not b_lambda!61343) (not b!1846156)))

(declare-fun t!172133 () Bool)

(declare-fun tb!112871 () Bool)

(assert (=> (and start!184146 (= f!1069 f!1069) t!172133) tb!112871))

(declare-fun result!135984 () Bool)

(assert (=> tb!112871 (= result!135984 tp_is_empty!8423)))

(assert (=> b!1846156 t!172133))

(declare-fun b_and!143815 () Bool)

(assert (= b_and!143811 (and (=> t!172133 result!135984) b_and!143815)))

(declare-fun m!2274457 () Bool)

(assert (=> d!565075 m!2274457))

(declare-fun m!2274459 () Bool)

(assert (=> d!565075 m!2274459))

(declare-fun m!2274461 () Bool)

(assert (=> b!1846156 m!2274461))

(declare-fun m!2274463 () Bool)

(assert (=> b!1846156 m!2274463))

(assert (=> b!1846156 m!2274461))

(assert (=> b!1846156 m!2274463))

(declare-fun m!2274465 () Bool)

(assert (=> b!1846156 m!2274465))

(assert (=> b!1846105 d!565075))

(declare-fun b!1846161 () Bool)

(declare-fun e!1179806 () Bool)

(declare-fun tp!522021 () Bool)

(assert (=> b!1846161 (= e!1179806 (and tp_is_empty!8421 tp!522021))))

(assert (=> b!1846101 (= tp!522014 e!1179806)))

(assert (= (and b!1846101 ((_ is Cons!20383) (t!172128 l!2946))) b!1846161))

(declare-fun b_lambda!61345 () Bool)

(assert (= b_lambda!61343 (or (and start!184146 b_free!51597) b_lambda!61345)))

(declare-fun b_lambda!61347 () Bool)

(assert (= b_lambda!61335 (or (and start!184146 b_free!51597) b_lambda!61347)))

(check-sat (not b_next!52301) (not b_lambda!61345) (not d!565071) (not b!1846156) (not d!565061) (not b!1846154) (not b!1846161) b_and!143815 tp_is_empty!8421 (not d!565063) (not b_lambda!61331) (not d!565073) (not b!1846139) (not d!565069) tp_is_empty!8423 (not d!565075) (not d!565053) (not b_lambda!61347) (not b!1846131))
(check-sat b_and!143815 (not b_next!52301))
(get-model)

(declare-fun d!565083 () Bool)

(assert (=> d!565083 (= ($colon$colon!486 (map!4286 (t!172128 l!2946) f!1069) (dynLambda!10141 f!1069 (h!25784 l!2946))) (Cons!20384 (dynLambda!10141 f!1069 (h!25784 l!2946)) (map!4286 (t!172128 l!2946) f!1069)))))

(assert (=> b!1846139 d!565083))

(assert (=> b!1846139 d!565075))

(declare-fun d!565085 () Bool)

(assert (=> d!565085 (= ($colon$colon!486 (map!4286 (t!172128 (t!172128 l!2946)) f!1069) (dynLambda!10141 f!1069 (h!25784 (t!172128 l!2946)))) (Cons!20384 (dynLambda!10141 f!1069 (h!25784 (t!172128 l!2946))) (map!4286 (t!172128 (t!172128 l!2946)) f!1069)))))

(assert (=> b!1846156 d!565085))

(declare-fun d!565087 () Bool)

(declare-fun lt!714918 () List!20456)

(assert (=> d!565087 (= (size!16134 lt!714918) (size!16135 (t!172128 (t!172128 l!2946))))))

(declare-fun e!1179812 () List!20456)

(assert (=> d!565087 (= lt!714918 e!1179812)))

(declare-fun c!301414 () Bool)

(assert (=> d!565087 (= c!301414 ((_ is Nil!20383) (t!172128 (t!172128 l!2946))))))

(assert (=> d!565087 (= (map!4286 (t!172128 (t!172128 l!2946)) f!1069) lt!714918)))

(declare-fun b!1846168 () Bool)

(assert (=> b!1846168 (= e!1179812 Nil!20384)))

(declare-fun b!1846169 () Bool)

(assert (=> b!1846169 (= e!1179812 ($colon$colon!486 (map!4286 (t!172128 (t!172128 (t!172128 l!2946))) f!1069) (dynLambda!10141 f!1069 (h!25784 (t!172128 (t!172128 l!2946))))))))

(assert (= (and d!565087 c!301414) b!1846168))

(assert (= (and d!565087 (not c!301414)) b!1846169))

(declare-fun b_lambda!61351 () Bool)

(assert (=> (not b_lambda!61351) (not b!1846169)))

(declare-fun t!172139 () Bool)

(declare-fun tb!112875 () Bool)

(assert (=> (and start!184146 (= f!1069 f!1069) t!172139) tb!112875))

(declare-fun result!135990 () Bool)

(assert (=> tb!112875 (= result!135990 tp_is_empty!8423)))

(assert (=> b!1846169 t!172139))

(declare-fun b_and!143819 () Bool)

(assert (= b_and!143815 (and (=> t!172139 result!135990) b_and!143819)))

(declare-fun m!2274477 () Bool)

(assert (=> d!565087 m!2274477))

(declare-fun m!2274479 () Bool)

(assert (=> d!565087 m!2274479))

(declare-fun m!2274481 () Bool)

(assert (=> b!1846169 m!2274481))

(declare-fun m!2274483 () Bool)

(assert (=> b!1846169 m!2274483))

(assert (=> b!1846169 m!2274481))

(assert (=> b!1846169 m!2274483))

(declare-fun m!2274487 () Bool)

(assert (=> b!1846169 m!2274487))

(assert (=> b!1846156 d!565087))

(declare-fun d!565089 () Bool)

(declare-fun c!301417 () Bool)

(assert (=> d!565089 (= c!301417 ((_ is Nil!20384) (map!4286 l!2946 f!1069)))))

(declare-fun e!1179823 () (InoxSet A!451))

(assert (=> d!565089 (= (content!3038 (map!4286 l!2946 f!1069)) e!1179823)))

(declare-fun b!1846182 () Bool)

(assert (=> b!1846182 (= e!1179823 ((as const (Array A!451 Bool)) false))))

(declare-fun b!1846183 () Bool)

(assert (=> b!1846183 (= e!1179823 ((_ map or) (store ((as const (Array A!451 Bool)) false) (h!25785 (map!4286 l!2946 f!1069)) true) (content!3038 (t!172129 (map!4286 l!2946 f!1069)))))))

(assert (= (and d!565089 c!301417) b!1846182))

(assert (= (and d!565089 (not c!301417)) b!1846183))

(declare-fun m!2274507 () Bool)

(assert (=> b!1846183 m!2274507))

(declare-fun m!2274509 () Bool)

(assert (=> b!1846183 m!2274509))

(assert (=> d!565053 d!565089))

(declare-fun d!565101 () Bool)

(declare-fun lt!714923 () Int)

(assert (=> d!565101 (>= lt!714923 0)))

(declare-fun e!1179829 () Int)

(assert (=> d!565101 (= lt!714923 e!1179829)))

(declare-fun c!301423 () Bool)

(assert (=> d!565101 (= c!301423 ((_ is Nil!20384) lt!714909))))

(assert (=> d!565101 (= (size!16134 lt!714909) lt!714923)))

(declare-fun b!1846194 () Bool)

(assert (=> b!1846194 (= e!1179829 0)))

(declare-fun b!1846195 () Bool)

(assert (=> b!1846195 (= e!1179829 (+ 1 (size!16134 (t!172129 lt!714909))))))

(assert (= (and d!565101 c!301423) b!1846194))

(assert (= (and d!565101 (not c!301423)) b!1846195))

(declare-fun m!2274515 () Bool)

(assert (=> b!1846195 m!2274515))

(assert (=> d!565061 d!565101))

(declare-fun d!565107 () Bool)

(declare-fun lt!714926 () Int)

(assert (=> d!565107 (>= lt!714926 0)))

(declare-fun e!1179832 () Int)

(assert (=> d!565107 (= lt!714926 e!1179832)))

(declare-fun c!301426 () Bool)

(assert (=> d!565107 (= c!301426 ((_ is Nil!20383) l!2946))))

(assert (=> d!565107 (= (size!16135 l!2946) lt!714926)))

(declare-fun b!1846202 () Bool)

(assert (=> b!1846202 (= e!1179832 0)))

(declare-fun b!1846203 () Bool)

(assert (=> b!1846203 (= e!1179832 (+ 1 (size!16135 (t!172128 l!2946))))))

(assert (= (and d!565107 c!301426) b!1846202))

(assert (= (and d!565107 (not c!301426)) b!1846203))

(assert (=> b!1846203 m!2274459))

(assert (=> d!565061 d!565107))

(declare-fun d!565109 () Bool)

(declare-fun lt!714927 () Bool)

(assert (=> d!565109 (= lt!714927 (select (content!3038 (t!172129 (map!4286 (t!172128 l!2946) f!1069))) a!855))))

(declare-fun e!1179833 () Bool)

(assert (=> d!565109 (= lt!714927 e!1179833)))

(declare-fun res!829019 () Bool)

(assert (=> d!565109 (=> (not res!829019) (not e!1179833))))

(assert (=> d!565109 (= res!829019 ((_ is Cons!20384) (t!172129 (map!4286 (t!172128 l!2946) f!1069))))))

(assert (=> d!565109 (= (contains!3754 (t!172129 (map!4286 (t!172128 l!2946) f!1069)) a!855) lt!714927)))

(declare-fun b!1846204 () Bool)

(declare-fun e!1179834 () Bool)

(assert (=> b!1846204 (= e!1179833 e!1179834)))

(declare-fun res!829018 () Bool)

(assert (=> b!1846204 (=> res!829018 e!1179834)))

(assert (=> b!1846204 (= res!829018 (= (h!25785 (t!172129 (map!4286 (t!172128 l!2946) f!1069))) a!855))))

(declare-fun b!1846205 () Bool)

(assert (=> b!1846205 (= e!1179834 (contains!3754 (t!172129 (t!172129 (map!4286 (t!172128 l!2946) f!1069))) a!855))))

(assert (= (and d!565109 res!829019) b!1846204))

(assert (= (and b!1846204 (not res!829018)) b!1846205))

(declare-fun m!2274517 () Bool)

(assert (=> d!565109 m!2274517))

(declare-fun m!2274521 () Bool)

(assert (=> d!565109 m!2274521))

(declare-fun m!2274523 () Bool)

(assert (=> b!1846205 m!2274523))

(assert (=> b!1846154 d!565109))

(declare-fun d!565111 () Bool)

(declare-fun res!829024 () Bool)

(declare-fun e!1179841 () Bool)

(assert (=> d!565111 (=> res!829024 e!1179841)))

(assert (=> d!565111 (= res!829024 ((_ is Nil!20383) l!2946))))

(assert (=> d!565111 (= (forall!4385 l!2946 lambda!72708) e!1179841)))

(declare-fun b!1846214 () Bool)

(declare-fun e!1179842 () Bool)

(assert (=> b!1846214 (= e!1179841 e!1179842)))

(declare-fun res!829025 () Bool)

(assert (=> b!1846214 (=> (not res!829025) (not e!1179842))))

(declare-fun dynLambda!10143 (Int B!1609) Bool)

(assert (=> b!1846214 (= res!829025 (dynLambda!10143 lambda!72708 (h!25784 l!2946)))))

(declare-fun b!1846215 () Bool)

(assert (=> b!1846215 (= e!1179842 (forall!4385 (t!172128 l!2946) lambda!72708))))

(assert (= (and d!565111 (not res!829024)) b!1846214))

(assert (= (and b!1846214 res!829025) b!1846215))

(declare-fun b_lambda!61357 () Bool)

(assert (=> (not b_lambda!61357) (not b!1846214)))

(declare-fun m!2274527 () Bool)

(assert (=> b!1846214 m!2274527))

(declare-fun m!2274529 () Bool)

(assert (=> b!1846215 m!2274529))

(assert (=> d!565063 d!565111))

(declare-fun d!565117 () Bool)

(declare-fun res!829026 () Bool)

(declare-fun e!1179844 () Bool)

(assert (=> d!565117 (=> res!829026 e!1179844)))

(assert (=> d!565117 (= res!829026 ((_ is Nil!20383) (t!172128 l!2946)))))

(assert (=> d!565117 (= (forall!4385 (t!172128 l!2946) lambda!72709) e!1179844)))

(declare-fun b!1846218 () Bool)

(declare-fun e!1179845 () Bool)

(assert (=> b!1846218 (= e!1179844 e!1179845)))

(declare-fun res!829027 () Bool)

(assert (=> b!1846218 (=> (not res!829027) (not e!1179845))))

(assert (=> b!1846218 (= res!829027 (dynLambda!10143 lambda!72709 (h!25784 (t!172128 l!2946))))))

(declare-fun b!1846219 () Bool)

(assert (=> b!1846219 (= e!1179845 (forall!4385 (t!172128 (t!172128 l!2946)) lambda!72709))))

(assert (= (and d!565117 (not res!829026)) b!1846218))

(assert (= (and b!1846218 res!829027) b!1846219))

(declare-fun b_lambda!61359 () Bool)

(assert (=> (not b_lambda!61359) (not b!1846218)))

(declare-fun m!2274531 () Bool)

(assert (=> b!1846218 m!2274531))

(declare-fun m!2274533 () Bool)

(assert (=> b!1846219 m!2274533))

(assert (=> d!565069 d!565117))

(declare-fun d!565119 () Bool)

(declare-fun lt!714931 () Int)

(assert (=> d!565119 (>= lt!714931 0)))

(declare-fun e!1179846 () Int)

(assert (=> d!565119 (= lt!714931 e!1179846)))

(declare-fun c!301430 () Bool)

(assert (=> d!565119 (= c!301430 ((_ is Nil!20384) lt!714916))))

(assert (=> d!565119 (= (size!16134 lt!714916) lt!714931)))

(declare-fun b!1846220 () Bool)

(assert (=> b!1846220 (= e!1179846 0)))

(declare-fun b!1846221 () Bool)

(assert (=> b!1846221 (= e!1179846 (+ 1 (size!16134 (t!172129 lt!714916))))))

(assert (= (and d!565119 c!301430) b!1846220))

(assert (= (and d!565119 (not c!301430)) b!1846221))

(declare-fun m!2274535 () Bool)

(assert (=> b!1846221 m!2274535))

(assert (=> d!565075 d!565119))

(declare-fun d!565121 () Bool)

(declare-fun lt!714932 () Int)

(assert (=> d!565121 (>= lt!714932 0)))

(declare-fun e!1179847 () Int)

(assert (=> d!565121 (= lt!714932 e!1179847)))

(declare-fun c!301431 () Bool)

(assert (=> d!565121 (= c!301431 ((_ is Nil!20383) (t!172128 l!2946)))))

(assert (=> d!565121 (= (size!16135 (t!172128 l!2946)) lt!714932)))

(declare-fun b!1846222 () Bool)

(assert (=> b!1846222 (= e!1179847 0)))

(declare-fun b!1846223 () Bool)

(assert (=> b!1846223 (= e!1179847 (+ 1 (size!16135 (t!172128 (t!172128 l!2946)))))))

(assert (= (and d!565121 c!301431) b!1846222))

(assert (= (and d!565121 (not c!301431)) b!1846223))

(assert (=> b!1846223 m!2274479))

(assert (=> d!565075 d!565121))

(declare-fun bs!409307 () Bool)

(declare-fun d!565123 () Bool)

(assert (= bs!409307 (and d!565123 b!1846102)))

(declare-fun lambda!72717 () Int)

(assert (=> bs!409307 (not (= lambda!72717 lambda!72698))))

(declare-fun bs!409308 () Bool)

(assert (= bs!409308 (and d!565123 d!565063)))

(assert (=> bs!409308 (= (= lambda!72712 lambda!72698) (= lambda!72717 lambda!72708))))

(declare-fun bs!409309 () Bool)

(assert (= bs!409309 (and d!565123 d!565069)))

(assert (=> bs!409309 (= (= lambda!72712 lambda!72698) (= lambda!72717 lambda!72709))))

(declare-fun bs!409310 () Bool)

(assert (= bs!409310 (and d!565123 d!565071)))

(assert (=> bs!409310 (not (= lambda!72717 lambda!72712))))

(assert (=> d!565123 true))

(assert (=> d!565123 (< (dynLambda!10140 order!13155 lambda!72712) (dynLambda!10140 order!13155 lambda!72717))))

(assert (=> d!565123 (= (exists!677 (t!172128 l!2946) lambda!72712) (not (forall!4385 (t!172128 l!2946) lambda!72717)))))

(declare-fun bs!409311 () Bool)

(assert (= bs!409311 d!565123))

(declare-fun m!2274537 () Bool)

(assert (=> bs!409311 m!2274537))

(assert (=> d!565071 d!565123))

(declare-fun bs!409314 () Bool)

(declare-fun d!565125 () Bool)

(assert (= bs!409314 (and d!565125 d!565063)))

(declare-fun lambda!72720 () Int)

(assert (=> bs!409314 (not (= lambda!72720 lambda!72708))))

(declare-fun bs!409315 () Bool)

(assert (= bs!409315 (and d!565125 b!1846102)))

(assert (=> bs!409315 (= lambda!72720 lambda!72698)))

(declare-fun bs!409316 () Bool)

(assert (= bs!409316 (and d!565125 d!565123)))

(assert (=> bs!409316 (not (= lambda!72720 lambda!72717))))

(declare-fun bs!409317 () Bool)

(assert (= bs!409317 (and d!565125 d!565071)))

(assert (=> bs!409317 (= lambda!72720 lambda!72712)))

(declare-fun bs!409318 () Bool)

(assert (= bs!409318 (and d!565125 d!565069)))

(assert (=> bs!409318 (not (= lambda!72720 lambda!72709))))

(assert (=> d!565125 true))

(assert (=> d!565125 true))

(assert (=> d!565125 (< (dynLambda!10139 order!13153 f!1069) (dynLambda!10140 order!13155 lambda!72720))))

(assert (=> d!565125 (exists!677 (t!172128 l!2946) lambda!72720)))

(assert (=> d!565125 true))

(declare-fun _$24!136 () Unit!35047)

(assert (=> d!565125 (= (choose!11614 (t!172128 l!2946) f!1069 a!855) _$24!136)))

(declare-fun bs!409319 () Bool)

(assert (= bs!409319 d!565125))

(declare-fun m!2274547 () Bool)

(assert (=> bs!409319 m!2274547))

(assert (=> d!565071 d!565125))

(assert (=> d!565071 d!565073))

(assert (=> d!565071 d!565075))

(declare-fun lt!714938 () Bool)

(declare-fun d!565137 () Bool)

(assert (=> d!565137 (= lt!714938 (select (content!3038 (t!172129 (map!4286 l!2946 f!1069))) a!855))))

(declare-fun e!1179855 () Bool)

(assert (=> d!565137 (= lt!714938 e!1179855)))

(declare-fun res!829029 () Bool)

(assert (=> d!565137 (=> (not res!829029) (not e!1179855))))

(assert (=> d!565137 (= res!829029 ((_ is Cons!20384) (t!172129 (map!4286 l!2946 f!1069))))))

(assert (=> d!565137 (= (contains!3754 (t!172129 (map!4286 l!2946 f!1069)) a!855) lt!714938)))

(declare-fun b!1846239 () Bool)

(declare-fun e!1179856 () Bool)

(assert (=> b!1846239 (= e!1179855 e!1179856)))

(declare-fun res!829028 () Bool)

(assert (=> b!1846239 (=> res!829028 e!1179856)))

(assert (=> b!1846239 (= res!829028 (= (h!25785 (t!172129 (map!4286 l!2946 f!1069))) a!855))))

(declare-fun b!1846240 () Bool)

(assert (=> b!1846240 (= e!1179856 (contains!3754 (t!172129 (t!172129 (map!4286 l!2946 f!1069))) a!855))))

(assert (= (and d!565137 res!829029) b!1846239))

(assert (= (and b!1846239 (not res!829028)) b!1846240))

(assert (=> d!565137 m!2274509))

(declare-fun m!2274549 () Bool)

(assert (=> d!565137 m!2274549))

(declare-fun m!2274551 () Bool)

(assert (=> b!1846240 m!2274551))

(assert (=> b!1846131 d!565137))

(declare-fun d!565139 () Bool)

(declare-fun c!301438 () Bool)

(assert (=> d!565139 (= c!301438 ((_ is Nil!20384) (map!4286 (t!172128 l!2946) f!1069)))))

(declare-fun e!1179857 () (InoxSet A!451))

(assert (=> d!565139 (= (content!3038 (map!4286 (t!172128 l!2946) f!1069)) e!1179857)))

(declare-fun b!1846241 () Bool)

(assert (=> b!1846241 (= e!1179857 ((as const (Array A!451 Bool)) false))))

(declare-fun b!1846242 () Bool)

(assert (=> b!1846242 (= e!1179857 ((_ map or) (store ((as const (Array A!451 Bool)) false) (h!25785 (map!4286 (t!172128 l!2946) f!1069)) true) (content!3038 (t!172129 (map!4286 (t!172128 l!2946) f!1069)))))))

(assert (= (and d!565139 c!301438) b!1846241))

(assert (= (and d!565139 (not c!301438)) b!1846242))

(declare-fun m!2274553 () Bool)

(assert (=> b!1846242 m!2274553))

(assert (=> b!1846242 m!2274517))

(assert (=> d!565073 d!565139))

(declare-fun b!1846243 () Bool)

(declare-fun e!1179858 () Bool)

(declare-fun tp!522023 () Bool)

(assert (=> b!1846243 (= e!1179858 (and tp_is_empty!8421 tp!522023))))

(assert (=> b!1846161 (= tp!522021 e!1179858)))

(assert (= (and b!1846161 ((_ is Cons!20383) (t!172128 (t!172128 l!2946)))) b!1846243))

(declare-fun b_lambda!61371 () Bool)

(assert (= b_lambda!61359 (or d!565069 b_lambda!61371)))

(declare-fun bs!409320 () Bool)

(declare-fun d!565141 () Bool)

(assert (= bs!409320 (and d!565141 d!565069)))

(assert (=> bs!409320 (= (dynLambda!10143 lambda!72709 (h!25784 (t!172128 l!2946))) (not (dynLambda!10143 lambda!72698 (h!25784 (t!172128 l!2946)))))))

(declare-fun b_lambda!61377 () Bool)

(assert (=> (not b_lambda!61377) (not bs!409320)))

(declare-fun m!2274555 () Bool)

(assert (=> bs!409320 m!2274555))

(assert (=> b!1846218 d!565141))

(declare-fun b_lambda!61373 () Bool)

(assert (= b_lambda!61357 (or d!565063 b_lambda!61373)))

(declare-fun bs!409321 () Bool)

(declare-fun d!565143 () Bool)

(assert (= bs!409321 (and d!565143 d!565063)))

(assert (=> bs!409321 (= (dynLambda!10143 lambda!72708 (h!25784 l!2946)) (not (dynLambda!10143 lambda!72698 (h!25784 l!2946))))))

(declare-fun b_lambda!61379 () Bool)

(assert (=> (not b_lambda!61379) (not bs!409321)))

(declare-fun m!2274557 () Bool)

(assert (=> bs!409321 m!2274557))

(assert (=> b!1846214 d!565143))

(declare-fun b_lambda!61375 () Bool)

(assert (= b_lambda!61351 (or (and start!184146 b_free!51597) b_lambda!61375)))

(check-sat (not b_next!52301) (not b_lambda!61345) b_and!143819 (not b!1846215) (not b!1846221) (not d!565087) (not d!565123) (not b!1846195) tp_is_empty!8421 (not b!1846169) (not b_lambda!61331) (not b_lambda!61373) (not b!1846219) (not b!1846205) (not b!1846242) (not b_lambda!61371) (not d!565109) (not d!565125) tp_is_empty!8423 (not b!1846240) (not b_lambda!61375) (not b!1846223) (not b_lambda!61377) (not b_lambda!61347) (not b!1846243) (not b_lambda!61379) (not b!1846183) (not b!1846203) (not d!565137))
(check-sat b_and!143819 (not b_next!52301))
