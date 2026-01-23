; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80692 () Bool)

(assert start!80692)

(declare-fun b!896042 () Bool)

(assert (=> b!896042 true))

(assert (=> b!896042 true))

(assert (=> b!896042 true))

(declare-fun lambda!27760 () Int)

(declare-fun lambda!27759 () Int)

(assert (=> b!896042 (not (= lambda!27760 lambda!27759))))

(assert (=> b!896042 true))

(assert (=> b!896042 true))

(assert (=> b!896042 true))

(declare-fun b!896043 () Bool)

(declare-fun res!407289 () Bool)

(declare-fun e!586533 () Bool)

(assert (=> b!896043 (=> res!407289 e!586533)))

(declare-datatypes ((C!5250 0))(
  ( (C!5251 (val!2873 Int)) )
))
(declare-datatypes ((Regex!2340 0))(
  ( (ElementMatch!2340 (c!145099 C!5250)) (Concat!4173 (regOne!5192 Regex!2340) (regTwo!5192 Regex!2340)) (EmptyExpr!2340) (Star!2340 (reg!2669 Regex!2340)) (EmptyLang!2340) (Union!2340 (regOne!5193 Regex!2340) (regTwo!5193 Regex!2340)) )
))
(declare-fun lt!333401 () Regex!2340)

(declare-fun validRegex!809 (Regex!2340) Bool)

(assert (=> b!896043 (= res!407289 (not (validRegex!809 lt!333401)))))

(declare-fun b!896044 () Bool)

(declare-fun e!586531 () Bool)

(declare-fun tp!281617 () Bool)

(declare-fun tp!281619 () Bool)

(assert (=> b!896044 (= e!586531 (and tp!281617 tp!281619))))

(declare-fun b!896045 () Bool)

(declare-fun tp_is_empty!4323 () Bool)

(assert (=> b!896045 (= e!586531 tp_is_empty!4323)))

(declare-fun b!896046 () Bool)

(declare-fun e!586532 () Bool)

(declare-fun e!586530 () Bool)

(assert (=> b!896046 (= e!586532 (not e!586530))))

(declare-fun res!407293 () Bool)

(assert (=> b!896046 (=> res!407293 e!586530)))

(declare-fun lt!333398 () Bool)

(declare-fun r!15766 () Regex!2340)

(assert (=> b!896046 (= res!407293 (or (not lt!333398) (and (is-Concat!4173 r!15766) (is-EmptyExpr!2340 (regOne!5192 r!15766))) (and (is-Concat!4173 r!15766) (is-EmptyExpr!2340 (regTwo!5192 r!15766))) (is-Concat!4173 r!15766) (is-Union!2340 r!15766) (not (is-Star!2340 r!15766))))))

(declare-datatypes ((List!9570 0))(
  ( (Nil!9554) (Cons!9554 (h!14955 C!5250) (t!100616 List!9570)) )
))
(declare-fun s!10566 () List!9570)

(declare-fun matchRSpec!141 (Regex!2340 List!9570) Bool)

(assert (=> b!896046 (= lt!333398 (matchRSpec!141 r!15766 s!10566))))

(declare-fun matchR!878 (Regex!2340 List!9570) Bool)

(assert (=> b!896046 (= lt!333398 (matchR!878 r!15766 s!10566))))

(declare-datatypes ((Unit!14259 0))(
  ( (Unit!14260) )
))
(declare-fun lt!333402 () Unit!14259)

(declare-fun mainMatchTheorem!141 (Regex!2340 List!9570) Unit!14259)

(assert (=> b!896046 (= lt!333402 (mainMatchTheorem!141 r!15766 s!10566))))

(declare-fun res!407290 () Bool)

(assert (=> start!80692 (=> (not res!407290) (not e!586532))))

(assert (=> start!80692 (= res!407290 (validRegex!809 r!15766))))

(assert (=> start!80692 e!586532))

(assert (=> start!80692 e!586531))

(declare-fun e!586534 () Bool)

(assert (=> start!80692 e!586534))

(assert (=> b!896042 (= e!586530 e!586533)))

(declare-fun res!407292 () Bool)

(assert (=> b!896042 (=> res!407292 e!586533)))

(declare-fun isEmpty!5745 (List!9570) Bool)

(assert (=> b!896042 (= res!407292 (isEmpty!5745 s!10566))))

(declare-fun Exists!117 (Int) Bool)

(assert (=> b!896042 (= (Exists!117 lambda!27759) (Exists!117 lambda!27760))))

(declare-fun lt!333400 () Unit!14259)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!9 (Regex!2340 List!9570) Unit!14259)

(assert (=> b!896042 (= lt!333400 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!9 (reg!2669 r!15766) s!10566))))

(declare-datatypes ((tuple2!10682 0))(
  ( (tuple2!10683 (_1!6167 List!9570) (_2!6167 List!9570)) )
))
(declare-datatypes ((Option!1983 0))(
  ( (None!1982) (Some!1982 (v!19399 tuple2!10682)) )
))
(declare-fun isDefined!1625 (Option!1983) Bool)

(declare-fun findConcatSeparation!89 (Regex!2340 Regex!2340 List!9570 List!9570 List!9570) Option!1983)

(assert (=> b!896042 (= (isDefined!1625 (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 Nil!9554 s!10566 s!10566)) (Exists!117 lambda!27759))))

(declare-fun lt!333399 () Unit!14259)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!89 (Regex!2340 Regex!2340 List!9570) Unit!14259)

(assert (=> b!896042 (= lt!333399 (lemmaFindConcatSeparationEquivalentToExists!89 (reg!2669 r!15766) lt!333401 s!10566))))

(assert (=> b!896042 (= lt!333401 (Star!2340 (reg!2669 r!15766)))))

(declare-fun b!896047 () Bool)

(declare-fun tp!281622 () Bool)

(assert (=> b!896047 (= e!586531 tp!281622)))

(declare-fun b!896048 () Bool)

(declare-fun ++!2491 (List!9570 List!9570) List!9570)

(assert (=> b!896048 (= e!586533 (= (++!2491 Nil!9554 s!10566) s!10566))))

(declare-fun b!896049 () Bool)

(declare-fun tp!281618 () Bool)

(declare-fun tp!281620 () Bool)

(assert (=> b!896049 (= e!586531 (and tp!281618 tp!281620))))

(declare-fun b!896050 () Bool)

(declare-fun res!407291 () Bool)

(assert (=> b!896050 (=> res!407291 e!586533)))

(assert (=> b!896050 (= res!407291 (not (validRegex!809 (reg!2669 r!15766))))))

(declare-fun b!896051 () Bool)

(declare-fun tp!281621 () Bool)

(assert (=> b!896051 (= e!586534 (and tp_is_empty!4323 tp!281621))))

(assert (= (and start!80692 res!407290) b!896046))

(assert (= (and b!896046 (not res!407293)) b!896042))

(assert (= (and b!896042 (not res!407292)) b!896050))

(assert (= (and b!896050 (not res!407291)) b!896043))

(assert (= (and b!896043 (not res!407289)) b!896048))

(assert (= (and start!80692 (is-ElementMatch!2340 r!15766)) b!896045))

(assert (= (and start!80692 (is-Concat!4173 r!15766)) b!896044))

(assert (= (and start!80692 (is-Star!2340 r!15766)) b!896047))

(assert (= (and start!80692 (is-Union!2340 r!15766)) b!896049))

(assert (= (and start!80692 (is-Cons!9554 s!10566)) b!896051))

(declare-fun m!1136033 () Bool)

(assert (=> b!896046 m!1136033))

(declare-fun m!1136035 () Bool)

(assert (=> b!896046 m!1136035))

(declare-fun m!1136037 () Bool)

(assert (=> b!896046 m!1136037))

(declare-fun m!1136039 () Bool)

(assert (=> b!896050 m!1136039))

(declare-fun m!1136041 () Bool)

(assert (=> b!896042 m!1136041))

(declare-fun m!1136043 () Bool)

(assert (=> b!896042 m!1136043))

(declare-fun m!1136045 () Bool)

(assert (=> b!896042 m!1136045))

(declare-fun m!1136047 () Bool)

(assert (=> b!896042 m!1136047))

(declare-fun m!1136049 () Bool)

(assert (=> b!896042 m!1136049))

(assert (=> b!896042 m!1136041))

(assert (=> b!896042 m!1136047))

(declare-fun m!1136051 () Bool)

(assert (=> b!896042 m!1136051))

(declare-fun m!1136053 () Bool)

(assert (=> b!896042 m!1136053))

(declare-fun m!1136055 () Bool)

(assert (=> b!896043 m!1136055))

(declare-fun m!1136057 () Bool)

(assert (=> b!896048 m!1136057))

(declare-fun m!1136059 () Bool)

(assert (=> start!80692 m!1136059))

(push 1)

(assert (not b!896048))

(assert (not b!896042))

(assert (not b!896044))

(assert (not b!896051))

(assert (not b!896046))

(assert tp_is_empty!4323)

(assert (not b!896043))

(assert (not start!80692))

(assert (not b!896047))

(assert (not b!896049))

(assert (not b!896050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!896122 () Bool)

(declare-fun e!586571 () Bool)

(declare-fun e!586572 () Bool)

(assert (=> b!896122 (= e!586571 e!586572)))

(declare-fun c!145105 () Bool)

(assert (=> b!896122 (= c!145105 (is-Star!2340 (reg!2669 r!15766)))))

(declare-fun bm!53247 () Bool)

(declare-fun call!53252 () Bool)

(declare-fun c!145106 () Bool)

(assert (=> bm!53247 (= call!53252 (validRegex!809 (ite c!145106 (regOne!5193 (reg!2669 r!15766)) (regOne!5192 (reg!2669 r!15766)))))))

(declare-fun b!896123 () Bool)

(declare-fun res!407333 () Bool)

(declare-fun e!586570 () Bool)

(assert (=> b!896123 (=> res!407333 e!586570)))

(assert (=> b!896123 (= res!407333 (not (is-Concat!4173 (reg!2669 r!15766))))))

(declare-fun e!586576 () Bool)

(assert (=> b!896123 (= e!586576 e!586570)))

(declare-fun b!896124 () Bool)

(declare-fun e!586573 () Bool)

(assert (=> b!896124 (= e!586570 e!586573)))

(declare-fun res!407337 () Bool)

(assert (=> b!896124 (=> (not res!407337) (not e!586573))))

(assert (=> b!896124 (= res!407337 call!53252)))

(declare-fun b!896125 () Bool)

(declare-fun e!586574 () Bool)

(declare-fun call!53253 () Bool)

(assert (=> b!896125 (= e!586574 call!53253)))

(declare-fun b!896126 () Bool)

(assert (=> b!896126 (= e!586572 e!586576)))

(assert (=> b!896126 (= c!145106 (is-Union!2340 (reg!2669 r!15766)))))

(declare-fun b!896127 () Bool)

(declare-fun e!586575 () Bool)

(assert (=> b!896127 (= e!586572 e!586575)))

(declare-fun res!407334 () Bool)

(declare-fun nullable!618 (Regex!2340) Bool)

(assert (=> b!896127 (= res!407334 (not (nullable!618 (reg!2669 (reg!2669 r!15766)))))))

(assert (=> b!896127 (=> (not res!407334) (not e!586575))))

(declare-fun bm!53248 () Bool)

(declare-fun call!53254 () Bool)

(assert (=> bm!53248 (= call!53253 call!53254)))

(declare-fun bm!53249 () Bool)

(assert (=> bm!53249 (= call!53254 (validRegex!809 (ite c!145105 (reg!2669 (reg!2669 r!15766)) (ite c!145106 (regTwo!5193 (reg!2669 r!15766)) (regTwo!5192 (reg!2669 r!15766))))))))

(declare-fun d!277798 () Bool)

(declare-fun res!407335 () Bool)

(assert (=> d!277798 (=> res!407335 e!586571)))

(assert (=> d!277798 (= res!407335 (is-ElementMatch!2340 (reg!2669 r!15766)))))

(assert (=> d!277798 (= (validRegex!809 (reg!2669 r!15766)) e!586571)))

(declare-fun b!896128 () Bool)

(declare-fun res!407336 () Bool)

(assert (=> b!896128 (=> (not res!407336) (not e!586574))))

(assert (=> b!896128 (= res!407336 call!53252)))

(assert (=> b!896128 (= e!586576 e!586574)))

(declare-fun b!896129 () Bool)

(assert (=> b!896129 (= e!586575 call!53254)))

(declare-fun b!896130 () Bool)

(assert (=> b!896130 (= e!586573 call!53253)))

(assert (= (and d!277798 (not res!407335)) b!896122))

(assert (= (and b!896122 c!145105) b!896127))

(assert (= (and b!896122 (not c!145105)) b!896126))

(assert (= (and b!896127 res!407334) b!896129))

(assert (= (and b!896126 c!145106) b!896128))

(assert (= (and b!896126 (not c!145106)) b!896123))

(assert (= (and b!896128 res!407336) b!896125))

(assert (= (and b!896123 (not res!407333)) b!896124))

(assert (= (and b!896124 res!407337) b!896130))

(assert (= (or b!896125 b!896130) bm!53248))

(assert (= (or b!896128 b!896124) bm!53247))

(assert (= (or b!896129 bm!53248) bm!53249))

(declare-fun m!1136089 () Bool)

(assert (=> bm!53247 m!1136089))

(declare-fun m!1136091 () Bool)

(assert (=> b!896127 m!1136091))

(declare-fun m!1136093 () Bool)

(assert (=> bm!53249 m!1136093))

(assert (=> b!896050 d!277798))

(declare-fun b!896131 () Bool)

(declare-fun e!586578 () Bool)

(declare-fun e!586579 () Bool)

(assert (=> b!896131 (= e!586578 e!586579)))

(declare-fun c!145107 () Bool)

(assert (=> b!896131 (= c!145107 (is-Star!2340 lt!333401))))

(declare-fun bm!53250 () Bool)

(declare-fun call!53255 () Bool)

(declare-fun c!145108 () Bool)

(assert (=> bm!53250 (= call!53255 (validRegex!809 (ite c!145108 (regOne!5193 lt!333401) (regOne!5192 lt!333401))))))

(declare-fun b!896132 () Bool)

(declare-fun res!407338 () Bool)

(declare-fun e!586577 () Bool)

(assert (=> b!896132 (=> res!407338 e!586577)))

(assert (=> b!896132 (= res!407338 (not (is-Concat!4173 lt!333401)))))

(declare-fun e!586583 () Bool)

(assert (=> b!896132 (= e!586583 e!586577)))

(declare-fun b!896133 () Bool)

(declare-fun e!586580 () Bool)

(assert (=> b!896133 (= e!586577 e!586580)))

(declare-fun res!407342 () Bool)

(assert (=> b!896133 (=> (not res!407342) (not e!586580))))

(assert (=> b!896133 (= res!407342 call!53255)))

(declare-fun b!896134 () Bool)

(declare-fun e!586581 () Bool)

(declare-fun call!53256 () Bool)

(assert (=> b!896134 (= e!586581 call!53256)))

(declare-fun b!896135 () Bool)

(assert (=> b!896135 (= e!586579 e!586583)))

(assert (=> b!896135 (= c!145108 (is-Union!2340 lt!333401))))

(declare-fun b!896136 () Bool)

(declare-fun e!586582 () Bool)

(assert (=> b!896136 (= e!586579 e!586582)))

(declare-fun res!407339 () Bool)

(assert (=> b!896136 (= res!407339 (not (nullable!618 (reg!2669 lt!333401))))))

(assert (=> b!896136 (=> (not res!407339) (not e!586582))))

(declare-fun bm!53251 () Bool)

(declare-fun call!53257 () Bool)

(assert (=> bm!53251 (= call!53256 call!53257)))

(declare-fun bm!53252 () Bool)

(assert (=> bm!53252 (= call!53257 (validRegex!809 (ite c!145107 (reg!2669 lt!333401) (ite c!145108 (regTwo!5193 lt!333401) (regTwo!5192 lt!333401)))))))

(declare-fun d!277802 () Bool)

(declare-fun res!407340 () Bool)

(assert (=> d!277802 (=> res!407340 e!586578)))

(assert (=> d!277802 (= res!407340 (is-ElementMatch!2340 lt!333401))))

(assert (=> d!277802 (= (validRegex!809 lt!333401) e!586578)))

(declare-fun b!896137 () Bool)

(declare-fun res!407341 () Bool)

(assert (=> b!896137 (=> (not res!407341) (not e!586581))))

(assert (=> b!896137 (= res!407341 call!53255)))

(assert (=> b!896137 (= e!586583 e!586581)))

(declare-fun b!896138 () Bool)

(assert (=> b!896138 (= e!586582 call!53257)))

(declare-fun b!896139 () Bool)

(assert (=> b!896139 (= e!586580 call!53256)))

(assert (= (and d!277802 (not res!407340)) b!896131))

(assert (= (and b!896131 c!145107) b!896136))

(assert (= (and b!896131 (not c!145107)) b!896135))

(assert (= (and b!896136 res!407339) b!896138))

(assert (= (and b!896135 c!145108) b!896137))

(assert (= (and b!896135 (not c!145108)) b!896132))

(assert (= (and b!896137 res!407341) b!896134))

(assert (= (and b!896132 (not res!407338)) b!896133))

(assert (= (and b!896133 res!407342) b!896139))

(assert (= (or b!896134 b!896139) bm!53251))

(assert (= (or b!896137 b!896133) bm!53250))

(assert (= (or b!896138 bm!53251) bm!53252))

(declare-fun m!1136095 () Bool)

(assert (=> bm!53250 m!1136095))

(declare-fun m!1136097 () Bool)

(assert (=> b!896136 m!1136097))

(declare-fun m!1136099 () Bool)

(assert (=> bm!53252 m!1136099))

(assert (=> b!896043 d!277802))

(declare-fun b!896169 () Bool)

(declare-fun e!586603 () Bool)

(declare-fun lt!333420 () List!9570)

(assert (=> b!896169 (= e!586603 (or (not (= s!10566 Nil!9554)) (= lt!333420 Nil!9554)))))

(declare-fun b!896168 () Bool)

(declare-fun res!407357 () Bool)

(assert (=> b!896168 (=> (not res!407357) (not e!586603))))

(declare-fun size!7853 (List!9570) Int)

(assert (=> b!896168 (= res!407357 (= (size!7853 lt!333420) (+ (size!7853 Nil!9554) (size!7853 s!10566))))))

(declare-fun b!896167 () Bool)

(declare-fun e!586602 () List!9570)

(assert (=> b!896167 (= e!586602 (Cons!9554 (h!14955 Nil!9554) (++!2491 (t!100616 Nil!9554) s!10566)))))

(declare-fun b!896166 () Bool)

(assert (=> b!896166 (= e!586602 s!10566)))

(declare-fun d!277804 () Bool)

(assert (=> d!277804 e!586603))

(declare-fun res!407358 () Bool)

(assert (=> d!277804 (=> (not res!407358) (not e!586603))))

(declare-fun content!1374 (List!9570) (Set C!5250))

(assert (=> d!277804 (= res!407358 (= (content!1374 lt!333420) (set.union (content!1374 Nil!9554) (content!1374 s!10566))))))

(assert (=> d!277804 (= lt!333420 e!586602)))

(declare-fun c!145115 () Bool)

(assert (=> d!277804 (= c!145115 (is-Nil!9554 Nil!9554))))

(assert (=> d!277804 (= (++!2491 Nil!9554 s!10566) lt!333420)))

(assert (= (and d!277804 c!145115) b!896166))

(assert (= (and d!277804 (not c!145115)) b!896167))

(assert (= (and d!277804 res!407358) b!896168))

(assert (= (and b!896168 res!407357) b!896169))

(declare-fun m!1136101 () Bool)

(assert (=> b!896168 m!1136101))

(declare-fun m!1136103 () Bool)

(assert (=> b!896168 m!1136103))

(declare-fun m!1136105 () Bool)

(assert (=> b!896168 m!1136105))

(declare-fun m!1136107 () Bool)

(assert (=> b!896167 m!1136107))

(declare-fun m!1136109 () Bool)

(assert (=> d!277804 m!1136109))

(declare-fun m!1136111 () Bool)

(assert (=> d!277804 m!1136111))

(declare-fun m!1136113 () Bool)

(assert (=> d!277804 m!1136113))

(assert (=> b!896048 d!277804))

(declare-fun d!277806 () Bool)

(assert (=> d!277806 (= (isEmpty!5745 s!10566) (is-Nil!9554 s!10566))))

(assert (=> b!896042 d!277806))

(declare-fun b!896197 () Bool)

(declare-fun e!586621 () Option!1983)

(assert (=> b!896197 (= e!586621 None!1982)))

(declare-fun d!277808 () Bool)

(declare-fun e!586624 () Bool)

(assert (=> d!277808 e!586624))

(declare-fun res!407376 () Bool)

(assert (=> d!277808 (=> res!407376 e!586624)))

(declare-fun e!586625 () Bool)

(assert (=> d!277808 (= res!407376 e!586625)))

(declare-fun res!407375 () Bool)

(assert (=> d!277808 (=> (not res!407375) (not e!586625))))

(declare-fun lt!333427 () Option!1983)

(assert (=> d!277808 (= res!407375 (isDefined!1625 lt!333427))))

(declare-fun e!586622 () Option!1983)

(assert (=> d!277808 (= lt!333427 e!586622)))

(declare-fun c!145122 () Bool)

(declare-fun e!586623 () Bool)

(assert (=> d!277808 (= c!145122 e!586623)))

(declare-fun res!407377 () Bool)

(assert (=> d!277808 (=> (not res!407377) (not e!586623))))

(assert (=> d!277808 (= res!407377 (matchR!878 (reg!2669 r!15766) Nil!9554))))

(assert (=> d!277808 (validRegex!809 (reg!2669 r!15766))))

(assert (=> d!277808 (= (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 Nil!9554 s!10566 s!10566) lt!333427)))

(declare-fun b!896198 () Bool)

(assert (=> b!896198 (= e!586622 (Some!1982 (tuple2!10683 Nil!9554 s!10566)))))

(declare-fun b!896199 () Bool)

(declare-fun res!407378 () Bool)

(assert (=> b!896199 (=> (not res!407378) (not e!586625))))

(declare-fun get!3012 (Option!1983) tuple2!10682)

(assert (=> b!896199 (= res!407378 (matchR!878 (reg!2669 r!15766) (_1!6167 (get!3012 lt!333427))))))

(declare-fun b!896200 () Bool)

(assert (=> b!896200 (= e!586624 (not (isDefined!1625 lt!333427)))))

(declare-fun b!896201 () Bool)

(assert (=> b!896201 (= e!586622 e!586621)))

(declare-fun c!145123 () Bool)

(assert (=> b!896201 (= c!145123 (is-Nil!9554 s!10566))))

(declare-fun b!896202 () Bool)

(declare-fun res!407374 () Bool)

(assert (=> b!896202 (=> (not res!407374) (not e!586625))))

(assert (=> b!896202 (= res!407374 (matchR!878 lt!333401 (_2!6167 (get!3012 lt!333427))))))

(declare-fun b!896203 () Bool)

(declare-fun lt!333429 () Unit!14259)

(declare-fun lt!333428 () Unit!14259)

(assert (=> b!896203 (= lt!333429 lt!333428)))

(assert (=> b!896203 (= (++!2491 (++!2491 Nil!9554 (Cons!9554 (h!14955 s!10566) Nil!9554)) (t!100616 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!117 (List!9570 C!5250 List!9570 List!9570) Unit!14259)

(assert (=> b!896203 (= lt!333428 (lemmaMoveElementToOtherListKeepsConcatEq!117 Nil!9554 (h!14955 s!10566) (t!100616 s!10566) s!10566))))

(assert (=> b!896203 (= e!586621 (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 (++!2491 Nil!9554 (Cons!9554 (h!14955 s!10566) Nil!9554)) (t!100616 s!10566) s!10566))))

(declare-fun b!896204 () Bool)

(assert (=> b!896204 (= e!586625 (= (++!2491 (_1!6167 (get!3012 lt!333427)) (_2!6167 (get!3012 lt!333427))) s!10566))))

(declare-fun b!896205 () Bool)

(assert (=> b!896205 (= e!586623 (matchR!878 lt!333401 s!10566))))

(assert (= (and d!277808 res!407377) b!896205))

(assert (= (and d!277808 c!145122) b!896198))

(assert (= (and d!277808 (not c!145122)) b!896201))

(assert (= (and b!896201 c!145123) b!896197))

(assert (= (and b!896201 (not c!145123)) b!896203))

(assert (= (and d!277808 res!407375) b!896199))

(assert (= (and b!896199 res!407378) b!896202))

(assert (= (and b!896202 res!407374) b!896204))

(assert (= (and d!277808 (not res!407376)) b!896200))

(declare-fun m!1136121 () Bool)

(assert (=> b!896200 m!1136121))

(declare-fun m!1136123 () Bool)

(assert (=> b!896199 m!1136123))

(declare-fun m!1136125 () Bool)

(assert (=> b!896199 m!1136125))

(declare-fun m!1136127 () Bool)

(assert (=> b!896205 m!1136127))

(assert (=> b!896202 m!1136123))

(declare-fun m!1136129 () Bool)

(assert (=> b!896202 m!1136129))

(assert (=> d!277808 m!1136121))

(declare-fun m!1136131 () Bool)

(assert (=> d!277808 m!1136131))

(assert (=> d!277808 m!1136039))

(declare-fun m!1136133 () Bool)

(assert (=> b!896203 m!1136133))

(assert (=> b!896203 m!1136133))

(declare-fun m!1136135 () Bool)

(assert (=> b!896203 m!1136135))

(declare-fun m!1136137 () Bool)

(assert (=> b!896203 m!1136137))

(assert (=> b!896203 m!1136133))

(declare-fun m!1136139 () Bool)

(assert (=> b!896203 m!1136139))

(assert (=> b!896204 m!1136123))

(declare-fun m!1136141 () Bool)

(assert (=> b!896204 m!1136141))

(assert (=> b!896042 d!277808))

(declare-fun bs!234965 () Bool)

(declare-fun d!277812 () Bool)

(assert (= bs!234965 (and d!277812 b!896042)))

(declare-fun lambda!27775 () Int)

(assert (=> bs!234965 (= (= (Star!2340 (reg!2669 r!15766)) lt!333401) (= lambda!27775 lambda!27759))))

(assert (=> bs!234965 (not (= lambda!27775 lambda!27760))))

(assert (=> d!277812 true))

(assert (=> d!277812 true))

(declare-fun lambda!27777 () Int)

(assert (=> bs!234965 (not (= lambda!27777 lambda!27759))))

(assert (=> bs!234965 (= (= (Star!2340 (reg!2669 r!15766)) lt!333401) (= lambda!27777 lambda!27760))))

(declare-fun bs!234966 () Bool)

(assert (= bs!234966 d!277812))

(assert (=> bs!234966 (not (= lambda!27777 lambda!27775))))

(assert (=> d!277812 true))

(assert (=> d!277812 true))

(assert (=> d!277812 (= (Exists!117 lambda!27775) (Exists!117 lambda!27777))))

(declare-fun lt!333432 () Unit!14259)

(declare-fun choose!5381 (Regex!2340 List!9570) Unit!14259)

(assert (=> d!277812 (= lt!333432 (choose!5381 (reg!2669 r!15766) s!10566))))

(assert (=> d!277812 (validRegex!809 (reg!2669 r!15766))))

(assert (=> d!277812 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!9 (reg!2669 r!15766) s!10566) lt!333432)))

(declare-fun m!1136143 () Bool)

(assert (=> bs!234966 m!1136143))

(declare-fun m!1136145 () Bool)

(assert (=> bs!234966 m!1136145))

(declare-fun m!1136147 () Bool)

(assert (=> bs!234966 m!1136147))

(assert (=> bs!234966 m!1136039))

(assert (=> b!896042 d!277812))

(declare-fun d!277814 () Bool)

(declare-fun isEmpty!5747 (Option!1983) Bool)

(assert (=> d!277814 (= (isDefined!1625 (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 Nil!9554 s!10566 s!10566)) (not (isEmpty!5747 (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 Nil!9554 s!10566 s!10566))))))

(declare-fun bs!234967 () Bool)

(assert (= bs!234967 d!277814))

(assert (=> bs!234967 m!1136047))

(declare-fun m!1136149 () Bool)

(assert (=> bs!234967 m!1136149))

(assert (=> b!896042 d!277814))

(declare-fun d!277816 () Bool)

(declare-fun choose!5382 (Int) Bool)

(assert (=> d!277816 (= (Exists!117 lambda!27760) (choose!5382 lambda!27760))))

(declare-fun bs!234968 () Bool)

(assert (= bs!234968 d!277816))

(declare-fun m!1136151 () Bool)

(assert (=> bs!234968 m!1136151))

(assert (=> b!896042 d!277816))

(declare-fun d!277818 () Bool)

(assert (=> d!277818 (= (Exists!117 lambda!27759) (choose!5382 lambda!27759))))

(declare-fun bs!234969 () Bool)

(assert (= bs!234969 d!277818))

(declare-fun m!1136153 () Bool)

(assert (=> bs!234969 m!1136153))

(assert (=> b!896042 d!277818))

(declare-fun bs!234970 () Bool)

(declare-fun d!277820 () Bool)

(assert (= bs!234970 (and d!277820 b!896042)))

(declare-fun lambda!27781 () Int)

(assert (=> bs!234970 (= lambda!27781 lambda!27759)))

(assert (=> bs!234970 (not (= lambda!27781 lambda!27760))))

(declare-fun bs!234971 () Bool)

(assert (= bs!234971 (and d!277820 d!277812)))

(assert (=> bs!234971 (= (= lt!333401 (Star!2340 (reg!2669 r!15766))) (= lambda!27781 lambda!27775))))

(assert (=> bs!234971 (not (= lambda!27781 lambda!27777))))

(assert (=> d!277820 true))

(assert (=> d!277820 true))

(assert (=> d!277820 true))

(assert (=> d!277820 (= (isDefined!1625 (findConcatSeparation!89 (reg!2669 r!15766) lt!333401 Nil!9554 s!10566 s!10566)) (Exists!117 lambda!27781))))

(declare-fun lt!333435 () Unit!14259)

(declare-fun choose!5383 (Regex!2340 Regex!2340 List!9570) Unit!14259)

(assert (=> d!277820 (= lt!333435 (choose!5383 (reg!2669 r!15766) lt!333401 s!10566))))

(assert (=> d!277820 (validRegex!809 (reg!2669 r!15766))))

(assert (=> d!277820 (= (lemmaFindConcatSeparationEquivalentToExists!89 (reg!2669 r!15766) lt!333401 s!10566) lt!333435)))

(declare-fun bs!234972 () Bool)

(assert (= bs!234972 d!277820))

(declare-fun m!1136155 () Bool)

(assert (=> bs!234972 m!1136155))

(assert (=> bs!234972 m!1136047))

(assert (=> bs!234972 m!1136051))

(assert (=> bs!234972 m!1136039))

(assert (=> bs!234972 m!1136047))

(declare-fun m!1136157 () Bool)

(assert (=> bs!234972 m!1136157))

(assert (=> b!896042 d!277820))

(declare-fun b!896252 () Bool)

(declare-fun e!586651 () Bool)

(declare-fun e!586652 () Bool)

(assert (=> b!896252 (= e!586651 e!586652)))

(declare-fun c!145132 () Bool)

(assert (=> b!896252 (= c!145132 (is-Star!2340 r!15766))))

(declare-fun bm!53266 () Bool)

(declare-fun call!53271 () Bool)

(declare-fun c!145133 () Bool)

(assert (=> bm!53266 (= call!53271 (validRegex!809 (ite c!145133 (regOne!5193 r!15766) (regOne!5192 r!15766))))))

(declare-fun b!896253 () Bool)

(declare-fun res!407409 () Bool)

(declare-fun e!586650 () Bool)

(assert (=> b!896253 (=> res!407409 e!586650)))

(assert (=> b!896253 (= res!407409 (not (is-Concat!4173 r!15766)))))

(declare-fun e!586656 () Bool)

(assert (=> b!896253 (= e!586656 e!586650)))

(declare-fun b!896254 () Bool)

(declare-fun e!586653 () Bool)

(assert (=> b!896254 (= e!586650 e!586653)))

(declare-fun res!407413 () Bool)

(assert (=> b!896254 (=> (not res!407413) (not e!586653))))

(assert (=> b!896254 (= res!407413 call!53271)))

(declare-fun b!896255 () Bool)

(declare-fun e!586654 () Bool)

(declare-fun call!53272 () Bool)

(assert (=> b!896255 (= e!586654 call!53272)))

(declare-fun b!896256 () Bool)

(assert (=> b!896256 (= e!586652 e!586656)))

(assert (=> b!896256 (= c!145133 (is-Union!2340 r!15766))))

(declare-fun b!896257 () Bool)

(declare-fun e!586655 () Bool)

(assert (=> b!896257 (= e!586652 e!586655)))

(declare-fun res!407410 () Bool)

(assert (=> b!896257 (= res!407410 (not (nullable!618 (reg!2669 r!15766))))))

(assert (=> b!896257 (=> (not res!407410) (not e!586655))))

(declare-fun bm!53267 () Bool)

(declare-fun call!53273 () Bool)

(assert (=> bm!53267 (= call!53272 call!53273)))

(declare-fun bm!53268 () Bool)

(assert (=> bm!53268 (= call!53273 (validRegex!809 (ite c!145132 (reg!2669 r!15766) (ite c!145133 (regTwo!5193 r!15766) (regTwo!5192 r!15766)))))))

(declare-fun d!277822 () Bool)

(declare-fun res!407411 () Bool)

(assert (=> d!277822 (=> res!407411 e!586651)))

(assert (=> d!277822 (= res!407411 (is-ElementMatch!2340 r!15766))))

(assert (=> d!277822 (= (validRegex!809 r!15766) e!586651)))

(declare-fun b!896258 () Bool)

(declare-fun res!407412 () Bool)

(assert (=> b!896258 (=> (not res!407412) (not e!586654))))

(assert (=> b!896258 (= res!407412 call!53271)))

(assert (=> b!896258 (= e!586656 e!586654)))

(declare-fun b!896259 () Bool)

(assert (=> b!896259 (= e!586655 call!53273)))

(declare-fun b!896260 () Bool)

(assert (=> b!896260 (= e!586653 call!53272)))

(assert (= (and d!277822 (not res!407411)) b!896252))

(assert (= (and b!896252 c!145132) b!896257))

(assert (= (and b!896252 (not c!145132)) b!896256))

(assert (= (and b!896257 res!407410) b!896259))

(assert (= (and b!896256 c!145133) b!896258))

(assert (= (and b!896256 (not c!145133)) b!896253))

(assert (= (and b!896258 res!407412) b!896255))

(assert (= (and b!896253 (not res!407409)) b!896254))

(assert (= (and b!896254 res!407413) b!896260))

(assert (= (or b!896255 b!896260) bm!53267))

(assert (= (or b!896258 b!896254) bm!53266))

(assert (= (or b!896259 bm!53267) bm!53268))

(declare-fun m!1136159 () Bool)

(assert (=> bm!53266 m!1136159))

(declare-fun m!1136161 () Bool)

(assert (=> b!896257 m!1136161))

(declare-fun m!1136163 () Bool)

(assert (=> bm!53268 m!1136163))

(assert (=> start!80692 d!277822))

(declare-fun bs!234976 () Bool)

(declare-fun b!896304 () Bool)

(assert (= bs!234976 (and b!896304 d!277820)))

(declare-fun lambda!27788 () Int)

(assert (=> bs!234976 (not (= lambda!27788 lambda!27781))))

(declare-fun bs!234977 () Bool)

(assert (= bs!234977 (and b!896304 b!896042)))

(assert (=> bs!234977 (= (= r!15766 lt!333401) (= lambda!27788 lambda!27760))))

(declare-fun bs!234978 () Bool)

(assert (= bs!234978 (and b!896304 d!277812)))

(assert (=> bs!234978 (not (= lambda!27788 lambda!27775))))

(assert (=> bs!234978 (= (= r!15766 (Star!2340 (reg!2669 r!15766))) (= lambda!27788 lambda!27777))))

(assert (=> bs!234977 (not (= lambda!27788 lambda!27759))))

(assert (=> b!896304 true))

(assert (=> b!896304 true))

(declare-fun bs!234979 () Bool)

(declare-fun b!896311 () Bool)

(assert (= bs!234979 (and b!896311 b!896304)))

(declare-fun lambda!27789 () Int)

(assert (=> bs!234979 (not (= lambda!27789 lambda!27788))))

(declare-fun bs!234980 () Bool)

(assert (= bs!234980 (and b!896311 d!277820)))

(assert (=> bs!234980 (not (= lambda!27789 lambda!27781))))

(declare-fun bs!234981 () Bool)

(assert (= bs!234981 (and b!896311 b!896042)))

(assert (=> bs!234981 (not (= lambda!27789 lambda!27760))))

(declare-fun bs!234982 () Bool)

(assert (= bs!234982 (and b!896311 d!277812)))

(assert (=> bs!234982 (not (= lambda!27789 lambda!27775))))

(assert (=> bs!234982 (not (= lambda!27789 lambda!27777))))

(assert (=> bs!234981 (not (= lambda!27789 lambda!27759))))

(assert (=> b!896311 true))

(assert (=> b!896311 true))

(declare-fun d!277824 () Bool)

(declare-fun c!145148 () Bool)

(assert (=> d!277824 (= c!145148 (is-EmptyExpr!2340 r!15766))))

(declare-fun e!586682 () Bool)

(assert (=> d!277824 (= (matchRSpec!141 r!15766 s!10566) e!586682)))

(declare-fun e!586683 () Bool)

(declare-fun call!53280 () Bool)

(assert (=> b!896304 (= e!586683 call!53280)))

(declare-fun b!896305 () Bool)

(declare-fun call!53281 () Bool)

(assert (=> b!896305 (= e!586682 call!53281)))

(declare-fun b!896306 () Bool)

(declare-fun res!407433 () Bool)

(assert (=> b!896306 (=> res!407433 e!586683)))

(assert (=> b!896306 (= res!407433 call!53281)))

(declare-fun e!586684 () Bool)

(assert (=> b!896306 (= e!586684 e!586683)))

(declare-fun bm!53275 () Bool)

(declare-fun c!145149 () Bool)

(assert (=> bm!53275 (= call!53280 (Exists!117 (ite c!145149 lambda!27788 lambda!27789)))))

(declare-fun b!896307 () Bool)

(declare-fun e!586688 () Bool)

(assert (=> b!896307 (= e!586688 (matchRSpec!141 (regTwo!5193 r!15766) s!10566))))

(declare-fun b!896308 () Bool)

(declare-fun e!586687 () Bool)

(assert (=> b!896308 (= e!586682 e!586687)))

(declare-fun res!407434 () Bool)

(assert (=> b!896308 (= res!407434 (not (is-EmptyLang!2340 r!15766)))))

(assert (=> b!896308 (=> (not res!407434) (not e!586687))))

(declare-fun b!896309 () Bool)

(declare-fun c!145147 () Bool)

(assert (=> b!896309 (= c!145147 (is-ElementMatch!2340 r!15766))))

(declare-fun e!586685 () Bool)

(assert (=> b!896309 (= e!586687 e!586685)))

(declare-fun b!896310 () Bool)

(declare-fun e!586686 () Bool)

(assert (=> b!896310 (= e!586686 e!586688)))

(declare-fun res!407435 () Bool)

(assert (=> b!896310 (= res!407435 (matchRSpec!141 (regOne!5193 r!15766) s!10566))))

(assert (=> b!896310 (=> res!407435 e!586688)))

(declare-fun bm!53276 () Bool)

(assert (=> bm!53276 (= call!53281 (isEmpty!5745 s!10566))))

(assert (=> b!896311 (= e!586684 call!53280)))

(declare-fun b!896312 () Bool)

(assert (=> b!896312 (= e!586685 (= s!10566 (Cons!9554 (c!145099 r!15766) Nil!9554)))))

(declare-fun b!896313 () Bool)

(assert (=> b!896313 (= e!586686 e!586684)))

(assert (=> b!896313 (= c!145149 (is-Star!2340 r!15766))))

(declare-fun b!896314 () Bool)

(declare-fun c!145146 () Bool)

(assert (=> b!896314 (= c!145146 (is-Union!2340 r!15766))))

(assert (=> b!896314 (= e!586685 e!586686)))

(assert (= (and d!277824 c!145148) b!896305))

(assert (= (and d!277824 (not c!145148)) b!896308))

(assert (= (and b!896308 res!407434) b!896309))

(assert (= (and b!896309 c!145147) b!896312))

(assert (= (and b!896309 (not c!145147)) b!896314))

(assert (= (and b!896314 c!145146) b!896310))

(assert (= (and b!896314 (not c!145146)) b!896313))

(assert (= (and b!896310 (not res!407435)) b!896307))

(assert (= (and b!896313 c!145149) b!896306))

(assert (= (and b!896313 (not c!145149)) b!896311))

(assert (= (and b!896306 (not res!407433)) b!896304))

(assert (= (or b!896304 b!896311) bm!53275))

(assert (= (or b!896305 b!896306) bm!53276))

(declare-fun m!1136171 () Bool)

(assert (=> bm!53275 m!1136171))

(declare-fun m!1136173 () Bool)

(assert (=> b!896307 m!1136173))

(declare-fun m!1136175 () Bool)

(assert (=> b!896310 m!1136175))

(assert (=> bm!53276 m!1136049))

(assert (=> b!896046 d!277824))

(declare-fun b!896371 () Bool)

(declare-fun res!407472 () Bool)

(declare-fun e!586719 () Bool)

(assert (=> b!896371 (=> (not res!407472) (not e!586719))))

(declare-fun tail!1145 (List!9570) List!9570)

(assert (=> b!896371 (= res!407472 (isEmpty!5745 (tail!1145 s!10566)))))

(declare-fun d!277828 () Bool)

(declare-fun e!586720 () Bool)

(assert (=> d!277828 e!586720))

(declare-fun c!145162 () Bool)

(assert (=> d!277828 (= c!145162 (is-EmptyExpr!2340 r!15766))))

(declare-fun lt!333440 () Bool)

(declare-fun e!586717 () Bool)

(assert (=> d!277828 (= lt!333440 e!586717)))

(declare-fun c!145164 () Bool)

(assert (=> d!277828 (= c!145164 (isEmpty!5745 s!10566))))

(assert (=> d!277828 (validRegex!809 r!15766)))

(assert (=> d!277828 (= (matchR!878 r!15766 s!10566) lt!333440)))

(declare-fun b!896372 () Bool)

(declare-fun e!586718 () Bool)

(declare-fun e!586721 () Bool)

(assert (=> b!896372 (= e!586718 e!586721)))

(declare-fun res!407470 () Bool)

(assert (=> b!896372 (=> (not res!407470) (not e!586721))))

(assert (=> b!896372 (= res!407470 (not lt!333440))))

(declare-fun b!896373 () Bool)

(declare-fun e!586723 () Bool)

(assert (=> b!896373 (= e!586720 e!586723)))

(declare-fun c!145163 () Bool)

(assert (=> b!896373 (= c!145163 (is-EmptyLang!2340 r!15766))))

(declare-fun b!896374 () Bool)

(declare-fun e!586722 () Bool)

(declare-fun head!1583 (List!9570) C!5250)

(assert (=> b!896374 (= e!586722 (not (= (head!1583 s!10566) (c!145099 r!15766))))))

(declare-fun b!896375 () Bool)

(assert (=> b!896375 (= e!586721 e!586722)))

(declare-fun res!407473 () Bool)

(assert (=> b!896375 (=> res!407473 e!586722)))

(declare-fun call!53286 () Bool)

(assert (=> b!896375 (= res!407473 call!53286)))

(declare-fun b!896376 () Bool)

(declare-fun res!407471 () Bool)

(assert (=> b!896376 (=> res!407471 e!586722)))

(assert (=> b!896376 (= res!407471 (not (isEmpty!5745 (tail!1145 s!10566))))))

(declare-fun b!896377 () Bool)

(declare-fun res!407468 () Bool)

(assert (=> b!896377 (=> (not res!407468) (not e!586719))))

(assert (=> b!896377 (= res!407468 (not call!53286))))

(declare-fun b!896378 () Bool)

(assert (=> b!896378 (= e!586723 (not lt!333440))))

(declare-fun b!896379 () Bool)

(declare-fun res!407469 () Bool)

(assert (=> b!896379 (=> res!407469 e!586718)))

(assert (=> b!896379 (= res!407469 e!586719)))

(declare-fun res!407475 () Bool)

(assert (=> b!896379 (=> (not res!407475) (not e!586719))))

(assert (=> b!896379 (= res!407475 lt!333440)))

(declare-fun b!896380 () Bool)

(assert (=> b!896380 (= e!586717 (nullable!618 r!15766))))

(declare-fun b!896381 () Bool)

(declare-fun res!407474 () Bool)

(assert (=> b!896381 (=> res!407474 e!586718)))

(assert (=> b!896381 (= res!407474 (not (is-ElementMatch!2340 r!15766)))))

(assert (=> b!896381 (= e!586723 e!586718)))

(declare-fun b!896382 () Bool)

(declare-fun derivativeStep!430 (Regex!2340 C!5250) Regex!2340)

(assert (=> b!896382 (= e!586717 (matchR!878 (derivativeStep!430 r!15766 (head!1583 s!10566)) (tail!1145 s!10566)))))

(declare-fun bm!53281 () Bool)

(assert (=> bm!53281 (= call!53286 (isEmpty!5745 s!10566))))

(declare-fun b!896383 () Bool)

(assert (=> b!896383 (= e!586720 (= lt!333440 call!53286))))

(declare-fun b!896384 () Bool)

(assert (=> b!896384 (= e!586719 (= (head!1583 s!10566) (c!145099 r!15766)))))

(assert (= (and d!277828 c!145164) b!896380))

(assert (= (and d!277828 (not c!145164)) b!896382))

(assert (= (and d!277828 c!145162) b!896383))

(assert (= (and d!277828 (not c!145162)) b!896373))

(assert (= (and b!896373 c!145163) b!896378))

(assert (= (and b!896373 (not c!145163)) b!896381))

(assert (= (and b!896381 (not res!407474)) b!896379))

(assert (= (and b!896379 res!407475) b!896377))

(assert (= (and b!896377 res!407468) b!896371))

(assert (= (and b!896371 res!407472) b!896384))

(assert (= (and b!896379 (not res!407469)) b!896372))

(assert (= (and b!896372 res!407470) b!896375))

(assert (= (and b!896375 (not res!407473)) b!896376))

(assert (= (and b!896376 (not res!407471)) b!896374))

(assert (= (or b!896383 b!896375 b!896377) bm!53281))

(assert (=> bm!53281 m!1136049))

(assert (=> d!277828 m!1136049))

(assert (=> d!277828 m!1136059))

(declare-fun m!1136177 () Bool)

(assert (=> b!896382 m!1136177))

(assert (=> b!896382 m!1136177))

(declare-fun m!1136179 () Bool)

(assert (=> b!896382 m!1136179))

(declare-fun m!1136181 () Bool)

(assert (=> b!896382 m!1136181))

(assert (=> b!896382 m!1136179))

(assert (=> b!896382 m!1136181))

(declare-fun m!1136183 () Bool)

(assert (=> b!896382 m!1136183))

(declare-fun m!1136185 () Bool)

(assert (=> b!896380 m!1136185))

(assert (=> b!896374 m!1136177))

(assert (=> b!896371 m!1136181))

(assert (=> b!896371 m!1136181))

(declare-fun m!1136187 () Bool)

(assert (=> b!896371 m!1136187))

(assert (=> b!896376 m!1136181))

(assert (=> b!896376 m!1136181))

(assert (=> b!896376 m!1136187))

(assert (=> b!896384 m!1136177))

(assert (=> b!896046 d!277828))

(declare-fun d!277830 () Bool)

(assert (=> d!277830 (= (matchR!878 r!15766 s!10566) (matchRSpec!141 r!15766 s!10566))))

(declare-fun lt!333444 () Unit!14259)

(declare-fun choose!5384 (Regex!2340 List!9570) Unit!14259)

(assert (=> d!277830 (= lt!333444 (choose!5384 r!15766 s!10566))))

(assert (=> d!277830 (validRegex!809 r!15766)))

(assert (=> d!277830 (= (mainMatchTheorem!141 r!15766 s!10566) lt!333444)))

(declare-fun bs!234983 () Bool)

(assert (= bs!234983 d!277830))

(assert (=> bs!234983 m!1136035))

(assert (=> bs!234983 m!1136033))

(declare-fun m!1136189 () Bool)

(assert (=> bs!234983 m!1136189))

(assert (=> bs!234983 m!1136059))

(assert (=> b!896046 d!277830))

(declare-fun b!896410 () Bool)

(declare-fun e!586733 () Bool)

(declare-fun tp!281651 () Bool)

(declare-fun tp!281655 () Bool)

(assert (=> b!896410 (= e!586733 (and tp!281651 tp!281655))))

(declare-fun b!896411 () Bool)

(declare-fun tp!281652 () Bool)

(assert (=> b!896411 (= e!586733 tp!281652)))

(assert (=> b!896044 (= tp!281617 e!586733)))

(declare-fun b!896409 () Bool)

(assert (=> b!896409 (= e!586733 tp_is_empty!4323)))

(declare-fun b!896412 () Bool)

(declare-fun tp!281653 () Bool)

(declare-fun tp!281654 () Bool)

(assert (=> b!896412 (= e!586733 (and tp!281653 tp!281654))))

(assert (= (and b!896044 (is-ElementMatch!2340 (regOne!5192 r!15766))) b!896409))

(assert (= (and b!896044 (is-Concat!4173 (regOne!5192 r!15766))) b!896410))

(assert (= (and b!896044 (is-Star!2340 (regOne!5192 r!15766))) b!896411))

(assert (= (and b!896044 (is-Union!2340 (regOne!5192 r!15766))) b!896412))

(declare-fun b!896414 () Bool)

(declare-fun e!586734 () Bool)

(declare-fun tp!281656 () Bool)

(declare-fun tp!281660 () Bool)

(assert (=> b!896414 (= e!586734 (and tp!281656 tp!281660))))

(declare-fun b!896415 () Bool)

(declare-fun tp!281657 () Bool)

(assert (=> b!896415 (= e!586734 tp!281657)))

(assert (=> b!896044 (= tp!281619 e!586734)))

(declare-fun b!896413 () Bool)

(assert (=> b!896413 (= e!586734 tp_is_empty!4323)))

(declare-fun b!896416 () Bool)

(declare-fun tp!281658 () Bool)

(declare-fun tp!281659 () Bool)

(assert (=> b!896416 (= e!586734 (and tp!281658 tp!281659))))

(assert (= (and b!896044 (is-ElementMatch!2340 (regTwo!5192 r!15766))) b!896413))

(assert (= (and b!896044 (is-Concat!4173 (regTwo!5192 r!15766))) b!896414))

(assert (= (and b!896044 (is-Star!2340 (regTwo!5192 r!15766))) b!896415))

(assert (= (and b!896044 (is-Union!2340 (regTwo!5192 r!15766))) b!896416))

(declare-fun b!896418 () Bool)

(declare-fun e!586735 () Bool)

(declare-fun tp!281661 () Bool)

(declare-fun tp!281665 () Bool)

(assert (=> b!896418 (= e!586735 (and tp!281661 tp!281665))))

(declare-fun b!896419 () Bool)

(declare-fun tp!281662 () Bool)

(assert (=> b!896419 (= e!586735 tp!281662)))

(assert (=> b!896049 (= tp!281618 e!586735)))

(declare-fun b!896417 () Bool)

(assert (=> b!896417 (= e!586735 tp_is_empty!4323)))

(declare-fun b!896420 () Bool)

(declare-fun tp!281663 () Bool)

(declare-fun tp!281664 () Bool)

(assert (=> b!896420 (= e!586735 (and tp!281663 tp!281664))))

(assert (= (and b!896049 (is-ElementMatch!2340 (regOne!5193 r!15766))) b!896417))

(assert (= (and b!896049 (is-Concat!4173 (regOne!5193 r!15766))) b!896418))

(assert (= (and b!896049 (is-Star!2340 (regOne!5193 r!15766))) b!896419))

(assert (= (and b!896049 (is-Union!2340 (regOne!5193 r!15766))) b!896420))

(declare-fun b!896422 () Bool)

(declare-fun e!586736 () Bool)

(declare-fun tp!281666 () Bool)

(declare-fun tp!281670 () Bool)

(assert (=> b!896422 (= e!586736 (and tp!281666 tp!281670))))

(declare-fun b!896423 () Bool)

(declare-fun tp!281667 () Bool)

(assert (=> b!896423 (= e!586736 tp!281667)))

(assert (=> b!896049 (= tp!281620 e!586736)))

(declare-fun b!896421 () Bool)

(assert (=> b!896421 (= e!586736 tp_is_empty!4323)))

(declare-fun b!896424 () Bool)

(declare-fun tp!281668 () Bool)

(declare-fun tp!281669 () Bool)

(assert (=> b!896424 (= e!586736 (and tp!281668 tp!281669))))

(assert (= (and b!896049 (is-ElementMatch!2340 (regTwo!5193 r!15766))) b!896421))

(assert (= (and b!896049 (is-Concat!4173 (regTwo!5193 r!15766))) b!896422))

(assert (= (and b!896049 (is-Star!2340 (regTwo!5193 r!15766))) b!896423))

(assert (= (and b!896049 (is-Union!2340 (regTwo!5193 r!15766))) b!896424))

(declare-fun b!896426 () Bool)

(declare-fun e!586737 () Bool)

(declare-fun tp!281671 () Bool)

(declare-fun tp!281675 () Bool)

(assert (=> b!896426 (= e!586737 (and tp!281671 tp!281675))))

(declare-fun b!896427 () Bool)

(declare-fun tp!281672 () Bool)

(assert (=> b!896427 (= e!586737 tp!281672)))

(assert (=> b!896047 (= tp!281622 e!586737)))

(declare-fun b!896425 () Bool)

(assert (=> b!896425 (= e!586737 tp_is_empty!4323)))

(declare-fun b!896428 () Bool)

(declare-fun tp!281673 () Bool)

(declare-fun tp!281674 () Bool)

(assert (=> b!896428 (= e!586737 (and tp!281673 tp!281674))))

(assert (= (and b!896047 (is-ElementMatch!2340 (reg!2669 r!15766))) b!896425))

(assert (= (and b!896047 (is-Concat!4173 (reg!2669 r!15766))) b!896426))

(assert (= (and b!896047 (is-Star!2340 (reg!2669 r!15766))) b!896427))

(assert (= (and b!896047 (is-Union!2340 (reg!2669 r!15766))) b!896428))

(declare-fun b!896433 () Bool)

(declare-fun e!586740 () Bool)

(declare-fun tp!281678 () Bool)

(assert (=> b!896433 (= e!586740 (and tp_is_empty!4323 tp!281678))))

(assert (=> b!896051 (= tp!281621 e!586740)))

(assert (= (and b!896051 (is-Cons!9554 (t!100616 s!10566))) b!896433))

(push 1)

(assert (not bm!53247))

(assert (not bm!53266))

(assert (not b!896424))

(assert (not b!896257))

(assert (not b!896411))

(assert (not b!896376))

(assert (not b!896380))

(assert (not b!896423))

(assert (not bm!53252))

(assert (not b!896310))

(assert (not b!896204))

(assert (not b!896307))

(assert (not bm!53249))

(assert (not b!896410))

(assert (not b!896414))

(assert (not d!277808))

(assert (not b!896419))

(assert (not d!277828))

(assert (not b!896433))

(assert (not bm!53268))

(assert (not b!896168))

(assert (not b!896428))

(assert (not d!277814))

(assert (not d!277818))

(assert (not b!896427))

(assert (not b!896200))

(assert (not b!896412))

(assert (not b!896202))

(assert (not b!896384))

(assert (not bm!53250))

(assert (not b!896415))

(assert (not bm!53275))

(assert (not b!896416))

(assert (not b!896371))

(assert (not b!896382))

(assert (not b!896420))

(assert (not b!896203))

(assert (not b!896422))

(assert tp_is_empty!4323)

(assert (not d!277830))

(assert (not d!277820))

(assert (not b!896418))

(assert (not b!896127))

(assert (not bm!53281))

(assert (not b!896136))

(assert (not d!277816))

(assert (not bm!53276))

(assert (not b!896199))

(assert (not b!896426))

(assert (not b!896205))

(assert (not d!277804))

(assert (not b!896167))

(assert (not b!896374))

(assert (not d!277812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

