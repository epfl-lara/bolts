; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727610 () Bool)

(assert start!727610)

(declare-fun b_free!134389 () Bool)

(declare-fun b_next!135179 () Bool)

(assert (=> start!727610 (= b_free!134389 (not b_next!135179))))

(declare-fun tp!2179917 () Bool)

(declare-fun b_and!352069 () Bool)

(assert (=> start!727610 (= tp!2179917 b_and!352069)))

(declare-fun b!7510026 () Bool)

(declare-fun e!4478205 () Bool)

(declare-datatypes ((B!3925 0))(
  ( (B!3926 (val!30322 Int)) )
))
(declare-datatypes ((List!72616 0))(
  ( (Nil!72492) (Cons!72492 (h!78940 B!3925) (t!387233 List!72616)) )
))
(declare-fun l!2942 () List!72616)

(declare-fun lt!2637331 () B!3925)

(declare-fun contains!20878 (List!72616 B!3925) Bool)

(assert (=> b!7510026 (= e!4478205 (not (contains!20878 l!2942 lt!2637331)))))

(declare-fun b!7510027 () Bool)

(declare-fun e!4478208 () Bool)

(declare-fun tp_is_empty!49817 () Bool)

(declare-fun tp!2179918 () Bool)

(assert (=> b!7510027 (= e!4478208 (and tp_is_empty!49817 tp!2179918))))

(declare-fun b!7510028 () Bool)

(declare-fun e!4478207 () Bool)

(assert (=> b!7510028 (= e!4478207 e!4478205)))

(declare-fun res!3012989 () Bool)

(assert (=> b!7510028 (=> res!3012989 e!4478205)))

(declare-fun p!1842 () Int)

(declare-fun dynLambda!29829 (Int B!3925) Bool)

(assert (=> b!7510028 (= res!3012989 (not (dynLambda!29829 p!1842 lt!2637331)))))

(declare-fun getWitness!2495 (List!72616 Int) B!3925)

(assert (=> b!7510028 (= lt!2637331 (getWitness!2495 (t!387233 l!2942) p!1842))))

(declare-fun b!7510029 () Bool)

(declare-fun e!4478206 () Bool)

(assert (=> b!7510029 (= e!4478206 (not (dynLambda!29829 p!1842 (h!78940 l!2942))))))

(declare-fun res!3012985 () Bool)

(assert (=> start!727610 (=> (not res!3012985) (not e!4478207))))

(declare-fun exists!4927 (List!72616 Int) Bool)

(assert (=> start!727610 (= res!3012985 (exists!4927 l!2942 p!1842))))

(assert (=> start!727610 e!4478207))

(assert (=> start!727610 e!4478208))

(assert (=> start!727610 tp!2179917))

(declare-fun b!7510030 () Bool)

(declare-fun res!3012988 () Bool)

(assert (=> b!7510030 (=> (not res!3012988) (not e!4478207))))

(assert (=> b!7510030 (= res!3012988 e!4478206)))

(declare-fun res!3012987 () Bool)

(assert (=> b!7510030 (=> res!3012987 e!4478206)))

(get-info :version)

(assert (=> b!7510030 (= res!3012987 (not ((_ is Cons!72492) l!2942)))))

(declare-fun b!7510031 () Bool)

(declare-fun res!3012986 () Bool)

(assert (=> b!7510031 (=> (not res!3012986) (not e!4478207))))

(assert (=> b!7510031 (= res!3012986 ((_ is Cons!72492) l!2942))))

(assert (= (and start!727610 res!3012985) b!7510030))

(assert (= (and b!7510030 (not res!3012987)) b!7510029))

(assert (= (and b!7510030 res!3012988) b!7510031))

(assert (= (and b!7510031 res!3012986) b!7510028))

(assert (= (and b!7510028 (not res!3012989)) b!7510026))

(assert (= (and start!727610 ((_ is Cons!72492) l!2942)) b!7510027))

(declare-fun b_lambda!288065 () Bool)

(assert (=> (not b_lambda!288065) (not b!7510028)))

(declare-fun t!387230 () Bool)

(declare-fun tb!262495 () Bool)

(assert (=> (and start!727610 (= p!1842 p!1842) t!387230) tb!262495))

(declare-fun result!356278 () Bool)

(assert (=> tb!262495 (= result!356278 true)))

(assert (=> b!7510028 t!387230))

(declare-fun b_and!352071 () Bool)

(assert (= b_and!352069 (and (=> t!387230 result!356278) b_and!352071)))

(declare-fun b_lambda!288067 () Bool)

(assert (=> (not b_lambda!288067) (not b!7510029)))

(declare-fun t!387232 () Bool)

(declare-fun tb!262497 () Bool)

(assert (=> (and start!727610 (= p!1842 p!1842) t!387232) tb!262497))

(declare-fun result!356280 () Bool)

(assert (=> tb!262497 (= result!356280 true)))

(assert (=> b!7510029 t!387232))

(declare-fun b_and!352073 () Bool)

(assert (= b_and!352071 (and (=> t!387232 result!356280) b_and!352073)))

(declare-fun m!8093936 () Bool)

(assert (=> b!7510026 m!8093936))

(declare-fun m!8093938 () Bool)

(assert (=> b!7510028 m!8093938))

(declare-fun m!8093940 () Bool)

(assert (=> b!7510028 m!8093940))

(declare-fun m!8093942 () Bool)

(assert (=> b!7510029 m!8093942))

(declare-fun m!8093944 () Bool)

(assert (=> start!727610 m!8093944))

(check-sat (not b_lambda!288065) (not b!7510027) (not b!7510028) tp_is_empty!49817 (not b!7510026) b_and!352073 (not b_lambda!288067) (not start!727610) (not b_next!135179))
(check-sat b_and!352073 (not b_next!135179))
(get-model)

(declare-fun b_lambda!288073 () Bool)

(assert (= b_lambda!288067 (or (and start!727610 b_free!134389) b_lambda!288073)))

(declare-fun b_lambda!288075 () Bool)

(assert (= b_lambda!288065 (or (and start!727610 b_free!134389) b_lambda!288075)))

(check-sat (not b!7510027) (not b_lambda!288075) b_and!352073 (not b!7510028) (not b_lambda!288073) tp_is_empty!49817 (not b!7510026) (not start!727610) (not b_next!135179))
(check-sat b_and!352073 (not b_next!135179))
(get-model)

(declare-fun d!2306245 () Bool)

(assert (=> d!2306245 true))

(declare-fun order!29713 () Int)

(declare-fun lambda!466158 () Int)

(declare-fun dynLambda!29830 (Int Int) Int)

(assert (=> d!2306245 (< (dynLambda!29830 order!29713 p!1842) (dynLambda!29830 order!29713 lambda!466158))))

(declare-fun forall!18370 (List!72616 Int) Bool)

(assert (=> d!2306245 (= (exists!4927 l!2942 p!1842) (not (forall!18370 l!2942 lambda!466158)))))

(declare-fun bs!1939102 () Bool)

(assert (= bs!1939102 d!2306245))

(declare-fun m!8093946 () Bool)

(assert (=> bs!1939102 m!8093946))

(assert (=> start!727610 d!2306245))

(declare-fun b!7510070 () Bool)

(declare-datatypes ((Unit!166516 0))(
  ( (Unit!166517) )
))
(declare-fun lt!2637345 () Unit!166516)

(declare-fun Unit!166518 () Unit!166516)

(assert (=> b!7510070 (= lt!2637345 Unit!166518)))

(assert (=> b!7510070 false))

(declare-fun e!4478237 () B!3925)

(declare-fun head!15441 (List!72616) B!3925)

(assert (=> b!7510070 (= e!4478237 (head!15441 (t!387233 l!2942)))))

(declare-fun b!7510071 () Bool)

(assert (=> b!7510071 (= e!4478237 (getWitness!2495 (t!387233 (t!387233 l!2942)) p!1842))))

(declare-fun d!2306247 () Bool)

(declare-fun e!4478236 () Bool)

(assert (=> d!2306247 e!4478236))

(declare-fun res!3013007 () Bool)

(assert (=> d!2306247 (=> (not res!3013007) (not e!4478236))))

(declare-fun lt!2637346 () B!3925)

(assert (=> d!2306247 (= res!3013007 (dynLambda!29829 p!1842 lt!2637346))))

(declare-fun e!4478235 () B!3925)

(assert (=> d!2306247 (= lt!2637346 e!4478235)))

(declare-fun c!1386857 () Bool)

(declare-fun e!4478238 () Bool)

(assert (=> d!2306247 (= c!1386857 e!4478238)))

(declare-fun res!3013006 () Bool)

(assert (=> d!2306247 (=> (not res!3013006) (not e!4478238))))

(assert (=> d!2306247 (= res!3013006 ((_ is Cons!72492) (t!387233 l!2942)))))

(assert (=> d!2306247 (exists!4927 (t!387233 l!2942) p!1842)))

(assert (=> d!2306247 (= (getWitness!2495 (t!387233 l!2942) p!1842) lt!2637346)))

(declare-fun b!7510072 () Bool)

(assert (=> b!7510072 (= e!4478235 e!4478237)))

(declare-fun c!1386856 () Bool)

(assert (=> b!7510072 (= c!1386856 ((_ is Cons!72492) (t!387233 l!2942)))))

(declare-fun b!7510073 () Bool)

(assert (=> b!7510073 (= e!4478236 (contains!20878 (t!387233 l!2942) lt!2637346))))

(declare-fun b!7510074 () Bool)

(assert (=> b!7510074 (= e!4478238 (dynLambda!29829 p!1842 (h!78940 (t!387233 l!2942))))))

(declare-fun b!7510075 () Bool)

(assert (=> b!7510075 (= e!4478235 (h!78940 (t!387233 l!2942)))))

(assert (= (and d!2306247 res!3013006) b!7510074))

(assert (= (and d!2306247 c!1386857) b!7510075))

(assert (= (and d!2306247 (not c!1386857)) b!7510072))

(assert (= (and b!7510072 c!1386856) b!7510071))

(assert (= (and b!7510072 (not c!1386856)) b!7510070))

(assert (= (and d!2306247 res!3013007) b!7510073))

(declare-fun b_lambda!288081 () Bool)

(assert (=> (not b_lambda!288081) (not d!2306247)))

(declare-fun t!387239 () Bool)

(declare-fun tb!262503 () Bool)

(assert (=> (and start!727610 (= p!1842 p!1842) t!387239) tb!262503))

(declare-fun result!356286 () Bool)

(assert (=> tb!262503 (= result!356286 true)))

(assert (=> d!2306247 t!387239))

(declare-fun b_and!352079 () Bool)

(assert (= b_and!352073 (and (=> t!387239 result!356286) b_and!352079)))

(declare-fun b_lambda!288083 () Bool)

(assert (=> (not b_lambda!288083) (not b!7510074)))

(declare-fun t!387241 () Bool)

(declare-fun tb!262505 () Bool)

(assert (=> (and start!727610 (= p!1842 p!1842) t!387241) tb!262505))

(declare-fun result!356288 () Bool)

(assert (=> tb!262505 (= result!356288 true)))

(assert (=> b!7510074 t!387241))

(declare-fun b_and!352081 () Bool)

(assert (= b_and!352079 (and (=> t!387241 result!356288) b_and!352081)))

(declare-fun m!8093966 () Bool)

(assert (=> b!7510074 m!8093966))

(declare-fun m!8093968 () Bool)

(assert (=> b!7510073 m!8093968))

(declare-fun m!8093970 () Bool)

(assert (=> b!7510070 m!8093970))

(declare-fun m!8093972 () Bool)

(assert (=> b!7510071 m!8093972))

(declare-fun m!8093974 () Bool)

(assert (=> d!2306247 m!8093974))

(declare-fun m!8093976 () Bool)

(assert (=> d!2306247 m!8093976))

(assert (=> b!7510028 d!2306247))

(declare-fun d!2306253 () Bool)

(declare-fun lt!2637349 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15336 (List!72616) (InoxSet B!3925))

(assert (=> d!2306253 (= lt!2637349 (select (content!15336 l!2942) lt!2637331))))

(declare-fun e!4478247 () Bool)

(assert (=> d!2306253 (= lt!2637349 e!4478247)))

(declare-fun res!3013012 () Bool)

(assert (=> d!2306253 (=> (not res!3013012) (not e!4478247))))

(assert (=> d!2306253 (= res!3013012 ((_ is Cons!72492) l!2942))))

(assert (=> d!2306253 (= (contains!20878 l!2942 lt!2637331) lt!2637349)))

(declare-fun b!7510087 () Bool)

(declare-fun e!4478246 () Bool)

(assert (=> b!7510087 (= e!4478247 e!4478246)))

(declare-fun res!3013013 () Bool)

(assert (=> b!7510087 (=> res!3013013 e!4478246)))

(assert (=> b!7510087 (= res!3013013 (= (h!78940 l!2942) lt!2637331))))

(declare-fun b!7510088 () Bool)

(assert (=> b!7510088 (= e!4478246 (contains!20878 (t!387233 l!2942) lt!2637331))))

(assert (= (and d!2306253 res!3013012) b!7510087))

(assert (= (and b!7510087 (not res!3013013)) b!7510088))

(declare-fun m!8093980 () Bool)

(assert (=> d!2306253 m!8093980))

(declare-fun m!8093982 () Bool)

(assert (=> d!2306253 m!8093982))

(declare-fun m!8093984 () Bool)

(assert (=> b!7510088 m!8093984))

(assert (=> b!7510026 d!2306253))

(declare-fun b!7510093 () Bool)

(declare-fun e!4478250 () Bool)

(declare-fun tp!2179924 () Bool)

(assert (=> b!7510093 (= e!4478250 (and tp_is_empty!49817 tp!2179924))))

(assert (=> b!7510027 (= tp!2179918 e!4478250)))

(assert (= (and b!7510027 ((_ is Cons!72492) (t!387233 l!2942))) b!7510093))

(declare-fun b_lambda!288093 () Bool)

(assert (= b_lambda!288081 (or (and start!727610 b_free!134389) b_lambda!288093)))

(declare-fun b_lambda!288095 () Bool)

(assert (= b_lambda!288083 (or (and start!727610 b_free!134389) b_lambda!288095)))

(check-sat (not b_lambda!288093) (not b!7510088) (not b_next!135179) (not b!7510093) (not b_lambda!288073) (not d!2306247) (not b!7510070) (not d!2306245) (not b_lambda!288095) tp_is_empty!49817 (not b!7510071) (not d!2306253) (not b_lambda!288075) (not b!7510073) b_and!352081)
(check-sat b_and!352081 (not b_next!135179))
