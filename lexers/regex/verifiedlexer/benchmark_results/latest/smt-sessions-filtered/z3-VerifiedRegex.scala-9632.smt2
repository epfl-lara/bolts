; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506372 () Bool)

(assert start!506372)

(declare-fun b!4851957 () Bool)

(declare-fun res!2071114 () Bool)

(declare-fun e!3033151 () Bool)

(assert (=> b!4851957 (=> (not res!2071114) (not e!3033151))))

(declare-datatypes ((K!17449 0))(
  ( (K!17450 (val!22265 Int)) )
))
(declare-datatypes ((V!17695 0))(
  ( (V!17696 (val!22266 Int)) )
))
(declare-datatypes ((tuple2!59372 0))(
  ( (tuple2!59373 (_1!32980 K!17449) (_2!32980 V!17695)) )
))
(declare-datatypes ((List!55743 0))(
  ( (Nil!55619) (Cons!55619 (h!62056 tuple2!59372) (t!363239 List!55743)) )
))
(declare-fun l!15167 () List!55743)

(declare-fun key!6935 () K!17449)

(get-info :version)

(assert (=> b!4851957 (= res!2071114 (and (or (not ((_ is Cons!55619) l!15167)) (not (= (_1!32980 (h!62056 l!15167)) key!6935))) (not ((_ is Cons!55619) l!15167))))))

(declare-fun b!4851958 () Bool)

(declare-fun containsKey!4730 (List!55743 K!17449) Bool)

(assert (=> b!4851958 (= e!3033151 (not (containsKey!4730 l!15167 key!6935)))))

(declare-fun res!2071115 () Bool)

(assert (=> start!506372 (=> (not res!2071115) (not e!3033151))))

(declare-fun noDuplicateKeys!2620 (List!55743) Bool)

(assert (=> start!506372 (= res!2071115 (noDuplicateKeys!2620 l!15167))))

(assert (=> start!506372 e!3033151))

(declare-fun e!3033152 () Bool)

(assert (=> start!506372 e!3033152))

(declare-fun tp_is_empty!35321 () Bool)

(assert (=> start!506372 tp_is_empty!35321))

(declare-fun tp!1364962 () Bool)

(declare-fun b!4851959 () Bool)

(declare-fun tp_is_empty!35323 () Bool)

(assert (=> b!4851959 (= e!3033152 (and tp_is_empty!35321 tp_is_empty!35323 tp!1364962))))

(declare-fun b!4851956 () Bool)

(declare-fun res!2071113 () Bool)

(assert (=> b!4851956 (=> (not res!2071113) (not e!3033151))))

(declare-datatypes ((Option!13725 0))(
  ( (None!13724) (Some!13724 (v!49518 tuple2!59372)) )
))
(declare-fun isDefined!10815 (Option!13725) Bool)

(declare-fun getPair!1128 (List!55743 K!17449) Option!13725)

(assert (=> b!4851956 (= res!2071113 (isDefined!10815 (getPair!1128 l!15167 key!6935)))))

(assert (= (and start!506372 res!2071115) b!4851956))

(assert (= (and b!4851956 res!2071113) b!4851957))

(assert (= (and b!4851957 res!2071114) b!4851958))

(assert (= (and start!506372 ((_ is Cons!55619) l!15167)) b!4851959))

(declare-fun m!5850308 () Bool)

(assert (=> b!4851958 m!5850308))

(declare-fun m!5850310 () Bool)

(assert (=> start!506372 m!5850310))

(declare-fun m!5850312 () Bool)

(assert (=> b!4851956 m!5850312))

(assert (=> b!4851956 m!5850312))

(declare-fun m!5850314 () Bool)

(assert (=> b!4851956 m!5850314))

(check-sat (not b!4851958) tp_is_empty!35321 (not start!506372) (not b!4851956) (not b!4851959) tp_is_empty!35323)
(check-sat)
(get-model)

(declare-fun d!1557519 () Bool)

(declare-fun res!2071130 () Bool)

(declare-fun e!3033167 () Bool)

(assert (=> d!1557519 (=> res!2071130 e!3033167)))

(assert (=> d!1557519 (= res!2071130 (and ((_ is Cons!55619) l!15167) (= (_1!32980 (h!62056 l!15167)) key!6935)))))

(assert (=> d!1557519 (= (containsKey!4730 l!15167 key!6935) e!3033167)))

(declare-fun b!4851974 () Bool)

(declare-fun e!3033168 () Bool)

(assert (=> b!4851974 (= e!3033167 e!3033168)))

(declare-fun res!2071131 () Bool)

(assert (=> b!4851974 (=> (not res!2071131) (not e!3033168))))

(assert (=> b!4851974 (= res!2071131 ((_ is Cons!55619) l!15167))))

(declare-fun b!4851975 () Bool)

(assert (=> b!4851975 (= e!3033168 (containsKey!4730 (t!363239 l!15167) key!6935))))

(assert (= (and d!1557519 (not res!2071130)) b!4851974))

(assert (= (and b!4851974 res!2071131) b!4851975))

(declare-fun m!5850318 () Bool)

(assert (=> b!4851975 m!5850318))

(assert (=> b!4851958 d!1557519))

(declare-fun d!1557523 () Bool)

(declare-fun isEmpty!29769 (Option!13725) Bool)

(assert (=> d!1557523 (= (isDefined!10815 (getPair!1128 l!15167 key!6935)) (not (isEmpty!29769 (getPair!1128 l!15167 key!6935))))))

(declare-fun bs!1173011 () Bool)

(assert (= bs!1173011 d!1557523))

(assert (=> bs!1173011 m!5850312))

(declare-fun m!5850324 () Bool)

(assert (=> bs!1173011 m!5850324))

(assert (=> b!4851956 d!1557523))

(declare-fun b!4852010 () Bool)

(declare-fun res!2071151 () Bool)

(declare-fun e!3033194 () Bool)

(assert (=> b!4852010 (=> (not res!2071151) (not e!3033194))))

(declare-fun lt!1990113 () Option!13725)

(declare-fun get!19095 (Option!13725) tuple2!59372)

(assert (=> b!4852010 (= res!2071151 (= (_1!32980 (get!19095 lt!1990113)) key!6935))))

(declare-fun b!4852011 () Bool)

(declare-fun contains!19286 (List!55743 tuple2!59372) Bool)

(assert (=> b!4852011 (= e!3033194 (contains!19286 l!15167 (get!19095 lt!1990113)))))

(declare-fun b!4852012 () Bool)

(declare-fun e!3033191 () Option!13725)

(assert (=> b!4852012 (= e!3033191 (getPair!1128 (t!363239 l!15167) key!6935))))

(declare-fun b!4852014 () Bool)

(assert (=> b!4852014 (= e!3033191 None!13724)))

(declare-fun b!4852015 () Bool)

(declare-fun e!3033192 () Bool)

(assert (=> b!4852015 (= e!3033192 e!3033194)))

(declare-fun res!2071153 () Bool)

(assert (=> b!4852015 (=> (not res!2071153) (not e!3033194))))

(assert (=> b!4852015 (= res!2071153 (isDefined!10815 lt!1990113))))

(declare-fun b!4852016 () Bool)

(declare-fun e!3033193 () Option!13725)

(assert (=> b!4852016 (= e!3033193 e!3033191)))

(declare-fun c!825655 () Bool)

(assert (=> b!4852016 (= c!825655 ((_ is Cons!55619) l!15167))))

(declare-fun b!4852017 () Bool)

(declare-fun e!3033195 () Bool)

(assert (=> b!4852017 (= e!3033195 (not (containsKey!4730 l!15167 key!6935)))))

(declare-fun b!4852013 () Bool)

(assert (=> b!4852013 (= e!3033193 (Some!13724 (h!62056 l!15167)))))

(declare-fun d!1557527 () Bool)

(assert (=> d!1557527 e!3033192))

(declare-fun res!2071150 () Bool)

(assert (=> d!1557527 (=> res!2071150 e!3033192)))

(assert (=> d!1557527 (= res!2071150 e!3033195)))

(declare-fun res!2071152 () Bool)

(assert (=> d!1557527 (=> (not res!2071152) (not e!3033195))))

(assert (=> d!1557527 (= res!2071152 (isEmpty!29769 lt!1990113))))

(assert (=> d!1557527 (= lt!1990113 e!3033193)))

(declare-fun c!825656 () Bool)

(assert (=> d!1557527 (= c!825656 (and ((_ is Cons!55619) l!15167) (= (_1!32980 (h!62056 l!15167)) key!6935)))))

(assert (=> d!1557527 (noDuplicateKeys!2620 l!15167)))

(assert (=> d!1557527 (= (getPair!1128 l!15167 key!6935) lt!1990113)))

(assert (= (and d!1557527 c!825656) b!4852013))

(assert (= (and d!1557527 (not c!825656)) b!4852016))

(assert (= (and b!4852016 c!825655) b!4852012))

(assert (= (and b!4852016 (not c!825655)) b!4852014))

(assert (= (and d!1557527 res!2071152) b!4852017))

(assert (= (and d!1557527 (not res!2071150)) b!4852015))

(assert (= (and b!4852015 res!2071153) b!4852010))

(assert (= (and b!4852010 res!2071151) b!4852011))

(declare-fun m!5850328 () Bool)

(assert (=> b!4852010 m!5850328))

(declare-fun m!5850330 () Bool)

(assert (=> b!4852015 m!5850330))

(declare-fun m!5850332 () Bool)

(assert (=> d!1557527 m!5850332))

(assert (=> d!1557527 m!5850310))

(assert (=> b!4852017 m!5850308))

(declare-fun m!5850334 () Bool)

(assert (=> b!4852012 m!5850334))

(assert (=> b!4852011 m!5850328))

(assert (=> b!4852011 m!5850328))

(declare-fun m!5850336 () Bool)

(assert (=> b!4852011 m!5850336))

(assert (=> b!4851956 d!1557527))

(declare-fun d!1557531 () Bool)

(declare-fun res!2071162 () Bool)

(declare-fun e!3033208 () Bool)

(assert (=> d!1557531 (=> res!2071162 e!3033208)))

(assert (=> d!1557531 (= res!2071162 (not ((_ is Cons!55619) l!15167)))))

(assert (=> d!1557531 (= (noDuplicateKeys!2620 l!15167) e!3033208)))

(declare-fun b!4852035 () Bool)

(declare-fun e!3033209 () Bool)

(assert (=> b!4852035 (= e!3033208 e!3033209)))

(declare-fun res!2071163 () Bool)

(assert (=> b!4852035 (=> (not res!2071163) (not e!3033209))))

(assert (=> b!4852035 (= res!2071163 (not (containsKey!4730 (t!363239 l!15167) (_1!32980 (h!62056 l!15167)))))))

(declare-fun b!4852036 () Bool)

(assert (=> b!4852036 (= e!3033209 (noDuplicateKeys!2620 (t!363239 l!15167)))))

(assert (= (and d!1557531 (not res!2071162)) b!4852035))

(assert (= (and b!4852035 res!2071163) b!4852036))

(declare-fun m!5850348 () Bool)

(assert (=> b!4852035 m!5850348))

(declare-fun m!5850350 () Bool)

(assert (=> b!4852036 m!5850350))

(assert (=> start!506372 d!1557531))

(declare-fun tp!1364968 () Bool)

(declare-fun b!4852041 () Bool)

(declare-fun e!3033212 () Bool)

(assert (=> b!4852041 (= e!3033212 (and tp_is_empty!35321 tp_is_empty!35323 tp!1364968))))

(assert (=> b!4851959 (= tp!1364962 e!3033212)))

(assert (= (and b!4851959 ((_ is Cons!55619) (t!363239 l!15167))) b!4852041))

(check-sat (not b!4851975) (not d!1557527) (not b!4852010) (not b!4852041) (not b!4852036) (not b!4852017) (not b!4852011) (not d!1557523) tp_is_empty!35323 (not b!4852015) tp_is_empty!35321 (not b!4852035) (not b!4852012))
(check-sat)
(get-model)

(declare-fun d!1557533 () Bool)

(assert (=> d!1557533 (= (isDefined!10815 lt!1990113) (not (isEmpty!29769 lt!1990113)))))

(declare-fun bs!1173013 () Bool)

(assert (= bs!1173013 d!1557533))

(assert (=> bs!1173013 m!5850332))

(assert (=> b!4852015 d!1557533))

(declare-fun d!1557535 () Bool)

(declare-fun res!2071164 () Bool)

(declare-fun e!3033213 () Bool)

(assert (=> d!1557535 (=> res!2071164 e!3033213)))

(assert (=> d!1557535 (= res!2071164 (and ((_ is Cons!55619) (t!363239 l!15167)) (= (_1!32980 (h!62056 (t!363239 l!15167))) (_1!32980 (h!62056 l!15167)))))))

(assert (=> d!1557535 (= (containsKey!4730 (t!363239 l!15167) (_1!32980 (h!62056 l!15167))) e!3033213)))

(declare-fun b!4852042 () Bool)

(declare-fun e!3033214 () Bool)

(assert (=> b!4852042 (= e!3033213 e!3033214)))

(declare-fun res!2071165 () Bool)

(assert (=> b!4852042 (=> (not res!2071165) (not e!3033214))))

(assert (=> b!4852042 (= res!2071165 ((_ is Cons!55619) (t!363239 l!15167)))))

(declare-fun b!4852043 () Bool)

(assert (=> b!4852043 (= e!3033214 (containsKey!4730 (t!363239 (t!363239 l!15167)) (_1!32980 (h!62056 l!15167))))))

(assert (= (and d!1557535 (not res!2071164)) b!4852042))

(assert (= (and b!4852042 res!2071165) b!4852043))

(declare-fun m!5850352 () Bool)

(assert (=> b!4852043 m!5850352))

(assert (=> b!4852035 d!1557535))

(declare-fun d!1557537 () Bool)

(assert (=> d!1557537 (= (get!19095 lt!1990113) (v!49518 lt!1990113))))

(assert (=> b!4852010 d!1557537))

(declare-fun d!1557539 () Bool)

(declare-fun res!2071166 () Bool)

(declare-fun e!3033215 () Bool)

(assert (=> d!1557539 (=> res!2071166 e!3033215)))

(assert (=> d!1557539 (= res!2071166 (and ((_ is Cons!55619) (t!363239 l!15167)) (= (_1!32980 (h!62056 (t!363239 l!15167))) key!6935)))))

(assert (=> d!1557539 (= (containsKey!4730 (t!363239 l!15167) key!6935) e!3033215)))

(declare-fun b!4852044 () Bool)

(declare-fun e!3033216 () Bool)

(assert (=> b!4852044 (= e!3033215 e!3033216)))

(declare-fun res!2071167 () Bool)

(assert (=> b!4852044 (=> (not res!2071167) (not e!3033216))))

(assert (=> b!4852044 (= res!2071167 ((_ is Cons!55619) (t!363239 l!15167)))))

(declare-fun b!4852045 () Bool)

(assert (=> b!4852045 (= e!3033216 (containsKey!4730 (t!363239 (t!363239 l!15167)) key!6935))))

(assert (= (and d!1557539 (not res!2071166)) b!4852044))

(assert (= (and b!4852044 res!2071167) b!4852045))

(declare-fun m!5850354 () Bool)

(assert (=> b!4852045 m!5850354))

(assert (=> b!4851975 d!1557539))

(declare-fun d!1557541 () Bool)

(declare-fun res!2071168 () Bool)

(declare-fun e!3033217 () Bool)

(assert (=> d!1557541 (=> res!2071168 e!3033217)))

(assert (=> d!1557541 (= res!2071168 (not ((_ is Cons!55619) (t!363239 l!15167))))))

(assert (=> d!1557541 (= (noDuplicateKeys!2620 (t!363239 l!15167)) e!3033217)))

(declare-fun b!4852046 () Bool)

(declare-fun e!3033218 () Bool)

(assert (=> b!4852046 (= e!3033217 e!3033218)))

(declare-fun res!2071169 () Bool)

(assert (=> b!4852046 (=> (not res!2071169) (not e!3033218))))

(assert (=> b!4852046 (= res!2071169 (not (containsKey!4730 (t!363239 (t!363239 l!15167)) (_1!32980 (h!62056 (t!363239 l!15167))))))))

(declare-fun b!4852047 () Bool)

(assert (=> b!4852047 (= e!3033218 (noDuplicateKeys!2620 (t!363239 (t!363239 l!15167))))))

(assert (= (and d!1557541 (not res!2071168)) b!4852046))

(assert (= (and b!4852046 res!2071169) b!4852047))

(declare-fun m!5850356 () Bool)

(assert (=> b!4852046 m!5850356))

(declare-fun m!5850358 () Bool)

(assert (=> b!4852047 m!5850358))

(assert (=> b!4852036 d!1557541))

(declare-fun d!1557543 () Bool)

(assert (=> d!1557543 (= (isEmpty!29769 (getPair!1128 l!15167 key!6935)) (not ((_ is Some!13724) (getPair!1128 l!15167 key!6935))))))

(assert (=> d!1557523 d!1557543))

(declare-fun b!4852048 () Bool)

(declare-fun res!2071171 () Bool)

(declare-fun e!3033222 () Bool)

(assert (=> b!4852048 (=> (not res!2071171) (not e!3033222))))

(declare-fun lt!1990115 () Option!13725)

(assert (=> b!4852048 (= res!2071171 (= (_1!32980 (get!19095 lt!1990115)) key!6935))))

(declare-fun b!4852049 () Bool)

(assert (=> b!4852049 (= e!3033222 (contains!19286 (t!363239 l!15167) (get!19095 lt!1990115)))))

(declare-fun b!4852050 () Bool)

(declare-fun e!3033219 () Option!13725)

(assert (=> b!4852050 (= e!3033219 (getPair!1128 (t!363239 (t!363239 l!15167)) key!6935))))

(declare-fun b!4852052 () Bool)

(assert (=> b!4852052 (= e!3033219 None!13724)))

(declare-fun b!4852053 () Bool)

(declare-fun e!3033220 () Bool)

(assert (=> b!4852053 (= e!3033220 e!3033222)))

(declare-fun res!2071173 () Bool)

(assert (=> b!4852053 (=> (not res!2071173) (not e!3033222))))

(assert (=> b!4852053 (= res!2071173 (isDefined!10815 lt!1990115))))

(declare-fun b!4852054 () Bool)

(declare-fun e!3033221 () Option!13725)

(assert (=> b!4852054 (= e!3033221 e!3033219)))

(declare-fun c!825659 () Bool)

(assert (=> b!4852054 (= c!825659 ((_ is Cons!55619) (t!363239 l!15167)))))

(declare-fun b!4852055 () Bool)

(declare-fun e!3033223 () Bool)

(assert (=> b!4852055 (= e!3033223 (not (containsKey!4730 (t!363239 l!15167) key!6935)))))

(declare-fun b!4852051 () Bool)

(assert (=> b!4852051 (= e!3033221 (Some!13724 (h!62056 (t!363239 l!15167))))))

(declare-fun d!1557545 () Bool)

(assert (=> d!1557545 e!3033220))

(declare-fun res!2071170 () Bool)

(assert (=> d!1557545 (=> res!2071170 e!3033220)))

(assert (=> d!1557545 (= res!2071170 e!3033223)))

(declare-fun res!2071172 () Bool)

(assert (=> d!1557545 (=> (not res!2071172) (not e!3033223))))

(assert (=> d!1557545 (= res!2071172 (isEmpty!29769 lt!1990115))))

(assert (=> d!1557545 (= lt!1990115 e!3033221)))

(declare-fun c!825660 () Bool)

(assert (=> d!1557545 (= c!825660 (and ((_ is Cons!55619) (t!363239 l!15167)) (= (_1!32980 (h!62056 (t!363239 l!15167))) key!6935)))))

(assert (=> d!1557545 (noDuplicateKeys!2620 (t!363239 l!15167))))

(assert (=> d!1557545 (= (getPair!1128 (t!363239 l!15167) key!6935) lt!1990115)))

(assert (= (and d!1557545 c!825660) b!4852051))

(assert (= (and d!1557545 (not c!825660)) b!4852054))

(assert (= (and b!4852054 c!825659) b!4852050))

(assert (= (and b!4852054 (not c!825659)) b!4852052))

(assert (= (and d!1557545 res!2071172) b!4852055))

(assert (= (and d!1557545 (not res!2071170)) b!4852053))

(assert (= (and b!4852053 res!2071173) b!4852048))

(assert (= (and b!4852048 res!2071171) b!4852049))

(declare-fun m!5850360 () Bool)

(assert (=> b!4852048 m!5850360))

(declare-fun m!5850362 () Bool)

(assert (=> b!4852053 m!5850362))

(declare-fun m!5850364 () Bool)

(assert (=> d!1557545 m!5850364))

(assert (=> d!1557545 m!5850350))

(assert (=> b!4852055 m!5850318))

(declare-fun m!5850366 () Bool)

(assert (=> b!4852050 m!5850366))

(assert (=> b!4852049 m!5850360))

(assert (=> b!4852049 m!5850360))

(declare-fun m!5850368 () Bool)

(assert (=> b!4852049 m!5850368))

(assert (=> b!4852012 d!1557545))

(declare-fun d!1557547 () Bool)

(assert (=> d!1557547 (= (isEmpty!29769 lt!1990113) (not ((_ is Some!13724) lt!1990113)))))

(assert (=> d!1557527 d!1557547))

(assert (=> d!1557527 d!1557531))

(declare-fun d!1557549 () Bool)

(declare-fun lt!1990118 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9907 (List!55743) (InoxSet tuple2!59372))

(assert (=> d!1557549 (= lt!1990118 (select (content!9907 l!15167) (get!19095 lt!1990113)))))

(declare-fun e!3033228 () Bool)

(assert (=> d!1557549 (= lt!1990118 e!3033228)))

(declare-fun res!2071179 () Bool)

(assert (=> d!1557549 (=> (not res!2071179) (not e!3033228))))

(assert (=> d!1557549 (= res!2071179 ((_ is Cons!55619) l!15167))))

(assert (=> d!1557549 (= (contains!19286 l!15167 (get!19095 lt!1990113)) lt!1990118)))

(declare-fun b!4852060 () Bool)

(declare-fun e!3033229 () Bool)

(assert (=> b!4852060 (= e!3033228 e!3033229)))

(declare-fun res!2071178 () Bool)

(assert (=> b!4852060 (=> res!2071178 e!3033229)))

(assert (=> b!4852060 (= res!2071178 (= (h!62056 l!15167) (get!19095 lt!1990113)))))

(declare-fun b!4852061 () Bool)

(assert (=> b!4852061 (= e!3033229 (contains!19286 (t!363239 l!15167) (get!19095 lt!1990113)))))

(assert (= (and d!1557549 res!2071179) b!4852060))

(assert (= (and b!4852060 (not res!2071178)) b!4852061))

(declare-fun m!5850370 () Bool)

(assert (=> d!1557549 m!5850370))

(assert (=> d!1557549 m!5850328))

(declare-fun m!5850372 () Bool)

(assert (=> d!1557549 m!5850372))

(assert (=> b!4852061 m!5850328))

(declare-fun m!5850374 () Bool)

(assert (=> b!4852061 m!5850374))

(assert (=> b!4852011 d!1557549))

(assert (=> b!4852011 d!1557537))

(assert (=> b!4852017 d!1557519))

(declare-fun tp!1364969 () Bool)

(declare-fun b!4852062 () Bool)

(declare-fun e!3033230 () Bool)

(assert (=> b!4852062 (= e!3033230 (and tp_is_empty!35321 tp_is_empty!35323 tp!1364969))))

(assert (=> b!4852041 (= tp!1364968 e!3033230)))

(assert (= (and b!4852041 ((_ is Cons!55619) (t!363239 (t!363239 l!15167)))) b!4852062))

(check-sat tp_is_empty!35321 (not b!4852055) (not b!4852045) (not b!4852062) (not b!4852053) (not d!1557533) (not b!4852043) (not b!4852047) (not d!1557545) (not b!4852046) (not b!4852050) (not d!1557549) (not b!4852049) (not b!4852048) (not b!4852061) tp_is_empty!35323)
(check-sat)
