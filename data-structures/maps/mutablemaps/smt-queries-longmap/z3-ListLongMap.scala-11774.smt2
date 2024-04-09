; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138288 () Bool)

(assert start!138288)

(declare-fun b!1585369 () Bool)

(declare-fun res!1082835 () Bool)

(declare-fun e!885175 () Bool)

(assert (=> b!1585369 (=> res!1082835 e!885175)))

(declare-datatypes ((B!2986 0))(
  ( (B!2987 (val!19855 Int)) )
))
(declare-datatypes ((tuple2!26042 0))(
  ( (tuple2!26043 (_1!13031 (_ BitVec 64)) (_2!13031 B!2986)) )
))
(declare-datatypes ((List!37136 0))(
  ( (Nil!37133) (Cons!37132 (h!38676 tuple2!26042) (t!52063 List!37136)) )
))
(declare-fun lt!677308 () List!37136)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1008 (List!37136 (_ BitVec 64)) Bool)

(assert (=> b!1585369 (= res!1082835 (not (containsKey!1008 lt!677308 newKey!21)))))

(declare-fun res!1082834 () Bool)

(declare-fun e!885177 () Bool)

(assert (=> start!138288 (=> (not res!1082834) (not e!885177))))

(declare-fun l!556 () List!37136)

(declare-fun isStrictlySorted!1195 (List!37136) Bool)

(assert (=> start!138288 (= res!1082834 (isStrictlySorted!1195 l!556))))

(assert (=> start!138288 e!885177))

(declare-fun e!885176 () Bool)

(assert (=> start!138288 e!885176))

(assert (=> start!138288 true))

(declare-fun tp_is_empty!39519 () Bool)

(assert (=> start!138288 tp_is_empty!39519))

(declare-fun b!1585370 () Bool)

(declare-fun tp!115267 () Bool)

(assert (=> b!1585370 (= e!885176 (and tp_is_empty!39519 tp!115267))))

(declare-fun newValue!21 () B!2986)

(declare-fun b!1585371 () Bool)

(declare-fun contains!10550 (List!37136 tuple2!26042) Bool)

(assert (=> b!1585371 (= e!885175 (not (contains!10550 lt!677308 (tuple2!26043 newKey!21 newValue!21))))))

(declare-fun b!1585372 () Bool)

(declare-fun res!1082836 () Bool)

(assert (=> b!1585372 (=> (not res!1082836) (not e!885177))))

(get-info :version)

(assert (=> b!1585372 (= res!1082836 (and ((_ is Cons!37132) l!556) (bvslt (_1!13031 (h!38676 l!556)) newKey!21)))))

(declare-fun b!1585373 () Bool)

(assert (=> b!1585373 (= e!885177 e!885175)))

(declare-fun res!1082837 () Bool)

(assert (=> b!1585373 (=> res!1082837 e!885175)))

(assert (=> b!1585373 (= res!1082837 (not (isStrictlySorted!1195 lt!677308)))))

(declare-fun $colon$colon!1041 (List!37136 tuple2!26042) List!37136)

(declare-fun insertStrictlySorted!635 (List!37136 (_ BitVec 64) B!2986) List!37136)

(assert (=> b!1585373 (= lt!677308 ($colon$colon!1041 (insertStrictlySorted!635 (t!52063 l!556) newKey!21 newValue!21) (h!38676 l!556)))))

(assert (= (and start!138288 res!1082834) b!1585372))

(assert (= (and b!1585372 res!1082836) b!1585373))

(assert (= (and b!1585373 (not res!1082837)) b!1585369))

(assert (= (and b!1585369 (not res!1082835)) b!1585371))

(assert (= (and start!138288 ((_ is Cons!37132) l!556)) b!1585370))

(declare-fun m!1454235 () Bool)

(assert (=> b!1585369 m!1454235))

(declare-fun m!1454237 () Bool)

(assert (=> start!138288 m!1454237))

(declare-fun m!1454239 () Bool)

(assert (=> b!1585371 m!1454239))

(declare-fun m!1454241 () Bool)

(assert (=> b!1585373 m!1454241))

(declare-fun m!1454243 () Bool)

(assert (=> b!1585373 m!1454243))

(assert (=> b!1585373 m!1454243))

(declare-fun m!1454245 () Bool)

(assert (=> b!1585373 m!1454245))

(check-sat (not b!1585371) (not start!138288) tp_is_empty!39519 (not b!1585370) (not b!1585373) (not b!1585369))
(check-sat)
(get-model)

(declare-fun d!167661 () Bool)

(declare-fun res!1082854 () Bool)

(declare-fun e!885191 () Bool)

(assert (=> d!167661 (=> res!1082854 e!885191)))

(assert (=> d!167661 (= res!1082854 (or ((_ is Nil!37133) lt!677308) ((_ is Nil!37133) (t!52063 lt!677308))))))

(assert (=> d!167661 (= (isStrictlySorted!1195 lt!677308) e!885191)))

(declare-fun b!1585393 () Bool)

(declare-fun e!885192 () Bool)

(assert (=> b!1585393 (= e!885191 e!885192)))

(declare-fun res!1082855 () Bool)

(assert (=> b!1585393 (=> (not res!1082855) (not e!885192))))

(assert (=> b!1585393 (= res!1082855 (bvslt (_1!13031 (h!38676 lt!677308)) (_1!13031 (h!38676 (t!52063 lt!677308)))))))

(declare-fun b!1585394 () Bool)

(assert (=> b!1585394 (= e!885192 (isStrictlySorted!1195 (t!52063 lt!677308)))))

(assert (= (and d!167661 (not res!1082854)) b!1585393))

(assert (= (and b!1585393 res!1082855) b!1585394))

(declare-fun m!1454259 () Bool)

(assert (=> b!1585394 m!1454259))

(assert (=> b!1585373 d!167661))

(declare-fun d!167663 () Bool)

(assert (=> d!167663 (= ($colon$colon!1041 (insertStrictlySorted!635 (t!52063 l!556) newKey!21 newValue!21) (h!38676 l!556)) (Cons!37132 (h!38676 l!556) (insertStrictlySorted!635 (t!52063 l!556) newKey!21 newValue!21)))))

(assert (=> b!1585373 d!167663))

(declare-fun d!167667 () Bool)

(declare-fun e!885229 () Bool)

(assert (=> d!167667 e!885229))

(declare-fun res!1082885 () Bool)

(assert (=> d!167667 (=> (not res!1082885) (not e!885229))))

(declare-fun lt!677317 () List!37136)

(assert (=> d!167667 (= res!1082885 (isStrictlySorted!1195 lt!677317))))

(declare-fun e!885231 () List!37136)

(assert (=> d!167667 (= lt!677317 e!885231)))

(declare-fun c!146936 () Bool)

(assert (=> d!167667 (= c!146936 (and ((_ is Cons!37132) (t!52063 l!556)) (bvslt (_1!13031 (h!38676 (t!52063 l!556))) newKey!21)))))

(assert (=> d!167667 (isStrictlySorted!1195 (t!52063 l!556))))

(assert (=> d!167667 (= (insertStrictlySorted!635 (t!52063 l!556) newKey!21 newValue!21) lt!677317)))

(declare-fun b!1585439 () Bool)

(declare-fun e!885228 () List!37136)

(assert (=> b!1585439 (= e!885231 e!885228)))

(declare-fun c!146937 () Bool)

(assert (=> b!1585439 (= c!146937 (and ((_ is Cons!37132) (t!52063 l!556)) (= (_1!13031 (h!38676 (t!52063 l!556))) newKey!21)))))

(declare-fun b!1585440 () Bool)

(declare-fun e!885227 () List!37136)

(declare-fun c!146934 () Bool)

(assert (=> b!1585440 (= e!885227 (ite c!146937 (t!52063 (t!52063 l!556)) (ite c!146934 (Cons!37132 (h!38676 (t!52063 l!556)) (t!52063 (t!52063 l!556))) Nil!37133)))))

(declare-fun b!1585441 () Bool)

(declare-fun res!1082884 () Bool)

(assert (=> b!1585441 (=> (not res!1082884) (not e!885229))))

(assert (=> b!1585441 (= res!1082884 (containsKey!1008 lt!677317 newKey!21))))

(declare-fun b!1585442 () Bool)

(declare-fun call!72629 () List!37136)

(assert (=> b!1585442 (= e!885231 call!72629)))

(declare-fun b!1585443 () Bool)

(declare-fun call!72628 () List!37136)

(assert (=> b!1585443 (= e!885228 call!72628)))

(declare-fun bm!72624 () Bool)

(declare-fun call!72627 () List!37136)

(assert (=> bm!72624 (= call!72627 call!72628)))

(declare-fun b!1585444 () Bool)

(assert (=> b!1585444 (= e!885229 (contains!10550 lt!677317 (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun b!1585445 () Bool)

(declare-fun e!885230 () List!37136)

(assert (=> b!1585445 (= e!885230 call!72627)))

(declare-fun bm!72625 () Bool)

(assert (=> bm!72625 (= call!72629 ($colon$colon!1041 e!885227 (ite c!146936 (h!38676 (t!52063 l!556)) (tuple2!26043 newKey!21 newValue!21))))))

(declare-fun c!146935 () Bool)

(assert (=> bm!72625 (= c!146935 c!146936)))

(declare-fun bm!72626 () Bool)

(assert (=> bm!72626 (= call!72628 call!72629)))

(declare-fun b!1585446 () Bool)

(assert (=> b!1585446 (= e!885227 (insertStrictlySorted!635 (t!52063 (t!52063 l!556)) newKey!21 newValue!21))))

(declare-fun b!1585447 () Bool)

(assert (=> b!1585447 (= c!146934 (and ((_ is Cons!37132) (t!52063 l!556)) (bvsgt (_1!13031 (h!38676 (t!52063 l!556))) newKey!21)))))

(assert (=> b!1585447 (= e!885228 e!885230)))

(declare-fun b!1585448 () Bool)

(assert (=> b!1585448 (= e!885230 call!72627)))

(assert (= (and d!167667 c!146936) b!1585442))

(assert (= (and d!167667 (not c!146936)) b!1585439))

(assert (= (and b!1585439 c!146937) b!1585443))

(assert (= (and b!1585439 (not c!146937)) b!1585447))

(assert (= (and b!1585447 c!146934) b!1585448))

(assert (= (and b!1585447 (not c!146934)) b!1585445))

(assert (= (or b!1585448 b!1585445) bm!72624))

(assert (= (or b!1585443 bm!72624) bm!72626))

(assert (= (or b!1585442 bm!72626) bm!72625))

(assert (= (and bm!72625 c!146935) b!1585446))

(assert (= (and bm!72625 (not c!146935)) b!1585440))

(assert (= (and d!167667 res!1082885) b!1585441))

(assert (= (and b!1585441 res!1082884) b!1585444))

(declare-fun m!1454273 () Bool)

(assert (=> b!1585446 m!1454273))

(declare-fun m!1454275 () Bool)

(assert (=> b!1585441 m!1454275))

(declare-fun m!1454277 () Bool)

(assert (=> bm!72625 m!1454277))

(declare-fun m!1454279 () Bool)

(assert (=> d!167667 m!1454279))

(declare-fun m!1454281 () Bool)

(assert (=> d!167667 m!1454281))

(declare-fun m!1454283 () Bool)

(assert (=> b!1585444 m!1454283))

(assert (=> b!1585373 d!167667))

(declare-fun d!167683 () Bool)

(declare-fun res!1082890 () Bool)

(declare-fun e!885244 () Bool)

(assert (=> d!167683 (=> res!1082890 e!885244)))

(assert (=> d!167683 (= res!1082890 (and ((_ is Cons!37132) lt!677308) (= (_1!13031 (h!38676 lt!677308)) newKey!21)))))

(assert (=> d!167683 (= (containsKey!1008 lt!677308 newKey!21) e!885244)))

(declare-fun b!1585469 () Bool)

(declare-fun e!885245 () Bool)

(assert (=> b!1585469 (= e!885244 e!885245)))

(declare-fun res!1082891 () Bool)

(assert (=> b!1585469 (=> (not res!1082891) (not e!885245))))

(assert (=> b!1585469 (= res!1082891 (and (or (not ((_ is Cons!37132) lt!677308)) (bvsle (_1!13031 (h!38676 lt!677308)) newKey!21)) ((_ is Cons!37132) lt!677308) (bvslt (_1!13031 (h!38676 lt!677308)) newKey!21)))))

(declare-fun b!1585470 () Bool)

(assert (=> b!1585470 (= e!885245 (containsKey!1008 (t!52063 lt!677308) newKey!21))))

(assert (= (and d!167683 (not res!1082890)) b!1585469))

(assert (= (and b!1585469 res!1082891) b!1585470))

(declare-fun m!1454285 () Bool)

(assert (=> b!1585470 m!1454285))

(assert (=> b!1585369 d!167683))

(declare-fun d!167685 () Bool)

(declare-fun res!1082892 () Bool)

(declare-fun e!885249 () Bool)

(assert (=> d!167685 (=> res!1082892 e!885249)))

(assert (=> d!167685 (= res!1082892 (or ((_ is Nil!37133) l!556) ((_ is Nil!37133) (t!52063 l!556))))))

(assert (=> d!167685 (= (isStrictlySorted!1195 l!556) e!885249)))

(declare-fun b!1585479 () Bool)

(declare-fun e!885251 () Bool)

(assert (=> b!1585479 (= e!885249 e!885251)))

(declare-fun res!1082893 () Bool)

(assert (=> b!1585479 (=> (not res!1082893) (not e!885251))))

(assert (=> b!1585479 (= res!1082893 (bvslt (_1!13031 (h!38676 l!556)) (_1!13031 (h!38676 (t!52063 l!556)))))))

(declare-fun b!1585480 () Bool)

(assert (=> b!1585480 (= e!885251 (isStrictlySorted!1195 (t!52063 l!556)))))

(assert (= (and d!167685 (not res!1082892)) b!1585479))

(assert (= (and b!1585479 res!1082893) b!1585480))

(assert (=> b!1585480 m!1454281))

(assert (=> start!138288 d!167685))

(declare-fun lt!677325 () Bool)

(declare-fun d!167687 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!869 (List!37136) (InoxSet tuple2!26042))

(assert (=> d!167687 (= lt!677325 (select (content!869 lt!677308) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun e!885266 () Bool)

(assert (=> d!167687 (= lt!677325 e!885266)))

(declare-fun res!1082909 () Bool)

(assert (=> d!167687 (=> (not res!1082909) (not e!885266))))

(assert (=> d!167687 (= res!1082909 ((_ is Cons!37132) lt!677308))))

(assert (=> d!167687 (= (contains!10550 lt!677308 (tuple2!26043 newKey!21 newValue!21)) lt!677325)))

(declare-fun b!1585501 () Bool)

(declare-fun e!885268 () Bool)

(assert (=> b!1585501 (= e!885266 e!885268)))

(declare-fun res!1082908 () Bool)

(assert (=> b!1585501 (=> res!1082908 e!885268)))

(assert (=> b!1585501 (= res!1082908 (= (h!38676 lt!677308) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun b!1585503 () Bool)

(assert (=> b!1585503 (= e!885268 (contains!10550 (t!52063 lt!677308) (tuple2!26043 newKey!21 newValue!21)))))

(assert (= (and d!167687 res!1082909) b!1585501))

(assert (= (and b!1585501 (not res!1082908)) b!1585503))

(declare-fun m!1454287 () Bool)

(assert (=> d!167687 m!1454287))

(declare-fun m!1454289 () Bool)

(assert (=> d!167687 m!1454289))

(declare-fun m!1454291 () Bool)

(assert (=> b!1585503 m!1454291))

(assert (=> b!1585371 d!167687))

(declare-fun b!1585517 () Bool)

(declare-fun e!885273 () Bool)

(declare-fun tp!115273 () Bool)

(assert (=> b!1585517 (= e!885273 (and tp_is_empty!39519 tp!115273))))

(assert (=> b!1585370 (= tp!115267 e!885273)))

(assert (= (and b!1585370 ((_ is Cons!37132) (t!52063 l!556))) b!1585517))

(check-sat (not d!167667) (not b!1585444) (not b!1585446) (not b!1585394) (not b!1585517) (not b!1585480) (not b!1585441) (not d!167687) (not b!1585503) (not b!1585470) tp_is_empty!39519 (not bm!72625))
(check-sat)
(get-model)

(declare-fun d!167697 () Bool)

(declare-fun res!1082928 () Bool)

(declare-fun e!885301 () Bool)

(assert (=> d!167697 (=> res!1082928 e!885301)))

(assert (=> d!167697 (= res!1082928 (or ((_ is Nil!37133) lt!677317) ((_ is Nil!37133) (t!52063 lt!677317))))))

(assert (=> d!167697 (= (isStrictlySorted!1195 lt!677317) e!885301)))

(declare-fun b!1585554 () Bool)

(declare-fun e!885302 () Bool)

(assert (=> b!1585554 (= e!885301 e!885302)))

(declare-fun res!1082929 () Bool)

(assert (=> b!1585554 (=> (not res!1082929) (not e!885302))))

(assert (=> b!1585554 (= res!1082929 (bvslt (_1!13031 (h!38676 lt!677317)) (_1!13031 (h!38676 (t!52063 lt!677317)))))))

(declare-fun b!1585555 () Bool)

(assert (=> b!1585555 (= e!885302 (isStrictlySorted!1195 (t!52063 lt!677317)))))

(assert (= (and d!167697 (not res!1082928)) b!1585554))

(assert (= (and b!1585554 res!1082929) b!1585555))

(declare-fun m!1454325 () Bool)

(assert (=> b!1585555 m!1454325))

(assert (=> d!167667 d!167697))

(declare-fun d!167699 () Bool)

(declare-fun res!1082930 () Bool)

(declare-fun e!885303 () Bool)

(assert (=> d!167699 (=> res!1082930 e!885303)))

(assert (=> d!167699 (= res!1082930 (or ((_ is Nil!37133) (t!52063 l!556)) ((_ is Nil!37133) (t!52063 (t!52063 l!556)))))))

(assert (=> d!167699 (= (isStrictlySorted!1195 (t!52063 l!556)) e!885303)))

(declare-fun b!1585556 () Bool)

(declare-fun e!885304 () Bool)

(assert (=> b!1585556 (= e!885303 e!885304)))

(declare-fun res!1082931 () Bool)

(assert (=> b!1585556 (=> (not res!1082931) (not e!885304))))

(assert (=> b!1585556 (= res!1082931 (bvslt (_1!13031 (h!38676 (t!52063 l!556))) (_1!13031 (h!38676 (t!52063 (t!52063 l!556))))))))

(declare-fun b!1585557 () Bool)

(assert (=> b!1585557 (= e!885304 (isStrictlySorted!1195 (t!52063 (t!52063 l!556))))))

(assert (= (and d!167699 (not res!1082930)) b!1585556))

(assert (= (and b!1585556 res!1082931) b!1585557))

(declare-fun m!1454327 () Bool)

(assert (=> b!1585557 m!1454327))

(assert (=> d!167667 d!167699))

(declare-fun d!167705 () Bool)

(assert (=> d!167705 (= ($colon$colon!1041 e!885227 (ite c!146936 (h!38676 (t!52063 l!556)) (tuple2!26043 newKey!21 newValue!21))) (Cons!37132 (ite c!146936 (h!38676 (t!52063 l!556)) (tuple2!26043 newKey!21 newValue!21)) e!885227))))

(assert (=> bm!72625 d!167705))

(declare-fun d!167707 () Bool)

(declare-fun res!1082934 () Bool)

(declare-fun e!885310 () Bool)

(assert (=> d!167707 (=> res!1082934 e!885310)))

(assert (=> d!167707 (= res!1082934 (and ((_ is Cons!37132) lt!677317) (= (_1!13031 (h!38676 lt!677317)) newKey!21)))))

(assert (=> d!167707 (= (containsKey!1008 lt!677317 newKey!21) e!885310)))

(declare-fun b!1585568 () Bool)

(declare-fun e!885311 () Bool)

(assert (=> b!1585568 (= e!885310 e!885311)))

(declare-fun res!1082935 () Bool)

(assert (=> b!1585568 (=> (not res!1082935) (not e!885311))))

(assert (=> b!1585568 (= res!1082935 (and (or (not ((_ is Cons!37132) lt!677317)) (bvsle (_1!13031 (h!38676 lt!677317)) newKey!21)) ((_ is Cons!37132) lt!677317) (bvslt (_1!13031 (h!38676 lt!677317)) newKey!21)))))

(declare-fun b!1585569 () Bool)

(assert (=> b!1585569 (= e!885311 (containsKey!1008 (t!52063 lt!677317) newKey!21))))

(assert (= (and d!167707 (not res!1082934)) b!1585568))

(assert (= (and b!1585568 res!1082935) b!1585569))

(declare-fun m!1454329 () Bool)

(assert (=> b!1585569 m!1454329))

(assert (=> b!1585441 d!167707))

(declare-fun d!167709 () Bool)

(declare-fun c!146968 () Bool)

(assert (=> d!167709 (= c!146968 ((_ is Nil!37133) lt!677308))))

(declare-fun e!885324 () (InoxSet tuple2!26042))

(assert (=> d!167709 (= (content!869 lt!677308) e!885324)))

(declare-fun b!1585584 () Bool)

(assert (=> b!1585584 (= e!885324 ((as const (Array tuple2!26042 Bool)) false))))

(declare-fun b!1585585 () Bool)

(assert (=> b!1585585 (= e!885324 ((_ map or) (store ((as const (Array tuple2!26042 Bool)) false) (h!38676 lt!677308) true) (content!869 (t!52063 lt!677308))))))

(assert (= (and d!167709 c!146968) b!1585584))

(assert (= (and d!167709 (not c!146968)) b!1585585))

(declare-fun m!1454355 () Bool)

(assert (=> b!1585585 m!1454355))

(declare-fun m!1454357 () Bool)

(assert (=> b!1585585 m!1454357))

(assert (=> d!167687 d!167709))

(assert (=> b!1585480 d!167699))

(declare-fun lt!677333 () Bool)

(declare-fun d!167723 () Bool)

(assert (=> d!167723 (= lt!677333 (select (content!869 (t!52063 lt!677308)) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun e!885327 () Bool)

(assert (=> d!167723 (= lt!677333 e!885327)))

(declare-fun res!1082949 () Bool)

(assert (=> d!167723 (=> (not res!1082949) (not e!885327))))

(assert (=> d!167723 (= res!1082949 ((_ is Cons!37132) (t!52063 lt!677308)))))

(assert (=> d!167723 (= (contains!10550 (t!52063 lt!677308) (tuple2!26043 newKey!21 newValue!21)) lt!677333)))

(declare-fun b!1585588 () Bool)

(declare-fun e!885328 () Bool)

(assert (=> b!1585588 (= e!885327 e!885328)))

(declare-fun res!1082948 () Bool)

(assert (=> b!1585588 (=> res!1082948 e!885328)))

(assert (=> b!1585588 (= res!1082948 (= (h!38676 (t!52063 lt!677308)) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun b!1585589 () Bool)

(assert (=> b!1585589 (= e!885328 (contains!10550 (t!52063 (t!52063 lt!677308)) (tuple2!26043 newKey!21 newValue!21)))))

(assert (= (and d!167723 res!1082949) b!1585588))

(assert (= (and b!1585588 (not res!1082948)) b!1585589))

(assert (=> d!167723 m!1454357))

(declare-fun m!1454365 () Bool)

(assert (=> d!167723 m!1454365))

(declare-fun m!1454369 () Bool)

(assert (=> b!1585589 m!1454369))

(assert (=> b!1585503 d!167723))

(declare-fun d!167729 () Bool)

(declare-fun e!885333 () Bool)

(assert (=> d!167729 e!885333))

(declare-fun res!1082953 () Bool)

(assert (=> d!167729 (=> (not res!1082953) (not e!885333))))

(declare-fun lt!677334 () List!37136)

(assert (=> d!167729 (= res!1082953 (isStrictlySorted!1195 lt!677334))))

(declare-fun e!885335 () List!37136)

(assert (=> d!167729 (= lt!677334 e!885335)))

(declare-fun c!146971 () Bool)

(assert (=> d!167729 (= c!146971 (and ((_ is Cons!37132) (t!52063 (t!52063 l!556))) (bvslt (_1!13031 (h!38676 (t!52063 (t!52063 l!556)))) newKey!21)))))

(assert (=> d!167729 (isStrictlySorted!1195 (t!52063 (t!52063 l!556)))))

(assert (=> d!167729 (= (insertStrictlySorted!635 (t!52063 (t!52063 l!556)) newKey!21 newValue!21) lt!677334)))

(declare-fun b!1585592 () Bool)

(declare-fun e!885332 () List!37136)

(assert (=> b!1585592 (= e!885335 e!885332)))

(declare-fun c!146972 () Bool)

(assert (=> b!1585592 (= c!146972 (and ((_ is Cons!37132) (t!52063 (t!52063 l!556))) (= (_1!13031 (h!38676 (t!52063 (t!52063 l!556)))) newKey!21)))))

(declare-fun c!146969 () Bool)

(declare-fun e!885331 () List!37136)

(declare-fun b!1585593 () Bool)

(assert (=> b!1585593 (= e!885331 (ite c!146972 (t!52063 (t!52063 (t!52063 l!556))) (ite c!146969 (Cons!37132 (h!38676 (t!52063 (t!52063 l!556))) (t!52063 (t!52063 (t!52063 l!556)))) Nil!37133)))))

(declare-fun b!1585594 () Bool)

(declare-fun res!1082952 () Bool)

(assert (=> b!1585594 (=> (not res!1082952) (not e!885333))))

(assert (=> b!1585594 (= res!1082952 (containsKey!1008 lt!677334 newKey!21))))

(declare-fun b!1585595 () Bool)

(declare-fun call!72653 () List!37136)

(assert (=> b!1585595 (= e!885335 call!72653)))

(declare-fun b!1585596 () Bool)

(declare-fun call!72652 () List!37136)

(assert (=> b!1585596 (= e!885332 call!72652)))

(declare-fun bm!72648 () Bool)

(declare-fun call!72651 () List!37136)

(assert (=> bm!72648 (= call!72651 call!72652)))

(declare-fun b!1585597 () Bool)

(assert (=> b!1585597 (= e!885333 (contains!10550 lt!677334 (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun b!1585598 () Bool)

(declare-fun e!885334 () List!37136)

(assert (=> b!1585598 (= e!885334 call!72651)))

(declare-fun bm!72649 () Bool)

(assert (=> bm!72649 (= call!72653 ($colon$colon!1041 e!885331 (ite c!146971 (h!38676 (t!52063 (t!52063 l!556))) (tuple2!26043 newKey!21 newValue!21))))))

(declare-fun c!146970 () Bool)

(assert (=> bm!72649 (= c!146970 c!146971)))

(declare-fun bm!72650 () Bool)

(assert (=> bm!72650 (= call!72652 call!72653)))

(declare-fun b!1585599 () Bool)

(assert (=> b!1585599 (= e!885331 (insertStrictlySorted!635 (t!52063 (t!52063 (t!52063 l!556))) newKey!21 newValue!21))))

(declare-fun b!1585600 () Bool)

(assert (=> b!1585600 (= c!146969 (and ((_ is Cons!37132) (t!52063 (t!52063 l!556))) (bvsgt (_1!13031 (h!38676 (t!52063 (t!52063 l!556)))) newKey!21)))))

(assert (=> b!1585600 (= e!885332 e!885334)))

(declare-fun b!1585601 () Bool)

(assert (=> b!1585601 (= e!885334 call!72651)))

(assert (= (and d!167729 c!146971) b!1585595))

(assert (= (and d!167729 (not c!146971)) b!1585592))

(assert (= (and b!1585592 c!146972) b!1585596))

(assert (= (and b!1585592 (not c!146972)) b!1585600))

(assert (= (and b!1585600 c!146969) b!1585601))

(assert (= (and b!1585600 (not c!146969)) b!1585598))

(assert (= (or b!1585601 b!1585598) bm!72648))

(assert (= (or b!1585596 bm!72648) bm!72650))

(assert (= (or b!1585595 bm!72650) bm!72649))

(assert (= (and bm!72649 c!146970) b!1585599))

(assert (= (and bm!72649 (not c!146970)) b!1585593))

(assert (= (and d!167729 res!1082953) b!1585594))

(assert (= (and b!1585594 res!1082952) b!1585597))

(declare-fun m!1454371 () Bool)

(assert (=> b!1585599 m!1454371))

(declare-fun m!1454373 () Bool)

(assert (=> b!1585594 m!1454373))

(declare-fun m!1454375 () Bool)

(assert (=> bm!72649 m!1454375))

(declare-fun m!1454377 () Bool)

(assert (=> d!167729 m!1454377))

(assert (=> d!167729 m!1454327))

(declare-fun m!1454379 () Bool)

(assert (=> b!1585597 m!1454379))

(assert (=> b!1585446 d!167729))

(declare-fun d!167731 () Bool)

(declare-fun res!1082954 () Bool)

(declare-fun e!885338 () Bool)

(assert (=> d!167731 (=> res!1082954 e!885338)))

(assert (=> d!167731 (= res!1082954 (and ((_ is Cons!37132) (t!52063 lt!677308)) (= (_1!13031 (h!38676 (t!52063 lt!677308))) newKey!21)))))

(assert (=> d!167731 (= (containsKey!1008 (t!52063 lt!677308) newKey!21) e!885338)))

(declare-fun b!1585606 () Bool)

(declare-fun e!885339 () Bool)

(assert (=> b!1585606 (= e!885338 e!885339)))

(declare-fun res!1082955 () Bool)

(assert (=> b!1585606 (=> (not res!1082955) (not e!885339))))

(assert (=> b!1585606 (= res!1082955 (and (or (not ((_ is Cons!37132) (t!52063 lt!677308))) (bvsle (_1!13031 (h!38676 (t!52063 lt!677308))) newKey!21)) ((_ is Cons!37132) (t!52063 lt!677308)) (bvslt (_1!13031 (h!38676 (t!52063 lt!677308))) newKey!21)))))

(declare-fun b!1585607 () Bool)

(assert (=> b!1585607 (= e!885339 (containsKey!1008 (t!52063 (t!52063 lt!677308)) newKey!21))))

(assert (= (and d!167731 (not res!1082954)) b!1585606))

(assert (= (and b!1585606 res!1082955) b!1585607))

(declare-fun m!1454381 () Bool)

(assert (=> b!1585607 m!1454381))

(assert (=> b!1585470 d!167731))

(declare-fun d!167733 () Bool)

(declare-fun res!1082956 () Bool)

(declare-fun e!885340 () Bool)

(assert (=> d!167733 (=> res!1082956 e!885340)))

(assert (=> d!167733 (= res!1082956 (or ((_ is Nil!37133) (t!52063 lt!677308)) ((_ is Nil!37133) (t!52063 (t!52063 lt!677308)))))))

(assert (=> d!167733 (= (isStrictlySorted!1195 (t!52063 lt!677308)) e!885340)))

(declare-fun b!1585608 () Bool)

(declare-fun e!885341 () Bool)

(assert (=> b!1585608 (= e!885340 e!885341)))

(declare-fun res!1082957 () Bool)

(assert (=> b!1585608 (=> (not res!1082957) (not e!885341))))

(assert (=> b!1585608 (= res!1082957 (bvslt (_1!13031 (h!38676 (t!52063 lt!677308))) (_1!13031 (h!38676 (t!52063 (t!52063 lt!677308))))))))

(declare-fun b!1585609 () Bool)

(assert (=> b!1585609 (= e!885341 (isStrictlySorted!1195 (t!52063 (t!52063 lt!677308))))))

(assert (= (and d!167733 (not res!1082956)) b!1585608))

(assert (= (and b!1585608 res!1082957) b!1585609))

(declare-fun m!1454383 () Bool)

(assert (=> b!1585609 m!1454383))

(assert (=> b!1585394 d!167733))

(declare-fun lt!677335 () Bool)

(declare-fun d!167735 () Bool)

(assert (=> d!167735 (= lt!677335 (select (content!869 lt!677317) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun e!885342 () Bool)

(assert (=> d!167735 (= lt!677335 e!885342)))

(declare-fun res!1082959 () Bool)

(assert (=> d!167735 (=> (not res!1082959) (not e!885342))))

(assert (=> d!167735 (= res!1082959 ((_ is Cons!37132) lt!677317))))

(assert (=> d!167735 (= (contains!10550 lt!677317 (tuple2!26043 newKey!21 newValue!21)) lt!677335)))

(declare-fun b!1585610 () Bool)

(declare-fun e!885343 () Bool)

(assert (=> b!1585610 (= e!885342 e!885343)))

(declare-fun res!1082958 () Bool)

(assert (=> b!1585610 (=> res!1082958 e!885343)))

(assert (=> b!1585610 (= res!1082958 (= (h!38676 lt!677317) (tuple2!26043 newKey!21 newValue!21)))))

(declare-fun b!1585611 () Bool)

(assert (=> b!1585611 (= e!885343 (contains!10550 (t!52063 lt!677317) (tuple2!26043 newKey!21 newValue!21)))))

(assert (= (and d!167735 res!1082959) b!1585610))

(assert (= (and b!1585610 (not res!1082958)) b!1585611))

(declare-fun m!1454385 () Bool)

(assert (=> d!167735 m!1454385))

(declare-fun m!1454387 () Bool)

(assert (=> d!167735 m!1454387))

(declare-fun m!1454389 () Bool)

(assert (=> b!1585611 m!1454389))

(assert (=> b!1585444 d!167735))

(declare-fun b!1585614 () Bool)

(declare-fun e!885345 () Bool)

(declare-fun tp!115280 () Bool)

(assert (=> b!1585614 (= e!885345 (and tp_is_empty!39519 tp!115280))))

(assert (=> b!1585517 (= tp!115273 e!885345)))

(assert (= (and b!1585517 ((_ is Cons!37132) (t!52063 (t!52063 l!556)))) b!1585614))

(check-sat (not b!1585599) (not d!167735) (not b!1585569) (not b!1585594) (not b!1585585) (not b!1585614) (not b!1585589) (not b!1585607) (not bm!72649) (not b!1585611) (not b!1585609) (not b!1585557) (not d!167729) (not d!167723) (not b!1585555) tp_is_empty!39519 (not b!1585597))
(check-sat)
