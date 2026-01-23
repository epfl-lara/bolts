; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408542 () Bool)

(assert start!408542)

(declare-fun b_free!126693 () Bool)

(declare-fun b_next!127397 () Bool)

(assert (=> start!408542 (= b_free!126693 (not b_next!127397))))

(declare-fun tp!1307260 () Bool)

(declare-fun b_and!337855 () Bool)

(assert (=> start!408542 (= tp!1307260 b_and!337855)))

(declare-fun res!1752393 () Bool)

(declare-fun e!2647579 () Bool)

(assert (=> start!408542 (=> (not res!1752393) (not e!2647579))))

(declare-datatypes ((B!2829 0))(
  ( (B!2830 (val!15241 Int)) )
))
(declare-datatypes ((List!47370 0))(
  ( (Nil!47246) (Cons!47246 (h!52666 B!2829) (t!353395 List!47370)) )
))
(declare-fun l1!1491 () List!47370)

(get-info :version)

(assert (=> start!408542 (= res!1752393 ((_ is Cons!47246) l1!1491))))

(assert (=> start!408542 e!2647579))

(declare-fun e!2647578 () Bool)

(assert (=> start!408542 e!2647578))

(declare-fun e!2647580 () Bool)

(assert (=> start!408542 e!2647580))

(assert (=> start!408542 tp!1307260))

(declare-fun p!2107 () Int)

(declare-fun l2!1460 () List!47370)

(declare-fun b!4263938 () Bool)

(declare-datatypes ((A!459 0))(
  ( (A!460 (val!15242 Int)) )
))
(declare-datatypes ((List!47371 0))(
  ( (Nil!47247) (Cons!47247 (h!52667 A!459) (t!353396 List!47371)) )
))
(declare-fun map!9680 (List!47370 Int) List!47371)

(declare-fun ++!12039 (List!47370 List!47370) List!47370)

(declare-fun ++!12040 (List!47371 List!47371) List!47371)

(assert (=> b!4263938 (= e!2647579 (not (= (map!9680 (++!12039 l1!1491 l2!1460) p!2107) (++!12040 (map!9680 l1!1491 p!2107) (map!9680 l2!1460 p!2107)))))))

(declare-datatypes ((Unit!66143 0))(
  ( (Unit!66144) )
))
(declare-fun lt!1511278 () Unit!66143)

(declare-fun lemmaMapConcat!34 (List!47370 List!47370 Int) Unit!66143)

(assert (=> b!4263938 (= lt!1511278 (lemmaMapConcat!34 (t!353395 l1!1491) l2!1460 p!2107))))

(declare-fun b!4263939 () Bool)

(declare-fun tp_is_empty!22889 () Bool)

(declare-fun tp!1307258 () Bool)

(assert (=> b!4263939 (= e!2647578 (and tp_is_empty!22889 tp!1307258))))

(declare-fun b!4263940 () Bool)

(declare-fun tp!1307259 () Bool)

(assert (=> b!4263940 (= e!2647580 (and tp_is_empty!22889 tp!1307259))))

(assert (= (and start!408542 res!1752393) b!4263938))

(assert (= (and start!408542 ((_ is Cons!47246) l1!1491)) b!4263939))

(assert (= (and start!408542 ((_ is Cons!47246) l2!1460)) b!4263940))

(declare-fun m!4854199 () Bool)

(assert (=> b!4263938 m!4854199))

(declare-fun m!4854201 () Bool)

(assert (=> b!4263938 m!4854201))

(declare-fun m!4854203 () Bool)

(assert (=> b!4263938 m!4854203))

(declare-fun m!4854205 () Bool)

(assert (=> b!4263938 m!4854205))

(assert (=> b!4263938 m!4854205))

(declare-fun m!4854207 () Bool)

(assert (=> b!4263938 m!4854207))

(declare-fun m!4854209 () Bool)

(assert (=> b!4263938 m!4854209))

(assert (=> b!4263938 m!4854201))

(assert (=> b!4263938 m!4854207))

(check-sat tp_is_empty!22889 (not b!4263940) (not b_next!127397) b_and!337855 (not b!4263939) (not b!4263938))
(check-sat b_and!337855 (not b_next!127397))
(get-model)

(declare-fun b!4263964 () Bool)

(declare-fun lt!1511287 () List!47370)

(declare-fun e!2647591 () Bool)

(assert (=> b!4263964 (= e!2647591 (or (not (= l2!1460 Nil!47246)) (= lt!1511287 l1!1491)))))

(declare-fun b!4263961 () Bool)

(declare-fun e!2647592 () List!47370)

(assert (=> b!4263961 (= e!2647592 l2!1460)))

(declare-fun b!4263962 () Bool)

(assert (=> b!4263962 (= e!2647592 (Cons!47246 (h!52666 l1!1491) (++!12039 (t!353395 l1!1491) l2!1460)))))

(declare-fun d!1256257 () Bool)

(assert (=> d!1256257 e!2647591))

(declare-fun res!1752405 () Bool)

(assert (=> d!1256257 (=> (not res!1752405) (not e!2647591))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7450 (List!47370) (InoxSet B!2829))

(assert (=> d!1256257 (= res!1752405 (= (content!7450 lt!1511287) ((_ map or) (content!7450 l1!1491) (content!7450 l2!1460))))))

(assert (=> d!1256257 (= lt!1511287 e!2647592)))

(declare-fun c!724579 () Bool)

(assert (=> d!1256257 (= c!724579 ((_ is Nil!47246) l1!1491))))

(assert (=> d!1256257 (= (++!12039 l1!1491 l2!1460) lt!1511287)))

(declare-fun b!4263963 () Bool)

(declare-fun res!1752404 () Bool)

(assert (=> b!4263963 (=> (not res!1752404) (not e!2647591))))

(declare-fun size!34612 (List!47370) Int)

(assert (=> b!4263963 (= res!1752404 (= (size!34612 lt!1511287) (+ (size!34612 l1!1491) (size!34612 l2!1460))))))

(assert (= (and d!1256257 c!724579) b!4263961))

(assert (= (and d!1256257 (not c!724579)) b!4263962))

(assert (= (and d!1256257 res!1752405) b!4263963))

(assert (= (and b!4263963 res!1752404) b!4263964))

(declare-fun m!4854233 () Bool)

(assert (=> b!4263962 m!4854233))

(declare-fun m!4854235 () Bool)

(assert (=> d!1256257 m!4854235))

(declare-fun m!4854237 () Bool)

(assert (=> d!1256257 m!4854237))

(declare-fun m!4854239 () Bool)

(assert (=> d!1256257 m!4854239))

(declare-fun m!4854241 () Bool)

(assert (=> b!4263963 m!4854241))

(declare-fun m!4854243 () Bool)

(assert (=> b!4263963 m!4854243))

(declare-fun m!4854245 () Bool)

(assert (=> b!4263963 m!4854245))

(assert (=> b!4263938 d!1256257))

(declare-fun d!1256263 () Bool)

(assert (=> d!1256263 (= (map!9680 (++!12039 (t!353395 l1!1491) l2!1460) p!2107) (++!12040 (map!9680 (t!353395 l1!1491) p!2107) (map!9680 l2!1460 p!2107)))))

(declare-fun lt!1511292 () Unit!66143)

(declare-fun choose!25992 (List!47370 List!47370 Int) Unit!66143)

(assert (=> d!1256263 (= lt!1511292 (choose!25992 (t!353395 l1!1491) l2!1460 p!2107))))

(assert (=> d!1256263 (= (lemmaMapConcat!34 (t!353395 l1!1491) l2!1460 p!2107) lt!1511292)))

(declare-fun bs!599197 () Bool)

(assert (= bs!599197 d!1256263))

(declare-fun m!4854247 () Bool)

(assert (=> bs!599197 m!4854247))

(assert (=> bs!599197 m!4854207))

(declare-fun m!4854249 () Bool)

(assert (=> bs!599197 m!4854249))

(assert (=> bs!599197 m!4854233))

(assert (=> bs!599197 m!4854247))

(assert (=> bs!599197 m!4854207))

(declare-fun m!4854251 () Bool)

(assert (=> bs!599197 m!4854251))

(assert (=> bs!599197 m!4854233))

(declare-fun m!4854253 () Bool)

(assert (=> bs!599197 m!4854253))

(assert (=> b!4263938 d!1256263))

(declare-fun b!4263991 () Bool)

(declare-fun res!1752417 () Bool)

(declare-fun e!2647606 () Bool)

(assert (=> b!4263991 (=> (not res!1752417) (not e!2647606))))

(declare-fun lt!1511298 () List!47371)

(declare-fun size!34614 (List!47371) Int)

(assert (=> b!4263991 (= res!1752417 (= (size!34614 lt!1511298) (+ (size!34614 (map!9680 l1!1491 p!2107)) (size!34614 (map!9680 l2!1460 p!2107)))))))

(declare-fun b!4263992 () Bool)

(assert (=> b!4263992 (= e!2647606 (or (not (= (map!9680 l2!1460 p!2107) Nil!47247)) (= lt!1511298 (map!9680 l1!1491 p!2107))))))

(declare-fun e!2647605 () List!47371)

(declare-fun b!4263990 () Bool)

(assert (=> b!4263990 (= e!2647605 (Cons!47247 (h!52667 (map!9680 l1!1491 p!2107)) (++!12040 (t!353396 (map!9680 l1!1491 p!2107)) (map!9680 l2!1460 p!2107))))))

(declare-fun b!4263989 () Bool)

(assert (=> b!4263989 (= e!2647605 (map!9680 l2!1460 p!2107))))

(declare-fun d!1256265 () Bool)

(assert (=> d!1256265 e!2647606))

(declare-fun res!1752416 () Bool)

(assert (=> d!1256265 (=> (not res!1752416) (not e!2647606))))

(declare-fun content!7452 (List!47371) (InoxSet A!459))

(assert (=> d!1256265 (= res!1752416 (= (content!7452 lt!1511298) ((_ map or) (content!7452 (map!9680 l1!1491 p!2107)) (content!7452 (map!9680 l2!1460 p!2107)))))))

(assert (=> d!1256265 (= lt!1511298 e!2647605)))

(declare-fun c!724587 () Bool)

(assert (=> d!1256265 (= c!724587 ((_ is Nil!47247) (map!9680 l1!1491 p!2107)))))

(assert (=> d!1256265 (= (++!12040 (map!9680 l1!1491 p!2107) (map!9680 l2!1460 p!2107)) lt!1511298)))

(assert (= (and d!1256265 c!724587) b!4263989))

(assert (= (and d!1256265 (not c!724587)) b!4263990))

(assert (= (and d!1256265 res!1752416) b!4263991))

(assert (= (and b!4263991 res!1752417) b!4263992))

(declare-fun m!4854269 () Bool)

(assert (=> b!4263991 m!4854269))

(assert (=> b!4263991 m!4854205))

(declare-fun m!4854271 () Bool)

(assert (=> b!4263991 m!4854271))

(assert (=> b!4263991 m!4854207))

(declare-fun m!4854273 () Bool)

(assert (=> b!4263991 m!4854273))

(assert (=> b!4263990 m!4854207))

(declare-fun m!4854275 () Bool)

(assert (=> b!4263990 m!4854275))

(declare-fun m!4854277 () Bool)

(assert (=> d!1256265 m!4854277))

(assert (=> d!1256265 m!4854205))

(declare-fun m!4854279 () Bool)

(assert (=> d!1256265 m!4854279))

(assert (=> d!1256265 m!4854207))

(declare-fun m!4854281 () Bool)

(assert (=> d!1256265 m!4854281))

(assert (=> b!4263938 d!1256265))

(declare-fun d!1256269 () Bool)

(declare-fun lt!1511304 () List!47371)

(assert (=> d!1256269 (= (size!34614 lt!1511304) (size!34612 (++!12039 l1!1491 l2!1460)))))

(declare-fun e!2647616 () List!47371)

(assert (=> d!1256269 (= lt!1511304 e!2647616)))

(declare-fun c!724593 () Bool)

(assert (=> d!1256269 (= c!724593 ((_ is Nil!47246) (++!12039 l1!1491 l2!1460)))))

(assert (=> d!1256269 (= (map!9680 (++!12039 l1!1491 l2!1460) p!2107) lt!1511304)))

(declare-fun b!4264011 () Bool)

(assert (=> b!4264011 (= e!2647616 Nil!47247)))

(declare-fun b!4264012 () Bool)

(declare-fun $colon$colon!635 (List!47371 A!459) List!47371)

(declare-fun dynLambda!20223 (Int B!2829) A!459)

(assert (=> b!4264012 (= e!2647616 ($colon$colon!635 (map!9680 (t!353395 (++!12039 l1!1491 l2!1460)) p!2107) (dynLambda!20223 p!2107 (h!52666 (++!12039 l1!1491 l2!1460)))))))

(assert (= (and d!1256269 c!724593) b!4264011))

(assert (= (and d!1256269 (not c!724593)) b!4264012))

(declare-fun b_lambda!126023 () Bool)

(assert (=> (not b_lambda!126023) (not b!4264012)))

(declare-fun t!353404 () Bool)

(declare-fun tb!257049 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353404) tb!257049))

(declare-fun result!313630 () Bool)

(declare-fun tp_is_empty!22893 () Bool)

(assert (=> tb!257049 (= result!313630 tp_is_empty!22893)))

(assert (=> b!4264012 t!353404))

(declare-fun b_and!337863 () Bool)

(assert (= b_and!337855 (and (=> t!353404 result!313630) b_and!337863)))

(declare-fun m!4854307 () Bool)

(assert (=> d!1256269 m!4854307))

(assert (=> d!1256269 m!4854201))

(declare-fun m!4854309 () Bool)

(assert (=> d!1256269 m!4854309))

(declare-fun m!4854311 () Bool)

(assert (=> b!4264012 m!4854311))

(declare-fun m!4854313 () Bool)

(assert (=> b!4264012 m!4854313))

(assert (=> b!4264012 m!4854311))

(assert (=> b!4264012 m!4854313))

(declare-fun m!4854315 () Bool)

(assert (=> b!4264012 m!4854315))

(assert (=> b!4263938 d!1256269))

(declare-fun d!1256275 () Bool)

(declare-fun lt!1511305 () List!47371)

(assert (=> d!1256275 (= (size!34614 lt!1511305) (size!34612 l2!1460))))

(declare-fun e!2647617 () List!47371)

(assert (=> d!1256275 (= lt!1511305 e!2647617)))

(declare-fun c!724594 () Bool)

(assert (=> d!1256275 (= c!724594 ((_ is Nil!47246) l2!1460))))

(assert (=> d!1256275 (= (map!9680 l2!1460 p!2107) lt!1511305)))

(declare-fun b!4264015 () Bool)

(assert (=> b!4264015 (= e!2647617 Nil!47247)))

(declare-fun b!4264016 () Bool)

(assert (=> b!4264016 (= e!2647617 ($colon$colon!635 (map!9680 (t!353395 l2!1460) p!2107) (dynLambda!20223 p!2107 (h!52666 l2!1460))))))

(assert (= (and d!1256275 c!724594) b!4264015))

(assert (= (and d!1256275 (not c!724594)) b!4264016))

(declare-fun b_lambda!126025 () Bool)

(assert (=> (not b_lambda!126025) (not b!4264016)))

(declare-fun t!353406 () Bool)

(declare-fun tb!257051 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353406) tb!257051))

(declare-fun result!313634 () Bool)

(assert (=> tb!257051 (= result!313634 tp_is_empty!22893)))

(assert (=> b!4264016 t!353406))

(declare-fun b_and!337865 () Bool)

(assert (= b_and!337863 (and (=> t!353406 result!313634) b_and!337865)))

(declare-fun m!4854317 () Bool)

(assert (=> d!1256275 m!4854317))

(assert (=> d!1256275 m!4854245))

(declare-fun m!4854319 () Bool)

(assert (=> b!4264016 m!4854319))

(declare-fun m!4854321 () Bool)

(assert (=> b!4264016 m!4854321))

(assert (=> b!4264016 m!4854319))

(assert (=> b!4264016 m!4854321))

(declare-fun m!4854323 () Bool)

(assert (=> b!4264016 m!4854323))

(assert (=> b!4263938 d!1256275))

(declare-fun d!1256277 () Bool)

(declare-fun lt!1511306 () List!47371)

(assert (=> d!1256277 (= (size!34614 lt!1511306) (size!34612 l1!1491))))

(declare-fun e!2647618 () List!47371)

(assert (=> d!1256277 (= lt!1511306 e!2647618)))

(declare-fun c!724595 () Bool)

(assert (=> d!1256277 (= c!724595 ((_ is Nil!47246) l1!1491))))

(assert (=> d!1256277 (= (map!9680 l1!1491 p!2107) lt!1511306)))

(declare-fun b!4264017 () Bool)

(assert (=> b!4264017 (= e!2647618 Nil!47247)))

(declare-fun b!4264018 () Bool)

(assert (=> b!4264018 (= e!2647618 ($colon$colon!635 (map!9680 (t!353395 l1!1491) p!2107) (dynLambda!20223 p!2107 (h!52666 l1!1491))))))

(assert (= (and d!1256277 c!724595) b!4264017))

(assert (= (and d!1256277 (not c!724595)) b!4264018))

(declare-fun b_lambda!126027 () Bool)

(assert (=> (not b_lambda!126027) (not b!4264018)))

(declare-fun t!353408 () Bool)

(declare-fun tb!257053 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353408) tb!257053))

(declare-fun result!313636 () Bool)

(assert (=> tb!257053 (= result!313636 tp_is_empty!22893)))

(assert (=> b!4264018 t!353408))

(declare-fun b_and!337867 () Bool)

(assert (= b_and!337865 (and (=> t!353408 result!313636) b_and!337867)))

(declare-fun m!4854325 () Bool)

(assert (=> d!1256277 m!4854325))

(assert (=> d!1256277 m!4854243))

(assert (=> b!4264018 m!4854247))

(declare-fun m!4854327 () Bool)

(assert (=> b!4264018 m!4854327))

(assert (=> b!4264018 m!4854247))

(assert (=> b!4264018 m!4854327))

(declare-fun m!4854329 () Bool)

(assert (=> b!4264018 m!4854329))

(assert (=> b!4263938 d!1256277))

(declare-fun b!4264023 () Bool)

(declare-fun e!2647621 () Bool)

(declare-fun tp!1307267 () Bool)

(assert (=> b!4264023 (= e!2647621 (and tp_is_empty!22889 tp!1307267))))

(assert (=> b!4263939 (= tp!1307258 e!2647621)))

(assert (= (and b!4263939 ((_ is Cons!47246) (t!353395 l1!1491))) b!4264023))

(declare-fun b!4264024 () Bool)

(declare-fun e!2647622 () Bool)

(declare-fun tp!1307268 () Bool)

(assert (=> b!4264024 (= e!2647622 (and tp_is_empty!22889 tp!1307268))))

(assert (=> b!4263940 (= tp!1307259 e!2647622)))

(assert (= (and b!4263940 ((_ is Cons!47246) (t!353395 l2!1460))) b!4264024))

(declare-fun b_lambda!126029 () Bool)

(assert (= b_lambda!126025 (or (and start!408542 b_free!126693) b_lambda!126029)))

(declare-fun b_lambda!126031 () Bool)

(assert (= b_lambda!126027 (or (and start!408542 b_free!126693) b_lambda!126031)))

(declare-fun b_lambda!126033 () Bool)

(assert (= b_lambda!126023 (or (and start!408542 b_free!126693) b_lambda!126033)))

(check-sat (not d!1256269) (not b!4264016) (not b!4263963) tp_is_empty!22893 (not b!4263991) (not b!4263990) (not b_next!127397) (not d!1256265) (not d!1256263) (not b!4264023) (not b!4263962) (not b_lambda!126031) (not b_lambda!126033) (not b_lambda!126029) tp_is_empty!22889 (not b!4264024) (not b!4264018) (not d!1256257) b_and!337867 (not d!1256275) (not d!1256277) (not b!4264012))
(check-sat b_and!337867 (not b_next!127397))
(get-model)

(declare-fun d!1256279 () Bool)

(assert (=> d!1256279 (= ($colon$colon!635 (map!9680 (t!353395 (++!12039 l1!1491 l2!1460)) p!2107) (dynLambda!20223 p!2107 (h!52666 (++!12039 l1!1491 l2!1460)))) (Cons!47247 (dynLambda!20223 p!2107 (h!52666 (++!12039 l1!1491 l2!1460))) (map!9680 (t!353395 (++!12039 l1!1491 l2!1460)) p!2107)))))

(assert (=> b!4264012 d!1256279))

(declare-fun d!1256281 () Bool)

(declare-fun lt!1511307 () List!47371)

(assert (=> d!1256281 (= (size!34614 lt!1511307) (size!34612 (t!353395 (++!12039 l1!1491 l2!1460))))))

(declare-fun e!2647623 () List!47371)

(assert (=> d!1256281 (= lt!1511307 e!2647623)))

(declare-fun c!724596 () Bool)

(assert (=> d!1256281 (= c!724596 ((_ is Nil!47246) (t!353395 (++!12039 l1!1491 l2!1460))))))

(assert (=> d!1256281 (= (map!9680 (t!353395 (++!12039 l1!1491 l2!1460)) p!2107) lt!1511307)))

(declare-fun b!4264025 () Bool)

(assert (=> b!4264025 (= e!2647623 Nil!47247)))

(declare-fun b!4264026 () Bool)

(assert (=> b!4264026 (= e!2647623 ($colon$colon!635 (map!9680 (t!353395 (t!353395 (++!12039 l1!1491 l2!1460))) p!2107) (dynLambda!20223 p!2107 (h!52666 (t!353395 (++!12039 l1!1491 l2!1460))))))))

(assert (= (and d!1256281 c!724596) b!4264025))

(assert (= (and d!1256281 (not c!724596)) b!4264026))

(declare-fun b_lambda!126035 () Bool)

(assert (=> (not b_lambda!126035) (not b!4264026)))

(declare-fun t!353411 () Bool)

(declare-fun tb!257055 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353411) tb!257055))

(declare-fun result!313640 () Bool)

(assert (=> tb!257055 (= result!313640 tp_is_empty!22893)))

(assert (=> b!4264026 t!353411))

(declare-fun b_and!337869 () Bool)

(assert (= b_and!337867 (and (=> t!353411 result!313640) b_and!337869)))

(declare-fun m!4854331 () Bool)

(assert (=> d!1256281 m!4854331))

(declare-fun m!4854333 () Bool)

(assert (=> d!1256281 m!4854333))

(declare-fun m!4854335 () Bool)

(assert (=> b!4264026 m!4854335))

(declare-fun m!4854337 () Bool)

(assert (=> b!4264026 m!4854337))

(assert (=> b!4264026 m!4854335))

(assert (=> b!4264026 m!4854337))

(declare-fun m!4854339 () Bool)

(assert (=> b!4264026 m!4854339))

(assert (=> b!4264012 d!1256281))

(declare-fun d!1256283 () Bool)

(declare-fun c!724599 () Bool)

(assert (=> d!1256283 (= c!724599 ((_ is Nil!47247) lt!1511298))))

(declare-fun e!2647626 () (InoxSet A!459))

(assert (=> d!1256283 (= (content!7452 lt!1511298) e!2647626)))

(declare-fun b!4264031 () Bool)

(assert (=> b!4264031 (= e!2647626 ((as const (Array A!459 Bool)) false))))

(declare-fun b!4264032 () Bool)

(assert (=> b!4264032 (= e!2647626 ((_ map or) (store ((as const (Array A!459 Bool)) false) (h!52667 lt!1511298) true) (content!7452 (t!353396 lt!1511298))))))

(assert (= (and d!1256283 c!724599) b!4264031))

(assert (= (and d!1256283 (not c!724599)) b!4264032))

(declare-fun m!4854341 () Bool)

(assert (=> b!4264032 m!4854341))

(declare-fun m!4854343 () Bool)

(assert (=> b!4264032 m!4854343))

(assert (=> d!1256265 d!1256283))

(declare-fun d!1256285 () Bool)

(declare-fun c!724600 () Bool)

(assert (=> d!1256285 (= c!724600 ((_ is Nil!47247) (map!9680 l1!1491 p!2107)))))

(declare-fun e!2647627 () (InoxSet A!459))

(assert (=> d!1256285 (= (content!7452 (map!9680 l1!1491 p!2107)) e!2647627)))

(declare-fun b!4264033 () Bool)

(assert (=> b!4264033 (= e!2647627 ((as const (Array A!459 Bool)) false))))

(declare-fun b!4264034 () Bool)

(assert (=> b!4264034 (= e!2647627 ((_ map or) (store ((as const (Array A!459 Bool)) false) (h!52667 (map!9680 l1!1491 p!2107)) true) (content!7452 (t!353396 (map!9680 l1!1491 p!2107)))))))

(assert (= (and d!1256285 c!724600) b!4264033))

(assert (= (and d!1256285 (not c!724600)) b!4264034))

(declare-fun m!4854345 () Bool)

(assert (=> b!4264034 m!4854345))

(declare-fun m!4854347 () Bool)

(assert (=> b!4264034 m!4854347))

(assert (=> d!1256265 d!1256285))

(declare-fun d!1256287 () Bool)

(declare-fun c!724601 () Bool)

(assert (=> d!1256287 (= c!724601 ((_ is Nil!47247) (map!9680 l2!1460 p!2107)))))

(declare-fun e!2647628 () (InoxSet A!459))

(assert (=> d!1256287 (= (content!7452 (map!9680 l2!1460 p!2107)) e!2647628)))

(declare-fun b!4264035 () Bool)

(assert (=> b!4264035 (= e!2647628 ((as const (Array A!459 Bool)) false))))

(declare-fun b!4264036 () Bool)

(assert (=> b!4264036 (= e!2647628 ((_ map or) (store ((as const (Array A!459 Bool)) false) (h!52667 (map!9680 l2!1460 p!2107)) true) (content!7452 (t!353396 (map!9680 l2!1460 p!2107)))))))

(assert (= (and d!1256287 c!724601) b!4264035))

(assert (= (and d!1256287 (not c!724601)) b!4264036))

(declare-fun m!4854349 () Bool)

(assert (=> b!4264036 m!4854349))

(declare-fun m!4854351 () Bool)

(assert (=> b!4264036 m!4854351))

(assert (=> d!1256265 d!1256287))

(declare-fun d!1256289 () Bool)

(assert (=> d!1256289 (= ($colon$colon!635 (map!9680 (t!353395 l2!1460) p!2107) (dynLambda!20223 p!2107 (h!52666 l2!1460))) (Cons!47247 (dynLambda!20223 p!2107 (h!52666 l2!1460)) (map!9680 (t!353395 l2!1460) p!2107)))))

(assert (=> b!4264016 d!1256289))

(declare-fun d!1256291 () Bool)

(declare-fun lt!1511308 () List!47371)

(assert (=> d!1256291 (= (size!34614 lt!1511308) (size!34612 (t!353395 l2!1460)))))

(declare-fun e!2647629 () List!47371)

(assert (=> d!1256291 (= lt!1511308 e!2647629)))

(declare-fun c!724602 () Bool)

(assert (=> d!1256291 (= c!724602 ((_ is Nil!47246) (t!353395 l2!1460)))))

(assert (=> d!1256291 (= (map!9680 (t!353395 l2!1460) p!2107) lt!1511308)))

(declare-fun b!4264037 () Bool)

(assert (=> b!4264037 (= e!2647629 Nil!47247)))

(declare-fun b!4264038 () Bool)

(assert (=> b!4264038 (= e!2647629 ($colon$colon!635 (map!9680 (t!353395 (t!353395 l2!1460)) p!2107) (dynLambda!20223 p!2107 (h!52666 (t!353395 l2!1460)))))))

(assert (= (and d!1256291 c!724602) b!4264037))

(assert (= (and d!1256291 (not c!724602)) b!4264038))

(declare-fun b_lambda!126037 () Bool)

(assert (=> (not b_lambda!126037) (not b!4264038)))

(declare-fun t!353413 () Bool)

(declare-fun tb!257057 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353413) tb!257057))

(declare-fun result!313642 () Bool)

(assert (=> tb!257057 (= result!313642 tp_is_empty!22893)))

(assert (=> b!4264038 t!353413))

(declare-fun b_and!337871 () Bool)

(assert (= b_and!337869 (and (=> t!353413 result!313642) b_and!337871)))

(declare-fun m!4854353 () Bool)

(assert (=> d!1256291 m!4854353))

(declare-fun m!4854355 () Bool)

(assert (=> d!1256291 m!4854355))

(declare-fun m!4854357 () Bool)

(assert (=> b!4264038 m!4854357))

(declare-fun m!4854359 () Bool)

(assert (=> b!4264038 m!4854359))

(assert (=> b!4264038 m!4854357))

(assert (=> b!4264038 m!4854359))

(declare-fun m!4854361 () Bool)

(assert (=> b!4264038 m!4854361))

(assert (=> b!4264016 d!1256291))

(declare-fun d!1256293 () Bool)

(declare-fun c!724605 () Bool)

(assert (=> d!1256293 (= c!724605 ((_ is Nil!47246) lt!1511287))))

(declare-fun e!2647632 () (InoxSet B!2829))

(assert (=> d!1256293 (= (content!7450 lt!1511287) e!2647632)))

(declare-fun b!4264043 () Bool)

(assert (=> b!4264043 (= e!2647632 ((as const (Array B!2829 Bool)) false))))

(declare-fun b!4264044 () Bool)

(assert (=> b!4264044 (= e!2647632 ((_ map or) (store ((as const (Array B!2829 Bool)) false) (h!52666 lt!1511287) true) (content!7450 (t!353395 lt!1511287))))))

(assert (= (and d!1256293 c!724605) b!4264043))

(assert (= (and d!1256293 (not c!724605)) b!4264044))

(declare-fun m!4854363 () Bool)

(assert (=> b!4264044 m!4854363))

(declare-fun m!4854365 () Bool)

(assert (=> b!4264044 m!4854365))

(assert (=> d!1256257 d!1256293))

(declare-fun d!1256295 () Bool)

(declare-fun c!724606 () Bool)

(assert (=> d!1256295 (= c!724606 ((_ is Nil!47246) l1!1491))))

(declare-fun e!2647633 () (InoxSet B!2829))

(assert (=> d!1256295 (= (content!7450 l1!1491) e!2647633)))

(declare-fun b!4264045 () Bool)

(assert (=> b!4264045 (= e!2647633 ((as const (Array B!2829 Bool)) false))))

(declare-fun b!4264046 () Bool)

(assert (=> b!4264046 (= e!2647633 ((_ map or) (store ((as const (Array B!2829 Bool)) false) (h!52666 l1!1491) true) (content!7450 (t!353395 l1!1491))))))

(assert (= (and d!1256295 c!724606) b!4264045))

(assert (= (and d!1256295 (not c!724606)) b!4264046))

(declare-fun m!4854367 () Bool)

(assert (=> b!4264046 m!4854367))

(declare-fun m!4854369 () Bool)

(assert (=> b!4264046 m!4854369))

(assert (=> d!1256257 d!1256295))

(declare-fun d!1256297 () Bool)

(declare-fun c!724607 () Bool)

(assert (=> d!1256297 (= c!724607 ((_ is Nil!47246) l2!1460))))

(declare-fun e!2647634 () (InoxSet B!2829))

(assert (=> d!1256297 (= (content!7450 l2!1460) e!2647634)))

(declare-fun b!4264047 () Bool)

(assert (=> b!4264047 (= e!2647634 ((as const (Array B!2829 Bool)) false))))

(declare-fun b!4264048 () Bool)

(assert (=> b!4264048 (= e!2647634 ((_ map or) (store ((as const (Array B!2829 Bool)) false) (h!52666 l2!1460) true) (content!7450 (t!353395 l2!1460))))))

(assert (= (and d!1256297 c!724607) b!4264047))

(assert (= (and d!1256297 (not c!724607)) b!4264048))

(declare-fun m!4854371 () Bool)

(assert (=> b!4264048 m!4854371))

(declare-fun m!4854373 () Bool)

(assert (=> b!4264048 m!4854373))

(assert (=> d!1256257 d!1256297))

(declare-fun d!1256299 () Bool)

(declare-fun lt!1511311 () Int)

(assert (=> d!1256299 (>= lt!1511311 0)))

(declare-fun e!2647637 () Int)

(assert (=> d!1256299 (= lt!1511311 e!2647637)))

(declare-fun c!724610 () Bool)

(assert (=> d!1256299 (= c!724610 ((_ is Nil!47247) lt!1511306))))

(assert (=> d!1256299 (= (size!34614 lt!1511306) lt!1511311)))

(declare-fun b!4264053 () Bool)

(assert (=> b!4264053 (= e!2647637 0)))

(declare-fun b!4264054 () Bool)

(assert (=> b!4264054 (= e!2647637 (+ 1 (size!34614 (t!353396 lt!1511306))))))

(assert (= (and d!1256299 c!724610) b!4264053))

(assert (= (and d!1256299 (not c!724610)) b!4264054))

(declare-fun m!4854375 () Bool)

(assert (=> b!4264054 m!4854375))

(assert (=> d!1256277 d!1256299))

(declare-fun d!1256301 () Bool)

(declare-fun lt!1511314 () Int)

(assert (=> d!1256301 (>= lt!1511314 0)))

(declare-fun e!2647640 () Int)

(assert (=> d!1256301 (= lt!1511314 e!2647640)))

(declare-fun c!724613 () Bool)

(assert (=> d!1256301 (= c!724613 ((_ is Nil!47246) l1!1491))))

(assert (=> d!1256301 (= (size!34612 l1!1491) lt!1511314)))

(declare-fun b!4264059 () Bool)

(assert (=> b!4264059 (= e!2647640 0)))

(declare-fun b!4264060 () Bool)

(assert (=> b!4264060 (= e!2647640 (+ 1 (size!34612 (t!353395 l1!1491))))))

(assert (= (and d!1256301 c!724613) b!4264059))

(assert (= (and d!1256301 (not c!724613)) b!4264060))

(declare-fun m!4854377 () Bool)

(assert (=> b!4264060 m!4854377))

(assert (=> d!1256277 d!1256301))

(declare-fun b!4264063 () Bool)

(declare-fun res!1752419 () Bool)

(declare-fun e!2647642 () Bool)

(assert (=> b!4264063 (=> (not res!1752419) (not e!2647642))))

(declare-fun lt!1511315 () List!47371)

(assert (=> b!4264063 (= res!1752419 (= (size!34614 lt!1511315) (+ (size!34614 (t!353396 (map!9680 l1!1491 p!2107))) (size!34614 (map!9680 l2!1460 p!2107)))))))

(declare-fun b!4264064 () Bool)

(assert (=> b!4264064 (= e!2647642 (or (not (= (map!9680 l2!1460 p!2107) Nil!47247)) (= lt!1511315 (t!353396 (map!9680 l1!1491 p!2107)))))))

(declare-fun b!4264062 () Bool)

(declare-fun e!2647641 () List!47371)

(assert (=> b!4264062 (= e!2647641 (Cons!47247 (h!52667 (t!353396 (map!9680 l1!1491 p!2107))) (++!12040 (t!353396 (t!353396 (map!9680 l1!1491 p!2107))) (map!9680 l2!1460 p!2107))))))

(declare-fun b!4264061 () Bool)

(assert (=> b!4264061 (= e!2647641 (map!9680 l2!1460 p!2107))))

(declare-fun d!1256303 () Bool)

(assert (=> d!1256303 e!2647642))

(declare-fun res!1752418 () Bool)

(assert (=> d!1256303 (=> (not res!1752418) (not e!2647642))))

(assert (=> d!1256303 (= res!1752418 (= (content!7452 lt!1511315) ((_ map or) (content!7452 (t!353396 (map!9680 l1!1491 p!2107))) (content!7452 (map!9680 l2!1460 p!2107)))))))

(assert (=> d!1256303 (= lt!1511315 e!2647641)))

(declare-fun c!724614 () Bool)

(assert (=> d!1256303 (= c!724614 ((_ is Nil!47247) (t!353396 (map!9680 l1!1491 p!2107))))))

(assert (=> d!1256303 (= (++!12040 (t!353396 (map!9680 l1!1491 p!2107)) (map!9680 l2!1460 p!2107)) lt!1511315)))

(assert (= (and d!1256303 c!724614) b!4264061))

(assert (= (and d!1256303 (not c!724614)) b!4264062))

(assert (= (and d!1256303 res!1752418) b!4264063))

(assert (= (and b!4264063 res!1752419) b!4264064))

(declare-fun m!4854379 () Bool)

(assert (=> b!4264063 m!4854379))

(declare-fun m!4854381 () Bool)

(assert (=> b!4264063 m!4854381))

(assert (=> b!4264063 m!4854207))

(assert (=> b!4264063 m!4854273))

(assert (=> b!4264062 m!4854207))

(declare-fun m!4854383 () Bool)

(assert (=> b!4264062 m!4854383))

(declare-fun m!4854385 () Bool)

(assert (=> d!1256303 m!4854385))

(assert (=> d!1256303 m!4854347))

(assert (=> d!1256303 m!4854207))

(assert (=> d!1256303 m!4854281))

(assert (=> b!4263990 d!1256303))

(declare-fun d!1256305 () Bool)

(declare-fun lt!1511316 () Int)

(assert (=> d!1256305 (>= lt!1511316 0)))

(declare-fun e!2647643 () Int)

(assert (=> d!1256305 (= lt!1511316 e!2647643)))

(declare-fun c!724615 () Bool)

(assert (=> d!1256305 (= c!724615 ((_ is Nil!47246) lt!1511287))))

(assert (=> d!1256305 (= (size!34612 lt!1511287) lt!1511316)))

(declare-fun b!4264065 () Bool)

(assert (=> b!4264065 (= e!2647643 0)))

(declare-fun b!4264066 () Bool)

(assert (=> b!4264066 (= e!2647643 (+ 1 (size!34612 (t!353395 lt!1511287))))))

(assert (= (and d!1256305 c!724615) b!4264065))

(assert (= (and d!1256305 (not c!724615)) b!4264066))

(declare-fun m!4854387 () Bool)

(assert (=> b!4264066 m!4854387))

(assert (=> b!4263963 d!1256305))

(assert (=> b!4263963 d!1256301))

(declare-fun d!1256307 () Bool)

(declare-fun lt!1511317 () Int)

(assert (=> d!1256307 (>= lt!1511317 0)))

(declare-fun e!2647644 () Int)

(assert (=> d!1256307 (= lt!1511317 e!2647644)))

(declare-fun c!724616 () Bool)

(assert (=> d!1256307 (= c!724616 ((_ is Nil!47246) l2!1460))))

(assert (=> d!1256307 (= (size!34612 l2!1460) lt!1511317)))

(declare-fun b!4264067 () Bool)

(assert (=> b!4264067 (= e!2647644 0)))

(declare-fun b!4264068 () Bool)

(assert (=> b!4264068 (= e!2647644 (+ 1 (size!34612 (t!353395 l2!1460))))))

(assert (= (and d!1256307 c!724616) b!4264067))

(assert (= (and d!1256307 (not c!724616)) b!4264068))

(assert (=> b!4264068 m!4854355))

(assert (=> b!4263963 d!1256307))

(declare-fun d!1256309 () Bool)

(declare-fun lt!1511318 () Int)

(assert (=> d!1256309 (>= lt!1511318 0)))

(declare-fun e!2647645 () Int)

(assert (=> d!1256309 (= lt!1511318 e!2647645)))

(declare-fun c!724617 () Bool)

(assert (=> d!1256309 (= c!724617 ((_ is Nil!47247) lt!1511298))))

(assert (=> d!1256309 (= (size!34614 lt!1511298) lt!1511318)))

(declare-fun b!4264069 () Bool)

(assert (=> b!4264069 (= e!2647645 0)))

(declare-fun b!4264070 () Bool)

(assert (=> b!4264070 (= e!2647645 (+ 1 (size!34614 (t!353396 lt!1511298))))))

(assert (= (and d!1256309 c!724617) b!4264069))

(assert (= (and d!1256309 (not c!724617)) b!4264070))

(declare-fun m!4854389 () Bool)

(assert (=> b!4264070 m!4854389))

(assert (=> b!4263991 d!1256309))

(declare-fun d!1256311 () Bool)

(declare-fun lt!1511319 () Int)

(assert (=> d!1256311 (>= lt!1511319 0)))

(declare-fun e!2647646 () Int)

(assert (=> d!1256311 (= lt!1511319 e!2647646)))

(declare-fun c!724618 () Bool)

(assert (=> d!1256311 (= c!724618 ((_ is Nil!47247) (map!9680 l1!1491 p!2107)))))

(assert (=> d!1256311 (= (size!34614 (map!9680 l1!1491 p!2107)) lt!1511319)))

(declare-fun b!4264071 () Bool)

(assert (=> b!4264071 (= e!2647646 0)))

(declare-fun b!4264072 () Bool)

(assert (=> b!4264072 (= e!2647646 (+ 1 (size!34614 (t!353396 (map!9680 l1!1491 p!2107)))))))

(assert (= (and d!1256311 c!724618) b!4264071))

(assert (= (and d!1256311 (not c!724618)) b!4264072))

(assert (=> b!4264072 m!4854381))

(assert (=> b!4263991 d!1256311))

(declare-fun d!1256313 () Bool)

(declare-fun lt!1511320 () Int)

(assert (=> d!1256313 (>= lt!1511320 0)))

(declare-fun e!2647647 () Int)

(assert (=> d!1256313 (= lt!1511320 e!2647647)))

(declare-fun c!724619 () Bool)

(assert (=> d!1256313 (= c!724619 ((_ is Nil!47247) (map!9680 l2!1460 p!2107)))))

(assert (=> d!1256313 (= (size!34614 (map!9680 l2!1460 p!2107)) lt!1511320)))

(declare-fun b!4264073 () Bool)

(assert (=> b!4264073 (= e!2647647 0)))

(declare-fun b!4264074 () Bool)

(assert (=> b!4264074 (= e!2647647 (+ 1 (size!34614 (t!353396 (map!9680 l2!1460 p!2107)))))))

(assert (= (and d!1256313 c!724619) b!4264073))

(assert (= (and d!1256313 (not c!724619)) b!4264074))

(declare-fun m!4854391 () Bool)

(assert (=> b!4264074 m!4854391))

(assert (=> b!4263991 d!1256313))

(assert (=> d!1256263 d!1256275))

(declare-fun b!4264077 () Bool)

(declare-fun res!1752421 () Bool)

(declare-fun e!2647649 () Bool)

(assert (=> b!4264077 (=> (not res!1752421) (not e!2647649))))

(declare-fun lt!1511321 () List!47371)

(assert (=> b!4264077 (= res!1752421 (= (size!34614 lt!1511321) (+ (size!34614 (map!9680 (t!353395 l1!1491) p!2107)) (size!34614 (map!9680 l2!1460 p!2107)))))))

(declare-fun b!4264078 () Bool)

(assert (=> b!4264078 (= e!2647649 (or (not (= (map!9680 l2!1460 p!2107) Nil!47247)) (= lt!1511321 (map!9680 (t!353395 l1!1491) p!2107))))))

(declare-fun b!4264076 () Bool)

(declare-fun e!2647648 () List!47371)

(assert (=> b!4264076 (= e!2647648 (Cons!47247 (h!52667 (map!9680 (t!353395 l1!1491) p!2107)) (++!12040 (t!353396 (map!9680 (t!353395 l1!1491) p!2107)) (map!9680 l2!1460 p!2107))))))

(declare-fun b!4264075 () Bool)

(assert (=> b!4264075 (= e!2647648 (map!9680 l2!1460 p!2107))))

(declare-fun d!1256315 () Bool)

(assert (=> d!1256315 e!2647649))

(declare-fun res!1752420 () Bool)

(assert (=> d!1256315 (=> (not res!1752420) (not e!2647649))))

(assert (=> d!1256315 (= res!1752420 (= (content!7452 lt!1511321) ((_ map or) (content!7452 (map!9680 (t!353395 l1!1491) p!2107)) (content!7452 (map!9680 l2!1460 p!2107)))))))

(assert (=> d!1256315 (= lt!1511321 e!2647648)))

(declare-fun c!724620 () Bool)

(assert (=> d!1256315 (= c!724620 ((_ is Nil!47247) (map!9680 (t!353395 l1!1491) p!2107)))))

(assert (=> d!1256315 (= (++!12040 (map!9680 (t!353395 l1!1491) p!2107) (map!9680 l2!1460 p!2107)) lt!1511321)))

(assert (= (and d!1256315 c!724620) b!4264075))

(assert (= (and d!1256315 (not c!724620)) b!4264076))

(assert (= (and d!1256315 res!1752420) b!4264077))

(assert (= (and b!4264077 res!1752421) b!4264078))

(declare-fun m!4854393 () Bool)

(assert (=> b!4264077 m!4854393))

(assert (=> b!4264077 m!4854247))

(declare-fun m!4854395 () Bool)

(assert (=> b!4264077 m!4854395))

(assert (=> b!4264077 m!4854207))

(assert (=> b!4264077 m!4854273))

(assert (=> b!4264076 m!4854207))

(declare-fun m!4854397 () Bool)

(assert (=> b!4264076 m!4854397))

(declare-fun m!4854399 () Bool)

(assert (=> d!1256315 m!4854399))

(assert (=> d!1256315 m!4854247))

(declare-fun m!4854401 () Bool)

(assert (=> d!1256315 m!4854401))

(assert (=> d!1256315 m!4854207))

(assert (=> d!1256315 m!4854281))

(assert (=> d!1256263 d!1256315))

(declare-fun d!1256317 () Bool)

(declare-fun lt!1511322 () List!47371)

(assert (=> d!1256317 (= (size!34614 lt!1511322) (size!34612 (++!12039 (t!353395 l1!1491) l2!1460)))))

(declare-fun e!2647650 () List!47371)

(assert (=> d!1256317 (= lt!1511322 e!2647650)))

(declare-fun c!724621 () Bool)

(assert (=> d!1256317 (= c!724621 ((_ is Nil!47246) (++!12039 (t!353395 l1!1491) l2!1460)))))

(assert (=> d!1256317 (= (map!9680 (++!12039 (t!353395 l1!1491) l2!1460) p!2107) lt!1511322)))

(declare-fun b!4264079 () Bool)

(assert (=> b!4264079 (= e!2647650 Nil!47247)))

(declare-fun b!4264080 () Bool)

(assert (=> b!4264080 (= e!2647650 ($colon$colon!635 (map!9680 (t!353395 (++!12039 (t!353395 l1!1491) l2!1460)) p!2107) (dynLambda!20223 p!2107 (h!52666 (++!12039 (t!353395 l1!1491) l2!1460)))))))

(assert (= (and d!1256317 c!724621) b!4264079))

(assert (= (and d!1256317 (not c!724621)) b!4264080))

(declare-fun b_lambda!126039 () Bool)

(assert (=> (not b_lambda!126039) (not b!4264080)))

(declare-fun t!353415 () Bool)

(declare-fun tb!257059 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353415) tb!257059))

(declare-fun result!313644 () Bool)

(assert (=> tb!257059 (= result!313644 tp_is_empty!22893)))

(assert (=> b!4264080 t!353415))

(declare-fun b_and!337873 () Bool)

(assert (= b_and!337871 (and (=> t!353415 result!313644) b_and!337873)))

(declare-fun m!4854403 () Bool)

(assert (=> d!1256317 m!4854403))

(assert (=> d!1256317 m!4854233))

(declare-fun m!4854405 () Bool)

(assert (=> d!1256317 m!4854405))

(declare-fun m!4854407 () Bool)

(assert (=> b!4264080 m!4854407))

(declare-fun m!4854409 () Bool)

(assert (=> b!4264080 m!4854409))

(assert (=> b!4264080 m!4854407))

(assert (=> b!4264080 m!4854409))

(declare-fun m!4854411 () Bool)

(assert (=> b!4264080 m!4854411))

(assert (=> d!1256263 d!1256317))

(declare-fun d!1256319 () Bool)

(assert (=> d!1256319 (= (map!9680 (++!12039 (t!353395 l1!1491) l2!1460) p!2107) (++!12040 (map!9680 (t!353395 l1!1491) p!2107) (map!9680 l2!1460 p!2107)))))

(assert (=> d!1256319 true))

(declare-fun _$82!122 () Unit!66143)

(assert (=> d!1256319 (= (choose!25992 (t!353395 l1!1491) l2!1460 p!2107) _$82!122)))

(declare-fun bs!599198 () Bool)

(assert (= bs!599198 d!1256319))

(assert (=> bs!599198 m!4854233))

(assert (=> bs!599198 m!4854253))

(assert (=> bs!599198 m!4854233))

(assert (=> bs!599198 m!4854207))

(assert (=> bs!599198 m!4854247))

(assert (=> bs!599198 m!4854207))

(assert (=> bs!599198 m!4854251))

(assert (=> bs!599198 m!4854247))

(assert (=> d!1256263 d!1256319))

(declare-fun b!4264084 () Bool)

(declare-fun e!2647651 () Bool)

(declare-fun lt!1511323 () List!47370)

(assert (=> b!4264084 (= e!2647651 (or (not (= l2!1460 Nil!47246)) (= lt!1511323 (t!353395 l1!1491))))))

(declare-fun b!4264081 () Bool)

(declare-fun e!2647652 () List!47370)

(assert (=> b!4264081 (= e!2647652 l2!1460)))

(declare-fun b!4264082 () Bool)

(assert (=> b!4264082 (= e!2647652 (Cons!47246 (h!52666 (t!353395 l1!1491)) (++!12039 (t!353395 (t!353395 l1!1491)) l2!1460)))))

(declare-fun d!1256323 () Bool)

(assert (=> d!1256323 e!2647651))

(declare-fun res!1752423 () Bool)

(assert (=> d!1256323 (=> (not res!1752423) (not e!2647651))))

(assert (=> d!1256323 (= res!1752423 (= (content!7450 lt!1511323) ((_ map or) (content!7450 (t!353395 l1!1491)) (content!7450 l2!1460))))))

(assert (=> d!1256323 (= lt!1511323 e!2647652)))

(declare-fun c!724622 () Bool)

(assert (=> d!1256323 (= c!724622 ((_ is Nil!47246) (t!353395 l1!1491)))))

(assert (=> d!1256323 (= (++!12039 (t!353395 l1!1491) l2!1460) lt!1511323)))

(declare-fun b!4264083 () Bool)

(declare-fun res!1752422 () Bool)

(assert (=> b!4264083 (=> (not res!1752422) (not e!2647651))))

(assert (=> b!4264083 (= res!1752422 (= (size!34612 lt!1511323) (+ (size!34612 (t!353395 l1!1491)) (size!34612 l2!1460))))))

(assert (= (and d!1256323 c!724622) b!4264081))

(assert (= (and d!1256323 (not c!724622)) b!4264082))

(assert (= (and d!1256323 res!1752423) b!4264083))

(assert (= (and b!4264083 res!1752422) b!4264084))

(declare-fun m!4854413 () Bool)

(assert (=> b!4264082 m!4854413))

(declare-fun m!4854415 () Bool)

(assert (=> d!1256323 m!4854415))

(assert (=> d!1256323 m!4854369))

(assert (=> d!1256323 m!4854239))

(declare-fun m!4854417 () Bool)

(assert (=> b!4264083 m!4854417))

(assert (=> b!4264083 m!4854377))

(assert (=> b!4264083 m!4854245))

(assert (=> d!1256263 d!1256323))

(declare-fun d!1256325 () Bool)

(declare-fun lt!1511324 () List!47371)

(assert (=> d!1256325 (= (size!34614 lt!1511324) (size!34612 (t!353395 l1!1491)))))

(declare-fun e!2647653 () List!47371)

(assert (=> d!1256325 (= lt!1511324 e!2647653)))

(declare-fun c!724623 () Bool)

(assert (=> d!1256325 (= c!724623 ((_ is Nil!47246) (t!353395 l1!1491)))))

(assert (=> d!1256325 (= (map!9680 (t!353395 l1!1491) p!2107) lt!1511324)))

(declare-fun b!4264085 () Bool)

(assert (=> b!4264085 (= e!2647653 Nil!47247)))

(declare-fun b!4264086 () Bool)

(assert (=> b!4264086 (= e!2647653 ($colon$colon!635 (map!9680 (t!353395 (t!353395 l1!1491)) p!2107) (dynLambda!20223 p!2107 (h!52666 (t!353395 l1!1491)))))))

(assert (= (and d!1256325 c!724623) b!4264085))

(assert (= (and d!1256325 (not c!724623)) b!4264086))

(declare-fun b_lambda!126041 () Bool)

(assert (=> (not b_lambda!126041) (not b!4264086)))

(declare-fun t!353418 () Bool)

(declare-fun tb!257061 () Bool)

(assert (=> (and start!408542 (= p!2107 p!2107) t!353418) tb!257061))

(declare-fun result!313646 () Bool)

(assert (=> tb!257061 (= result!313646 tp_is_empty!22893)))

(assert (=> b!4264086 t!353418))

(declare-fun b_and!337875 () Bool)

(assert (= b_and!337873 (and (=> t!353418 result!313646) b_and!337875)))

(declare-fun m!4854419 () Bool)

(assert (=> d!1256325 m!4854419))

(assert (=> d!1256325 m!4854377))

(declare-fun m!4854421 () Bool)

(assert (=> b!4264086 m!4854421))

(declare-fun m!4854423 () Bool)

(assert (=> b!4264086 m!4854423))

(assert (=> b!4264086 m!4854421))

(assert (=> b!4264086 m!4854423))

(declare-fun m!4854425 () Bool)

(assert (=> b!4264086 m!4854425))

(assert (=> d!1256263 d!1256325))

(declare-fun d!1256329 () Bool)

(declare-fun lt!1511326 () Int)

(assert (=> d!1256329 (>= lt!1511326 0)))

(declare-fun e!2647655 () Int)

(assert (=> d!1256329 (= lt!1511326 e!2647655)))

(declare-fun c!724625 () Bool)

(assert (=> d!1256329 (= c!724625 ((_ is Nil!47247) lt!1511305))))

(assert (=> d!1256329 (= (size!34614 lt!1511305) lt!1511326)))

(declare-fun b!4264089 () Bool)

(assert (=> b!4264089 (= e!2647655 0)))

(declare-fun b!4264090 () Bool)

(assert (=> b!4264090 (= e!2647655 (+ 1 (size!34614 (t!353396 lt!1511305))))))

(assert (= (and d!1256329 c!724625) b!4264089))

(assert (= (and d!1256329 (not c!724625)) b!4264090))

(declare-fun m!4854435 () Bool)

(assert (=> b!4264090 m!4854435))

(assert (=> d!1256275 d!1256329))

(assert (=> d!1256275 d!1256307))

(declare-fun d!1256331 () Bool)

(declare-fun lt!1511327 () Int)

(assert (=> d!1256331 (>= lt!1511327 0)))

(declare-fun e!2647656 () Int)

(assert (=> d!1256331 (= lt!1511327 e!2647656)))

(declare-fun c!724626 () Bool)

(assert (=> d!1256331 (= c!724626 ((_ is Nil!47247) lt!1511304))))

(assert (=> d!1256331 (= (size!34614 lt!1511304) lt!1511327)))

(declare-fun b!4264091 () Bool)

(assert (=> b!4264091 (= e!2647656 0)))

(declare-fun b!4264092 () Bool)

(assert (=> b!4264092 (= e!2647656 (+ 1 (size!34614 (t!353396 lt!1511304))))))

(assert (= (and d!1256331 c!724626) b!4264091))

(assert (= (and d!1256331 (not c!724626)) b!4264092))

(declare-fun m!4854439 () Bool)

(assert (=> b!4264092 m!4854439))

(assert (=> d!1256269 d!1256331))

(declare-fun d!1256337 () Bool)

(declare-fun lt!1511329 () Int)

(assert (=> d!1256337 (>= lt!1511329 0)))

(declare-fun e!2647658 () Int)

(assert (=> d!1256337 (= lt!1511329 e!2647658)))

(declare-fun c!724628 () Bool)

(assert (=> d!1256337 (= c!724628 ((_ is Nil!47246) (++!12039 l1!1491 l2!1460)))))

(assert (=> d!1256337 (= (size!34612 (++!12039 l1!1491 l2!1460)) lt!1511329)))

(declare-fun b!4264095 () Bool)

(assert (=> b!4264095 (= e!2647658 0)))

(declare-fun b!4264096 () Bool)

(assert (=> b!4264096 (= e!2647658 (+ 1 (size!34612 (t!353395 (++!12039 l1!1491 l2!1460)))))))

(assert (= (and d!1256337 c!724628) b!4264095))

(assert (= (and d!1256337 (not c!724628)) b!4264096))

(assert (=> b!4264096 m!4854333))

(assert (=> d!1256269 d!1256337))

(declare-fun d!1256339 () Bool)

(assert (=> d!1256339 (= ($colon$colon!635 (map!9680 (t!353395 l1!1491) p!2107) (dynLambda!20223 p!2107 (h!52666 l1!1491))) (Cons!47247 (dynLambda!20223 p!2107 (h!52666 l1!1491)) (map!9680 (t!353395 l1!1491) p!2107)))))

(assert (=> b!4264018 d!1256339))

(assert (=> b!4264018 d!1256325))

(assert (=> b!4263962 d!1256323))

(declare-fun b!4264097 () Bool)

(declare-fun e!2647659 () Bool)

(declare-fun tp!1307269 () Bool)

(assert (=> b!4264097 (= e!2647659 (and tp_is_empty!22889 tp!1307269))))

(assert (=> b!4264024 (= tp!1307268 e!2647659)))

(assert (= (and b!4264024 ((_ is Cons!47246) (t!353395 (t!353395 l2!1460)))) b!4264097))

(declare-fun b!4264098 () Bool)

(declare-fun e!2647660 () Bool)

(declare-fun tp!1307270 () Bool)

(assert (=> b!4264098 (= e!2647660 (and tp_is_empty!22889 tp!1307270))))

(assert (=> b!4264023 (= tp!1307267 e!2647660)))

(assert (= (and b!4264023 ((_ is Cons!47246) (t!353395 (t!353395 l1!1491)))) b!4264098))

(declare-fun b_lambda!126047 () Bool)

(assert (= b_lambda!126041 (or (and start!408542 b_free!126693) b_lambda!126047)))

(declare-fun b_lambda!126049 () Bool)

(assert (= b_lambda!126037 (or (and start!408542 b_free!126693) b_lambda!126049)))

(declare-fun b_lambda!126051 () Bool)

(assert (= b_lambda!126039 (or (and start!408542 b_free!126693) b_lambda!126051)))

(declare-fun b_lambda!126053 () Bool)

(assert (= b_lambda!126035 (or (and start!408542 b_free!126693) b_lambda!126053)))

(check-sat (not b_lambda!126053) tp_is_empty!22889 (not b!4264063) (not b!4264098) (not b!4264034) (not b_lambda!126049) (not b!4264097) (not b!4264072) (not b!4264044) (not b!4264068) (not b_lambda!126031) (not b_lambda!126033) (not b_lambda!126029) (not b!4264083) (not b!4264082) (not b_lambda!126047) (not d!1256291) (not b!4264036) (not b!4264046) (not b!4264096) (not b_lambda!126051) (not d!1256325) (not b!4264048) tp_is_empty!22893 (not d!1256315) (not b!4264062) (not b!4264090) (not d!1256303) (not b_next!127397) (not b!4264074) (not d!1256319) (not b!4264076) (not b!4264038) (not b!4264092) (not b!4264054) (not d!1256323) (not b!4264080) b_and!337875 (not b!4264032) (not b!4264086) (not b!4264060) (not d!1256317) (not b!4264066) (not d!1256281) (not b!4264070) (not b!4264026) (not b!4264077))
(check-sat b_and!337875 (not b_next!127397))
