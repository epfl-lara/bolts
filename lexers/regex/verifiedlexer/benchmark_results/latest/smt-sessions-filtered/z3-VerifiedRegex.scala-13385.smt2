; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725158 () Bool)

(assert start!725158)

(declare-fun b!7490134 () Bool)

(assert (=> b!7490134 true))

(assert (=> b!7490134 true))

(assert (=> b!7490134 true))

(declare-fun lambda!464079 () Int)

(declare-fun lambda!464078 () Int)

(assert (=> b!7490134 (not (= lambda!464079 lambda!464078))))

(assert (=> b!7490134 true))

(assert (=> b!7490134 true))

(assert (=> b!7490134 true))

(declare-fun b!7490126 () Bool)

(declare-fun e!4466550 () Bool)

(declare-fun e!4466548 () Bool)

(assert (=> b!7490126 (= e!4466550 (not e!4466548))))

(declare-fun res!3004539 () Bool)

(assert (=> b!7490126 (=> res!3004539 e!4466548)))

(declare-fun lt!2629412 () Bool)

(assert (=> b!7490126 (= res!3004539 (not lt!2629412))))

(declare-datatypes ((C!39540 0))(
  ( (C!39541 (val!30168 Int)) )
))
(declare-datatypes ((Regex!19633 0))(
  ( (ElementMatch!19633 (c!1383040 C!39540)) (Concat!28478 (regOne!39778 Regex!19633) (regTwo!39778 Regex!19633)) (EmptyExpr!19633) (Star!19633 (reg!19962 Regex!19633)) (EmptyLang!19633) (Union!19633 (regOne!39779 Regex!19633) (regTwo!39779 Regex!19633)) )
))
(declare-fun lt!2629409 () Regex!19633)

(declare-datatypes ((List!72347 0))(
  ( (Nil!72223) (Cons!72223 (h!78671 C!39540) (t!386916 List!72347)) )
))
(declare-fun s!13591 () List!72347)

(declare-fun matchR!9395 (Regex!19633 List!72347) Bool)

(declare-fun matchRSpec!4310 (Regex!19633 List!72347) Bool)

(assert (=> b!7490126 (= (matchR!9395 lt!2629409 s!13591) (matchRSpec!4310 lt!2629409 s!13591))))

(declare-datatypes ((Unit!166097 0))(
  ( (Unit!166098) )
))
(declare-fun lt!2629413 () Unit!166097)

(declare-fun mainMatchTheorem!4304 (Regex!19633 List!72347) Unit!166097)

(assert (=> b!7490126 (= lt!2629413 (mainMatchTheorem!4304 lt!2629409 s!13591))))

(declare-fun lt!2629417 () Regex!19633)

(assert (=> b!7490126 (= lt!2629412 (matchRSpec!4310 lt!2629417 s!13591))))

(assert (=> b!7490126 (= lt!2629412 (matchR!9395 lt!2629417 s!13591))))

(declare-fun lt!2629423 () Unit!166097)

(assert (=> b!7490126 (= lt!2629423 (mainMatchTheorem!4304 lt!2629417 s!13591))))

(declare-fun lt!2629420 () Regex!19633)

(declare-fun lt!2629422 () Regex!19633)

(assert (=> b!7490126 (= lt!2629409 (Union!19633 lt!2629420 lt!2629422))))

(declare-fun r2!5783 () Regex!19633)

(declare-fun rTail!78 () Regex!19633)

(assert (=> b!7490126 (= lt!2629422 (Concat!28478 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19633)

(assert (=> b!7490126 (= lt!2629420 (Concat!28478 r1!5845 rTail!78))))

(declare-fun lt!2629424 () Regex!19633)

(assert (=> b!7490126 (= lt!2629417 (Concat!28478 lt!2629424 rTail!78))))

(assert (=> b!7490126 (= lt!2629424 (Union!19633 r1!5845 r2!5783))))

(declare-fun b!7490127 () Bool)

(declare-fun e!4466554 () Bool)

(declare-fun tp!2174051 () Bool)

(declare-fun tp!2174057 () Bool)

(assert (=> b!7490127 (= e!4466554 (and tp!2174051 tp!2174057))))

(declare-fun res!3004537 () Bool)

(assert (=> start!725158 (=> (not res!3004537) (not e!4466550))))

(declare-fun validRegex!10147 (Regex!19633) Bool)

(assert (=> start!725158 (= res!3004537 (validRegex!10147 r1!5845))))

(assert (=> start!725158 e!4466550))

(assert (=> start!725158 e!4466554))

(declare-fun e!4466552 () Bool)

(assert (=> start!725158 e!4466552))

(declare-fun e!4466549 () Bool)

(assert (=> start!725158 e!4466549))

(declare-fun e!4466547 () Bool)

(assert (=> start!725158 e!4466547))

(declare-fun b!7490128 () Bool)

(declare-fun res!3004542 () Bool)

(declare-fun e!4466551 () Bool)

(assert (=> b!7490128 (=> res!3004542 e!4466551)))

(declare-datatypes ((tuple2!68704 0))(
  ( (tuple2!68705 (_1!37655 List!72347) (_2!37655 List!72347)) )
))
(declare-fun lt!2629408 () tuple2!68704)

(assert (=> b!7490128 (= res!3004542 (not (matchR!9395 rTail!78 (_2!37655 lt!2629408))))))

(declare-fun b!7490129 () Bool)

(declare-fun tp!2174061 () Bool)

(assert (=> b!7490129 (= e!4466552 tp!2174061)))

(declare-fun b!7490130 () Bool)

(declare-fun tp!2174056 () Bool)

(declare-fun tp!2174050 () Bool)

(assert (=> b!7490130 (= e!4466554 (and tp!2174056 tp!2174050))))

(declare-fun b!7490131 () Bool)

(declare-fun tp_is_empty!49555 () Bool)

(declare-fun tp!2174049 () Bool)

(assert (=> b!7490131 (= e!4466547 (and tp_is_empty!49555 tp!2174049))))

(declare-fun b!7490132 () Bool)

(declare-fun res!3004538 () Bool)

(assert (=> b!7490132 (=> (not res!3004538) (not e!4466550))))

(assert (=> b!7490132 (= res!3004538 (validRegex!10147 rTail!78))))

(declare-fun b!7490133 () Bool)

(declare-fun e!4466553 () Bool)

(assert (=> b!7490133 (= e!4466551 e!4466553)))

(declare-fun res!3004536 () Bool)

(assert (=> b!7490133 (=> res!3004536 e!4466553)))

(declare-fun lt!2629411 () Bool)

(declare-fun lt!2629415 () Bool)

(assert (=> b!7490133 (= res!3004536 (and (not lt!2629411) (not lt!2629415)))))

(assert (=> b!7490133 (= lt!2629415 (matchRSpec!4310 r2!5783 (_1!37655 lt!2629408)))))

(assert (=> b!7490133 (= lt!2629415 (matchR!9395 r2!5783 (_1!37655 lt!2629408)))))

(declare-fun lt!2629421 () Unit!166097)

(assert (=> b!7490133 (= lt!2629421 (mainMatchTheorem!4304 r2!5783 (_1!37655 lt!2629408)))))

(assert (=> b!7490133 (= lt!2629411 (matchRSpec!4310 r1!5845 (_1!37655 lt!2629408)))))

(assert (=> b!7490133 (= lt!2629411 (matchR!9395 r1!5845 (_1!37655 lt!2629408)))))

(declare-fun lt!2629414 () Unit!166097)

(assert (=> b!7490133 (= lt!2629414 (mainMatchTheorem!4304 r1!5845 (_1!37655 lt!2629408)))))

(assert (=> b!7490133 (matchRSpec!4310 rTail!78 (_2!37655 lt!2629408))))

(declare-fun lt!2629416 () Unit!166097)

(assert (=> b!7490133 (= lt!2629416 (mainMatchTheorem!4304 rTail!78 (_2!37655 lt!2629408)))))

(assert (=> b!7490133 (matchRSpec!4310 lt!2629424 (_1!37655 lt!2629408))))

(declare-fun lt!2629407 () Unit!166097)

(assert (=> b!7490133 (= lt!2629407 (mainMatchTheorem!4304 lt!2629424 (_1!37655 lt!2629408)))))

(assert (=> b!7490134 (= e!4466548 e!4466551)))

(declare-fun res!3004541 () Bool)

(assert (=> b!7490134 (=> res!3004541 e!4466551)))

(assert (=> b!7490134 (= res!3004541 (not (matchR!9395 lt!2629424 (_1!37655 lt!2629408))))))

(declare-datatypes ((Option!17184 0))(
  ( (None!17183) (Some!17183 (v!54312 tuple2!68704)) )
))
(declare-fun lt!2629419 () Option!17184)

(declare-fun get!25307 (Option!17184) tuple2!68704)

(assert (=> b!7490134 (= lt!2629408 (get!25307 lt!2629419))))

(declare-fun Exists!4250 (Int) Bool)

(assert (=> b!7490134 (= (Exists!4250 lambda!464078) (Exists!4250 lambda!464079))))

(declare-fun lt!2629410 () Unit!166097)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2578 (Regex!19633 Regex!19633 List!72347) Unit!166097)

(assert (=> b!7490134 (= lt!2629410 (lemmaExistCutMatchRandMatchRSpecEquivalent!2578 lt!2629424 rTail!78 s!13591))))

(declare-fun isDefined!13873 (Option!17184) Bool)

(assert (=> b!7490134 (= (isDefined!13873 lt!2629419) (Exists!4250 lambda!464078))))

(declare-fun findConcatSeparation!3306 (Regex!19633 Regex!19633 List!72347 List!72347 List!72347) Option!17184)

(assert (=> b!7490134 (= lt!2629419 (findConcatSeparation!3306 lt!2629424 rTail!78 Nil!72223 s!13591 s!13591))))

(declare-fun lt!2629425 () Unit!166097)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3064 (Regex!19633 Regex!19633 List!72347) Unit!166097)

(assert (=> b!7490134 (= lt!2629425 (lemmaFindConcatSeparationEquivalentToExists!3064 lt!2629424 rTail!78 s!13591))))

(declare-fun b!7490135 () Bool)

(declare-fun res!3004540 () Bool)

(assert (=> b!7490135 (=> (not res!3004540) (not e!4466550))))

(assert (=> b!7490135 (= res!3004540 (validRegex!10147 r2!5783))))

(declare-fun b!7490136 () Bool)

(assert (=> b!7490136 (= e!4466552 tp_is_empty!49555)))

(declare-fun b!7490137 () Bool)

(assert (=> b!7490137 (= e!4466549 tp_is_empty!49555)))

(declare-fun b!7490138 () Bool)

(assert (=> b!7490138 (= e!4466554 tp_is_empty!49555)))

(declare-fun b!7490139 () Bool)

(declare-fun tp!2174058 () Bool)

(declare-fun tp!2174054 () Bool)

(assert (=> b!7490139 (= e!4466552 (and tp!2174058 tp!2174054))))

(declare-fun b!7490140 () Bool)

(assert (=> b!7490140 (= e!4466553 (validRegex!10147 lt!2629422))))

(assert (=> b!7490140 (= (matchR!9395 lt!2629420 s!13591) (matchRSpec!4310 lt!2629420 s!13591))))

(declare-fun lt!2629418 () Unit!166097)

(assert (=> b!7490140 (= lt!2629418 (mainMatchTheorem!4304 lt!2629420 s!13591))))

(declare-fun b!7490141 () Bool)

(declare-fun tp!2174048 () Bool)

(declare-fun tp!2174046 () Bool)

(assert (=> b!7490141 (= e!4466549 (and tp!2174048 tp!2174046))))

(declare-fun b!7490142 () Bool)

(declare-fun tp!2174052 () Bool)

(declare-fun tp!2174060 () Bool)

(assert (=> b!7490142 (= e!4466552 (and tp!2174052 tp!2174060))))

(declare-fun b!7490143 () Bool)

(declare-fun tp!2174059 () Bool)

(assert (=> b!7490143 (= e!4466554 tp!2174059)))

(declare-fun b!7490144 () Bool)

(declare-fun tp!2174047 () Bool)

(declare-fun tp!2174053 () Bool)

(assert (=> b!7490144 (= e!4466549 (and tp!2174047 tp!2174053))))

(declare-fun b!7490145 () Bool)

(declare-fun tp!2174055 () Bool)

(assert (=> b!7490145 (= e!4466549 tp!2174055)))

(assert (= (and start!725158 res!3004537) b!7490135))

(assert (= (and b!7490135 res!3004540) b!7490132))

(assert (= (and b!7490132 res!3004538) b!7490126))

(assert (= (and b!7490126 (not res!3004539)) b!7490134))

(assert (= (and b!7490134 (not res!3004541)) b!7490128))

(assert (= (and b!7490128 (not res!3004542)) b!7490133))

(assert (= (and b!7490133 (not res!3004536)) b!7490140))

(get-info :version)

(assert (= (and start!725158 ((_ is ElementMatch!19633) r1!5845)) b!7490138))

(assert (= (and start!725158 ((_ is Concat!28478) r1!5845)) b!7490130))

(assert (= (and start!725158 ((_ is Star!19633) r1!5845)) b!7490143))

(assert (= (and start!725158 ((_ is Union!19633) r1!5845)) b!7490127))

(assert (= (and start!725158 ((_ is ElementMatch!19633) r2!5783)) b!7490136))

(assert (= (and start!725158 ((_ is Concat!28478) r2!5783)) b!7490139))

(assert (= (and start!725158 ((_ is Star!19633) r2!5783)) b!7490129))

(assert (= (and start!725158 ((_ is Union!19633) r2!5783)) b!7490142))

(assert (= (and start!725158 ((_ is ElementMatch!19633) rTail!78)) b!7490137))

(assert (= (and start!725158 ((_ is Concat!28478) rTail!78)) b!7490141))

(assert (= (and start!725158 ((_ is Star!19633) rTail!78)) b!7490145))

(assert (= (and start!725158 ((_ is Union!19633) rTail!78)) b!7490144))

(assert (= (and start!725158 ((_ is Cons!72223) s!13591)) b!7490131))

(declare-fun m!8076968 () Bool)

(assert (=> b!7490128 m!8076968))

(declare-fun m!8076970 () Bool)

(assert (=> b!7490133 m!8076970))

(declare-fun m!8076972 () Bool)

(assert (=> b!7490133 m!8076972))

(declare-fun m!8076974 () Bool)

(assert (=> b!7490133 m!8076974))

(declare-fun m!8076976 () Bool)

(assert (=> b!7490133 m!8076976))

(declare-fun m!8076978 () Bool)

(assert (=> b!7490133 m!8076978))

(declare-fun m!8076980 () Bool)

(assert (=> b!7490133 m!8076980))

(declare-fun m!8076982 () Bool)

(assert (=> b!7490133 m!8076982))

(declare-fun m!8076984 () Bool)

(assert (=> b!7490133 m!8076984))

(declare-fun m!8076986 () Bool)

(assert (=> b!7490133 m!8076986))

(declare-fun m!8076988 () Bool)

(assert (=> b!7490133 m!8076988))

(declare-fun m!8076990 () Bool)

(assert (=> b!7490126 m!8076990))

(declare-fun m!8076992 () Bool)

(assert (=> b!7490126 m!8076992))

(declare-fun m!8076994 () Bool)

(assert (=> b!7490126 m!8076994))

(declare-fun m!8076996 () Bool)

(assert (=> b!7490126 m!8076996))

(declare-fun m!8076998 () Bool)

(assert (=> b!7490126 m!8076998))

(declare-fun m!8077000 () Bool)

(assert (=> b!7490126 m!8077000))

(declare-fun m!8077002 () Bool)

(assert (=> b!7490135 m!8077002))

(declare-fun m!8077004 () Bool)

(assert (=> b!7490132 m!8077004))

(declare-fun m!8077006 () Bool)

(assert (=> b!7490140 m!8077006))

(declare-fun m!8077008 () Bool)

(assert (=> b!7490140 m!8077008))

(declare-fun m!8077010 () Bool)

(assert (=> b!7490140 m!8077010))

(declare-fun m!8077012 () Bool)

(assert (=> b!7490140 m!8077012))

(declare-fun m!8077014 () Bool)

(assert (=> start!725158 m!8077014))

(declare-fun m!8077016 () Bool)

(assert (=> b!7490134 m!8077016))

(declare-fun m!8077018 () Bool)

(assert (=> b!7490134 m!8077018))

(declare-fun m!8077020 () Bool)

(assert (=> b!7490134 m!8077020))

(declare-fun m!8077022 () Bool)

(assert (=> b!7490134 m!8077022))

(declare-fun m!8077024 () Bool)

(assert (=> b!7490134 m!8077024))

(declare-fun m!8077026 () Bool)

(assert (=> b!7490134 m!8077026))

(declare-fun m!8077028 () Bool)

(assert (=> b!7490134 m!8077028))

(assert (=> b!7490134 m!8077020))

(declare-fun m!8077030 () Bool)

(assert (=> b!7490134 m!8077030))

(check-sat (not b!7490142) (not b!7490134) (not b!7490143) (not start!725158) (not b!7490133) (not b!7490139) (not b!7490141) (not b!7490132) (not b!7490129) (not b!7490140) (not b!7490145) (not b!7490126) (not b!7490128) (not b!7490130) tp_is_empty!49555 (not b!7490144) (not b!7490135) (not b!7490131) (not b!7490127))
(check-sat)
(get-model)

(declare-fun b!7490168 () Bool)

(declare-fun e!4466574 () Bool)

(declare-fun call!687580 () Bool)

(assert (=> b!7490168 (= e!4466574 call!687580)))

(declare-fun b!7490169 () Bool)

(declare-fun e!4466575 () Bool)

(declare-fun e!4466571 () Bool)

(assert (=> b!7490169 (= e!4466575 e!4466571)))

(declare-fun c!1383045 () Bool)

(assert (=> b!7490169 (= c!1383045 ((_ is Star!19633) rTail!78))))

(declare-fun b!7490170 () Bool)

(declare-fun res!3004556 () Bool)

(declare-fun e!4466570 () Bool)

(assert (=> b!7490170 (=> res!3004556 e!4466570)))

(assert (=> b!7490170 (= res!3004556 (not ((_ is Concat!28478) rTail!78)))))

(declare-fun e!4466569 () Bool)

(assert (=> b!7490170 (= e!4466569 e!4466570)))

(declare-fun b!7490171 () Bool)

(assert (=> b!7490171 (= e!4466571 e!4466569)))

(declare-fun c!1383046 () Bool)

(assert (=> b!7490171 (= c!1383046 ((_ is Union!19633) rTail!78))))

(declare-fun b!7490172 () Bool)

(declare-fun e!4466572 () Bool)

(declare-fun call!687581 () Bool)

(assert (=> b!7490172 (= e!4466572 call!687581)))

(declare-fun bm!687574 () Bool)

(assert (=> bm!687574 (= call!687580 call!687581)))

(declare-fun bm!687575 () Bool)

(declare-fun call!687579 () Bool)

(assert (=> bm!687575 (= call!687579 (validRegex!10147 (ite c!1383046 (regOne!39779 rTail!78) (regOne!39778 rTail!78))))))

(declare-fun b!7490173 () Bool)

(assert (=> b!7490173 (= e!4466570 e!4466574)))

(declare-fun res!3004557 () Bool)

(assert (=> b!7490173 (=> (not res!3004557) (not e!4466574))))

(assert (=> b!7490173 (= res!3004557 call!687579)))

(declare-fun b!7490174 () Bool)

(declare-fun res!3004555 () Bool)

(declare-fun e!4466573 () Bool)

(assert (=> b!7490174 (=> (not res!3004555) (not e!4466573))))

(assert (=> b!7490174 (= res!3004555 call!687579)))

(assert (=> b!7490174 (= e!4466569 e!4466573)))

(declare-fun b!7490175 () Bool)

(assert (=> b!7490175 (= e!4466571 e!4466572)))

(declare-fun res!3004554 () Bool)

(declare-fun nullable!8571 (Regex!19633) Bool)

(assert (=> b!7490175 (= res!3004554 (not (nullable!8571 (reg!19962 rTail!78))))))

(assert (=> b!7490175 (=> (not res!3004554) (not e!4466572))))

(declare-fun bm!687576 () Bool)

(assert (=> bm!687576 (= call!687581 (validRegex!10147 (ite c!1383045 (reg!19962 rTail!78) (ite c!1383046 (regTwo!39779 rTail!78) (regTwo!39778 rTail!78)))))))

(declare-fun d!2301126 () Bool)

(declare-fun res!3004553 () Bool)

(assert (=> d!2301126 (=> res!3004553 e!4466575)))

(assert (=> d!2301126 (= res!3004553 ((_ is ElementMatch!19633) rTail!78))))

(assert (=> d!2301126 (= (validRegex!10147 rTail!78) e!4466575)))

(declare-fun b!7490176 () Bool)

(assert (=> b!7490176 (= e!4466573 call!687580)))

(assert (= (and d!2301126 (not res!3004553)) b!7490169))

(assert (= (and b!7490169 c!1383045) b!7490175))

(assert (= (and b!7490169 (not c!1383045)) b!7490171))

(assert (= (and b!7490175 res!3004554) b!7490172))

(assert (= (and b!7490171 c!1383046) b!7490174))

(assert (= (and b!7490171 (not c!1383046)) b!7490170))

(assert (= (and b!7490174 res!3004555) b!7490176))

(assert (= (and b!7490170 (not res!3004556)) b!7490173))

(assert (= (and b!7490173 res!3004557) b!7490168))

(assert (= (or b!7490176 b!7490168) bm!687574))

(assert (= (or b!7490174 b!7490173) bm!687575))

(assert (= (or b!7490172 bm!687574) bm!687576))

(declare-fun m!8077032 () Bool)

(assert (=> bm!687575 m!8077032))

(declare-fun m!8077034 () Bool)

(assert (=> b!7490175 m!8077034))

(declare-fun m!8077036 () Bool)

(assert (=> bm!687576 m!8077036))

(assert (=> b!7490132 d!2301126))

(declare-fun d!2301128 () Bool)

(assert (=> d!2301128 (= (matchR!9395 lt!2629409 s!13591) (matchRSpec!4310 lt!2629409 s!13591))))

(declare-fun lt!2629430 () Unit!166097)

(declare-fun choose!57897 (Regex!19633 List!72347) Unit!166097)

(assert (=> d!2301128 (= lt!2629430 (choose!57897 lt!2629409 s!13591))))

(assert (=> d!2301128 (validRegex!10147 lt!2629409)))

(assert (=> d!2301128 (= (mainMatchTheorem!4304 lt!2629409 s!13591) lt!2629430)))

(declare-fun bs!1934722 () Bool)

(assert (= bs!1934722 d!2301128))

(assert (=> bs!1934722 m!8076990))

(assert (=> bs!1934722 m!8076996))

(declare-fun m!8077038 () Bool)

(assert (=> bs!1934722 m!8077038))

(declare-fun m!8077040 () Bool)

(assert (=> bs!1934722 m!8077040))

(assert (=> b!7490126 d!2301128))

(declare-fun b!7490274 () Bool)

(declare-fun res!3004617 () Bool)

(declare-fun e!4466627 () Bool)

(assert (=> b!7490274 (=> res!3004617 e!4466627)))

(assert (=> b!7490274 (= res!3004617 (not ((_ is ElementMatch!19633) lt!2629417)))))

(declare-fun e!4466630 () Bool)

(assert (=> b!7490274 (= e!4466630 e!4466627)))

(declare-fun b!7490275 () Bool)

(declare-fun e!4466629 () Bool)

(declare-fun head!15368 (List!72347) C!39540)

(assert (=> b!7490275 (= e!4466629 (= (head!15368 s!13591) (c!1383040 lt!2629417)))))

(declare-fun b!7490276 () Bool)

(declare-fun e!4466626 () Bool)

(declare-fun lt!2629443 () Bool)

(declare-fun call!687587 () Bool)

(assert (=> b!7490276 (= e!4466626 (= lt!2629443 call!687587))))

(declare-fun b!7490277 () Bool)

(declare-fun e!4466632 () Bool)

(declare-fun derivativeStep!5628 (Regex!19633 C!39540) Regex!19633)

(declare-fun tail!14937 (List!72347) List!72347)

(assert (=> b!7490277 (= e!4466632 (matchR!9395 (derivativeStep!5628 lt!2629417 (head!15368 s!13591)) (tail!14937 s!13591)))))

(declare-fun b!7490278 () Bool)

(declare-fun res!3004620 () Bool)

(declare-fun e!4466628 () Bool)

(assert (=> b!7490278 (=> res!3004620 e!4466628)))

(declare-fun isEmpty!41249 (List!72347) Bool)

(assert (=> b!7490278 (= res!3004620 (not (isEmpty!41249 (tail!14937 s!13591))))))

(declare-fun b!7490279 () Bool)

(declare-fun e!4466631 () Bool)

(assert (=> b!7490279 (= e!4466631 e!4466628)))

(declare-fun res!3004613 () Bool)

(assert (=> b!7490279 (=> res!3004613 e!4466628)))

(assert (=> b!7490279 (= res!3004613 call!687587)))

(declare-fun b!7490280 () Bool)

(declare-fun res!3004616 () Bool)

(assert (=> b!7490280 (=> res!3004616 e!4466627)))

(assert (=> b!7490280 (= res!3004616 e!4466629)))

(declare-fun res!3004619 () Bool)

(assert (=> b!7490280 (=> (not res!3004619) (not e!4466629))))

(assert (=> b!7490280 (= res!3004619 lt!2629443)))

(declare-fun d!2301132 () Bool)

(assert (=> d!2301132 e!4466626))

(declare-fun c!1383070 () Bool)

(assert (=> d!2301132 (= c!1383070 ((_ is EmptyExpr!19633) lt!2629417))))

(assert (=> d!2301132 (= lt!2629443 e!4466632)))

(declare-fun c!1383068 () Bool)

(assert (=> d!2301132 (= c!1383068 (isEmpty!41249 s!13591))))

(assert (=> d!2301132 (validRegex!10147 lt!2629417)))

(assert (=> d!2301132 (= (matchR!9395 lt!2629417 s!13591) lt!2629443)))

(declare-fun b!7490281 () Bool)

(declare-fun res!3004618 () Bool)

(assert (=> b!7490281 (=> (not res!3004618) (not e!4466629))))

(assert (=> b!7490281 (= res!3004618 (not call!687587))))

(declare-fun b!7490282 () Bool)

(assert (=> b!7490282 (= e!4466632 (nullable!8571 lt!2629417))))

(declare-fun b!7490283 () Bool)

(declare-fun res!3004615 () Bool)

(assert (=> b!7490283 (=> (not res!3004615) (not e!4466629))))

(assert (=> b!7490283 (= res!3004615 (isEmpty!41249 (tail!14937 s!13591)))))

(declare-fun b!7490284 () Bool)

(assert (=> b!7490284 (= e!4466628 (not (= (head!15368 s!13591) (c!1383040 lt!2629417))))))

(declare-fun b!7490285 () Bool)

(assert (=> b!7490285 (= e!4466626 e!4466630)))

(declare-fun c!1383069 () Bool)

(assert (=> b!7490285 (= c!1383069 ((_ is EmptyLang!19633) lt!2629417))))

(declare-fun b!7490286 () Bool)

(assert (=> b!7490286 (= e!4466627 e!4466631)))

(declare-fun res!3004614 () Bool)

(assert (=> b!7490286 (=> (not res!3004614) (not e!4466631))))

(assert (=> b!7490286 (= res!3004614 (not lt!2629443))))

(declare-fun b!7490287 () Bool)

(assert (=> b!7490287 (= e!4466630 (not lt!2629443))))

(declare-fun bm!687582 () Bool)

(assert (=> bm!687582 (= call!687587 (isEmpty!41249 s!13591))))

(assert (= (and d!2301132 c!1383068) b!7490282))

(assert (= (and d!2301132 (not c!1383068)) b!7490277))

(assert (= (and d!2301132 c!1383070) b!7490276))

(assert (= (and d!2301132 (not c!1383070)) b!7490285))

(assert (= (and b!7490285 c!1383069) b!7490287))

(assert (= (and b!7490285 (not c!1383069)) b!7490274))

(assert (= (and b!7490274 (not res!3004617)) b!7490280))

(assert (= (and b!7490280 res!3004619) b!7490281))

(assert (= (and b!7490281 res!3004618) b!7490283))

(assert (= (and b!7490283 res!3004615) b!7490275))

(assert (= (and b!7490280 (not res!3004616)) b!7490286))

(assert (= (and b!7490286 res!3004614) b!7490279))

(assert (= (and b!7490279 (not res!3004613)) b!7490278))

(assert (= (and b!7490278 (not res!3004620)) b!7490284))

(assert (= (or b!7490276 b!7490279 b!7490281) bm!687582))

(declare-fun m!8077084 () Bool)

(assert (=> b!7490275 m!8077084))

(assert (=> b!7490277 m!8077084))

(assert (=> b!7490277 m!8077084))

(declare-fun m!8077086 () Bool)

(assert (=> b!7490277 m!8077086))

(declare-fun m!8077088 () Bool)

(assert (=> b!7490277 m!8077088))

(assert (=> b!7490277 m!8077086))

(assert (=> b!7490277 m!8077088))

(declare-fun m!8077090 () Bool)

(assert (=> b!7490277 m!8077090))

(assert (=> b!7490278 m!8077088))

(assert (=> b!7490278 m!8077088))

(declare-fun m!8077092 () Bool)

(assert (=> b!7490278 m!8077092))

(assert (=> b!7490284 m!8077084))

(declare-fun m!8077094 () Bool)

(assert (=> d!2301132 m!8077094))

(declare-fun m!8077096 () Bool)

(assert (=> d!2301132 m!8077096))

(declare-fun m!8077098 () Bool)

(assert (=> b!7490282 m!8077098))

(assert (=> b!7490283 m!8077088))

(assert (=> b!7490283 m!8077088))

(assert (=> b!7490283 m!8077092))

(assert (=> bm!687582 m!8077094))

(assert (=> b!7490126 d!2301132))

(declare-fun bs!1934731 () Bool)

(declare-fun b!7490430 () Bool)

(assert (= bs!1934731 (and b!7490430 b!7490134)))

(declare-fun lambda!464097 () Int)

(assert (=> bs!1934731 (not (= lambda!464097 lambda!464078))))

(assert (=> bs!1934731 (not (= lambda!464097 lambda!464079))))

(assert (=> b!7490430 true))

(assert (=> b!7490430 true))

(declare-fun bs!1934732 () Bool)

(declare-fun b!7490435 () Bool)

(assert (= bs!1934732 (and b!7490435 b!7490134)))

(declare-fun lambda!464098 () Int)

(assert (=> bs!1934732 (not (= lambda!464098 lambda!464078))))

(assert (=> bs!1934732 (= (and (= (regOne!39778 lt!2629417) lt!2629424) (= (regTwo!39778 lt!2629417) rTail!78)) (= lambda!464098 lambda!464079))))

(declare-fun bs!1934735 () Bool)

(assert (= bs!1934735 (and b!7490435 b!7490430)))

(assert (=> bs!1934735 (not (= lambda!464098 lambda!464097))))

(assert (=> b!7490435 true))

(assert (=> b!7490435 true))

(declare-fun b!7490428 () Bool)

(declare-fun e!4466719 () Bool)

(assert (=> b!7490428 (= e!4466719 (matchRSpec!4310 (regTwo!39779 lt!2629417) s!13591))))

(declare-fun b!7490429 () Bool)

(declare-fun res!3004703 () Bool)

(declare-fun e!4466722 () Bool)

(assert (=> b!7490429 (=> res!3004703 e!4466722)))

(declare-fun call!687609 () Bool)

(assert (=> b!7490429 (= res!3004703 call!687609)))

(declare-fun e!4466718 () Bool)

(assert (=> b!7490429 (= e!4466718 e!4466722)))

(declare-fun call!687608 () Bool)

(assert (=> b!7490430 (= e!4466722 call!687608)))

(declare-fun b!7490431 () Bool)

(declare-fun c!1383102 () Bool)

(assert (=> b!7490431 (= c!1383102 ((_ is Union!19633) lt!2629417))))

(declare-fun e!4466721 () Bool)

(declare-fun e!4466720 () Bool)

(assert (=> b!7490431 (= e!4466721 e!4466720)))

(declare-fun bm!687603 () Bool)

(declare-fun c!1383101 () Bool)

(assert (=> bm!687603 (= call!687608 (Exists!4250 (ite c!1383101 lambda!464097 lambda!464098)))))

(declare-fun b!7490432 () Bool)

(assert (=> b!7490432 (= e!4466720 e!4466719)))

(declare-fun res!3004701 () Bool)

(assert (=> b!7490432 (= res!3004701 (matchRSpec!4310 (regOne!39779 lt!2629417) s!13591))))

(assert (=> b!7490432 (=> res!3004701 e!4466719)))

(declare-fun b!7490433 () Bool)

(assert (=> b!7490433 (= e!4466720 e!4466718)))

(assert (=> b!7490433 (= c!1383101 ((_ is Star!19633) lt!2629417))))

(declare-fun b!7490434 () Bool)

(declare-fun c!1383104 () Bool)

(assert (=> b!7490434 (= c!1383104 ((_ is ElementMatch!19633) lt!2629417))))

(declare-fun e!4466717 () Bool)

(assert (=> b!7490434 (= e!4466717 e!4466721)))

(assert (=> b!7490435 (= e!4466718 call!687608)))

(declare-fun d!2301144 () Bool)

(declare-fun c!1383103 () Bool)

(assert (=> d!2301144 (= c!1383103 ((_ is EmptyExpr!19633) lt!2629417))))

(declare-fun e!4466723 () Bool)

(assert (=> d!2301144 (= (matchRSpec!4310 lt!2629417 s!13591) e!4466723)))

(declare-fun b!7490436 () Bool)

(assert (=> b!7490436 (= e!4466723 e!4466717)))

(declare-fun res!3004702 () Bool)

(assert (=> b!7490436 (= res!3004702 (not ((_ is EmptyLang!19633) lt!2629417)))))

(assert (=> b!7490436 (=> (not res!3004702) (not e!4466717))))

(declare-fun bm!687604 () Bool)

(assert (=> bm!687604 (= call!687609 (isEmpty!41249 s!13591))))

(declare-fun b!7490437 () Bool)

(assert (=> b!7490437 (= e!4466721 (= s!13591 (Cons!72223 (c!1383040 lt!2629417) Nil!72223)))))

(declare-fun b!7490438 () Bool)

(assert (=> b!7490438 (= e!4466723 call!687609)))

(assert (= (and d!2301144 c!1383103) b!7490438))

(assert (= (and d!2301144 (not c!1383103)) b!7490436))

(assert (= (and b!7490436 res!3004702) b!7490434))

(assert (= (and b!7490434 c!1383104) b!7490437))

(assert (= (and b!7490434 (not c!1383104)) b!7490431))

(assert (= (and b!7490431 c!1383102) b!7490432))

(assert (= (and b!7490431 (not c!1383102)) b!7490433))

(assert (= (and b!7490432 (not res!3004701)) b!7490428))

(assert (= (and b!7490433 c!1383101) b!7490429))

(assert (= (and b!7490433 (not c!1383101)) b!7490435))

(assert (= (and b!7490429 (not res!3004703)) b!7490430))

(assert (= (or b!7490430 b!7490435) bm!687603))

(assert (= (or b!7490438 b!7490429) bm!687604))

(declare-fun m!8077156 () Bool)

(assert (=> b!7490428 m!8077156))

(declare-fun m!8077158 () Bool)

(assert (=> bm!687603 m!8077158))

(declare-fun m!8077160 () Bool)

(assert (=> b!7490432 m!8077160))

(assert (=> bm!687604 m!8077094))

(assert (=> b!7490126 d!2301144))

(declare-fun d!2301160 () Bool)

(assert (=> d!2301160 (= (matchR!9395 lt!2629417 s!13591) (matchRSpec!4310 lt!2629417 s!13591))))

(declare-fun lt!2629452 () Unit!166097)

(assert (=> d!2301160 (= lt!2629452 (choose!57897 lt!2629417 s!13591))))

(assert (=> d!2301160 (validRegex!10147 lt!2629417)))

(assert (=> d!2301160 (= (mainMatchTheorem!4304 lt!2629417 s!13591) lt!2629452)))

(declare-fun bs!1934741 () Bool)

(assert (= bs!1934741 d!2301160))

(assert (=> bs!1934741 m!8076994))

(assert (=> bs!1934741 m!8076992))

(declare-fun m!8077168 () Bool)

(assert (=> bs!1934741 m!8077168))

(assert (=> bs!1934741 m!8077096))

(assert (=> b!7490126 d!2301160))

(declare-fun bs!1934742 () Bool)

(declare-fun b!7490452 () Bool)

(assert (= bs!1934742 (and b!7490452 b!7490134)))

(declare-fun lambda!464101 () Int)

(assert (=> bs!1934742 (not (= lambda!464101 lambda!464078))))

(assert (=> bs!1934742 (not (= lambda!464101 lambda!464079))))

(declare-fun bs!1934743 () Bool)

(assert (= bs!1934743 (and b!7490452 b!7490430)))

(assert (=> bs!1934743 (= (and (= (reg!19962 lt!2629409) (reg!19962 lt!2629417)) (= lt!2629409 lt!2629417)) (= lambda!464101 lambda!464097))))

(declare-fun bs!1934744 () Bool)

(assert (= bs!1934744 (and b!7490452 b!7490435)))

(assert (=> bs!1934744 (not (= lambda!464101 lambda!464098))))

(assert (=> b!7490452 true))

(assert (=> b!7490452 true))

(declare-fun bs!1934746 () Bool)

(declare-fun b!7490457 () Bool)

(assert (= bs!1934746 (and b!7490457 b!7490452)))

(declare-fun lambda!464102 () Int)

(assert (=> bs!1934746 (not (= lambda!464102 lambda!464101))))

(declare-fun bs!1934747 () Bool)

(assert (= bs!1934747 (and b!7490457 b!7490134)))

(assert (=> bs!1934747 (not (= lambda!464102 lambda!464078))))

(assert (=> bs!1934747 (= (and (= (regOne!39778 lt!2629409) lt!2629424) (= (regTwo!39778 lt!2629409) rTail!78)) (= lambda!464102 lambda!464079))))

(declare-fun bs!1934752 () Bool)

(assert (= bs!1934752 (and b!7490457 b!7490430)))

(assert (=> bs!1934752 (not (= lambda!464102 lambda!464097))))

(declare-fun bs!1934754 () Bool)

(assert (= bs!1934754 (and b!7490457 b!7490435)))

(assert (=> bs!1934754 (= (and (= (regOne!39778 lt!2629409) (regOne!39778 lt!2629417)) (= (regTwo!39778 lt!2629409) (regTwo!39778 lt!2629417))) (= lambda!464102 lambda!464098))))

(assert (=> b!7490457 true))

(assert (=> b!7490457 true))

(declare-fun b!7490450 () Bool)

(declare-fun e!4466733 () Bool)

(assert (=> b!7490450 (= e!4466733 (matchRSpec!4310 (regTwo!39779 lt!2629409) s!13591))))

(declare-fun b!7490451 () Bool)

(declare-fun res!3004709 () Bool)

(declare-fun e!4466736 () Bool)

(assert (=> b!7490451 (=> res!3004709 e!4466736)))

(declare-fun call!687615 () Bool)

(assert (=> b!7490451 (= res!3004709 call!687615)))

(declare-fun e!4466732 () Bool)

(assert (=> b!7490451 (= e!4466732 e!4466736)))

(declare-fun call!687614 () Bool)

(assert (=> b!7490452 (= e!4466736 call!687614)))

(declare-fun b!7490453 () Bool)

(declare-fun c!1383110 () Bool)

(assert (=> b!7490453 (= c!1383110 ((_ is Union!19633) lt!2629409))))

(declare-fun e!4466735 () Bool)

(declare-fun e!4466734 () Bool)

(assert (=> b!7490453 (= e!4466735 e!4466734)))

(declare-fun c!1383109 () Bool)

(declare-fun bm!687609 () Bool)

(assert (=> bm!687609 (= call!687614 (Exists!4250 (ite c!1383109 lambda!464101 lambda!464102)))))

(declare-fun b!7490454 () Bool)

(assert (=> b!7490454 (= e!4466734 e!4466733)))

(declare-fun res!3004707 () Bool)

(assert (=> b!7490454 (= res!3004707 (matchRSpec!4310 (regOne!39779 lt!2629409) s!13591))))

(assert (=> b!7490454 (=> res!3004707 e!4466733)))

(declare-fun b!7490455 () Bool)

(assert (=> b!7490455 (= e!4466734 e!4466732)))

(assert (=> b!7490455 (= c!1383109 ((_ is Star!19633) lt!2629409))))

(declare-fun b!7490456 () Bool)

(declare-fun c!1383112 () Bool)

(assert (=> b!7490456 (= c!1383112 ((_ is ElementMatch!19633) lt!2629409))))

(declare-fun e!4466731 () Bool)

(assert (=> b!7490456 (= e!4466731 e!4466735)))

(assert (=> b!7490457 (= e!4466732 call!687614)))

(declare-fun d!2301164 () Bool)

(declare-fun c!1383111 () Bool)

(assert (=> d!2301164 (= c!1383111 ((_ is EmptyExpr!19633) lt!2629409))))

(declare-fun e!4466737 () Bool)

(assert (=> d!2301164 (= (matchRSpec!4310 lt!2629409 s!13591) e!4466737)))

(declare-fun b!7490458 () Bool)

(assert (=> b!7490458 (= e!4466737 e!4466731)))

(declare-fun res!3004708 () Bool)

(assert (=> b!7490458 (= res!3004708 (not ((_ is EmptyLang!19633) lt!2629409)))))

(assert (=> b!7490458 (=> (not res!3004708) (not e!4466731))))

(declare-fun bm!687610 () Bool)

(assert (=> bm!687610 (= call!687615 (isEmpty!41249 s!13591))))

(declare-fun b!7490459 () Bool)

(assert (=> b!7490459 (= e!4466735 (= s!13591 (Cons!72223 (c!1383040 lt!2629409) Nil!72223)))))

(declare-fun b!7490460 () Bool)

(assert (=> b!7490460 (= e!4466737 call!687615)))

(assert (= (and d!2301164 c!1383111) b!7490460))

(assert (= (and d!2301164 (not c!1383111)) b!7490458))

(assert (= (and b!7490458 res!3004708) b!7490456))

(assert (= (and b!7490456 c!1383112) b!7490459))

(assert (= (and b!7490456 (not c!1383112)) b!7490453))

(assert (= (and b!7490453 c!1383110) b!7490454))

(assert (= (and b!7490453 (not c!1383110)) b!7490455))

(assert (= (and b!7490454 (not res!3004707)) b!7490450))

(assert (= (and b!7490455 c!1383109) b!7490451))

(assert (= (and b!7490455 (not c!1383109)) b!7490457))

(assert (= (and b!7490451 (not res!3004709)) b!7490452))

(assert (= (or b!7490452 b!7490457) bm!687609))

(assert (= (or b!7490460 b!7490451) bm!687610))

(declare-fun m!8077178 () Bool)

(assert (=> b!7490450 m!8077178))

(declare-fun m!8077180 () Bool)

(assert (=> bm!687609 m!8077180))

(declare-fun m!8077182 () Bool)

(assert (=> b!7490454 m!8077182))

(assert (=> bm!687610 m!8077094))

(assert (=> b!7490126 d!2301164))

(declare-fun b!7490481 () Bool)

(declare-fun res!3004722 () Bool)

(declare-fun e!4466753 () Bool)

(assert (=> b!7490481 (=> res!3004722 e!4466753)))

(assert (=> b!7490481 (= res!3004722 (not ((_ is ElementMatch!19633) lt!2629409)))))

(declare-fun e!4466756 () Bool)

(assert (=> b!7490481 (= e!4466756 e!4466753)))

(declare-fun b!7490482 () Bool)

(declare-fun e!4466755 () Bool)

(assert (=> b!7490482 (= e!4466755 (= (head!15368 s!13591) (c!1383040 lt!2629409)))))

(declare-fun b!7490483 () Bool)

(declare-fun e!4466752 () Bool)

(declare-fun lt!2629456 () Bool)

(declare-fun call!687621 () Bool)

(assert (=> b!7490483 (= e!4466752 (= lt!2629456 call!687621))))

(declare-fun b!7490484 () Bool)

(declare-fun e!4466758 () Bool)

(assert (=> b!7490484 (= e!4466758 (matchR!9395 (derivativeStep!5628 lt!2629409 (head!15368 s!13591)) (tail!14937 s!13591)))))

(declare-fun b!7490485 () Bool)

(declare-fun res!3004725 () Bool)

(declare-fun e!4466754 () Bool)

(assert (=> b!7490485 (=> res!3004725 e!4466754)))

(assert (=> b!7490485 (= res!3004725 (not (isEmpty!41249 (tail!14937 s!13591))))))

(declare-fun b!7490486 () Bool)

(declare-fun e!4466757 () Bool)

(assert (=> b!7490486 (= e!4466757 e!4466754)))

(declare-fun res!3004718 () Bool)

(assert (=> b!7490486 (=> res!3004718 e!4466754)))

(assert (=> b!7490486 (= res!3004718 call!687621)))

(declare-fun b!7490487 () Bool)

(declare-fun res!3004721 () Bool)

(assert (=> b!7490487 (=> res!3004721 e!4466753)))

(assert (=> b!7490487 (= res!3004721 e!4466755)))

(declare-fun res!3004724 () Bool)

(assert (=> b!7490487 (=> (not res!3004724) (not e!4466755))))

(assert (=> b!7490487 (= res!3004724 lt!2629456)))

(declare-fun d!2301170 () Bool)

(assert (=> d!2301170 e!4466752))

(declare-fun c!1383121 () Bool)

(assert (=> d!2301170 (= c!1383121 ((_ is EmptyExpr!19633) lt!2629409))))

(assert (=> d!2301170 (= lt!2629456 e!4466758)))

(declare-fun c!1383119 () Bool)

(assert (=> d!2301170 (= c!1383119 (isEmpty!41249 s!13591))))

(assert (=> d!2301170 (validRegex!10147 lt!2629409)))

(assert (=> d!2301170 (= (matchR!9395 lt!2629409 s!13591) lt!2629456)))

(declare-fun b!7490488 () Bool)

(declare-fun res!3004723 () Bool)

(assert (=> b!7490488 (=> (not res!3004723) (not e!4466755))))

(assert (=> b!7490488 (= res!3004723 (not call!687621))))

(declare-fun b!7490489 () Bool)

(assert (=> b!7490489 (= e!4466758 (nullable!8571 lt!2629409))))

(declare-fun b!7490490 () Bool)

(declare-fun res!3004720 () Bool)

(assert (=> b!7490490 (=> (not res!3004720) (not e!4466755))))

(assert (=> b!7490490 (= res!3004720 (isEmpty!41249 (tail!14937 s!13591)))))

(declare-fun b!7490491 () Bool)

(assert (=> b!7490491 (= e!4466754 (not (= (head!15368 s!13591) (c!1383040 lt!2629409))))))

(declare-fun b!7490492 () Bool)

(assert (=> b!7490492 (= e!4466752 e!4466756)))

(declare-fun c!1383120 () Bool)

(assert (=> b!7490492 (= c!1383120 ((_ is EmptyLang!19633) lt!2629409))))

(declare-fun b!7490493 () Bool)

(assert (=> b!7490493 (= e!4466753 e!4466757)))

(declare-fun res!3004719 () Bool)

(assert (=> b!7490493 (=> (not res!3004719) (not e!4466757))))

(assert (=> b!7490493 (= res!3004719 (not lt!2629456))))

(declare-fun b!7490494 () Bool)

(assert (=> b!7490494 (= e!4466756 (not lt!2629456))))

(declare-fun bm!687616 () Bool)

(assert (=> bm!687616 (= call!687621 (isEmpty!41249 s!13591))))

(assert (= (and d!2301170 c!1383119) b!7490489))

(assert (= (and d!2301170 (not c!1383119)) b!7490484))

(assert (= (and d!2301170 c!1383121) b!7490483))

(assert (= (and d!2301170 (not c!1383121)) b!7490492))

(assert (= (and b!7490492 c!1383120) b!7490494))

(assert (= (and b!7490492 (not c!1383120)) b!7490481))

(assert (= (and b!7490481 (not res!3004722)) b!7490487))

(assert (= (and b!7490487 res!3004724) b!7490488))

(assert (= (and b!7490488 res!3004723) b!7490490))

(assert (= (and b!7490490 res!3004720) b!7490482))

(assert (= (and b!7490487 (not res!3004721)) b!7490493))

(assert (= (and b!7490493 res!3004719) b!7490486))

(assert (= (and b!7490486 (not res!3004718)) b!7490485))

(assert (= (and b!7490485 (not res!3004725)) b!7490491))

(assert (= (or b!7490483 b!7490486 b!7490488) bm!687616))

(assert (=> b!7490482 m!8077084))

(assert (=> b!7490484 m!8077084))

(assert (=> b!7490484 m!8077084))

(declare-fun m!8077190 () Bool)

(assert (=> b!7490484 m!8077190))

(assert (=> b!7490484 m!8077088))

(assert (=> b!7490484 m!8077190))

(assert (=> b!7490484 m!8077088))

(declare-fun m!8077192 () Bool)

(assert (=> b!7490484 m!8077192))

(assert (=> b!7490485 m!8077088))

(assert (=> b!7490485 m!8077088))

(assert (=> b!7490485 m!8077092))

(assert (=> b!7490491 m!8077084))

(assert (=> d!2301170 m!8077094))

(assert (=> d!2301170 m!8077040))

(declare-fun m!8077194 () Bool)

(assert (=> b!7490489 m!8077194))

(assert (=> b!7490490 m!8077088))

(assert (=> b!7490490 m!8077088))

(assert (=> b!7490490 m!8077092))

(assert (=> bm!687616 m!8077094))

(assert (=> b!7490126 d!2301170))

(declare-fun b!7490506 () Bool)

(declare-fun e!4466771 () Bool)

(declare-fun call!687625 () Bool)

(assert (=> b!7490506 (= e!4466771 call!687625)))

(declare-fun b!7490507 () Bool)

(declare-fun e!4466772 () Bool)

(declare-fun e!4466768 () Bool)

(assert (=> b!7490507 (= e!4466772 e!4466768)))

(declare-fun c!1383126 () Bool)

(assert (=> b!7490507 (= c!1383126 ((_ is Star!19633) lt!2629422))))

(declare-fun b!7490508 () Bool)

(declare-fun res!3004732 () Bool)

(declare-fun e!4466767 () Bool)

(assert (=> b!7490508 (=> res!3004732 e!4466767)))

(assert (=> b!7490508 (= res!3004732 (not ((_ is Concat!28478) lt!2629422)))))

(declare-fun e!4466766 () Bool)

(assert (=> b!7490508 (= e!4466766 e!4466767)))

(declare-fun b!7490509 () Bool)

(assert (=> b!7490509 (= e!4466768 e!4466766)))

(declare-fun c!1383127 () Bool)

(assert (=> b!7490509 (= c!1383127 ((_ is Union!19633) lt!2629422))))

(declare-fun b!7490510 () Bool)

(declare-fun e!4466769 () Bool)

(declare-fun call!687626 () Bool)

(assert (=> b!7490510 (= e!4466769 call!687626)))

(declare-fun bm!687619 () Bool)

(assert (=> bm!687619 (= call!687625 call!687626)))

(declare-fun bm!687620 () Bool)

(declare-fun call!687624 () Bool)

(assert (=> bm!687620 (= call!687624 (validRegex!10147 (ite c!1383127 (regOne!39779 lt!2629422) (regOne!39778 lt!2629422))))))

(declare-fun b!7490511 () Bool)

(assert (=> b!7490511 (= e!4466767 e!4466771)))

(declare-fun res!3004733 () Bool)

(assert (=> b!7490511 (=> (not res!3004733) (not e!4466771))))

(assert (=> b!7490511 (= res!3004733 call!687624)))

(declare-fun b!7490512 () Bool)

(declare-fun res!3004731 () Bool)

(declare-fun e!4466770 () Bool)

(assert (=> b!7490512 (=> (not res!3004731) (not e!4466770))))

(assert (=> b!7490512 (= res!3004731 call!687624)))

(assert (=> b!7490512 (= e!4466766 e!4466770)))

(declare-fun b!7490513 () Bool)

(assert (=> b!7490513 (= e!4466768 e!4466769)))

(declare-fun res!3004730 () Bool)

(assert (=> b!7490513 (= res!3004730 (not (nullable!8571 (reg!19962 lt!2629422))))))

(assert (=> b!7490513 (=> (not res!3004730) (not e!4466769))))

(declare-fun bm!687621 () Bool)

(assert (=> bm!687621 (= call!687626 (validRegex!10147 (ite c!1383126 (reg!19962 lt!2629422) (ite c!1383127 (regTwo!39779 lt!2629422) (regTwo!39778 lt!2629422)))))))

(declare-fun d!2301174 () Bool)

(declare-fun res!3004729 () Bool)

(assert (=> d!2301174 (=> res!3004729 e!4466772)))

(assert (=> d!2301174 (= res!3004729 ((_ is ElementMatch!19633) lt!2629422))))

(assert (=> d!2301174 (= (validRegex!10147 lt!2629422) e!4466772)))

(declare-fun b!7490514 () Bool)

(assert (=> b!7490514 (= e!4466770 call!687625)))

(assert (= (and d!2301174 (not res!3004729)) b!7490507))

(assert (= (and b!7490507 c!1383126) b!7490513))

(assert (= (and b!7490507 (not c!1383126)) b!7490509))

(assert (= (and b!7490513 res!3004730) b!7490510))

(assert (= (and b!7490509 c!1383127) b!7490512))

(assert (= (and b!7490509 (not c!1383127)) b!7490508))

(assert (= (and b!7490512 res!3004731) b!7490514))

(assert (= (and b!7490508 (not res!3004732)) b!7490511))

(assert (= (and b!7490511 res!3004733) b!7490506))

(assert (= (or b!7490514 b!7490506) bm!687619))

(assert (= (or b!7490512 b!7490511) bm!687620))

(assert (= (or b!7490510 bm!687619) bm!687621))

(declare-fun m!8077196 () Bool)

(assert (=> bm!687620 m!8077196))

(declare-fun m!8077198 () Bool)

(assert (=> b!7490513 m!8077198))

(declare-fun m!8077200 () Bool)

(assert (=> bm!687621 m!8077200))

(assert (=> b!7490140 d!2301174))

(declare-fun b!7490515 () Bool)

(declare-fun res!3004738 () Bool)

(declare-fun e!4466774 () Bool)

(assert (=> b!7490515 (=> res!3004738 e!4466774)))

(assert (=> b!7490515 (= res!3004738 (not ((_ is ElementMatch!19633) lt!2629420)))))

(declare-fun e!4466777 () Bool)

(assert (=> b!7490515 (= e!4466777 e!4466774)))

(declare-fun b!7490516 () Bool)

(declare-fun e!4466776 () Bool)

(assert (=> b!7490516 (= e!4466776 (= (head!15368 s!13591) (c!1383040 lt!2629420)))))

(declare-fun b!7490517 () Bool)

(declare-fun e!4466773 () Bool)

(declare-fun lt!2629457 () Bool)

(declare-fun call!687627 () Bool)

(assert (=> b!7490517 (= e!4466773 (= lt!2629457 call!687627))))

(declare-fun b!7490518 () Bool)

(declare-fun e!4466779 () Bool)

(assert (=> b!7490518 (= e!4466779 (matchR!9395 (derivativeStep!5628 lt!2629420 (head!15368 s!13591)) (tail!14937 s!13591)))))

(declare-fun b!7490519 () Bool)

(declare-fun res!3004741 () Bool)

(declare-fun e!4466775 () Bool)

(assert (=> b!7490519 (=> res!3004741 e!4466775)))

(assert (=> b!7490519 (= res!3004741 (not (isEmpty!41249 (tail!14937 s!13591))))))

(declare-fun b!7490520 () Bool)

(declare-fun e!4466778 () Bool)

(assert (=> b!7490520 (= e!4466778 e!4466775)))

(declare-fun res!3004734 () Bool)

(assert (=> b!7490520 (=> res!3004734 e!4466775)))

(assert (=> b!7490520 (= res!3004734 call!687627)))

(declare-fun b!7490521 () Bool)

(declare-fun res!3004737 () Bool)

(assert (=> b!7490521 (=> res!3004737 e!4466774)))

(assert (=> b!7490521 (= res!3004737 e!4466776)))

(declare-fun res!3004740 () Bool)

(assert (=> b!7490521 (=> (not res!3004740) (not e!4466776))))

(assert (=> b!7490521 (= res!3004740 lt!2629457)))

(declare-fun d!2301176 () Bool)

(assert (=> d!2301176 e!4466773))

(declare-fun c!1383130 () Bool)

(assert (=> d!2301176 (= c!1383130 ((_ is EmptyExpr!19633) lt!2629420))))

(assert (=> d!2301176 (= lt!2629457 e!4466779)))

(declare-fun c!1383128 () Bool)

(assert (=> d!2301176 (= c!1383128 (isEmpty!41249 s!13591))))

(assert (=> d!2301176 (validRegex!10147 lt!2629420)))

(assert (=> d!2301176 (= (matchR!9395 lt!2629420 s!13591) lt!2629457)))

(declare-fun b!7490522 () Bool)

(declare-fun res!3004739 () Bool)

(assert (=> b!7490522 (=> (not res!3004739) (not e!4466776))))

(assert (=> b!7490522 (= res!3004739 (not call!687627))))

(declare-fun b!7490523 () Bool)

(assert (=> b!7490523 (= e!4466779 (nullable!8571 lt!2629420))))

(declare-fun b!7490524 () Bool)

(declare-fun res!3004736 () Bool)

(assert (=> b!7490524 (=> (not res!3004736) (not e!4466776))))

(assert (=> b!7490524 (= res!3004736 (isEmpty!41249 (tail!14937 s!13591)))))

(declare-fun b!7490525 () Bool)

(assert (=> b!7490525 (= e!4466775 (not (= (head!15368 s!13591) (c!1383040 lt!2629420))))))

(declare-fun b!7490526 () Bool)

(assert (=> b!7490526 (= e!4466773 e!4466777)))

(declare-fun c!1383129 () Bool)

(assert (=> b!7490526 (= c!1383129 ((_ is EmptyLang!19633) lt!2629420))))

(declare-fun b!7490527 () Bool)

(assert (=> b!7490527 (= e!4466774 e!4466778)))

(declare-fun res!3004735 () Bool)

(assert (=> b!7490527 (=> (not res!3004735) (not e!4466778))))

(assert (=> b!7490527 (= res!3004735 (not lt!2629457))))

(declare-fun b!7490528 () Bool)

(assert (=> b!7490528 (= e!4466777 (not lt!2629457))))

(declare-fun bm!687622 () Bool)

(assert (=> bm!687622 (= call!687627 (isEmpty!41249 s!13591))))

(assert (= (and d!2301176 c!1383128) b!7490523))

(assert (= (and d!2301176 (not c!1383128)) b!7490518))

(assert (= (and d!2301176 c!1383130) b!7490517))

(assert (= (and d!2301176 (not c!1383130)) b!7490526))

(assert (= (and b!7490526 c!1383129) b!7490528))

(assert (= (and b!7490526 (not c!1383129)) b!7490515))

(assert (= (and b!7490515 (not res!3004738)) b!7490521))

(assert (= (and b!7490521 res!3004740) b!7490522))

(assert (= (and b!7490522 res!3004739) b!7490524))

(assert (= (and b!7490524 res!3004736) b!7490516))

(assert (= (and b!7490521 (not res!3004737)) b!7490527))

(assert (= (and b!7490527 res!3004735) b!7490520))

(assert (= (and b!7490520 (not res!3004734)) b!7490519))

(assert (= (and b!7490519 (not res!3004741)) b!7490525))

(assert (= (or b!7490517 b!7490520 b!7490522) bm!687622))

(assert (=> b!7490516 m!8077084))

(assert (=> b!7490518 m!8077084))

(assert (=> b!7490518 m!8077084))

(declare-fun m!8077216 () Bool)

(assert (=> b!7490518 m!8077216))

(assert (=> b!7490518 m!8077088))

(assert (=> b!7490518 m!8077216))

(assert (=> b!7490518 m!8077088))

(declare-fun m!8077218 () Bool)

(assert (=> b!7490518 m!8077218))

(assert (=> b!7490519 m!8077088))

(assert (=> b!7490519 m!8077088))

(assert (=> b!7490519 m!8077092))

(assert (=> b!7490525 m!8077084))

(assert (=> d!2301176 m!8077094))

(declare-fun m!8077220 () Bool)

(assert (=> d!2301176 m!8077220))

(declare-fun m!8077222 () Bool)

(assert (=> b!7490523 m!8077222))

(assert (=> b!7490524 m!8077088))

(assert (=> b!7490524 m!8077088))

(assert (=> b!7490524 m!8077092))

(assert (=> bm!687622 m!8077094))

(assert (=> b!7490140 d!2301176))

(declare-fun bs!1934784 () Bool)

(declare-fun b!7490559 () Bool)

(assert (= bs!1934784 (and b!7490559 b!7490452)))

(declare-fun lambda!464108 () Int)

(assert (=> bs!1934784 (= (and (= (reg!19962 lt!2629420) (reg!19962 lt!2629409)) (= lt!2629420 lt!2629409)) (= lambda!464108 lambda!464101))))

(declare-fun bs!1934787 () Bool)

(assert (= bs!1934787 (and b!7490559 b!7490134)))

(assert (=> bs!1934787 (not (= lambda!464108 lambda!464078))))

(declare-fun bs!1934788 () Bool)

(assert (= bs!1934788 (and b!7490559 b!7490457)))

(assert (=> bs!1934788 (not (= lambda!464108 lambda!464102))))

(assert (=> bs!1934787 (not (= lambda!464108 lambda!464079))))

(declare-fun bs!1934791 () Bool)

(assert (= bs!1934791 (and b!7490559 b!7490430)))

(assert (=> bs!1934791 (= (and (= (reg!19962 lt!2629420) (reg!19962 lt!2629417)) (= lt!2629420 lt!2629417)) (= lambda!464108 lambda!464097))))

(declare-fun bs!1934795 () Bool)

(assert (= bs!1934795 (and b!7490559 b!7490435)))

(assert (=> bs!1934795 (not (= lambda!464108 lambda!464098))))

(assert (=> b!7490559 true))

(assert (=> b!7490559 true))

(declare-fun bs!1934802 () Bool)

(declare-fun b!7490564 () Bool)

(assert (= bs!1934802 (and b!7490564 b!7490452)))

(declare-fun lambda!464110 () Int)

(assert (=> bs!1934802 (not (= lambda!464110 lambda!464101))))

(declare-fun bs!1934804 () Bool)

(assert (= bs!1934804 (and b!7490564 b!7490134)))

(assert (=> bs!1934804 (not (= lambda!464110 lambda!464078))))

(declare-fun bs!1934806 () Bool)

(assert (= bs!1934806 (and b!7490564 b!7490559)))

(assert (=> bs!1934806 (not (= lambda!464110 lambda!464108))))

(declare-fun bs!1934807 () Bool)

(assert (= bs!1934807 (and b!7490564 b!7490457)))

(assert (=> bs!1934807 (= (and (= (regOne!39778 lt!2629420) (regOne!39778 lt!2629409)) (= (regTwo!39778 lt!2629420) (regTwo!39778 lt!2629409))) (= lambda!464110 lambda!464102))))

(assert (=> bs!1934804 (= (and (= (regOne!39778 lt!2629420) lt!2629424) (= (regTwo!39778 lt!2629420) rTail!78)) (= lambda!464110 lambda!464079))))

(declare-fun bs!1934811 () Bool)

(assert (= bs!1934811 (and b!7490564 b!7490430)))

(assert (=> bs!1934811 (not (= lambda!464110 lambda!464097))))

(declare-fun bs!1934814 () Bool)

(assert (= bs!1934814 (and b!7490564 b!7490435)))

(assert (=> bs!1934814 (= (and (= (regOne!39778 lt!2629420) (regOne!39778 lt!2629417)) (= (regTwo!39778 lt!2629420) (regTwo!39778 lt!2629417))) (= lambda!464110 lambda!464098))))

(assert (=> b!7490564 true))

(assert (=> b!7490564 true))

(declare-fun b!7490557 () Bool)

(declare-fun e!4466796 () Bool)

(assert (=> b!7490557 (= e!4466796 (matchRSpec!4310 (regTwo!39779 lt!2629420) s!13591))))

(declare-fun b!7490558 () Bool)

(declare-fun res!3004760 () Bool)

(declare-fun e!4466799 () Bool)

(assert (=> b!7490558 (=> res!3004760 e!4466799)))

(declare-fun call!687631 () Bool)

(assert (=> b!7490558 (= res!3004760 call!687631)))

(declare-fun e!4466795 () Bool)

(assert (=> b!7490558 (= e!4466795 e!4466799)))

(declare-fun call!687630 () Bool)

(assert (=> b!7490559 (= e!4466799 call!687630)))

(declare-fun b!7490560 () Bool)

(declare-fun c!1383138 () Bool)

(assert (=> b!7490560 (= c!1383138 ((_ is Union!19633) lt!2629420))))

(declare-fun e!4466798 () Bool)

(declare-fun e!4466797 () Bool)

(assert (=> b!7490560 (= e!4466798 e!4466797)))

(declare-fun c!1383137 () Bool)

(declare-fun bm!687625 () Bool)

(assert (=> bm!687625 (= call!687630 (Exists!4250 (ite c!1383137 lambda!464108 lambda!464110)))))

(declare-fun b!7490561 () Bool)

(assert (=> b!7490561 (= e!4466797 e!4466796)))

(declare-fun res!3004758 () Bool)

(assert (=> b!7490561 (= res!3004758 (matchRSpec!4310 (regOne!39779 lt!2629420) s!13591))))

(assert (=> b!7490561 (=> res!3004758 e!4466796)))

(declare-fun b!7490562 () Bool)

(assert (=> b!7490562 (= e!4466797 e!4466795)))

(assert (=> b!7490562 (= c!1383137 ((_ is Star!19633) lt!2629420))))

(declare-fun b!7490563 () Bool)

(declare-fun c!1383140 () Bool)

(assert (=> b!7490563 (= c!1383140 ((_ is ElementMatch!19633) lt!2629420))))

(declare-fun e!4466794 () Bool)

(assert (=> b!7490563 (= e!4466794 e!4466798)))

(assert (=> b!7490564 (= e!4466795 call!687630)))

(declare-fun d!2301184 () Bool)

(declare-fun c!1383139 () Bool)

(assert (=> d!2301184 (= c!1383139 ((_ is EmptyExpr!19633) lt!2629420))))

(declare-fun e!4466800 () Bool)

(assert (=> d!2301184 (= (matchRSpec!4310 lt!2629420 s!13591) e!4466800)))

(declare-fun b!7490565 () Bool)

(assert (=> b!7490565 (= e!4466800 e!4466794)))

(declare-fun res!3004759 () Bool)

(assert (=> b!7490565 (= res!3004759 (not ((_ is EmptyLang!19633) lt!2629420)))))

(assert (=> b!7490565 (=> (not res!3004759) (not e!4466794))))

(declare-fun bm!687626 () Bool)

(assert (=> bm!687626 (= call!687631 (isEmpty!41249 s!13591))))

(declare-fun b!7490566 () Bool)

(assert (=> b!7490566 (= e!4466798 (= s!13591 (Cons!72223 (c!1383040 lt!2629420) Nil!72223)))))

(declare-fun b!7490567 () Bool)

(assert (=> b!7490567 (= e!4466800 call!687631)))

(assert (= (and d!2301184 c!1383139) b!7490567))

(assert (= (and d!2301184 (not c!1383139)) b!7490565))

(assert (= (and b!7490565 res!3004759) b!7490563))

(assert (= (and b!7490563 c!1383140) b!7490566))

(assert (= (and b!7490563 (not c!1383140)) b!7490560))

(assert (= (and b!7490560 c!1383138) b!7490561))

(assert (= (and b!7490560 (not c!1383138)) b!7490562))

(assert (= (and b!7490561 (not res!3004758)) b!7490557))

(assert (= (and b!7490562 c!1383137) b!7490558))

(assert (= (and b!7490562 (not c!1383137)) b!7490564))

(assert (= (and b!7490558 (not res!3004760)) b!7490559))

(assert (= (or b!7490559 b!7490564) bm!687625))

(assert (= (or b!7490567 b!7490558) bm!687626))

(declare-fun m!8077242 () Bool)

(assert (=> b!7490557 m!8077242))

(declare-fun m!8077244 () Bool)

(assert (=> bm!687625 m!8077244))

(declare-fun m!8077246 () Bool)

(assert (=> b!7490561 m!8077246))

(assert (=> bm!687626 m!8077094))

(assert (=> b!7490140 d!2301184))

(declare-fun d!2301196 () Bool)

(assert (=> d!2301196 (= (matchR!9395 lt!2629420 s!13591) (matchRSpec!4310 lt!2629420 s!13591))))

(declare-fun lt!2629464 () Unit!166097)

(assert (=> d!2301196 (= lt!2629464 (choose!57897 lt!2629420 s!13591))))

(assert (=> d!2301196 (validRegex!10147 lt!2629420)))

(assert (=> d!2301196 (= (mainMatchTheorem!4304 lt!2629420 s!13591) lt!2629464)))

(declare-fun bs!1934826 () Bool)

(assert (= bs!1934826 d!2301196))

(assert (=> bs!1934826 m!8077008))

(assert (=> bs!1934826 m!8077010))

(declare-fun m!8077248 () Bool)

(assert (=> bs!1934826 m!8077248))

(assert (=> bs!1934826 m!8077220))

(assert (=> b!7490140 d!2301196))

(declare-fun b!7490590 () Bool)

(declare-fun e!4466820 () Bool)

(declare-fun call!687637 () Bool)

(assert (=> b!7490590 (= e!4466820 call!687637)))

(declare-fun b!7490591 () Bool)

(declare-fun e!4466821 () Bool)

(declare-fun e!4466817 () Bool)

(assert (=> b!7490591 (= e!4466821 e!4466817)))

(declare-fun c!1383149 () Bool)

(assert (=> b!7490591 (= c!1383149 ((_ is Star!19633) r2!5783))))

(declare-fun b!7490592 () Bool)

(declare-fun res!3004770 () Bool)

(declare-fun e!4466816 () Bool)

(assert (=> b!7490592 (=> res!3004770 e!4466816)))

(assert (=> b!7490592 (= res!3004770 (not ((_ is Concat!28478) r2!5783)))))

(declare-fun e!4466815 () Bool)

(assert (=> b!7490592 (= e!4466815 e!4466816)))

(declare-fun b!7490593 () Bool)

(assert (=> b!7490593 (= e!4466817 e!4466815)))

(declare-fun c!1383150 () Bool)

(assert (=> b!7490593 (= c!1383150 ((_ is Union!19633) r2!5783))))

(declare-fun b!7490594 () Bool)

(declare-fun e!4466818 () Bool)

(declare-fun call!687638 () Bool)

(assert (=> b!7490594 (= e!4466818 call!687638)))

(declare-fun bm!687631 () Bool)

(assert (=> bm!687631 (= call!687637 call!687638)))

(declare-fun bm!687632 () Bool)

(declare-fun call!687636 () Bool)

(assert (=> bm!687632 (= call!687636 (validRegex!10147 (ite c!1383150 (regOne!39779 r2!5783) (regOne!39778 r2!5783))))))

(declare-fun b!7490595 () Bool)

(assert (=> b!7490595 (= e!4466816 e!4466820)))

(declare-fun res!3004771 () Bool)

(assert (=> b!7490595 (=> (not res!3004771) (not e!4466820))))

(assert (=> b!7490595 (= res!3004771 call!687636)))

(declare-fun b!7490596 () Bool)

(declare-fun res!3004769 () Bool)

(declare-fun e!4466819 () Bool)

(assert (=> b!7490596 (=> (not res!3004769) (not e!4466819))))

(assert (=> b!7490596 (= res!3004769 call!687636)))

(assert (=> b!7490596 (= e!4466815 e!4466819)))

(declare-fun b!7490597 () Bool)

(assert (=> b!7490597 (= e!4466817 e!4466818)))

(declare-fun res!3004768 () Bool)

(assert (=> b!7490597 (= res!3004768 (not (nullable!8571 (reg!19962 r2!5783))))))

(assert (=> b!7490597 (=> (not res!3004768) (not e!4466818))))

(declare-fun bm!687633 () Bool)

(assert (=> bm!687633 (= call!687638 (validRegex!10147 (ite c!1383149 (reg!19962 r2!5783) (ite c!1383150 (regTwo!39779 r2!5783) (regTwo!39778 r2!5783)))))))

(declare-fun d!2301198 () Bool)

(declare-fun res!3004767 () Bool)

(assert (=> d!2301198 (=> res!3004767 e!4466821)))

(assert (=> d!2301198 (= res!3004767 ((_ is ElementMatch!19633) r2!5783))))

(assert (=> d!2301198 (= (validRegex!10147 r2!5783) e!4466821)))

(declare-fun b!7490598 () Bool)

(assert (=> b!7490598 (= e!4466819 call!687637)))

(assert (= (and d!2301198 (not res!3004767)) b!7490591))

(assert (= (and b!7490591 c!1383149) b!7490597))

(assert (= (and b!7490591 (not c!1383149)) b!7490593))

(assert (= (and b!7490597 res!3004768) b!7490594))

(assert (= (and b!7490593 c!1383150) b!7490596))

(assert (= (and b!7490593 (not c!1383150)) b!7490592))

(assert (= (and b!7490596 res!3004769) b!7490598))

(assert (= (and b!7490592 (not res!3004770)) b!7490595))

(assert (= (and b!7490595 res!3004771) b!7490590))

(assert (= (or b!7490598 b!7490590) bm!687631))

(assert (= (or b!7490596 b!7490595) bm!687632))

(assert (= (or b!7490594 bm!687631) bm!687633))

(declare-fun m!8077256 () Bool)

(assert (=> bm!687632 m!8077256))

(declare-fun m!8077258 () Bool)

(assert (=> b!7490597 m!8077258))

(declare-fun m!8077260 () Bool)

(assert (=> bm!687633 m!8077260))

(assert (=> b!7490135 d!2301198))

(declare-fun b!7490608 () Bool)

(declare-fun res!3004781 () Bool)

(declare-fun e!4466830 () Bool)

(assert (=> b!7490608 (=> res!3004781 e!4466830)))

(assert (=> b!7490608 (= res!3004781 (not ((_ is ElementMatch!19633) rTail!78)))))

(declare-fun e!4466833 () Bool)

(assert (=> b!7490608 (= e!4466833 e!4466830)))

(declare-fun b!7490609 () Bool)

(declare-fun e!4466832 () Bool)

(assert (=> b!7490609 (= e!4466832 (= (head!15368 (_2!37655 lt!2629408)) (c!1383040 rTail!78)))))

(declare-fun b!7490610 () Bool)

(declare-fun e!4466829 () Bool)

(declare-fun lt!2629465 () Bool)

(declare-fun call!687642 () Bool)

(assert (=> b!7490610 (= e!4466829 (= lt!2629465 call!687642))))

(declare-fun b!7490611 () Bool)

(declare-fun e!4466835 () Bool)

(assert (=> b!7490611 (= e!4466835 (matchR!9395 (derivativeStep!5628 rTail!78 (head!15368 (_2!37655 lt!2629408))) (tail!14937 (_2!37655 lt!2629408))))))

(declare-fun b!7490612 () Bool)

(declare-fun res!3004784 () Bool)

(declare-fun e!4466831 () Bool)

(assert (=> b!7490612 (=> res!3004784 e!4466831)))

(assert (=> b!7490612 (= res!3004784 (not (isEmpty!41249 (tail!14937 (_2!37655 lt!2629408)))))))

(declare-fun b!7490613 () Bool)

(declare-fun e!4466834 () Bool)

(assert (=> b!7490613 (= e!4466834 e!4466831)))

(declare-fun res!3004777 () Bool)

(assert (=> b!7490613 (=> res!3004777 e!4466831)))

(assert (=> b!7490613 (= res!3004777 call!687642)))

(declare-fun b!7490614 () Bool)

(declare-fun res!3004780 () Bool)

(assert (=> b!7490614 (=> res!3004780 e!4466830)))

(assert (=> b!7490614 (= res!3004780 e!4466832)))

(declare-fun res!3004783 () Bool)

(assert (=> b!7490614 (=> (not res!3004783) (not e!4466832))))

(assert (=> b!7490614 (= res!3004783 lt!2629465)))

(declare-fun d!2301202 () Bool)

(assert (=> d!2301202 e!4466829))

(declare-fun c!1383155 () Bool)

(assert (=> d!2301202 (= c!1383155 ((_ is EmptyExpr!19633) rTail!78))))

(assert (=> d!2301202 (= lt!2629465 e!4466835)))

(declare-fun c!1383153 () Bool)

(assert (=> d!2301202 (= c!1383153 (isEmpty!41249 (_2!37655 lt!2629408)))))

(assert (=> d!2301202 (validRegex!10147 rTail!78)))

(assert (=> d!2301202 (= (matchR!9395 rTail!78 (_2!37655 lt!2629408)) lt!2629465)))

(declare-fun b!7490615 () Bool)

(declare-fun res!3004782 () Bool)

(assert (=> b!7490615 (=> (not res!3004782) (not e!4466832))))

(assert (=> b!7490615 (= res!3004782 (not call!687642))))

(declare-fun b!7490616 () Bool)

(assert (=> b!7490616 (= e!4466835 (nullable!8571 rTail!78))))

(declare-fun b!7490617 () Bool)

(declare-fun res!3004779 () Bool)

(assert (=> b!7490617 (=> (not res!3004779) (not e!4466832))))

(assert (=> b!7490617 (= res!3004779 (isEmpty!41249 (tail!14937 (_2!37655 lt!2629408))))))

(declare-fun b!7490618 () Bool)

(assert (=> b!7490618 (= e!4466831 (not (= (head!15368 (_2!37655 lt!2629408)) (c!1383040 rTail!78))))))

(declare-fun b!7490619 () Bool)

(assert (=> b!7490619 (= e!4466829 e!4466833)))

(declare-fun c!1383154 () Bool)

(assert (=> b!7490619 (= c!1383154 ((_ is EmptyLang!19633) rTail!78))))

(declare-fun b!7490620 () Bool)

(assert (=> b!7490620 (= e!4466830 e!4466834)))

(declare-fun res!3004778 () Bool)

(assert (=> b!7490620 (=> (not res!3004778) (not e!4466834))))

(assert (=> b!7490620 (= res!3004778 (not lt!2629465))))

(declare-fun b!7490621 () Bool)

(assert (=> b!7490621 (= e!4466833 (not lt!2629465))))

(declare-fun bm!687637 () Bool)

(assert (=> bm!687637 (= call!687642 (isEmpty!41249 (_2!37655 lt!2629408)))))

(assert (= (and d!2301202 c!1383153) b!7490616))

(assert (= (and d!2301202 (not c!1383153)) b!7490611))

(assert (= (and d!2301202 c!1383155) b!7490610))

(assert (= (and d!2301202 (not c!1383155)) b!7490619))

(assert (= (and b!7490619 c!1383154) b!7490621))

(assert (= (and b!7490619 (not c!1383154)) b!7490608))

(assert (= (and b!7490608 (not res!3004781)) b!7490614))

(assert (= (and b!7490614 res!3004783) b!7490615))

(assert (= (and b!7490615 res!3004782) b!7490617))

(assert (= (and b!7490617 res!3004779) b!7490609))

(assert (= (and b!7490614 (not res!3004780)) b!7490620))

(assert (= (and b!7490620 res!3004778) b!7490613))

(assert (= (and b!7490613 (not res!3004777)) b!7490612))

(assert (= (and b!7490612 (not res!3004784)) b!7490618))

(assert (= (or b!7490610 b!7490613 b!7490615) bm!687637))

(declare-fun m!8077278 () Bool)

(assert (=> b!7490609 m!8077278))

(assert (=> b!7490611 m!8077278))

(assert (=> b!7490611 m!8077278))

(declare-fun m!8077280 () Bool)

(assert (=> b!7490611 m!8077280))

(declare-fun m!8077282 () Bool)

(assert (=> b!7490611 m!8077282))

(assert (=> b!7490611 m!8077280))

(assert (=> b!7490611 m!8077282))

(declare-fun m!8077284 () Bool)

(assert (=> b!7490611 m!8077284))

(assert (=> b!7490612 m!8077282))

(assert (=> b!7490612 m!8077282))

(declare-fun m!8077286 () Bool)

(assert (=> b!7490612 m!8077286))

(assert (=> b!7490618 m!8077278))

(declare-fun m!8077288 () Bool)

(assert (=> d!2301202 m!8077288))

(assert (=> d!2301202 m!8077004))

(declare-fun m!8077290 () Bool)

(assert (=> b!7490616 m!8077290))

(assert (=> b!7490617 m!8077282))

(assert (=> b!7490617 m!8077282))

(assert (=> b!7490617 m!8077286))

(assert (=> bm!687637 m!8077288))

(assert (=> b!7490128 d!2301202))

(declare-fun b!7490647 () Bool)

(declare-fun e!4466855 () Bool)

(declare-fun call!687647 () Bool)

(assert (=> b!7490647 (= e!4466855 call!687647)))

(declare-fun b!7490648 () Bool)

(declare-fun e!4466856 () Bool)

(declare-fun e!4466852 () Bool)

(assert (=> b!7490648 (= e!4466856 e!4466852)))

(declare-fun c!1383163 () Bool)

(assert (=> b!7490648 (= c!1383163 ((_ is Star!19633) r1!5845))))

(declare-fun b!7490649 () Bool)

(declare-fun res!3004799 () Bool)

(declare-fun e!4466851 () Bool)

(assert (=> b!7490649 (=> res!3004799 e!4466851)))

(assert (=> b!7490649 (= res!3004799 (not ((_ is Concat!28478) r1!5845)))))

(declare-fun e!4466850 () Bool)

(assert (=> b!7490649 (= e!4466850 e!4466851)))

(declare-fun b!7490650 () Bool)

(assert (=> b!7490650 (= e!4466852 e!4466850)))

(declare-fun c!1383164 () Bool)

(assert (=> b!7490650 (= c!1383164 ((_ is Union!19633) r1!5845))))

(declare-fun b!7490651 () Bool)

(declare-fun e!4466853 () Bool)

(declare-fun call!687648 () Bool)

(assert (=> b!7490651 (= e!4466853 call!687648)))

(declare-fun bm!687641 () Bool)

(assert (=> bm!687641 (= call!687647 call!687648)))

(declare-fun bm!687642 () Bool)

(declare-fun call!687646 () Bool)

(assert (=> bm!687642 (= call!687646 (validRegex!10147 (ite c!1383164 (regOne!39779 r1!5845) (regOne!39778 r1!5845))))))

(declare-fun b!7490652 () Bool)

(assert (=> b!7490652 (= e!4466851 e!4466855)))

(declare-fun res!3004800 () Bool)

(assert (=> b!7490652 (=> (not res!3004800) (not e!4466855))))

(assert (=> b!7490652 (= res!3004800 call!687646)))

(declare-fun b!7490653 () Bool)

(declare-fun res!3004798 () Bool)

(declare-fun e!4466854 () Bool)

(assert (=> b!7490653 (=> (not res!3004798) (not e!4466854))))

(assert (=> b!7490653 (= res!3004798 call!687646)))

(assert (=> b!7490653 (= e!4466850 e!4466854)))

(declare-fun b!7490654 () Bool)

(assert (=> b!7490654 (= e!4466852 e!4466853)))

(declare-fun res!3004797 () Bool)

(assert (=> b!7490654 (= res!3004797 (not (nullable!8571 (reg!19962 r1!5845))))))

(assert (=> b!7490654 (=> (not res!3004797) (not e!4466853))))

(declare-fun bm!687643 () Bool)

(assert (=> bm!687643 (= call!687648 (validRegex!10147 (ite c!1383163 (reg!19962 r1!5845) (ite c!1383164 (regTwo!39779 r1!5845) (regTwo!39778 r1!5845)))))))

(declare-fun d!2301210 () Bool)

(declare-fun res!3004796 () Bool)

(assert (=> d!2301210 (=> res!3004796 e!4466856)))

(assert (=> d!2301210 (= res!3004796 ((_ is ElementMatch!19633) r1!5845))))

(assert (=> d!2301210 (= (validRegex!10147 r1!5845) e!4466856)))

(declare-fun b!7490655 () Bool)

(assert (=> b!7490655 (= e!4466854 call!687647)))

(assert (= (and d!2301210 (not res!3004796)) b!7490648))

(assert (= (and b!7490648 c!1383163) b!7490654))

(assert (= (and b!7490648 (not c!1383163)) b!7490650))

(assert (= (and b!7490654 res!3004797) b!7490651))

(assert (= (and b!7490650 c!1383164) b!7490653))

(assert (= (and b!7490650 (not c!1383164)) b!7490649))

(assert (= (and b!7490653 res!3004798) b!7490655))

(assert (= (and b!7490649 (not res!3004799)) b!7490652))

(assert (= (and b!7490652 res!3004800) b!7490647))

(assert (= (or b!7490655 b!7490647) bm!687641))

(assert (= (or b!7490653 b!7490652) bm!687642))

(assert (= (or b!7490651 bm!687641) bm!687643))

(declare-fun m!8077292 () Bool)

(assert (=> bm!687642 m!8077292))

(declare-fun m!8077294 () Bool)

(assert (=> b!7490654 m!8077294))

(declare-fun m!8077296 () Bool)

(assert (=> bm!687643 m!8077296))

(assert (=> start!725158 d!2301210))

(declare-fun d!2301212 () Bool)

(assert (=> d!2301212 (= (matchR!9395 r1!5845 (_1!37655 lt!2629408)) (matchRSpec!4310 r1!5845 (_1!37655 lt!2629408)))))

(declare-fun lt!2629468 () Unit!166097)

(assert (=> d!2301212 (= lt!2629468 (choose!57897 r1!5845 (_1!37655 lt!2629408)))))

(assert (=> d!2301212 (validRegex!10147 r1!5845)))

(assert (=> d!2301212 (= (mainMatchTheorem!4304 r1!5845 (_1!37655 lt!2629408)) lt!2629468)))

(declare-fun bs!1934848 () Bool)

(assert (= bs!1934848 d!2301212))

(assert (=> bs!1934848 m!8076970))

(assert (=> bs!1934848 m!8076978))

(declare-fun m!8077298 () Bool)

(assert (=> bs!1934848 m!8077298))

(assert (=> bs!1934848 m!8077014))

(assert (=> b!7490133 d!2301212))

(declare-fun bs!1934859 () Bool)

(declare-fun b!7490658 () Bool)

(assert (= bs!1934859 (and b!7490658 b!7490452)))

(declare-fun lambda!464115 () Int)

(assert (=> bs!1934859 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 lt!2629424) (reg!19962 lt!2629409)) (= lt!2629424 lt!2629409)) (= lambda!464115 lambda!464101))))

(declare-fun bs!1934864 () Bool)

(assert (= bs!1934864 (and b!7490658 b!7490564)))

(assert (=> bs!1934864 (not (= lambda!464115 lambda!464110))))

(declare-fun bs!1934865 () Bool)

(assert (= bs!1934865 (and b!7490658 b!7490134)))

(assert (=> bs!1934865 (not (= lambda!464115 lambda!464078))))

(declare-fun bs!1934866 () Bool)

(assert (= bs!1934866 (and b!7490658 b!7490559)))

(assert (=> bs!1934866 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 lt!2629424) (reg!19962 lt!2629420)) (= lt!2629424 lt!2629420)) (= lambda!464115 lambda!464108))))

(declare-fun bs!1934867 () Bool)

(assert (= bs!1934867 (and b!7490658 b!7490457)))

(assert (=> bs!1934867 (not (= lambda!464115 lambda!464102))))

(assert (=> bs!1934865 (not (= lambda!464115 lambda!464079))))

(declare-fun bs!1934868 () Bool)

(assert (= bs!1934868 (and b!7490658 b!7490430)))

(assert (=> bs!1934868 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 lt!2629424) (reg!19962 lt!2629417)) (= lt!2629424 lt!2629417)) (= lambda!464115 lambda!464097))))

(declare-fun bs!1934870 () Bool)

(assert (= bs!1934870 (and b!7490658 b!7490435)))

(assert (=> bs!1934870 (not (= lambda!464115 lambda!464098))))

(assert (=> b!7490658 true))

(assert (=> b!7490658 true))

(declare-fun bs!1934876 () Bool)

(declare-fun b!7490663 () Bool)

(assert (= bs!1934876 (and b!7490663 b!7490452)))

(declare-fun lambda!464117 () Int)

(assert (=> bs!1934876 (not (= lambda!464117 lambda!464101))))

(declare-fun bs!1934879 () Bool)

(assert (= bs!1934879 (and b!7490663 b!7490564)))

(assert (=> bs!1934879 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 lt!2629424) (regOne!39778 lt!2629420)) (= (regTwo!39778 lt!2629424) (regTwo!39778 lt!2629420))) (= lambda!464117 lambda!464110))))

(declare-fun bs!1934881 () Bool)

(assert (= bs!1934881 (and b!7490663 b!7490134)))

(assert (=> bs!1934881 (not (= lambda!464117 lambda!464078))))

(declare-fun bs!1934884 () Bool)

(assert (= bs!1934884 (and b!7490663 b!7490559)))

(assert (=> bs!1934884 (not (= lambda!464117 lambda!464108))))

(declare-fun bs!1934886 () Bool)

(assert (= bs!1934886 (and b!7490663 b!7490457)))

(assert (=> bs!1934886 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 lt!2629424) (regOne!39778 lt!2629409)) (= (regTwo!39778 lt!2629424) (regTwo!39778 lt!2629409))) (= lambda!464117 lambda!464102))))

(assert (=> bs!1934881 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 lt!2629424) lt!2629424) (= (regTwo!39778 lt!2629424) rTail!78)) (= lambda!464117 lambda!464079))))

(declare-fun bs!1934890 () Bool)

(assert (= bs!1934890 (and b!7490663 b!7490430)))

(assert (=> bs!1934890 (not (= lambda!464117 lambda!464097))))

(declare-fun bs!1934892 () Bool)

(assert (= bs!1934892 (and b!7490663 b!7490435)))

(assert (=> bs!1934892 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 lt!2629424) (regOne!39778 lt!2629417)) (= (regTwo!39778 lt!2629424) (regTwo!39778 lt!2629417))) (= lambda!464117 lambda!464098))))

(declare-fun bs!1934893 () Bool)

(assert (= bs!1934893 (and b!7490663 b!7490658)))

(assert (=> bs!1934893 (not (= lambda!464117 lambda!464115))))

(assert (=> b!7490663 true))

(assert (=> b!7490663 true))

(declare-fun b!7490656 () Bool)

(declare-fun e!4466859 () Bool)

(assert (=> b!7490656 (= e!4466859 (matchRSpec!4310 (regTwo!39779 lt!2629424) (_1!37655 lt!2629408)))))

(declare-fun b!7490657 () Bool)

(declare-fun res!3004803 () Bool)

(declare-fun e!4466862 () Bool)

(assert (=> b!7490657 (=> res!3004803 e!4466862)))

(declare-fun call!687650 () Bool)

(assert (=> b!7490657 (= res!3004803 call!687650)))

(declare-fun e!4466858 () Bool)

(assert (=> b!7490657 (= e!4466858 e!4466862)))

(declare-fun call!687649 () Bool)

(assert (=> b!7490658 (= e!4466862 call!687649)))

(declare-fun b!7490659 () Bool)

(declare-fun c!1383166 () Bool)

(assert (=> b!7490659 (= c!1383166 ((_ is Union!19633) lt!2629424))))

(declare-fun e!4466861 () Bool)

(declare-fun e!4466860 () Bool)

(assert (=> b!7490659 (= e!4466861 e!4466860)))

(declare-fun bm!687644 () Bool)

(declare-fun c!1383165 () Bool)

(assert (=> bm!687644 (= call!687649 (Exists!4250 (ite c!1383165 lambda!464115 lambda!464117)))))

(declare-fun b!7490660 () Bool)

(assert (=> b!7490660 (= e!4466860 e!4466859)))

(declare-fun res!3004801 () Bool)

(assert (=> b!7490660 (= res!3004801 (matchRSpec!4310 (regOne!39779 lt!2629424) (_1!37655 lt!2629408)))))

(assert (=> b!7490660 (=> res!3004801 e!4466859)))

(declare-fun b!7490661 () Bool)

(assert (=> b!7490661 (= e!4466860 e!4466858)))

(assert (=> b!7490661 (= c!1383165 ((_ is Star!19633) lt!2629424))))

(declare-fun b!7490662 () Bool)

(declare-fun c!1383168 () Bool)

(assert (=> b!7490662 (= c!1383168 ((_ is ElementMatch!19633) lt!2629424))))

(declare-fun e!4466857 () Bool)

(assert (=> b!7490662 (= e!4466857 e!4466861)))

(assert (=> b!7490663 (= e!4466858 call!687649)))

(declare-fun d!2301214 () Bool)

(declare-fun c!1383167 () Bool)

(assert (=> d!2301214 (= c!1383167 ((_ is EmptyExpr!19633) lt!2629424))))

(declare-fun e!4466863 () Bool)

(assert (=> d!2301214 (= (matchRSpec!4310 lt!2629424 (_1!37655 lt!2629408)) e!4466863)))

(declare-fun b!7490664 () Bool)

(assert (=> b!7490664 (= e!4466863 e!4466857)))

(declare-fun res!3004802 () Bool)

(assert (=> b!7490664 (= res!3004802 (not ((_ is EmptyLang!19633) lt!2629424)))))

(assert (=> b!7490664 (=> (not res!3004802) (not e!4466857))))

(declare-fun bm!687645 () Bool)

(assert (=> bm!687645 (= call!687650 (isEmpty!41249 (_1!37655 lt!2629408)))))

(declare-fun b!7490665 () Bool)

(assert (=> b!7490665 (= e!4466861 (= (_1!37655 lt!2629408) (Cons!72223 (c!1383040 lt!2629424) Nil!72223)))))

(declare-fun b!7490666 () Bool)

(assert (=> b!7490666 (= e!4466863 call!687650)))

(assert (= (and d!2301214 c!1383167) b!7490666))

(assert (= (and d!2301214 (not c!1383167)) b!7490664))

(assert (= (and b!7490664 res!3004802) b!7490662))

(assert (= (and b!7490662 c!1383168) b!7490665))

(assert (= (and b!7490662 (not c!1383168)) b!7490659))

(assert (= (and b!7490659 c!1383166) b!7490660))

(assert (= (and b!7490659 (not c!1383166)) b!7490661))

(assert (= (and b!7490660 (not res!3004801)) b!7490656))

(assert (= (and b!7490661 c!1383165) b!7490657))

(assert (= (and b!7490661 (not c!1383165)) b!7490663))

(assert (= (and b!7490657 (not res!3004803)) b!7490658))

(assert (= (or b!7490658 b!7490663) bm!687644))

(assert (= (or b!7490666 b!7490657) bm!687645))

(declare-fun m!8077316 () Bool)

(assert (=> b!7490656 m!8077316))

(declare-fun m!8077318 () Bool)

(assert (=> bm!687644 m!8077318))

(declare-fun m!8077320 () Bool)

(assert (=> b!7490660 m!8077320))

(declare-fun m!8077322 () Bool)

(assert (=> bm!687645 m!8077322))

(assert (=> b!7490133 d!2301214))

(declare-fun b!7490692 () Bool)

(declare-fun res!3004819 () Bool)

(declare-fun e!4466879 () Bool)

(assert (=> b!7490692 (=> res!3004819 e!4466879)))

(assert (=> b!7490692 (= res!3004819 (not ((_ is ElementMatch!19633) r2!5783)))))

(declare-fun e!4466882 () Bool)

(assert (=> b!7490692 (= e!4466882 e!4466879)))

(declare-fun b!7490693 () Bool)

(declare-fun e!4466881 () Bool)

(assert (=> b!7490693 (= e!4466881 (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 r2!5783)))))

(declare-fun b!7490694 () Bool)

(declare-fun e!4466878 () Bool)

(declare-fun lt!2629471 () Bool)

(declare-fun call!687654 () Bool)

(assert (=> b!7490694 (= e!4466878 (= lt!2629471 call!687654))))

(declare-fun b!7490695 () Bool)

(declare-fun e!4466884 () Bool)

(assert (=> b!7490695 (= e!4466884 (matchR!9395 (derivativeStep!5628 r2!5783 (head!15368 (_1!37655 lt!2629408))) (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490696 () Bool)

(declare-fun res!3004822 () Bool)

(declare-fun e!4466880 () Bool)

(assert (=> b!7490696 (=> res!3004822 e!4466880)))

(assert (=> b!7490696 (= res!3004822 (not (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408)))))))

(declare-fun b!7490697 () Bool)

(declare-fun e!4466883 () Bool)

(assert (=> b!7490697 (= e!4466883 e!4466880)))

(declare-fun res!3004815 () Bool)

(assert (=> b!7490697 (=> res!3004815 e!4466880)))

(assert (=> b!7490697 (= res!3004815 call!687654)))

(declare-fun b!7490698 () Bool)

(declare-fun res!3004818 () Bool)

(assert (=> b!7490698 (=> res!3004818 e!4466879)))

(assert (=> b!7490698 (= res!3004818 e!4466881)))

(declare-fun res!3004821 () Bool)

(assert (=> b!7490698 (=> (not res!3004821) (not e!4466881))))

(assert (=> b!7490698 (= res!3004821 lt!2629471)))

(declare-fun d!2301222 () Bool)

(assert (=> d!2301222 e!4466878))

(declare-fun c!1383178 () Bool)

(assert (=> d!2301222 (= c!1383178 ((_ is EmptyExpr!19633) r2!5783))))

(assert (=> d!2301222 (= lt!2629471 e!4466884)))

(declare-fun c!1383176 () Bool)

(assert (=> d!2301222 (= c!1383176 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (=> d!2301222 (validRegex!10147 r2!5783)))

(assert (=> d!2301222 (= (matchR!9395 r2!5783 (_1!37655 lt!2629408)) lt!2629471)))

(declare-fun b!7490699 () Bool)

(declare-fun res!3004820 () Bool)

(assert (=> b!7490699 (=> (not res!3004820) (not e!4466881))))

(assert (=> b!7490699 (= res!3004820 (not call!687654))))

(declare-fun b!7490700 () Bool)

(assert (=> b!7490700 (= e!4466884 (nullable!8571 r2!5783))))

(declare-fun b!7490701 () Bool)

(declare-fun res!3004817 () Bool)

(assert (=> b!7490701 (=> (not res!3004817) (not e!4466881))))

(assert (=> b!7490701 (= res!3004817 (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490702 () Bool)

(assert (=> b!7490702 (= e!4466880 (not (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 r2!5783))))))

(declare-fun b!7490703 () Bool)

(assert (=> b!7490703 (= e!4466878 e!4466882)))

(declare-fun c!1383177 () Bool)

(assert (=> b!7490703 (= c!1383177 ((_ is EmptyLang!19633) r2!5783))))

(declare-fun b!7490704 () Bool)

(assert (=> b!7490704 (= e!4466879 e!4466883)))

(declare-fun res!3004816 () Bool)

(assert (=> b!7490704 (=> (not res!3004816) (not e!4466883))))

(assert (=> b!7490704 (= res!3004816 (not lt!2629471))))

(declare-fun b!7490705 () Bool)

(assert (=> b!7490705 (= e!4466882 (not lt!2629471))))

(declare-fun bm!687649 () Bool)

(assert (=> bm!687649 (= call!687654 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (= (and d!2301222 c!1383176) b!7490700))

(assert (= (and d!2301222 (not c!1383176)) b!7490695))

(assert (= (and d!2301222 c!1383178) b!7490694))

(assert (= (and d!2301222 (not c!1383178)) b!7490703))

(assert (= (and b!7490703 c!1383177) b!7490705))

(assert (= (and b!7490703 (not c!1383177)) b!7490692))

(assert (= (and b!7490692 (not res!3004819)) b!7490698))

(assert (= (and b!7490698 res!3004821) b!7490699))

(assert (= (and b!7490699 res!3004820) b!7490701))

(assert (= (and b!7490701 res!3004817) b!7490693))

(assert (= (and b!7490698 (not res!3004818)) b!7490704))

(assert (= (and b!7490704 res!3004816) b!7490697))

(assert (= (and b!7490697 (not res!3004815)) b!7490696))

(assert (= (and b!7490696 (not res!3004822)) b!7490702))

(assert (= (or b!7490694 b!7490697 b!7490699) bm!687649))

(declare-fun m!8077330 () Bool)

(assert (=> b!7490693 m!8077330))

(assert (=> b!7490695 m!8077330))

(assert (=> b!7490695 m!8077330))

(declare-fun m!8077332 () Bool)

(assert (=> b!7490695 m!8077332))

(declare-fun m!8077334 () Bool)

(assert (=> b!7490695 m!8077334))

(assert (=> b!7490695 m!8077332))

(assert (=> b!7490695 m!8077334))

(declare-fun m!8077336 () Bool)

(assert (=> b!7490695 m!8077336))

(assert (=> b!7490696 m!8077334))

(assert (=> b!7490696 m!8077334))

(declare-fun m!8077338 () Bool)

(assert (=> b!7490696 m!8077338))

(assert (=> b!7490702 m!8077330))

(assert (=> d!2301222 m!8077322))

(assert (=> d!2301222 m!8077002))

(declare-fun m!8077340 () Bool)

(assert (=> b!7490700 m!8077340))

(assert (=> b!7490701 m!8077334))

(assert (=> b!7490701 m!8077334))

(assert (=> b!7490701 m!8077338))

(assert (=> bm!687649 m!8077322))

(assert (=> b!7490133 d!2301222))

(declare-fun bs!1934910 () Bool)

(declare-fun b!7490718 () Bool)

(assert (= bs!1934910 (and b!7490718 b!7490452)))

(declare-fun lambda!464119 () Int)

(assert (=> bs!1934910 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r1!5845) (reg!19962 lt!2629409)) (= r1!5845 lt!2629409)) (= lambda!464119 lambda!464101))))

(declare-fun bs!1934911 () Bool)

(assert (= bs!1934911 (and b!7490718 b!7490564)))

(assert (=> bs!1934911 (not (= lambda!464119 lambda!464110))))

(declare-fun bs!1934912 () Bool)

(assert (= bs!1934912 (and b!7490718 b!7490134)))

(assert (=> bs!1934912 (not (= lambda!464119 lambda!464078))))

(declare-fun bs!1934913 () Bool)

(assert (= bs!1934913 (and b!7490718 b!7490559)))

(assert (=> bs!1934913 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r1!5845) (reg!19962 lt!2629420)) (= r1!5845 lt!2629420)) (= lambda!464119 lambda!464108))))

(declare-fun bs!1934914 () Bool)

(assert (= bs!1934914 (and b!7490718 b!7490457)))

(assert (=> bs!1934914 (not (= lambda!464119 lambda!464102))))

(assert (=> bs!1934912 (not (= lambda!464119 lambda!464079))))

(declare-fun bs!1934915 () Bool)

(assert (= bs!1934915 (and b!7490718 b!7490435)))

(assert (=> bs!1934915 (not (= lambda!464119 lambda!464098))))

(declare-fun bs!1934916 () Bool)

(assert (= bs!1934916 (and b!7490718 b!7490658)))

(assert (=> bs!1934916 (= (and (= (reg!19962 r1!5845) (reg!19962 lt!2629424)) (= r1!5845 lt!2629424)) (= lambda!464119 lambda!464115))))

(declare-fun bs!1934917 () Bool)

(assert (= bs!1934917 (and b!7490718 b!7490430)))

(assert (=> bs!1934917 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r1!5845) (reg!19962 lt!2629417)) (= r1!5845 lt!2629417)) (= lambda!464119 lambda!464097))))

(declare-fun bs!1934918 () Bool)

(assert (= bs!1934918 (and b!7490718 b!7490663)))

(assert (=> bs!1934918 (not (= lambda!464119 lambda!464117))))

(assert (=> b!7490718 true))

(assert (=> b!7490718 true))

(declare-fun bs!1934919 () Bool)

(declare-fun b!7490723 () Bool)

(assert (= bs!1934919 (and b!7490723 b!7490452)))

(declare-fun lambda!464120 () Int)

(assert (=> bs!1934919 (not (= lambda!464120 lambda!464101))))

(declare-fun bs!1934920 () Bool)

(assert (= bs!1934920 (and b!7490723 b!7490564)))

(assert (=> bs!1934920 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r1!5845) (regOne!39778 lt!2629420)) (= (regTwo!39778 r1!5845) (regTwo!39778 lt!2629420))) (= lambda!464120 lambda!464110))))

(declare-fun bs!1934921 () Bool)

(assert (= bs!1934921 (and b!7490723 b!7490134)))

(assert (=> bs!1934921 (not (= lambda!464120 lambda!464078))))

(declare-fun bs!1934922 () Bool)

(assert (= bs!1934922 (and b!7490723 b!7490559)))

(assert (=> bs!1934922 (not (= lambda!464120 lambda!464108))))

(declare-fun bs!1934923 () Bool)

(assert (= bs!1934923 (and b!7490723 b!7490457)))

(assert (=> bs!1934923 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r1!5845) (regOne!39778 lt!2629409)) (= (regTwo!39778 r1!5845) (regTwo!39778 lt!2629409))) (= lambda!464120 lambda!464102))))

(assert (=> bs!1934921 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r1!5845) lt!2629424) (= (regTwo!39778 r1!5845) rTail!78)) (= lambda!464120 lambda!464079))))

(declare-fun bs!1934924 () Bool)

(assert (= bs!1934924 (and b!7490723 b!7490435)))

(assert (=> bs!1934924 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r1!5845) (regOne!39778 lt!2629417)) (= (regTwo!39778 r1!5845) (regTwo!39778 lt!2629417))) (= lambda!464120 lambda!464098))))

(declare-fun bs!1934925 () Bool)

(assert (= bs!1934925 (and b!7490723 b!7490718)))

(assert (=> bs!1934925 (not (= lambda!464120 lambda!464119))))

(declare-fun bs!1934926 () Bool)

(assert (= bs!1934926 (and b!7490723 b!7490658)))

(assert (=> bs!1934926 (not (= lambda!464120 lambda!464115))))

(declare-fun bs!1934927 () Bool)

(assert (= bs!1934927 (and b!7490723 b!7490430)))

(assert (=> bs!1934927 (not (= lambda!464120 lambda!464097))))

(declare-fun bs!1934928 () Bool)

(assert (= bs!1934928 (and b!7490723 b!7490663)))

(assert (=> bs!1934928 (= (and (= (regOne!39778 r1!5845) (regOne!39778 lt!2629424)) (= (regTwo!39778 r1!5845) (regTwo!39778 lt!2629424))) (= lambda!464120 lambda!464117))))

(assert (=> b!7490723 true))

(assert (=> b!7490723 true))

(declare-fun b!7490716 () Bool)

(declare-fun e!4466889 () Bool)

(assert (=> b!7490716 (= e!4466889 (matchRSpec!4310 (regTwo!39779 r1!5845) (_1!37655 lt!2629408)))))

(declare-fun b!7490717 () Bool)

(declare-fun res!3004825 () Bool)

(declare-fun e!4466892 () Bool)

(assert (=> b!7490717 (=> res!3004825 e!4466892)))

(declare-fun call!687656 () Bool)

(assert (=> b!7490717 (= res!3004825 call!687656)))

(declare-fun e!4466888 () Bool)

(assert (=> b!7490717 (= e!4466888 e!4466892)))

(declare-fun call!687655 () Bool)

(assert (=> b!7490718 (= e!4466892 call!687655)))

(declare-fun b!7490719 () Bool)

(declare-fun c!1383180 () Bool)

(assert (=> b!7490719 (= c!1383180 ((_ is Union!19633) r1!5845))))

(declare-fun e!4466891 () Bool)

(declare-fun e!4466890 () Bool)

(assert (=> b!7490719 (= e!4466891 e!4466890)))

(declare-fun bm!687650 () Bool)

(declare-fun c!1383179 () Bool)

(assert (=> bm!687650 (= call!687655 (Exists!4250 (ite c!1383179 lambda!464119 lambda!464120)))))

(declare-fun b!7490720 () Bool)

(assert (=> b!7490720 (= e!4466890 e!4466889)))

(declare-fun res!3004823 () Bool)

(assert (=> b!7490720 (= res!3004823 (matchRSpec!4310 (regOne!39779 r1!5845) (_1!37655 lt!2629408)))))

(assert (=> b!7490720 (=> res!3004823 e!4466889)))

(declare-fun b!7490721 () Bool)

(assert (=> b!7490721 (= e!4466890 e!4466888)))

(assert (=> b!7490721 (= c!1383179 ((_ is Star!19633) r1!5845))))

(declare-fun b!7490722 () Bool)

(declare-fun c!1383182 () Bool)

(assert (=> b!7490722 (= c!1383182 ((_ is ElementMatch!19633) r1!5845))))

(declare-fun e!4466887 () Bool)

(assert (=> b!7490722 (= e!4466887 e!4466891)))

(assert (=> b!7490723 (= e!4466888 call!687655)))

(declare-fun d!2301224 () Bool)

(declare-fun c!1383181 () Bool)

(assert (=> d!2301224 (= c!1383181 ((_ is EmptyExpr!19633) r1!5845))))

(declare-fun e!4466893 () Bool)

(assert (=> d!2301224 (= (matchRSpec!4310 r1!5845 (_1!37655 lt!2629408)) e!4466893)))

(declare-fun b!7490724 () Bool)

(assert (=> b!7490724 (= e!4466893 e!4466887)))

(declare-fun res!3004824 () Bool)

(assert (=> b!7490724 (= res!3004824 (not ((_ is EmptyLang!19633) r1!5845)))))

(assert (=> b!7490724 (=> (not res!3004824) (not e!4466887))))

(declare-fun bm!687651 () Bool)

(assert (=> bm!687651 (= call!687656 (isEmpty!41249 (_1!37655 lt!2629408)))))

(declare-fun b!7490725 () Bool)

(assert (=> b!7490725 (= e!4466891 (= (_1!37655 lt!2629408) (Cons!72223 (c!1383040 r1!5845) Nil!72223)))))

(declare-fun b!7490726 () Bool)

(assert (=> b!7490726 (= e!4466893 call!687656)))

(assert (= (and d!2301224 c!1383181) b!7490726))

(assert (= (and d!2301224 (not c!1383181)) b!7490724))

(assert (= (and b!7490724 res!3004824) b!7490722))

(assert (= (and b!7490722 c!1383182) b!7490725))

(assert (= (and b!7490722 (not c!1383182)) b!7490719))

(assert (= (and b!7490719 c!1383180) b!7490720))

(assert (= (and b!7490719 (not c!1383180)) b!7490721))

(assert (= (and b!7490720 (not res!3004823)) b!7490716))

(assert (= (and b!7490721 c!1383179) b!7490717))

(assert (= (and b!7490721 (not c!1383179)) b!7490723))

(assert (= (and b!7490717 (not res!3004825)) b!7490718))

(assert (= (or b!7490718 b!7490723) bm!687650))

(assert (= (or b!7490726 b!7490717) bm!687651))

(declare-fun m!8077342 () Bool)

(assert (=> b!7490716 m!8077342))

(declare-fun m!8077344 () Bool)

(assert (=> bm!687650 m!8077344))

(declare-fun m!8077346 () Bool)

(assert (=> b!7490720 m!8077346))

(assert (=> bm!687651 m!8077322))

(assert (=> b!7490133 d!2301224))

(declare-fun d!2301226 () Bool)

(assert (=> d!2301226 (= (matchR!9395 r2!5783 (_1!37655 lt!2629408)) (matchRSpec!4310 r2!5783 (_1!37655 lt!2629408)))))

(declare-fun lt!2629472 () Unit!166097)

(assert (=> d!2301226 (= lt!2629472 (choose!57897 r2!5783 (_1!37655 lt!2629408)))))

(assert (=> d!2301226 (validRegex!10147 r2!5783)))

(assert (=> d!2301226 (= (mainMatchTheorem!4304 r2!5783 (_1!37655 lt!2629408)) lt!2629472)))

(declare-fun bs!1934929 () Bool)

(assert (= bs!1934929 d!2301226))

(assert (=> bs!1934929 m!8076984))

(assert (=> bs!1934929 m!8076988))

(declare-fun m!8077348 () Bool)

(assert (=> bs!1934929 m!8077348))

(assert (=> bs!1934929 m!8077002))

(assert (=> b!7490133 d!2301226))

(declare-fun d!2301228 () Bool)

(assert (=> d!2301228 (= (matchR!9395 lt!2629424 (_1!37655 lt!2629408)) (matchRSpec!4310 lt!2629424 (_1!37655 lt!2629408)))))

(declare-fun lt!2629473 () Unit!166097)

(assert (=> d!2301228 (= lt!2629473 (choose!57897 lt!2629424 (_1!37655 lt!2629408)))))

(assert (=> d!2301228 (validRegex!10147 lt!2629424)))

(assert (=> d!2301228 (= (mainMatchTheorem!4304 lt!2629424 (_1!37655 lt!2629408)) lt!2629473)))

(declare-fun bs!1934930 () Bool)

(assert (= bs!1934930 d!2301228))

(assert (=> bs!1934930 m!8077016))

(assert (=> bs!1934930 m!8076980))

(declare-fun m!8077350 () Bool)

(assert (=> bs!1934930 m!8077350))

(declare-fun m!8077352 () Bool)

(assert (=> bs!1934930 m!8077352))

(assert (=> b!7490133 d!2301228))

(declare-fun bs!1934931 () Bool)

(declare-fun b!7490794 () Bool)

(assert (= bs!1934931 (and b!7490794 b!7490452)))

(declare-fun lambda!464121 () Int)

(assert (=> bs!1934931 (= (and (= (_2!37655 lt!2629408) s!13591) (= (reg!19962 rTail!78) (reg!19962 lt!2629409)) (= rTail!78 lt!2629409)) (= lambda!464121 lambda!464101))))

(declare-fun bs!1934932 () Bool)

(assert (= bs!1934932 (and b!7490794 b!7490564)))

(assert (=> bs!1934932 (not (= lambda!464121 lambda!464110))))

(declare-fun bs!1934933 () Bool)

(assert (= bs!1934933 (and b!7490794 b!7490134)))

(assert (=> bs!1934933 (not (= lambda!464121 lambda!464078))))

(declare-fun bs!1934934 () Bool)

(assert (= bs!1934934 (and b!7490794 b!7490559)))

(assert (=> bs!1934934 (= (and (= (_2!37655 lt!2629408) s!13591) (= (reg!19962 rTail!78) (reg!19962 lt!2629420)) (= rTail!78 lt!2629420)) (= lambda!464121 lambda!464108))))

(declare-fun bs!1934935 () Bool)

(assert (= bs!1934935 (and b!7490794 b!7490457)))

(assert (=> bs!1934935 (not (= lambda!464121 lambda!464102))))

(assert (=> bs!1934933 (not (= lambda!464121 lambda!464079))))

(declare-fun bs!1934936 () Bool)

(assert (= bs!1934936 (and b!7490794 b!7490435)))

(assert (=> bs!1934936 (not (= lambda!464121 lambda!464098))))

(declare-fun bs!1934937 () Bool)

(assert (= bs!1934937 (and b!7490794 b!7490718)))

(assert (=> bs!1934937 (= (and (= (_2!37655 lt!2629408) (_1!37655 lt!2629408)) (= (reg!19962 rTail!78) (reg!19962 r1!5845)) (= rTail!78 r1!5845)) (= lambda!464121 lambda!464119))))

(declare-fun bs!1934938 () Bool)

(assert (= bs!1934938 (and b!7490794 b!7490658)))

(assert (=> bs!1934938 (= (and (= (_2!37655 lt!2629408) (_1!37655 lt!2629408)) (= (reg!19962 rTail!78) (reg!19962 lt!2629424)) (= rTail!78 lt!2629424)) (= lambda!464121 lambda!464115))))

(declare-fun bs!1934939 () Bool)

(assert (= bs!1934939 (and b!7490794 b!7490723)))

(assert (=> bs!1934939 (not (= lambda!464121 lambda!464120))))

(declare-fun bs!1934940 () Bool)

(assert (= bs!1934940 (and b!7490794 b!7490430)))

(assert (=> bs!1934940 (= (and (= (_2!37655 lt!2629408) s!13591) (= (reg!19962 rTail!78) (reg!19962 lt!2629417)) (= rTail!78 lt!2629417)) (= lambda!464121 lambda!464097))))

(declare-fun bs!1934941 () Bool)

(assert (= bs!1934941 (and b!7490794 b!7490663)))

(assert (=> bs!1934941 (not (= lambda!464121 lambda!464117))))

(assert (=> b!7490794 true))

(assert (=> b!7490794 true))

(declare-fun bs!1934942 () Bool)

(declare-fun b!7490799 () Bool)

(assert (= bs!1934942 (and b!7490799 b!7490452)))

(declare-fun lambda!464122 () Int)

(assert (=> bs!1934942 (not (= lambda!464122 lambda!464101))))

(declare-fun bs!1934943 () Bool)

(assert (= bs!1934943 (and b!7490799 b!7490564)))

(assert (=> bs!1934943 (= (and (= (_2!37655 lt!2629408) s!13591) (= (regOne!39778 rTail!78) (regOne!39778 lt!2629420)) (= (regTwo!39778 rTail!78) (regTwo!39778 lt!2629420))) (= lambda!464122 lambda!464110))))

(declare-fun bs!1934944 () Bool)

(assert (= bs!1934944 (and b!7490799 b!7490134)))

(assert (=> bs!1934944 (not (= lambda!464122 lambda!464078))))

(declare-fun bs!1934945 () Bool)

(assert (= bs!1934945 (and b!7490799 b!7490559)))

(assert (=> bs!1934945 (not (= lambda!464122 lambda!464108))))

(declare-fun bs!1934946 () Bool)

(assert (= bs!1934946 (and b!7490799 b!7490457)))

(assert (=> bs!1934946 (= (and (= (_2!37655 lt!2629408) s!13591) (= (regOne!39778 rTail!78) (regOne!39778 lt!2629409)) (= (regTwo!39778 rTail!78) (regTwo!39778 lt!2629409))) (= lambda!464122 lambda!464102))))

(assert (=> bs!1934944 (= (and (= (_2!37655 lt!2629408) s!13591) (= (regOne!39778 rTail!78) lt!2629424) (= (regTwo!39778 rTail!78) rTail!78)) (= lambda!464122 lambda!464079))))

(declare-fun bs!1934947 () Bool)

(assert (= bs!1934947 (and b!7490799 b!7490435)))

(assert (=> bs!1934947 (= (and (= (_2!37655 lt!2629408) s!13591) (= (regOne!39778 rTail!78) (regOne!39778 lt!2629417)) (= (regTwo!39778 rTail!78) (regTwo!39778 lt!2629417))) (= lambda!464122 lambda!464098))))

(declare-fun bs!1934948 () Bool)

(assert (= bs!1934948 (and b!7490799 b!7490718)))

(assert (=> bs!1934948 (not (= lambda!464122 lambda!464119))))

(declare-fun bs!1934949 () Bool)

(assert (= bs!1934949 (and b!7490799 b!7490658)))

(assert (=> bs!1934949 (not (= lambda!464122 lambda!464115))))

(declare-fun bs!1934950 () Bool)

(assert (= bs!1934950 (and b!7490799 b!7490794)))

(assert (=> bs!1934950 (not (= lambda!464122 lambda!464121))))

(declare-fun bs!1934951 () Bool)

(assert (= bs!1934951 (and b!7490799 b!7490723)))

(assert (=> bs!1934951 (= (and (= (_2!37655 lt!2629408) (_1!37655 lt!2629408)) (= (regOne!39778 rTail!78) (regOne!39778 r1!5845)) (= (regTwo!39778 rTail!78) (regTwo!39778 r1!5845))) (= lambda!464122 lambda!464120))))

(declare-fun bs!1934952 () Bool)

(assert (= bs!1934952 (and b!7490799 b!7490430)))

(assert (=> bs!1934952 (not (= lambda!464122 lambda!464097))))

(declare-fun bs!1934953 () Bool)

(assert (= bs!1934953 (and b!7490799 b!7490663)))

(assert (=> bs!1934953 (= (and (= (_2!37655 lt!2629408) (_1!37655 lt!2629408)) (= (regOne!39778 rTail!78) (regOne!39778 lt!2629424)) (= (regTwo!39778 rTail!78) (regTwo!39778 lt!2629424))) (= lambda!464122 lambda!464117))))

(assert (=> b!7490799 true))

(assert (=> b!7490799 true))

(declare-fun b!7490792 () Bool)

(declare-fun e!4466914 () Bool)

(assert (=> b!7490792 (= e!4466914 (matchRSpec!4310 (regTwo!39779 rTail!78) (_2!37655 lt!2629408)))))

(declare-fun b!7490793 () Bool)

(declare-fun res!3004828 () Bool)

(declare-fun e!4466917 () Bool)

(assert (=> b!7490793 (=> res!3004828 e!4466917)))

(declare-fun call!687658 () Bool)

(assert (=> b!7490793 (= res!3004828 call!687658)))

(declare-fun e!4466913 () Bool)

(assert (=> b!7490793 (= e!4466913 e!4466917)))

(declare-fun call!687657 () Bool)

(assert (=> b!7490794 (= e!4466917 call!687657)))

(declare-fun b!7490795 () Bool)

(declare-fun c!1383184 () Bool)

(assert (=> b!7490795 (= c!1383184 ((_ is Union!19633) rTail!78))))

(declare-fun e!4466916 () Bool)

(declare-fun e!4466915 () Bool)

(assert (=> b!7490795 (= e!4466916 e!4466915)))

(declare-fun bm!687652 () Bool)

(declare-fun c!1383183 () Bool)

(assert (=> bm!687652 (= call!687657 (Exists!4250 (ite c!1383183 lambda!464121 lambda!464122)))))

(declare-fun b!7490796 () Bool)

(assert (=> b!7490796 (= e!4466915 e!4466914)))

(declare-fun res!3004826 () Bool)

(assert (=> b!7490796 (= res!3004826 (matchRSpec!4310 (regOne!39779 rTail!78) (_2!37655 lt!2629408)))))

(assert (=> b!7490796 (=> res!3004826 e!4466914)))

(declare-fun b!7490797 () Bool)

(assert (=> b!7490797 (= e!4466915 e!4466913)))

(assert (=> b!7490797 (= c!1383183 ((_ is Star!19633) rTail!78))))

(declare-fun b!7490798 () Bool)

(declare-fun c!1383186 () Bool)

(assert (=> b!7490798 (= c!1383186 ((_ is ElementMatch!19633) rTail!78))))

(declare-fun e!4466912 () Bool)

(assert (=> b!7490798 (= e!4466912 e!4466916)))

(assert (=> b!7490799 (= e!4466913 call!687657)))

(declare-fun d!2301230 () Bool)

(declare-fun c!1383185 () Bool)

(assert (=> d!2301230 (= c!1383185 ((_ is EmptyExpr!19633) rTail!78))))

(declare-fun e!4466918 () Bool)

(assert (=> d!2301230 (= (matchRSpec!4310 rTail!78 (_2!37655 lt!2629408)) e!4466918)))

(declare-fun b!7490800 () Bool)

(assert (=> b!7490800 (= e!4466918 e!4466912)))

(declare-fun res!3004827 () Bool)

(assert (=> b!7490800 (= res!3004827 (not ((_ is EmptyLang!19633) rTail!78)))))

(assert (=> b!7490800 (=> (not res!3004827) (not e!4466912))))

(declare-fun bm!687653 () Bool)

(assert (=> bm!687653 (= call!687658 (isEmpty!41249 (_2!37655 lt!2629408)))))

(declare-fun b!7490801 () Bool)

(assert (=> b!7490801 (= e!4466916 (= (_2!37655 lt!2629408) (Cons!72223 (c!1383040 rTail!78) Nil!72223)))))

(declare-fun b!7490802 () Bool)

(assert (=> b!7490802 (= e!4466918 call!687658)))

(assert (= (and d!2301230 c!1383185) b!7490802))

(assert (= (and d!2301230 (not c!1383185)) b!7490800))

(assert (= (and b!7490800 res!3004827) b!7490798))

(assert (= (and b!7490798 c!1383186) b!7490801))

(assert (= (and b!7490798 (not c!1383186)) b!7490795))

(assert (= (and b!7490795 c!1383184) b!7490796))

(assert (= (and b!7490795 (not c!1383184)) b!7490797))

(assert (= (and b!7490796 (not res!3004826)) b!7490792))

(assert (= (and b!7490797 c!1383183) b!7490793))

(assert (= (and b!7490797 (not c!1383183)) b!7490799))

(assert (= (and b!7490793 (not res!3004828)) b!7490794))

(assert (= (or b!7490794 b!7490799) bm!687652))

(assert (= (or b!7490802 b!7490793) bm!687653))

(declare-fun m!8077354 () Bool)

(assert (=> b!7490792 m!8077354))

(declare-fun m!8077356 () Bool)

(assert (=> bm!687652 m!8077356))

(declare-fun m!8077358 () Bool)

(assert (=> b!7490796 m!8077358))

(assert (=> bm!687653 m!8077288))

(assert (=> b!7490133 d!2301230))

(declare-fun d!2301232 () Bool)

(assert (=> d!2301232 (= (matchR!9395 rTail!78 (_2!37655 lt!2629408)) (matchRSpec!4310 rTail!78 (_2!37655 lt!2629408)))))

(declare-fun lt!2629474 () Unit!166097)

(assert (=> d!2301232 (= lt!2629474 (choose!57897 rTail!78 (_2!37655 lt!2629408)))))

(assert (=> d!2301232 (validRegex!10147 rTail!78)))

(assert (=> d!2301232 (= (mainMatchTheorem!4304 rTail!78 (_2!37655 lt!2629408)) lt!2629474)))

(declare-fun bs!1934954 () Bool)

(assert (= bs!1934954 d!2301232))

(assert (=> bs!1934954 m!8076968))

(assert (=> bs!1934954 m!8076986))

(declare-fun m!8077360 () Bool)

(assert (=> bs!1934954 m!8077360))

(assert (=> bs!1934954 m!8077004))

(assert (=> b!7490133 d!2301232))

(declare-fun bs!1934955 () Bool)

(declare-fun b!7490805 () Bool)

(assert (= bs!1934955 (and b!7490805 b!7490799)))

(declare-fun lambda!464123 () Int)

(assert (=> bs!1934955 (not (= lambda!464123 lambda!464122))))

(declare-fun bs!1934956 () Bool)

(assert (= bs!1934956 (and b!7490805 b!7490452)))

(assert (=> bs!1934956 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r2!5783) (reg!19962 lt!2629409)) (= r2!5783 lt!2629409)) (= lambda!464123 lambda!464101))))

(declare-fun bs!1934957 () Bool)

(assert (= bs!1934957 (and b!7490805 b!7490564)))

(assert (=> bs!1934957 (not (= lambda!464123 lambda!464110))))

(declare-fun bs!1934958 () Bool)

(assert (= bs!1934958 (and b!7490805 b!7490134)))

(assert (=> bs!1934958 (not (= lambda!464123 lambda!464078))))

(declare-fun bs!1934959 () Bool)

(assert (= bs!1934959 (and b!7490805 b!7490559)))

(assert (=> bs!1934959 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r2!5783) (reg!19962 lt!2629420)) (= r2!5783 lt!2629420)) (= lambda!464123 lambda!464108))))

(declare-fun bs!1934960 () Bool)

(assert (= bs!1934960 (and b!7490805 b!7490457)))

(assert (=> bs!1934960 (not (= lambda!464123 lambda!464102))))

(assert (=> bs!1934958 (not (= lambda!464123 lambda!464079))))

(declare-fun bs!1934961 () Bool)

(assert (= bs!1934961 (and b!7490805 b!7490435)))

(assert (=> bs!1934961 (not (= lambda!464123 lambda!464098))))

(declare-fun bs!1934962 () Bool)

(assert (= bs!1934962 (and b!7490805 b!7490718)))

(assert (=> bs!1934962 (= (and (= (reg!19962 r2!5783) (reg!19962 r1!5845)) (= r2!5783 r1!5845)) (= lambda!464123 lambda!464119))))

(declare-fun bs!1934963 () Bool)

(assert (= bs!1934963 (and b!7490805 b!7490658)))

(assert (=> bs!1934963 (= (and (= (reg!19962 r2!5783) (reg!19962 lt!2629424)) (= r2!5783 lt!2629424)) (= lambda!464123 lambda!464115))))

(declare-fun bs!1934964 () Bool)

(assert (= bs!1934964 (and b!7490805 b!7490794)))

(assert (=> bs!1934964 (= (and (= (_1!37655 lt!2629408) (_2!37655 lt!2629408)) (= (reg!19962 r2!5783) (reg!19962 rTail!78)) (= r2!5783 rTail!78)) (= lambda!464123 lambda!464121))))

(declare-fun bs!1934965 () Bool)

(assert (= bs!1934965 (and b!7490805 b!7490723)))

(assert (=> bs!1934965 (not (= lambda!464123 lambda!464120))))

(declare-fun bs!1934966 () Bool)

(assert (= bs!1934966 (and b!7490805 b!7490430)))

(assert (=> bs!1934966 (= (and (= (_1!37655 lt!2629408) s!13591) (= (reg!19962 r2!5783) (reg!19962 lt!2629417)) (= r2!5783 lt!2629417)) (= lambda!464123 lambda!464097))))

(declare-fun bs!1934967 () Bool)

(assert (= bs!1934967 (and b!7490805 b!7490663)))

(assert (=> bs!1934967 (not (= lambda!464123 lambda!464117))))

(assert (=> b!7490805 true))

(assert (=> b!7490805 true))

(declare-fun bs!1934968 () Bool)

(declare-fun b!7490810 () Bool)

(assert (= bs!1934968 (and b!7490810 b!7490799)))

(declare-fun lambda!464124 () Int)

(assert (=> bs!1934968 (= (and (= (_1!37655 lt!2629408) (_2!37655 lt!2629408)) (= (regOne!39778 r2!5783) (regOne!39778 rTail!78)) (= (regTwo!39778 r2!5783) (regTwo!39778 rTail!78))) (= lambda!464124 lambda!464122))))

(declare-fun bs!1934969 () Bool)

(assert (= bs!1934969 (and b!7490810 b!7490452)))

(assert (=> bs!1934969 (not (= lambda!464124 lambda!464101))))

(declare-fun bs!1934970 () Bool)

(assert (= bs!1934970 (and b!7490810 b!7490564)))

(assert (=> bs!1934970 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r2!5783) (regOne!39778 lt!2629420)) (= (regTwo!39778 r2!5783) (regTwo!39778 lt!2629420))) (= lambda!464124 lambda!464110))))

(declare-fun bs!1934971 () Bool)

(assert (= bs!1934971 (and b!7490810 b!7490134)))

(assert (=> bs!1934971 (not (= lambda!464124 lambda!464078))))

(declare-fun bs!1934972 () Bool)

(assert (= bs!1934972 (and b!7490810 b!7490559)))

(assert (=> bs!1934972 (not (= lambda!464124 lambda!464108))))

(declare-fun bs!1934973 () Bool)

(assert (= bs!1934973 (and b!7490810 b!7490457)))

(assert (=> bs!1934973 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r2!5783) (regOne!39778 lt!2629409)) (= (regTwo!39778 r2!5783) (regTwo!39778 lt!2629409))) (= lambda!464124 lambda!464102))))

(assert (=> bs!1934971 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r2!5783) lt!2629424) (= (regTwo!39778 r2!5783) rTail!78)) (= lambda!464124 lambda!464079))))

(declare-fun bs!1934974 () Bool)

(assert (= bs!1934974 (and b!7490810 b!7490435)))

(assert (=> bs!1934974 (= (and (= (_1!37655 lt!2629408) s!13591) (= (regOne!39778 r2!5783) (regOne!39778 lt!2629417)) (= (regTwo!39778 r2!5783) (regTwo!39778 lt!2629417))) (= lambda!464124 lambda!464098))))

(declare-fun bs!1934975 () Bool)

(assert (= bs!1934975 (and b!7490810 b!7490718)))

(assert (=> bs!1934975 (not (= lambda!464124 lambda!464119))))

(declare-fun bs!1934976 () Bool)

(assert (= bs!1934976 (and b!7490810 b!7490805)))

(assert (=> bs!1934976 (not (= lambda!464124 lambda!464123))))

(declare-fun bs!1934977 () Bool)

(assert (= bs!1934977 (and b!7490810 b!7490658)))

(assert (=> bs!1934977 (not (= lambda!464124 lambda!464115))))

(declare-fun bs!1934978 () Bool)

(assert (= bs!1934978 (and b!7490810 b!7490794)))

(assert (=> bs!1934978 (not (= lambda!464124 lambda!464121))))

(declare-fun bs!1934979 () Bool)

(assert (= bs!1934979 (and b!7490810 b!7490723)))

(assert (=> bs!1934979 (= (and (= (regOne!39778 r2!5783) (regOne!39778 r1!5845)) (= (regTwo!39778 r2!5783) (regTwo!39778 r1!5845))) (= lambda!464124 lambda!464120))))

(declare-fun bs!1934980 () Bool)

(assert (= bs!1934980 (and b!7490810 b!7490430)))

(assert (=> bs!1934980 (not (= lambda!464124 lambda!464097))))

(declare-fun bs!1934981 () Bool)

(assert (= bs!1934981 (and b!7490810 b!7490663)))

(assert (=> bs!1934981 (= (and (= (regOne!39778 r2!5783) (regOne!39778 lt!2629424)) (= (regTwo!39778 r2!5783) (regTwo!39778 lt!2629424))) (= lambda!464124 lambda!464117))))

(assert (=> b!7490810 true))

(assert (=> b!7490810 true))

(declare-fun b!7490803 () Bool)

(declare-fun e!4466921 () Bool)

(assert (=> b!7490803 (= e!4466921 (matchRSpec!4310 (regTwo!39779 r2!5783) (_1!37655 lt!2629408)))))

(declare-fun b!7490804 () Bool)

(declare-fun res!3004831 () Bool)

(declare-fun e!4466924 () Bool)

(assert (=> b!7490804 (=> res!3004831 e!4466924)))

(declare-fun call!687660 () Bool)

(assert (=> b!7490804 (= res!3004831 call!687660)))

(declare-fun e!4466920 () Bool)

(assert (=> b!7490804 (= e!4466920 e!4466924)))

(declare-fun call!687659 () Bool)

(assert (=> b!7490805 (= e!4466924 call!687659)))

(declare-fun b!7490806 () Bool)

(declare-fun c!1383188 () Bool)

(assert (=> b!7490806 (= c!1383188 ((_ is Union!19633) r2!5783))))

(declare-fun e!4466923 () Bool)

(declare-fun e!4466922 () Bool)

(assert (=> b!7490806 (= e!4466923 e!4466922)))

(declare-fun c!1383187 () Bool)

(declare-fun bm!687654 () Bool)

(assert (=> bm!687654 (= call!687659 (Exists!4250 (ite c!1383187 lambda!464123 lambda!464124)))))

(declare-fun b!7490807 () Bool)

(assert (=> b!7490807 (= e!4466922 e!4466921)))

(declare-fun res!3004829 () Bool)

(assert (=> b!7490807 (= res!3004829 (matchRSpec!4310 (regOne!39779 r2!5783) (_1!37655 lt!2629408)))))

(assert (=> b!7490807 (=> res!3004829 e!4466921)))

(declare-fun b!7490808 () Bool)

(assert (=> b!7490808 (= e!4466922 e!4466920)))

(assert (=> b!7490808 (= c!1383187 ((_ is Star!19633) r2!5783))))

(declare-fun b!7490809 () Bool)

(declare-fun c!1383190 () Bool)

(assert (=> b!7490809 (= c!1383190 ((_ is ElementMatch!19633) r2!5783))))

(declare-fun e!4466919 () Bool)

(assert (=> b!7490809 (= e!4466919 e!4466923)))

(assert (=> b!7490810 (= e!4466920 call!687659)))

(declare-fun d!2301234 () Bool)

(declare-fun c!1383189 () Bool)

(assert (=> d!2301234 (= c!1383189 ((_ is EmptyExpr!19633) r2!5783))))

(declare-fun e!4466925 () Bool)

(assert (=> d!2301234 (= (matchRSpec!4310 r2!5783 (_1!37655 lt!2629408)) e!4466925)))

(declare-fun b!7490811 () Bool)

(assert (=> b!7490811 (= e!4466925 e!4466919)))

(declare-fun res!3004830 () Bool)

(assert (=> b!7490811 (= res!3004830 (not ((_ is EmptyLang!19633) r2!5783)))))

(assert (=> b!7490811 (=> (not res!3004830) (not e!4466919))))

(declare-fun bm!687655 () Bool)

(assert (=> bm!687655 (= call!687660 (isEmpty!41249 (_1!37655 lt!2629408)))))

(declare-fun b!7490812 () Bool)

(assert (=> b!7490812 (= e!4466923 (= (_1!37655 lt!2629408) (Cons!72223 (c!1383040 r2!5783) Nil!72223)))))

(declare-fun b!7490813 () Bool)

(assert (=> b!7490813 (= e!4466925 call!687660)))

(assert (= (and d!2301234 c!1383189) b!7490813))

(assert (= (and d!2301234 (not c!1383189)) b!7490811))

(assert (= (and b!7490811 res!3004830) b!7490809))

(assert (= (and b!7490809 c!1383190) b!7490812))

(assert (= (and b!7490809 (not c!1383190)) b!7490806))

(assert (= (and b!7490806 c!1383188) b!7490807))

(assert (= (and b!7490806 (not c!1383188)) b!7490808))

(assert (= (and b!7490807 (not res!3004829)) b!7490803))

(assert (= (and b!7490808 c!1383187) b!7490804))

(assert (= (and b!7490808 (not c!1383187)) b!7490810))

(assert (= (and b!7490804 (not res!3004831)) b!7490805))

(assert (= (or b!7490805 b!7490810) bm!687654))

(assert (= (or b!7490813 b!7490804) bm!687655))

(declare-fun m!8077362 () Bool)

(assert (=> b!7490803 m!8077362))

(declare-fun m!8077364 () Bool)

(assert (=> bm!687654 m!8077364))

(declare-fun m!8077366 () Bool)

(assert (=> b!7490807 m!8077366))

(assert (=> bm!687655 m!8077322))

(assert (=> b!7490133 d!2301234))

(declare-fun b!7490814 () Bool)

(declare-fun res!3004836 () Bool)

(declare-fun e!4466927 () Bool)

(assert (=> b!7490814 (=> res!3004836 e!4466927)))

(assert (=> b!7490814 (= res!3004836 (not ((_ is ElementMatch!19633) r1!5845)))))

(declare-fun e!4466930 () Bool)

(assert (=> b!7490814 (= e!4466930 e!4466927)))

(declare-fun b!7490815 () Bool)

(declare-fun e!4466929 () Bool)

(assert (=> b!7490815 (= e!4466929 (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 r1!5845)))))

(declare-fun b!7490816 () Bool)

(declare-fun e!4466926 () Bool)

(declare-fun lt!2629475 () Bool)

(declare-fun call!687661 () Bool)

(assert (=> b!7490816 (= e!4466926 (= lt!2629475 call!687661))))

(declare-fun b!7490817 () Bool)

(declare-fun e!4466932 () Bool)

(assert (=> b!7490817 (= e!4466932 (matchR!9395 (derivativeStep!5628 r1!5845 (head!15368 (_1!37655 lt!2629408))) (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490818 () Bool)

(declare-fun res!3004839 () Bool)

(declare-fun e!4466928 () Bool)

(assert (=> b!7490818 (=> res!3004839 e!4466928)))

(assert (=> b!7490818 (= res!3004839 (not (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408)))))))

(declare-fun b!7490819 () Bool)

(declare-fun e!4466931 () Bool)

(assert (=> b!7490819 (= e!4466931 e!4466928)))

(declare-fun res!3004832 () Bool)

(assert (=> b!7490819 (=> res!3004832 e!4466928)))

(assert (=> b!7490819 (= res!3004832 call!687661)))

(declare-fun b!7490820 () Bool)

(declare-fun res!3004835 () Bool)

(assert (=> b!7490820 (=> res!3004835 e!4466927)))

(assert (=> b!7490820 (= res!3004835 e!4466929)))

(declare-fun res!3004838 () Bool)

(assert (=> b!7490820 (=> (not res!3004838) (not e!4466929))))

(assert (=> b!7490820 (= res!3004838 lt!2629475)))

(declare-fun d!2301236 () Bool)

(assert (=> d!2301236 e!4466926))

(declare-fun c!1383193 () Bool)

(assert (=> d!2301236 (= c!1383193 ((_ is EmptyExpr!19633) r1!5845))))

(assert (=> d!2301236 (= lt!2629475 e!4466932)))

(declare-fun c!1383191 () Bool)

(assert (=> d!2301236 (= c!1383191 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (=> d!2301236 (validRegex!10147 r1!5845)))

(assert (=> d!2301236 (= (matchR!9395 r1!5845 (_1!37655 lt!2629408)) lt!2629475)))

(declare-fun b!7490821 () Bool)

(declare-fun res!3004837 () Bool)

(assert (=> b!7490821 (=> (not res!3004837) (not e!4466929))))

(assert (=> b!7490821 (= res!3004837 (not call!687661))))

(declare-fun b!7490822 () Bool)

(assert (=> b!7490822 (= e!4466932 (nullable!8571 r1!5845))))

(declare-fun b!7490823 () Bool)

(declare-fun res!3004834 () Bool)

(assert (=> b!7490823 (=> (not res!3004834) (not e!4466929))))

(assert (=> b!7490823 (= res!3004834 (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490824 () Bool)

(assert (=> b!7490824 (= e!4466928 (not (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 r1!5845))))))

(declare-fun b!7490825 () Bool)

(assert (=> b!7490825 (= e!4466926 e!4466930)))

(declare-fun c!1383192 () Bool)

(assert (=> b!7490825 (= c!1383192 ((_ is EmptyLang!19633) r1!5845))))

(declare-fun b!7490826 () Bool)

(assert (=> b!7490826 (= e!4466927 e!4466931)))

(declare-fun res!3004833 () Bool)

(assert (=> b!7490826 (=> (not res!3004833) (not e!4466931))))

(assert (=> b!7490826 (= res!3004833 (not lt!2629475))))

(declare-fun b!7490827 () Bool)

(assert (=> b!7490827 (= e!4466930 (not lt!2629475))))

(declare-fun bm!687656 () Bool)

(assert (=> bm!687656 (= call!687661 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (= (and d!2301236 c!1383191) b!7490822))

(assert (= (and d!2301236 (not c!1383191)) b!7490817))

(assert (= (and d!2301236 c!1383193) b!7490816))

(assert (= (and d!2301236 (not c!1383193)) b!7490825))

(assert (= (and b!7490825 c!1383192) b!7490827))

(assert (= (and b!7490825 (not c!1383192)) b!7490814))

(assert (= (and b!7490814 (not res!3004836)) b!7490820))

(assert (= (and b!7490820 res!3004838) b!7490821))

(assert (= (and b!7490821 res!3004837) b!7490823))

(assert (= (and b!7490823 res!3004834) b!7490815))

(assert (= (and b!7490820 (not res!3004835)) b!7490826))

(assert (= (and b!7490826 res!3004833) b!7490819))

(assert (= (and b!7490819 (not res!3004832)) b!7490818))

(assert (= (and b!7490818 (not res!3004839)) b!7490824))

(assert (= (or b!7490816 b!7490819 b!7490821) bm!687656))

(assert (=> b!7490815 m!8077330))

(assert (=> b!7490817 m!8077330))

(assert (=> b!7490817 m!8077330))

(declare-fun m!8077368 () Bool)

(assert (=> b!7490817 m!8077368))

(assert (=> b!7490817 m!8077334))

(assert (=> b!7490817 m!8077368))

(assert (=> b!7490817 m!8077334))

(declare-fun m!8077370 () Bool)

(assert (=> b!7490817 m!8077370))

(assert (=> b!7490818 m!8077334))

(assert (=> b!7490818 m!8077334))

(assert (=> b!7490818 m!8077338))

(assert (=> b!7490824 m!8077330))

(assert (=> d!2301236 m!8077322))

(assert (=> d!2301236 m!8077014))

(declare-fun m!8077372 () Bool)

(assert (=> b!7490822 m!8077372))

(assert (=> b!7490823 m!8077334))

(assert (=> b!7490823 m!8077334))

(assert (=> b!7490823 m!8077338))

(assert (=> bm!687656 m!8077322))

(assert (=> b!7490133 d!2301236))

(declare-fun d!2301238 () Bool)

(declare-fun choose!57899 (Int) Bool)

(assert (=> d!2301238 (= (Exists!4250 lambda!464079) (choose!57899 lambda!464079))))

(declare-fun bs!1934982 () Bool)

(assert (= bs!1934982 d!2301238))

(declare-fun m!8077374 () Bool)

(assert (=> bs!1934982 m!8077374))

(assert (=> b!7490134 d!2301238))

(declare-fun d!2301240 () Bool)

(declare-fun e!4466944 () Bool)

(assert (=> d!2301240 e!4466944))

(declare-fun res!3004851 () Bool)

(assert (=> d!2301240 (=> res!3004851 e!4466944)))

(declare-fun e!4466947 () Bool)

(assert (=> d!2301240 (= res!3004851 e!4466947)))

(declare-fun res!3004854 () Bool)

(assert (=> d!2301240 (=> (not res!3004854) (not e!4466947))))

(declare-fun lt!2629483 () Option!17184)

(assert (=> d!2301240 (= res!3004854 (isDefined!13873 lt!2629483))))

(declare-fun e!4466945 () Option!17184)

(assert (=> d!2301240 (= lt!2629483 e!4466945)))

(declare-fun c!1383199 () Bool)

(declare-fun e!4466943 () Bool)

(assert (=> d!2301240 (= c!1383199 e!4466943)))

(declare-fun res!3004852 () Bool)

(assert (=> d!2301240 (=> (not res!3004852) (not e!4466943))))

(assert (=> d!2301240 (= res!3004852 (matchR!9395 lt!2629424 Nil!72223))))

(assert (=> d!2301240 (validRegex!10147 lt!2629424)))

(assert (=> d!2301240 (= (findConcatSeparation!3306 lt!2629424 rTail!78 Nil!72223 s!13591 s!13591) lt!2629483)))

(declare-fun b!7490846 () Bool)

(assert (=> b!7490846 (= e!4466943 (matchR!9395 rTail!78 s!13591))))

(declare-fun b!7490847 () Bool)

(declare-fun e!4466946 () Option!17184)

(assert (=> b!7490847 (= e!4466946 None!17183)))

(declare-fun b!7490848 () Bool)

(assert (=> b!7490848 (= e!4466945 e!4466946)))

(declare-fun c!1383198 () Bool)

(assert (=> b!7490848 (= c!1383198 ((_ is Nil!72223) s!13591))))

(declare-fun b!7490849 () Bool)

(declare-fun ++!17241 (List!72347 List!72347) List!72347)

(assert (=> b!7490849 (= e!4466947 (= (++!17241 (_1!37655 (get!25307 lt!2629483)) (_2!37655 (get!25307 lt!2629483))) s!13591))))

(declare-fun b!7490850 () Bool)

(declare-fun res!3004853 () Bool)

(assert (=> b!7490850 (=> (not res!3004853) (not e!4466947))))

(assert (=> b!7490850 (= res!3004853 (matchR!9395 rTail!78 (_2!37655 (get!25307 lt!2629483))))))

(declare-fun b!7490851 () Bool)

(assert (=> b!7490851 (= e!4466944 (not (isDefined!13873 lt!2629483)))))

(declare-fun b!7490852 () Bool)

(assert (=> b!7490852 (= e!4466945 (Some!17183 (tuple2!68705 Nil!72223 s!13591)))))

(declare-fun b!7490853 () Bool)

(declare-fun res!3004850 () Bool)

(assert (=> b!7490853 (=> (not res!3004850) (not e!4466947))))

(assert (=> b!7490853 (= res!3004850 (matchR!9395 lt!2629424 (_1!37655 (get!25307 lt!2629483))))))

(declare-fun b!7490854 () Bool)

(declare-fun lt!2629484 () Unit!166097)

(declare-fun lt!2629482 () Unit!166097)

(assert (=> b!7490854 (= lt!2629484 lt!2629482)))

(assert (=> b!7490854 (= (++!17241 (++!17241 Nil!72223 (Cons!72223 (h!78671 s!13591) Nil!72223)) (t!386916 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3117 (List!72347 C!39540 List!72347 List!72347) Unit!166097)

(assert (=> b!7490854 (= lt!2629482 (lemmaMoveElementToOtherListKeepsConcatEq!3117 Nil!72223 (h!78671 s!13591) (t!386916 s!13591) s!13591))))

(assert (=> b!7490854 (= e!4466946 (findConcatSeparation!3306 lt!2629424 rTail!78 (++!17241 Nil!72223 (Cons!72223 (h!78671 s!13591) Nil!72223)) (t!386916 s!13591) s!13591))))

(assert (= (and d!2301240 res!3004852) b!7490846))

(assert (= (and d!2301240 c!1383199) b!7490852))

(assert (= (and d!2301240 (not c!1383199)) b!7490848))

(assert (= (and b!7490848 c!1383198) b!7490847))

(assert (= (and b!7490848 (not c!1383198)) b!7490854))

(assert (= (and d!2301240 res!3004854) b!7490853))

(assert (= (and b!7490853 res!3004850) b!7490850))

(assert (= (and b!7490850 res!3004853) b!7490849))

(assert (= (and d!2301240 (not res!3004851)) b!7490851))

(declare-fun m!8077376 () Bool)

(assert (=> b!7490850 m!8077376))

(declare-fun m!8077378 () Bool)

(assert (=> b!7490850 m!8077378))

(declare-fun m!8077380 () Bool)

(assert (=> d!2301240 m!8077380))

(declare-fun m!8077382 () Bool)

(assert (=> d!2301240 m!8077382))

(assert (=> d!2301240 m!8077352))

(assert (=> b!7490849 m!8077376))

(declare-fun m!8077384 () Bool)

(assert (=> b!7490849 m!8077384))

(assert (=> b!7490853 m!8077376))

(declare-fun m!8077386 () Bool)

(assert (=> b!7490853 m!8077386))

(declare-fun m!8077388 () Bool)

(assert (=> b!7490846 m!8077388))

(declare-fun m!8077390 () Bool)

(assert (=> b!7490854 m!8077390))

(assert (=> b!7490854 m!8077390))

(declare-fun m!8077392 () Bool)

(assert (=> b!7490854 m!8077392))

(declare-fun m!8077394 () Bool)

(assert (=> b!7490854 m!8077394))

(assert (=> b!7490854 m!8077390))

(declare-fun m!8077396 () Bool)

(assert (=> b!7490854 m!8077396))

(assert (=> b!7490851 m!8077380))

(assert (=> b!7490134 d!2301240))

(declare-fun d!2301242 () Bool)

(declare-fun isEmpty!41250 (Option!17184) Bool)

(assert (=> d!2301242 (= (isDefined!13873 lt!2629419) (not (isEmpty!41250 lt!2629419)))))

(declare-fun bs!1934983 () Bool)

(assert (= bs!1934983 d!2301242))

(declare-fun m!8077398 () Bool)

(assert (=> bs!1934983 m!8077398))

(assert (=> b!7490134 d!2301242))

(declare-fun b!7490855 () Bool)

(declare-fun res!3004859 () Bool)

(declare-fun e!4466949 () Bool)

(assert (=> b!7490855 (=> res!3004859 e!4466949)))

(assert (=> b!7490855 (= res!3004859 (not ((_ is ElementMatch!19633) lt!2629424)))))

(declare-fun e!4466952 () Bool)

(assert (=> b!7490855 (= e!4466952 e!4466949)))

(declare-fun b!7490856 () Bool)

(declare-fun e!4466951 () Bool)

(assert (=> b!7490856 (= e!4466951 (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 lt!2629424)))))

(declare-fun b!7490857 () Bool)

(declare-fun e!4466948 () Bool)

(declare-fun lt!2629485 () Bool)

(declare-fun call!687662 () Bool)

(assert (=> b!7490857 (= e!4466948 (= lt!2629485 call!687662))))

(declare-fun b!7490858 () Bool)

(declare-fun e!4466954 () Bool)

(assert (=> b!7490858 (= e!4466954 (matchR!9395 (derivativeStep!5628 lt!2629424 (head!15368 (_1!37655 lt!2629408))) (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490859 () Bool)

(declare-fun res!3004862 () Bool)

(declare-fun e!4466950 () Bool)

(assert (=> b!7490859 (=> res!3004862 e!4466950)))

(assert (=> b!7490859 (= res!3004862 (not (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408)))))))

(declare-fun b!7490860 () Bool)

(declare-fun e!4466953 () Bool)

(assert (=> b!7490860 (= e!4466953 e!4466950)))

(declare-fun res!3004855 () Bool)

(assert (=> b!7490860 (=> res!3004855 e!4466950)))

(assert (=> b!7490860 (= res!3004855 call!687662)))

(declare-fun b!7490861 () Bool)

(declare-fun res!3004858 () Bool)

(assert (=> b!7490861 (=> res!3004858 e!4466949)))

(assert (=> b!7490861 (= res!3004858 e!4466951)))

(declare-fun res!3004861 () Bool)

(assert (=> b!7490861 (=> (not res!3004861) (not e!4466951))))

(assert (=> b!7490861 (= res!3004861 lt!2629485)))

(declare-fun d!2301244 () Bool)

(assert (=> d!2301244 e!4466948))

(declare-fun c!1383202 () Bool)

(assert (=> d!2301244 (= c!1383202 ((_ is EmptyExpr!19633) lt!2629424))))

(assert (=> d!2301244 (= lt!2629485 e!4466954)))

(declare-fun c!1383200 () Bool)

(assert (=> d!2301244 (= c!1383200 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (=> d!2301244 (validRegex!10147 lt!2629424)))

(assert (=> d!2301244 (= (matchR!9395 lt!2629424 (_1!37655 lt!2629408)) lt!2629485)))

(declare-fun b!7490862 () Bool)

(declare-fun res!3004860 () Bool)

(assert (=> b!7490862 (=> (not res!3004860) (not e!4466951))))

(assert (=> b!7490862 (= res!3004860 (not call!687662))))

(declare-fun b!7490863 () Bool)

(assert (=> b!7490863 (= e!4466954 (nullable!8571 lt!2629424))))

(declare-fun b!7490864 () Bool)

(declare-fun res!3004857 () Bool)

(assert (=> b!7490864 (=> (not res!3004857) (not e!4466951))))

(assert (=> b!7490864 (= res!3004857 (isEmpty!41249 (tail!14937 (_1!37655 lt!2629408))))))

(declare-fun b!7490865 () Bool)

(assert (=> b!7490865 (= e!4466950 (not (= (head!15368 (_1!37655 lt!2629408)) (c!1383040 lt!2629424))))))

(declare-fun b!7490866 () Bool)

(assert (=> b!7490866 (= e!4466948 e!4466952)))

(declare-fun c!1383201 () Bool)

(assert (=> b!7490866 (= c!1383201 ((_ is EmptyLang!19633) lt!2629424))))

(declare-fun b!7490867 () Bool)

(assert (=> b!7490867 (= e!4466949 e!4466953)))

(declare-fun res!3004856 () Bool)

(assert (=> b!7490867 (=> (not res!3004856) (not e!4466953))))

(assert (=> b!7490867 (= res!3004856 (not lt!2629485))))

(declare-fun b!7490868 () Bool)

(assert (=> b!7490868 (= e!4466952 (not lt!2629485))))

(declare-fun bm!687657 () Bool)

(assert (=> bm!687657 (= call!687662 (isEmpty!41249 (_1!37655 lt!2629408)))))

(assert (= (and d!2301244 c!1383200) b!7490863))

(assert (= (and d!2301244 (not c!1383200)) b!7490858))

(assert (= (and d!2301244 c!1383202) b!7490857))

(assert (= (and d!2301244 (not c!1383202)) b!7490866))

(assert (= (and b!7490866 c!1383201) b!7490868))

(assert (= (and b!7490866 (not c!1383201)) b!7490855))

(assert (= (and b!7490855 (not res!3004859)) b!7490861))

(assert (= (and b!7490861 res!3004861) b!7490862))

(assert (= (and b!7490862 res!3004860) b!7490864))

(assert (= (and b!7490864 res!3004857) b!7490856))

(assert (= (and b!7490861 (not res!3004858)) b!7490867))

(assert (= (and b!7490867 res!3004856) b!7490860))

(assert (= (and b!7490860 (not res!3004855)) b!7490859))

(assert (= (and b!7490859 (not res!3004862)) b!7490865))

(assert (= (or b!7490857 b!7490860 b!7490862) bm!687657))

(assert (=> b!7490856 m!8077330))

(assert (=> b!7490858 m!8077330))

(assert (=> b!7490858 m!8077330))

(declare-fun m!8077400 () Bool)

(assert (=> b!7490858 m!8077400))

(assert (=> b!7490858 m!8077334))

(assert (=> b!7490858 m!8077400))

(assert (=> b!7490858 m!8077334))

(declare-fun m!8077402 () Bool)

(assert (=> b!7490858 m!8077402))

(assert (=> b!7490859 m!8077334))

(assert (=> b!7490859 m!8077334))

(assert (=> b!7490859 m!8077338))

(assert (=> b!7490865 m!8077330))

(assert (=> d!2301244 m!8077322))

(assert (=> d!2301244 m!8077352))

(declare-fun m!8077404 () Bool)

(assert (=> b!7490863 m!8077404))

(assert (=> b!7490864 m!8077334))

(assert (=> b!7490864 m!8077334))

(assert (=> b!7490864 m!8077338))

(assert (=> bm!687657 m!8077322))

(assert (=> b!7490134 d!2301244))

(declare-fun d!2301246 () Bool)

(assert (=> d!2301246 (= (Exists!4250 lambda!464078) (choose!57899 lambda!464078))))

(declare-fun bs!1934984 () Bool)

(assert (= bs!1934984 d!2301246))

(declare-fun m!8077406 () Bool)

(assert (=> bs!1934984 m!8077406))

(assert (=> b!7490134 d!2301246))

(declare-fun d!2301248 () Bool)

(assert (=> d!2301248 (= (get!25307 lt!2629419) (v!54312 lt!2629419))))

(assert (=> b!7490134 d!2301248))

(declare-fun bs!1934985 () Bool)

(declare-fun d!2301250 () Bool)

(assert (= bs!1934985 (and d!2301250 b!7490799)))

(declare-fun lambda!464129 () Int)

(assert (=> bs!1934985 (not (= lambda!464129 lambda!464122))))

(declare-fun bs!1934986 () Bool)

(assert (= bs!1934986 (and d!2301250 b!7490452)))

(assert (=> bs!1934986 (not (= lambda!464129 lambda!464101))))

(declare-fun bs!1934987 () Bool)

(assert (= bs!1934987 (and d!2301250 b!7490564)))

(assert (=> bs!1934987 (not (= lambda!464129 lambda!464110))))

(declare-fun bs!1934988 () Bool)

(assert (= bs!1934988 (and d!2301250 b!7490559)))

(assert (=> bs!1934988 (not (= lambda!464129 lambda!464108))))

(declare-fun bs!1934989 () Bool)

(assert (= bs!1934989 (and d!2301250 b!7490457)))

(assert (=> bs!1934989 (not (= lambda!464129 lambda!464102))))

(declare-fun bs!1934990 () Bool)

(assert (= bs!1934990 (and d!2301250 b!7490134)))

(assert (=> bs!1934990 (not (= lambda!464129 lambda!464079))))

(declare-fun bs!1934991 () Bool)

(assert (= bs!1934991 (and d!2301250 b!7490435)))

(assert (=> bs!1934991 (not (= lambda!464129 lambda!464098))))

(declare-fun bs!1934992 () Bool)

(assert (= bs!1934992 (and d!2301250 b!7490718)))

(assert (=> bs!1934992 (not (= lambda!464129 lambda!464119))))

(declare-fun bs!1934993 () Bool)

(assert (= bs!1934993 (and d!2301250 b!7490805)))

(assert (=> bs!1934993 (not (= lambda!464129 lambda!464123))))

(declare-fun bs!1934994 () Bool)

(assert (= bs!1934994 (and d!2301250 b!7490658)))

(assert (=> bs!1934994 (not (= lambda!464129 lambda!464115))))

(declare-fun bs!1934995 () Bool)

(assert (= bs!1934995 (and d!2301250 b!7490794)))

(assert (=> bs!1934995 (not (= lambda!464129 lambda!464121))))

(declare-fun bs!1934996 () Bool)

(assert (= bs!1934996 (and d!2301250 b!7490723)))

(assert (=> bs!1934996 (not (= lambda!464129 lambda!464120))))

(declare-fun bs!1934997 () Bool)

(assert (= bs!1934997 (and d!2301250 b!7490810)))

(assert (=> bs!1934997 (not (= lambda!464129 lambda!464124))))

(assert (=> bs!1934990 (= lambda!464129 lambda!464078)))

(declare-fun bs!1934998 () Bool)

(assert (= bs!1934998 (and d!2301250 b!7490430)))

(assert (=> bs!1934998 (not (= lambda!464129 lambda!464097))))

(declare-fun bs!1934999 () Bool)

(assert (= bs!1934999 (and d!2301250 b!7490663)))

(assert (=> bs!1934999 (not (= lambda!464129 lambda!464117))))

(assert (=> d!2301250 true))

(assert (=> d!2301250 true))

(assert (=> d!2301250 true))

(declare-fun lambda!464130 () Int)

(assert (=> bs!1934985 (= (and (= s!13591 (_2!37655 lt!2629408)) (= lt!2629424 (regOne!39778 rTail!78)) (= rTail!78 (regTwo!39778 rTail!78))) (= lambda!464130 lambda!464122))))

(assert (=> bs!1934986 (not (= lambda!464130 lambda!464101))))

(assert (=> bs!1934987 (= (and (= lt!2629424 (regOne!39778 lt!2629420)) (= rTail!78 (regTwo!39778 lt!2629420))) (= lambda!464130 lambda!464110))))

(assert (=> bs!1934988 (not (= lambda!464130 lambda!464108))))

(assert (=> bs!1934989 (= (and (= lt!2629424 (regOne!39778 lt!2629409)) (= rTail!78 (regTwo!39778 lt!2629409))) (= lambda!464130 lambda!464102))))

(assert (=> bs!1934990 (= lambda!464130 lambda!464079)))

(assert (=> bs!1934991 (= (and (= lt!2629424 (regOne!39778 lt!2629417)) (= rTail!78 (regTwo!39778 lt!2629417))) (= lambda!464130 lambda!464098))))

(assert (=> bs!1934992 (not (= lambda!464130 lambda!464119))))

(assert (=> bs!1934993 (not (= lambda!464130 lambda!464123))))

(assert (=> bs!1934994 (not (= lambda!464130 lambda!464115))))

(assert (=> bs!1934995 (not (= lambda!464130 lambda!464121))))

(declare-fun bs!1935000 () Bool)

(assert (= bs!1935000 d!2301250))

(assert (=> bs!1935000 (not (= lambda!464130 lambda!464129))))

(assert (=> bs!1934996 (= (and (= s!13591 (_1!37655 lt!2629408)) (= lt!2629424 (regOne!39778 r1!5845)) (= rTail!78 (regTwo!39778 r1!5845))) (= lambda!464130 lambda!464120))))

(assert (=> bs!1934997 (= (and (= s!13591 (_1!37655 lt!2629408)) (= lt!2629424 (regOne!39778 r2!5783)) (= rTail!78 (regTwo!39778 r2!5783))) (= lambda!464130 lambda!464124))))

(assert (=> bs!1934990 (not (= lambda!464130 lambda!464078))))

(assert (=> bs!1934998 (not (= lambda!464130 lambda!464097))))

(assert (=> bs!1934999 (= (and (= s!13591 (_1!37655 lt!2629408)) (= lt!2629424 (regOne!39778 lt!2629424)) (= rTail!78 (regTwo!39778 lt!2629424))) (= lambda!464130 lambda!464117))))

(assert (=> d!2301250 true))

(assert (=> d!2301250 true))

(assert (=> d!2301250 true))

(assert (=> d!2301250 (= (Exists!4250 lambda!464129) (Exists!4250 lambda!464130))))

(declare-fun lt!2629488 () Unit!166097)

(declare-fun choose!57900 (Regex!19633 Regex!19633 List!72347) Unit!166097)

(assert (=> d!2301250 (= lt!2629488 (choose!57900 lt!2629424 rTail!78 s!13591))))

(assert (=> d!2301250 (validRegex!10147 lt!2629424)))

(assert (=> d!2301250 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2578 lt!2629424 rTail!78 s!13591) lt!2629488)))

(declare-fun m!8077408 () Bool)

(assert (=> bs!1935000 m!8077408))

(declare-fun m!8077410 () Bool)

(assert (=> bs!1935000 m!8077410))

(declare-fun m!8077412 () Bool)

(assert (=> bs!1935000 m!8077412))

(assert (=> bs!1935000 m!8077352))

(assert (=> b!7490134 d!2301250))

(declare-fun bs!1935001 () Bool)

(declare-fun d!2301252 () Bool)

(assert (= bs!1935001 (and d!2301252 d!2301250)))

(declare-fun lambda!464133 () Int)

(assert (=> bs!1935001 (not (= lambda!464133 lambda!464130))))

(declare-fun bs!1935002 () Bool)

(assert (= bs!1935002 (and d!2301252 b!7490799)))

(assert (=> bs!1935002 (not (= lambda!464133 lambda!464122))))

(declare-fun bs!1935003 () Bool)

(assert (= bs!1935003 (and d!2301252 b!7490452)))

(assert (=> bs!1935003 (not (= lambda!464133 lambda!464101))))

(declare-fun bs!1935004 () Bool)

(assert (= bs!1935004 (and d!2301252 b!7490564)))

(assert (=> bs!1935004 (not (= lambda!464133 lambda!464110))))

(declare-fun bs!1935005 () Bool)

(assert (= bs!1935005 (and d!2301252 b!7490559)))

(assert (=> bs!1935005 (not (= lambda!464133 lambda!464108))))

(declare-fun bs!1935006 () Bool)

(assert (= bs!1935006 (and d!2301252 b!7490457)))

(assert (=> bs!1935006 (not (= lambda!464133 lambda!464102))))

(declare-fun bs!1935007 () Bool)

(assert (= bs!1935007 (and d!2301252 b!7490134)))

(assert (=> bs!1935007 (not (= lambda!464133 lambda!464079))))

(declare-fun bs!1935008 () Bool)

(assert (= bs!1935008 (and d!2301252 b!7490435)))

(assert (=> bs!1935008 (not (= lambda!464133 lambda!464098))))

(declare-fun bs!1935009 () Bool)

(assert (= bs!1935009 (and d!2301252 b!7490718)))

(assert (=> bs!1935009 (not (= lambda!464133 lambda!464119))))

(declare-fun bs!1935010 () Bool)

(assert (= bs!1935010 (and d!2301252 b!7490805)))

(assert (=> bs!1935010 (not (= lambda!464133 lambda!464123))))

(declare-fun bs!1935011 () Bool)

(assert (= bs!1935011 (and d!2301252 b!7490658)))

(assert (=> bs!1935011 (not (= lambda!464133 lambda!464115))))

(declare-fun bs!1935012 () Bool)

(assert (= bs!1935012 (and d!2301252 b!7490794)))

(assert (=> bs!1935012 (not (= lambda!464133 lambda!464121))))

(assert (=> bs!1935001 (= lambda!464133 lambda!464129)))

(declare-fun bs!1935013 () Bool)

(assert (= bs!1935013 (and d!2301252 b!7490723)))

(assert (=> bs!1935013 (not (= lambda!464133 lambda!464120))))

(declare-fun bs!1935014 () Bool)

(assert (= bs!1935014 (and d!2301252 b!7490810)))

(assert (=> bs!1935014 (not (= lambda!464133 lambda!464124))))

(assert (=> bs!1935007 (= lambda!464133 lambda!464078)))

(declare-fun bs!1935015 () Bool)

(assert (= bs!1935015 (and d!2301252 b!7490430)))

(assert (=> bs!1935015 (not (= lambda!464133 lambda!464097))))

(declare-fun bs!1935016 () Bool)

(assert (= bs!1935016 (and d!2301252 b!7490663)))

(assert (=> bs!1935016 (not (= lambda!464133 lambda!464117))))

(assert (=> d!2301252 true))

(assert (=> d!2301252 true))

(assert (=> d!2301252 true))

(assert (=> d!2301252 (= (isDefined!13873 (findConcatSeparation!3306 lt!2629424 rTail!78 Nil!72223 s!13591 s!13591)) (Exists!4250 lambda!464133))))

(declare-fun lt!2629491 () Unit!166097)

(declare-fun choose!57901 (Regex!19633 Regex!19633 List!72347) Unit!166097)

(assert (=> d!2301252 (= lt!2629491 (choose!57901 lt!2629424 rTail!78 s!13591))))

(assert (=> d!2301252 (validRegex!10147 lt!2629424)))

(assert (=> d!2301252 (= (lemmaFindConcatSeparationEquivalentToExists!3064 lt!2629424 rTail!78 s!13591) lt!2629491)))

(declare-fun bs!1935017 () Bool)

(assert (= bs!1935017 d!2301252))

(declare-fun m!8077414 () Bool)

(assert (=> bs!1935017 m!8077414))

(assert (=> bs!1935017 m!8077026))

(declare-fun m!8077416 () Bool)

(assert (=> bs!1935017 m!8077416))

(assert (=> bs!1935017 m!8077352))

(assert (=> bs!1935017 m!8077026))

(declare-fun m!8077418 () Bool)

(assert (=> bs!1935017 m!8077418))

(assert (=> b!7490134 d!2301252))

(declare-fun b!7490892 () Bool)

(declare-fun e!4466963 () Bool)

(declare-fun tp!2174163 () Bool)

(declare-fun tp!2174162 () Bool)

(assert (=> b!7490892 (= e!4466963 (and tp!2174163 tp!2174162))))

(declare-fun b!7490893 () Bool)

(declare-fun tp!2174161 () Bool)

(assert (=> b!7490893 (= e!4466963 tp!2174161)))

(declare-fun b!7490894 () Bool)

(declare-fun tp!2174164 () Bool)

(declare-fun tp!2174160 () Bool)

(assert (=> b!7490894 (= e!4466963 (and tp!2174164 tp!2174160))))

(declare-fun b!7490891 () Bool)

(assert (=> b!7490891 (= e!4466963 tp_is_empty!49555)))

(assert (=> b!7490127 (= tp!2174051 e!4466963)))

(assert (= (and b!7490127 ((_ is ElementMatch!19633) (regOne!39779 r1!5845))) b!7490891))

(assert (= (and b!7490127 ((_ is Concat!28478) (regOne!39779 r1!5845))) b!7490892))

(assert (= (and b!7490127 ((_ is Star!19633) (regOne!39779 r1!5845))) b!7490893))

(assert (= (and b!7490127 ((_ is Union!19633) (regOne!39779 r1!5845))) b!7490894))

(declare-fun b!7490896 () Bool)

(declare-fun e!4466964 () Bool)

(declare-fun tp!2174168 () Bool)

(declare-fun tp!2174167 () Bool)

(assert (=> b!7490896 (= e!4466964 (and tp!2174168 tp!2174167))))

(declare-fun b!7490897 () Bool)

(declare-fun tp!2174166 () Bool)

(assert (=> b!7490897 (= e!4466964 tp!2174166)))

(declare-fun b!7490898 () Bool)

(declare-fun tp!2174169 () Bool)

(declare-fun tp!2174165 () Bool)

(assert (=> b!7490898 (= e!4466964 (and tp!2174169 tp!2174165))))

(declare-fun b!7490895 () Bool)

(assert (=> b!7490895 (= e!4466964 tp_is_empty!49555)))

(assert (=> b!7490127 (= tp!2174057 e!4466964)))

(assert (= (and b!7490127 ((_ is ElementMatch!19633) (regTwo!39779 r1!5845))) b!7490895))

(assert (= (and b!7490127 ((_ is Concat!28478) (regTwo!39779 r1!5845))) b!7490896))

(assert (= (and b!7490127 ((_ is Star!19633) (regTwo!39779 r1!5845))) b!7490897))

(assert (= (and b!7490127 ((_ is Union!19633) (regTwo!39779 r1!5845))) b!7490898))

(declare-fun b!7490900 () Bool)

(declare-fun e!4466965 () Bool)

(declare-fun tp!2174173 () Bool)

(declare-fun tp!2174172 () Bool)

(assert (=> b!7490900 (= e!4466965 (and tp!2174173 tp!2174172))))

(declare-fun b!7490901 () Bool)

(declare-fun tp!2174171 () Bool)

(assert (=> b!7490901 (= e!4466965 tp!2174171)))

(declare-fun b!7490902 () Bool)

(declare-fun tp!2174174 () Bool)

(declare-fun tp!2174170 () Bool)

(assert (=> b!7490902 (= e!4466965 (and tp!2174174 tp!2174170))))

(declare-fun b!7490899 () Bool)

(assert (=> b!7490899 (= e!4466965 tp_is_empty!49555)))

(assert (=> b!7490143 (= tp!2174059 e!4466965)))

(assert (= (and b!7490143 ((_ is ElementMatch!19633) (reg!19962 r1!5845))) b!7490899))

(assert (= (and b!7490143 ((_ is Concat!28478) (reg!19962 r1!5845))) b!7490900))

(assert (= (and b!7490143 ((_ is Star!19633) (reg!19962 r1!5845))) b!7490901))

(assert (= (and b!7490143 ((_ is Union!19633) (reg!19962 r1!5845))) b!7490902))

(declare-fun b!7490904 () Bool)

(declare-fun e!4466966 () Bool)

(declare-fun tp!2174178 () Bool)

(declare-fun tp!2174177 () Bool)

(assert (=> b!7490904 (= e!4466966 (and tp!2174178 tp!2174177))))

(declare-fun b!7490905 () Bool)

(declare-fun tp!2174176 () Bool)

(assert (=> b!7490905 (= e!4466966 tp!2174176)))

(declare-fun b!7490906 () Bool)

(declare-fun tp!2174179 () Bool)

(declare-fun tp!2174175 () Bool)

(assert (=> b!7490906 (= e!4466966 (and tp!2174179 tp!2174175))))

(declare-fun b!7490903 () Bool)

(assert (=> b!7490903 (= e!4466966 tp_is_empty!49555)))

(assert (=> b!7490141 (= tp!2174048 e!4466966)))

(assert (= (and b!7490141 ((_ is ElementMatch!19633) (regOne!39778 rTail!78))) b!7490903))

(assert (= (and b!7490141 ((_ is Concat!28478) (regOne!39778 rTail!78))) b!7490904))

(assert (= (and b!7490141 ((_ is Star!19633) (regOne!39778 rTail!78))) b!7490905))

(assert (= (and b!7490141 ((_ is Union!19633) (regOne!39778 rTail!78))) b!7490906))

(declare-fun b!7490908 () Bool)

(declare-fun e!4466967 () Bool)

(declare-fun tp!2174183 () Bool)

(declare-fun tp!2174182 () Bool)

(assert (=> b!7490908 (= e!4466967 (and tp!2174183 tp!2174182))))

(declare-fun b!7490909 () Bool)

(declare-fun tp!2174181 () Bool)

(assert (=> b!7490909 (= e!4466967 tp!2174181)))

(declare-fun b!7490910 () Bool)

(declare-fun tp!2174184 () Bool)

(declare-fun tp!2174180 () Bool)

(assert (=> b!7490910 (= e!4466967 (and tp!2174184 tp!2174180))))

(declare-fun b!7490907 () Bool)

(assert (=> b!7490907 (= e!4466967 tp_is_empty!49555)))

(assert (=> b!7490141 (= tp!2174046 e!4466967)))

(assert (= (and b!7490141 ((_ is ElementMatch!19633) (regTwo!39778 rTail!78))) b!7490907))

(assert (= (and b!7490141 ((_ is Concat!28478) (regTwo!39778 rTail!78))) b!7490908))

(assert (= (and b!7490141 ((_ is Star!19633) (regTwo!39778 rTail!78))) b!7490909))

(assert (= (and b!7490141 ((_ is Union!19633) (regTwo!39778 rTail!78))) b!7490910))

(declare-fun b!7490912 () Bool)

(declare-fun e!4466968 () Bool)

(declare-fun tp!2174188 () Bool)

(declare-fun tp!2174187 () Bool)

(assert (=> b!7490912 (= e!4466968 (and tp!2174188 tp!2174187))))

(declare-fun b!7490913 () Bool)

(declare-fun tp!2174186 () Bool)

(assert (=> b!7490913 (= e!4466968 tp!2174186)))

(declare-fun b!7490914 () Bool)

(declare-fun tp!2174189 () Bool)

(declare-fun tp!2174185 () Bool)

(assert (=> b!7490914 (= e!4466968 (and tp!2174189 tp!2174185))))

(declare-fun b!7490911 () Bool)

(assert (=> b!7490911 (= e!4466968 tp_is_empty!49555)))

(assert (=> b!7490142 (= tp!2174052 e!4466968)))

(assert (= (and b!7490142 ((_ is ElementMatch!19633) (regOne!39779 r2!5783))) b!7490911))

(assert (= (and b!7490142 ((_ is Concat!28478) (regOne!39779 r2!5783))) b!7490912))

(assert (= (and b!7490142 ((_ is Star!19633) (regOne!39779 r2!5783))) b!7490913))

(assert (= (and b!7490142 ((_ is Union!19633) (regOne!39779 r2!5783))) b!7490914))

(declare-fun b!7490916 () Bool)

(declare-fun e!4466969 () Bool)

(declare-fun tp!2174193 () Bool)

(declare-fun tp!2174192 () Bool)

(assert (=> b!7490916 (= e!4466969 (and tp!2174193 tp!2174192))))

(declare-fun b!7490917 () Bool)

(declare-fun tp!2174191 () Bool)

(assert (=> b!7490917 (= e!4466969 tp!2174191)))

(declare-fun b!7490918 () Bool)

(declare-fun tp!2174194 () Bool)

(declare-fun tp!2174190 () Bool)

(assert (=> b!7490918 (= e!4466969 (and tp!2174194 tp!2174190))))

(declare-fun b!7490915 () Bool)

(assert (=> b!7490915 (= e!4466969 tp_is_empty!49555)))

(assert (=> b!7490142 (= tp!2174060 e!4466969)))

(assert (= (and b!7490142 ((_ is ElementMatch!19633) (regTwo!39779 r2!5783))) b!7490915))

(assert (= (and b!7490142 ((_ is Concat!28478) (regTwo!39779 r2!5783))) b!7490916))

(assert (= (and b!7490142 ((_ is Star!19633) (regTwo!39779 r2!5783))) b!7490917))

(assert (= (and b!7490142 ((_ is Union!19633) (regTwo!39779 r2!5783))) b!7490918))

(declare-fun b!7490923 () Bool)

(declare-fun e!4466972 () Bool)

(declare-fun tp!2174197 () Bool)

(assert (=> b!7490923 (= e!4466972 (and tp_is_empty!49555 tp!2174197))))

(assert (=> b!7490131 (= tp!2174049 e!4466972)))

(assert (= (and b!7490131 ((_ is Cons!72223) (t!386916 s!13591))) b!7490923))

(declare-fun b!7490925 () Bool)

(declare-fun e!4466973 () Bool)

(declare-fun tp!2174201 () Bool)

(declare-fun tp!2174200 () Bool)

(assert (=> b!7490925 (= e!4466973 (and tp!2174201 tp!2174200))))

(declare-fun b!7490926 () Bool)

(declare-fun tp!2174199 () Bool)

(assert (=> b!7490926 (= e!4466973 tp!2174199)))

(declare-fun b!7490927 () Bool)

(declare-fun tp!2174202 () Bool)

(declare-fun tp!2174198 () Bool)

(assert (=> b!7490927 (= e!4466973 (and tp!2174202 tp!2174198))))

(declare-fun b!7490924 () Bool)

(assert (=> b!7490924 (= e!4466973 tp_is_empty!49555)))

(assert (=> b!7490129 (= tp!2174061 e!4466973)))

(assert (= (and b!7490129 ((_ is ElementMatch!19633) (reg!19962 r2!5783))) b!7490924))

(assert (= (and b!7490129 ((_ is Concat!28478) (reg!19962 r2!5783))) b!7490925))

(assert (= (and b!7490129 ((_ is Star!19633) (reg!19962 r2!5783))) b!7490926))

(assert (= (and b!7490129 ((_ is Union!19633) (reg!19962 r2!5783))) b!7490927))

(declare-fun b!7490929 () Bool)

(declare-fun e!4466974 () Bool)

(declare-fun tp!2174206 () Bool)

(declare-fun tp!2174205 () Bool)

(assert (=> b!7490929 (= e!4466974 (and tp!2174206 tp!2174205))))

(declare-fun b!7490930 () Bool)

(declare-fun tp!2174204 () Bool)

(assert (=> b!7490930 (= e!4466974 tp!2174204)))

(declare-fun b!7490931 () Bool)

(declare-fun tp!2174207 () Bool)

(declare-fun tp!2174203 () Bool)

(assert (=> b!7490931 (= e!4466974 (and tp!2174207 tp!2174203))))

(declare-fun b!7490928 () Bool)

(assert (=> b!7490928 (= e!4466974 tp_is_empty!49555)))

(assert (=> b!7490145 (= tp!2174055 e!4466974)))

(assert (= (and b!7490145 ((_ is ElementMatch!19633) (reg!19962 rTail!78))) b!7490928))

(assert (= (and b!7490145 ((_ is Concat!28478) (reg!19962 rTail!78))) b!7490929))

(assert (= (and b!7490145 ((_ is Star!19633) (reg!19962 rTail!78))) b!7490930))

(assert (= (and b!7490145 ((_ is Union!19633) (reg!19962 rTail!78))) b!7490931))

(declare-fun b!7490933 () Bool)

(declare-fun e!4466975 () Bool)

(declare-fun tp!2174211 () Bool)

(declare-fun tp!2174210 () Bool)

(assert (=> b!7490933 (= e!4466975 (and tp!2174211 tp!2174210))))

(declare-fun b!7490934 () Bool)

(declare-fun tp!2174209 () Bool)

(assert (=> b!7490934 (= e!4466975 tp!2174209)))

(declare-fun b!7490935 () Bool)

(declare-fun tp!2174212 () Bool)

(declare-fun tp!2174208 () Bool)

(assert (=> b!7490935 (= e!4466975 (and tp!2174212 tp!2174208))))

(declare-fun b!7490932 () Bool)

(assert (=> b!7490932 (= e!4466975 tp_is_empty!49555)))

(assert (=> b!7490130 (= tp!2174056 e!4466975)))

(assert (= (and b!7490130 ((_ is ElementMatch!19633) (regOne!39778 r1!5845))) b!7490932))

(assert (= (and b!7490130 ((_ is Concat!28478) (regOne!39778 r1!5845))) b!7490933))

(assert (= (and b!7490130 ((_ is Star!19633) (regOne!39778 r1!5845))) b!7490934))

(assert (= (and b!7490130 ((_ is Union!19633) (regOne!39778 r1!5845))) b!7490935))

(declare-fun b!7490937 () Bool)

(declare-fun e!4466976 () Bool)

(declare-fun tp!2174216 () Bool)

(declare-fun tp!2174215 () Bool)

(assert (=> b!7490937 (= e!4466976 (and tp!2174216 tp!2174215))))

(declare-fun b!7490938 () Bool)

(declare-fun tp!2174214 () Bool)

(assert (=> b!7490938 (= e!4466976 tp!2174214)))

(declare-fun b!7490939 () Bool)

(declare-fun tp!2174217 () Bool)

(declare-fun tp!2174213 () Bool)

(assert (=> b!7490939 (= e!4466976 (and tp!2174217 tp!2174213))))

(declare-fun b!7490936 () Bool)

(assert (=> b!7490936 (= e!4466976 tp_is_empty!49555)))

(assert (=> b!7490130 (= tp!2174050 e!4466976)))

(assert (= (and b!7490130 ((_ is ElementMatch!19633) (regTwo!39778 r1!5845))) b!7490936))

(assert (= (and b!7490130 ((_ is Concat!28478) (regTwo!39778 r1!5845))) b!7490937))

(assert (= (and b!7490130 ((_ is Star!19633) (regTwo!39778 r1!5845))) b!7490938))

(assert (= (and b!7490130 ((_ is Union!19633) (regTwo!39778 r1!5845))) b!7490939))

(declare-fun b!7490941 () Bool)

(declare-fun e!4466977 () Bool)

(declare-fun tp!2174221 () Bool)

(declare-fun tp!2174220 () Bool)

(assert (=> b!7490941 (= e!4466977 (and tp!2174221 tp!2174220))))

(declare-fun b!7490942 () Bool)

(declare-fun tp!2174219 () Bool)

(assert (=> b!7490942 (= e!4466977 tp!2174219)))

(declare-fun b!7490943 () Bool)

(declare-fun tp!2174222 () Bool)

(declare-fun tp!2174218 () Bool)

(assert (=> b!7490943 (= e!4466977 (and tp!2174222 tp!2174218))))

(declare-fun b!7490940 () Bool)

(assert (=> b!7490940 (= e!4466977 tp_is_empty!49555)))

(assert (=> b!7490144 (= tp!2174047 e!4466977)))

(assert (= (and b!7490144 ((_ is ElementMatch!19633) (regOne!39779 rTail!78))) b!7490940))

(assert (= (and b!7490144 ((_ is Concat!28478) (regOne!39779 rTail!78))) b!7490941))

(assert (= (and b!7490144 ((_ is Star!19633) (regOne!39779 rTail!78))) b!7490942))

(assert (= (and b!7490144 ((_ is Union!19633) (regOne!39779 rTail!78))) b!7490943))

(declare-fun b!7490945 () Bool)

(declare-fun e!4466978 () Bool)

(declare-fun tp!2174226 () Bool)

(declare-fun tp!2174225 () Bool)

(assert (=> b!7490945 (= e!4466978 (and tp!2174226 tp!2174225))))

(declare-fun b!7490946 () Bool)

(declare-fun tp!2174224 () Bool)

(assert (=> b!7490946 (= e!4466978 tp!2174224)))

(declare-fun b!7490947 () Bool)

(declare-fun tp!2174227 () Bool)

(declare-fun tp!2174223 () Bool)

(assert (=> b!7490947 (= e!4466978 (and tp!2174227 tp!2174223))))

(declare-fun b!7490944 () Bool)

(assert (=> b!7490944 (= e!4466978 tp_is_empty!49555)))

(assert (=> b!7490144 (= tp!2174053 e!4466978)))

(assert (= (and b!7490144 ((_ is ElementMatch!19633) (regTwo!39779 rTail!78))) b!7490944))

(assert (= (and b!7490144 ((_ is Concat!28478) (regTwo!39779 rTail!78))) b!7490945))

(assert (= (and b!7490144 ((_ is Star!19633) (regTwo!39779 rTail!78))) b!7490946))

(assert (= (and b!7490144 ((_ is Union!19633) (regTwo!39779 rTail!78))) b!7490947))

(declare-fun b!7490949 () Bool)

(declare-fun e!4466979 () Bool)

(declare-fun tp!2174231 () Bool)

(declare-fun tp!2174230 () Bool)

(assert (=> b!7490949 (= e!4466979 (and tp!2174231 tp!2174230))))

(declare-fun b!7490950 () Bool)

(declare-fun tp!2174229 () Bool)

(assert (=> b!7490950 (= e!4466979 tp!2174229)))

(declare-fun b!7490951 () Bool)

(declare-fun tp!2174232 () Bool)

(declare-fun tp!2174228 () Bool)

(assert (=> b!7490951 (= e!4466979 (and tp!2174232 tp!2174228))))

(declare-fun b!7490948 () Bool)

(assert (=> b!7490948 (= e!4466979 tp_is_empty!49555)))

(assert (=> b!7490139 (= tp!2174058 e!4466979)))

(assert (= (and b!7490139 ((_ is ElementMatch!19633) (regOne!39778 r2!5783))) b!7490948))

(assert (= (and b!7490139 ((_ is Concat!28478) (regOne!39778 r2!5783))) b!7490949))

(assert (= (and b!7490139 ((_ is Star!19633) (regOne!39778 r2!5783))) b!7490950))

(assert (= (and b!7490139 ((_ is Union!19633) (regOne!39778 r2!5783))) b!7490951))

(declare-fun b!7490953 () Bool)

(declare-fun e!4466980 () Bool)

(declare-fun tp!2174236 () Bool)

(declare-fun tp!2174235 () Bool)

(assert (=> b!7490953 (= e!4466980 (and tp!2174236 tp!2174235))))

(declare-fun b!7490954 () Bool)

(declare-fun tp!2174234 () Bool)

(assert (=> b!7490954 (= e!4466980 tp!2174234)))

(declare-fun b!7490955 () Bool)

(declare-fun tp!2174237 () Bool)

(declare-fun tp!2174233 () Bool)

(assert (=> b!7490955 (= e!4466980 (and tp!2174237 tp!2174233))))

(declare-fun b!7490952 () Bool)

(assert (=> b!7490952 (= e!4466980 tp_is_empty!49555)))

(assert (=> b!7490139 (= tp!2174054 e!4466980)))

(assert (= (and b!7490139 ((_ is ElementMatch!19633) (regTwo!39778 r2!5783))) b!7490952))

(assert (= (and b!7490139 ((_ is Concat!28478) (regTwo!39778 r2!5783))) b!7490953))

(assert (= (and b!7490139 ((_ is Star!19633) (regTwo!39778 r2!5783))) b!7490954))

(assert (= (and b!7490139 ((_ is Union!19633) (regTwo!39778 r2!5783))) b!7490955))

(check-sat (not b!7490950) (not b!7490850) (not d!2301222) (not b!7490490) (not bm!687651) (not b!7490904) (not b!7490693) (not b!7490716) (not b!7490856) (not b!7490822) (not b!7490516) (not b!7490900) (not b!7490858) (not bm!687582) (not b!7490937) (not b!7490524) (not b!7490933) (not b!7490796) (not b!7490609) (not b!7490946) (not b!7490484) (not d!2301160) (not b!7490908) (not b!7490893) (not bm!687656) (not b!7490901) (not b!7490557) (not b!7490864) (not b!7490942) (not d!2301250) (not b!7490935) (not b!7490482) (not d!2301202) (not b!7490851) (not bm!687610) (not b!7490450) (not b!7490863) (not bm!687643) (not b!7490934) (not b!7490853) (not bm!687626) (not b!7490929) (not b!7490951) (not d!2301240) (not b!7490654) (not b!7490823) (not b!7490283) (not bm!687652) (not bm!687650) (not bm!687633) (not b!7490902) (not bm!687649) (not b!7490700) (not b!7490892) (not b!7490489) (not d!2301236) (not bm!687657) (not b!7490815) (not d!2301244) (not b!7490561) (not b!7490854) (not b!7490917) (not b!7490454) (not b!7490428) (not d!2301170) (not b!7490275) (not bm!687575) (not d!2301232) (not b!7490916) (not b!7490278) tp_is_empty!49555 (not b!7490910) (not d!2301212) (not b!7490859) (not b!7490518) (not b!7490906) (not b!7490656) (not b!7490277) (not b!7490930) (not b!7490491) (not b!7490803) (not bm!687576) (not d!2301242) (not b!7490807) (not b!7490896) (not bm!687621) (not bm!687654) (not b!7490702) (not d!2301128) (not d!2301252) (not bm!687644) (not b!7490941) (not b!7490898) (not b!7490865) (not b!7490897) (not bm!687655) (not b!7490611) (not bm!687620) (not b!7490913) (not b!7490519) (not bm!687642) (not b!7490927) (not d!2301228) (not bm!687645) (not b!7490525) (not b!7490612) (not b!7490938) (not bm!687653) (not b!7490926) (not b!7490701) (not b!7490943) (not b!7490695) (not b!7490284) (not d!2301238) (not b!7490485) (not b!7490905) (not b!7490849) (not b!7490945) (not b!7490818) (not b!7490955) (not b!7490939) (not bm!687625) (not b!7490432) (not bm!687622) (not b!7490925) (not b!7490909) (not b!7490175) (not bm!687609) (not b!7490947) (not b!7490912) (not bm!687604) (not d!2301246) (not b!7490894) (not bm!687603) (not bm!687616) (not b!7490931) (not b!7490954) (not b!7490846) (not d!2301226) (not b!7490696) (not b!7490914) (not b!7490817) (not b!7490523) (not b!7490617) (not bm!687637) (not b!7490618) (not b!7490792) (not b!7490824) (not b!7490660) (not b!7490923) (not b!7490953) (not b!7490949) (not b!7490720) (not d!2301196) (not bm!687632) (not b!7490282) (not b!7490597) (not b!7490616) (not d!2301132) (not b!7490918) (not b!7490513) (not d!2301176))
(check-sat)
