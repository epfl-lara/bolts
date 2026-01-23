; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92176 () Bool)

(assert start!92176)

(declare-fun b!1084082 () Bool)

(declare-fun e!685520 () Bool)

(declare-fun tp!324225 () Bool)

(declare-fun tp!324222 () Bool)

(assert (=> b!1084082 (= e!685520 (and tp!324225 tp!324222))))

(declare-fun b!1084083 () Bool)

(declare-fun res!482263 () Bool)

(declare-fun e!685522 () Bool)

(assert (=> b!1084083 (=> (not res!482263) (not e!685522))))

(declare-datatypes ((C!6506 0))(
  ( (C!6507 (val!3501 Int)) )
))
(declare-datatypes ((List!10211 0))(
  ( (Nil!10195) (Cons!10195 (h!15596 C!6506) (t!101257 List!10211)) )
))
(declare-fun s!14216 () List!10211)

(declare-fun isEmpty!6612 (List!10211) Bool)

(assert (=> b!1084083 (= res!482263 (isEmpty!6612 s!14216))))

(declare-fun b!1084084 () Bool)

(declare-fun tp!324224 () Bool)

(assert (=> b!1084084 (= e!685520 tp!324224)))

(declare-fun b!1084085 () Bool)

(declare-fun e!685521 () Bool)

(declare-fun tp_is_empty!5567 () Bool)

(declare-fun tp!324221 () Bool)

(assert (=> b!1084085 (= e!685521 (and tp_is_empty!5567 tp!324221))))

(declare-fun b!1084086 () Bool)

(declare-fun res!482264 () Bool)

(assert (=> b!1084086 (=> (not res!482264) (not e!685522))))

(declare-datatypes ((Regex!2968 0))(
  ( (ElementMatch!2968 (c!182993 C!6506)) (Concat!4801 (regOne!6448 Regex!2968) (regTwo!6448 Regex!2968)) (EmptyExpr!2968) (Star!2968 (reg!3297 Regex!2968)) (EmptyLang!2968) (Union!2968 (regOne!6449 Regex!2968) (regTwo!6449 Regex!2968)) )
))
(declare-fun r!24820 () Regex!2968)

(declare-fun matchR!1498 (Regex!2968 List!10211) Bool)

(assert (=> b!1084086 (= res!482264 (matchR!1498 r!24820 s!14216))))

(declare-fun b!1084087 () Bool)

(declare-fun tp!324223 () Bool)

(declare-fun tp!324226 () Bool)

(assert (=> b!1084087 (= e!685520 (and tp!324223 tp!324226))))

(declare-fun b!1084088 () Bool)

(assert (=> b!1084088 (= e!685520 tp_is_empty!5567)))

(declare-fun b!1084089 () Bool)

(declare-fun nullable!1044 (Regex!2968) Bool)

(assert (=> b!1084089 (= e!685522 (not (nullable!1044 r!24820)))))

(declare-fun res!482262 () Bool)

(assert (=> start!92176 (=> (not res!482262) (not e!685522))))

(declare-fun validRegex!1431 (Regex!2968) Bool)

(assert (=> start!92176 (= res!482262 (validRegex!1431 r!24820))))

(assert (=> start!92176 e!685522))

(assert (=> start!92176 e!685520))

(assert (=> start!92176 e!685521))

(assert (= (and start!92176 res!482262) b!1084083))

(assert (= (and b!1084083 res!482263) b!1084086))

(assert (= (and b!1084086 res!482264) b!1084089))

(assert (= (and start!92176 (is-ElementMatch!2968 r!24820)) b!1084088))

(assert (= (and start!92176 (is-Concat!4801 r!24820)) b!1084082))

(assert (= (and start!92176 (is-Star!2968 r!24820)) b!1084084))

(assert (= (and start!92176 (is-Union!2968 r!24820)) b!1084087))

(assert (= (and start!92176 (is-Cons!10195 s!14216)) b!1084085))

(declare-fun m!1234001 () Bool)

(assert (=> b!1084083 m!1234001))

(declare-fun m!1234003 () Bool)

(assert (=> b!1084086 m!1234003))

(declare-fun m!1234005 () Bool)

(assert (=> b!1084089 m!1234005))

(declare-fun m!1234007 () Bool)

(assert (=> start!92176 m!1234007))

(push 1)

(assert (not b!1084084))

(assert tp_is_empty!5567)

(assert (not b!1084085))

(assert (not b!1084086))

(assert (not b!1084089))

(assert (not b!1084082))

(assert (not b!1084087))

(assert (not start!92176))

(assert (not b!1084083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304746 () Bool)

(declare-fun nullableFct!232 (Regex!2968) Bool)

(assert (=> d!304746 (= (nullable!1044 r!24820) (nullableFct!232 r!24820))))

(declare-fun bs!256432 () Bool)

(assert (= bs!256432 d!304746))

(declare-fun m!1234017 () Bool)

(assert (=> bs!256432 m!1234017))

(assert (=> b!1084089 d!304746))

(declare-fun d!304750 () Bool)

(assert (=> d!304750 (= (isEmpty!6612 s!14216) (is-Nil!10195 s!14216))))

(assert (=> b!1084083 d!304750))

(declare-fun b!1084132 () Bool)

(declare-fun e!685550 () Bool)

(declare-fun e!685549 () Bool)

(assert (=> b!1084132 (= e!685550 e!685549)))

(declare-fun res!482286 () Bool)

(assert (=> b!1084132 (=> (not res!482286) (not e!685549))))

(declare-fun call!80157 () Bool)

(assert (=> b!1084132 (= res!482286 call!80157)))

(declare-fun b!1084133 () Bool)

(declare-fun res!482285 () Bool)

(assert (=> b!1084133 (=> res!482285 e!685550)))

(assert (=> b!1084133 (= res!482285 (not (is-Concat!4801 r!24820)))))

(declare-fun e!685546 () Bool)

(assert (=> b!1084133 (= e!685546 e!685550)))

(declare-fun bm!80150 () Bool)

(declare-fun c!183000 () Bool)

(declare-fun c!182999 () Bool)

(declare-fun call!80156 () Bool)

(assert (=> bm!80150 (= call!80156 (validRegex!1431 (ite c!183000 (reg!3297 r!24820) (ite c!182999 (regOne!6449 r!24820) (regOne!6448 r!24820)))))))

(declare-fun b!1084134 () Bool)

(declare-fun e!685548 () Bool)

(assert (=> b!1084134 (= e!685548 call!80156)))

(declare-fun b!1084135 () Bool)

(declare-fun res!482287 () Bool)

(declare-fun e!685551 () Bool)

(assert (=> b!1084135 (=> (not res!482287) (not e!685551))))

(assert (=> b!1084135 (= res!482287 call!80157)))

(assert (=> b!1084135 (= e!685546 e!685551)))

(declare-fun b!1084136 () Bool)

(declare-fun e!685547 () Bool)

(declare-fun e!685552 () Bool)

(assert (=> b!1084136 (= e!685547 e!685552)))

(assert (=> b!1084136 (= c!183000 (is-Star!2968 r!24820))))

(declare-fun b!1084137 () Bool)

(declare-fun call!80155 () Bool)

(assert (=> b!1084137 (= e!685551 call!80155)))

(declare-fun b!1084138 () Bool)

(assert (=> b!1084138 (= e!685549 call!80155)))

(declare-fun d!304752 () Bool)

(declare-fun res!482284 () Bool)

(assert (=> d!304752 (=> res!482284 e!685547)))

(assert (=> d!304752 (= res!482284 (is-ElementMatch!2968 r!24820))))

(assert (=> d!304752 (= (validRegex!1431 r!24820) e!685547)))

(declare-fun bm!80151 () Bool)

(assert (=> bm!80151 (= call!80157 call!80156)))

(declare-fun bm!80152 () Bool)

(assert (=> bm!80152 (= call!80155 (validRegex!1431 (ite c!182999 (regTwo!6449 r!24820) (regTwo!6448 r!24820))))))

(declare-fun b!1084139 () Bool)

(assert (=> b!1084139 (= e!685552 e!685546)))

(assert (=> b!1084139 (= c!182999 (is-Union!2968 r!24820))))

(declare-fun b!1084140 () Bool)

(assert (=> b!1084140 (= e!685552 e!685548)))

(declare-fun res!482288 () Bool)

(assert (=> b!1084140 (= res!482288 (not (nullable!1044 (reg!3297 r!24820))))))

(assert (=> b!1084140 (=> (not res!482288) (not e!685548))))

(assert (= (and d!304752 (not res!482284)) b!1084136))

(assert (= (and b!1084136 c!183000) b!1084140))

(assert (= (and b!1084136 (not c!183000)) b!1084139))

(assert (= (and b!1084140 res!482288) b!1084134))

(assert (= (and b!1084139 c!182999) b!1084135))

(assert (= (and b!1084139 (not c!182999)) b!1084133))

(assert (= (and b!1084135 res!482287) b!1084137))

(assert (= (and b!1084133 (not res!482285)) b!1084132))

(assert (= (and b!1084132 res!482286) b!1084138))

(assert (= (or b!1084137 b!1084138) bm!80152))

(assert (= (or b!1084135 b!1084132) bm!80151))

(assert (= (or b!1084134 bm!80151) bm!80150))

(declare-fun m!1234021 () Bool)

(assert (=> bm!80150 m!1234021))

(declare-fun m!1234023 () Bool)

(assert (=> bm!80152 m!1234023))

(declare-fun m!1234025 () Bool)

(assert (=> b!1084140 m!1234025))

(assert (=> start!92176 d!304752))

(declare-fun d!304756 () Bool)

(declare-fun e!685581 () Bool)

(assert (=> d!304756 e!685581))

(declare-fun c!183015 () Bool)

(assert (=> d!304756 (= c!183015 (is-EmptyExpr!2968 r!24820))))

(declare-fun lt!362650 () Bool)

(declare-fun e!685585 () Bool)

(assert (=> d!304756 (= lt!362650 e!685585)))

(declare-fun c!183013 () Bool)

(assert (=> d!304756 (= c!183013 (isEmpty!6612 s!14216))))

(assert (=> d!304756 (validRegex!1431 r!24820)))

(assert (=> d!304756 (= (matchR!1498 r!24820 s!14216) lt!362650)))

(declare-fun b!1084197 () Bool)

(declare-fun res!482328 () Bool)

(declare-fun e!685582 () Bool)

(assert (=> b!1084197 (=> res!482328 e!685582)))

(declare-fun tail!1559 (List!10211) List!10211)

(assert (=> b!1084197 (= res!482328 (not (isEmpty!6612 (tail!1559 s!14216))))))

(declare-fun b!1084198 () Bool)

(declare-fun e!685586 () Bool)

(assert (=> b!1084198 (= e!685581 e!685586)))

(declare-fun c!183014 () Bool)

(assert (=> b!1084198 (= c!183014 (is-EmptyLang!2968 r!24820))))

(declare-fun b!1084199 () Bool)

(declare-fun derivativeStep!842 (Regex!2968 C!6506) Regex!2968)

(declare-fun head!1997 (List!10211) C!6506)

(assert (=> b!1084199 (= e!685585 (matchR!1498 (derivativeStep!842 r!24820 (head!1997 s!14216)) (tail!1559 s!14216)))))

(declare-fun b!1084200 () Bool)

(declare-fun e!685584 () Bool)

(assert (=> b!1084200 (= e!685584 e!685582)))

(declare-fun res!482324 () Bool)

(assert (=> b!1084200 (=> res!482324 e!685582)))

(declare-fun call!80162 () Bool)

(assert (=> b!1084200 (= res!482324 call!80162)))

(declare-fun b!1084201 () Bool)

(declare-fun e!685583 () Bool)

(assert (=> b!1084201 (= e!685583 (= (head!1997 s!14216) (c!182993 r!24820)))))

(declare-fun b!1084202 () Bool)

(assert (=> b!1084202 (= e!685582 (not (= (head!1997 s!14216) (c!182993 r!24820))))))

(declare-fun b!1084203 () Bool)

(declare-fun res!482322 () Bool)

(assert (=> b!1084203 (=> (not res!482322) (not e!685583))))

(assert (=> b!1084203 (= res!482322 (not call!80162))))

(declare-fun b!1084204 () Bool)

(declare-fun res!482327 () Bool)

(declare-fun e!685587 () Bool)

(assert (=> b!1084204 (=> res!482327 e!685587)))

(assert (=> b!1084204 (= res!482327 e!685583)))

(declare-fun res!482326 () Bool)

(assert (=> b!1084204 (=> (not res!482326) (not e!685583))))

(assert (=> b!1084204 (= res!482326 lt!362650)))

(declare-fun b!1084205 () Bool)

(assert (=> b!1084205 (= e!685586 (not lt!362650))))

(declare-fun b!1084206 () Bool)

(assert (=> b!1084206 (= e!685581 (= lt!362650 call!80162))))

(declare-fun b!1084207 () Bool)

(declare-fun res!482321 () Bool)

(assert (=> b!1084207 (=> (not res!482321) (not e!685583))))

(assert (=> b!1084207 (= res!482321 (isEmpty!6612 (tail!1559 s!14216)))))

(declare-fun b!1084208 () Bool)

(assert (=> b!1084208 (= e!685587 e!685584)))

(declare-fun res!482325 () Bool)

(assert (=> b!1084208 (=> (not res!482325) (not e!685584))))

(assert (=> b!1084208 (= res!482325 (not lt!362650))))

(declare-fun b!1084209 () Bool)

(assert (=> b!1084209 (= e!685585 (nullable!1044 r!24820))))

(declare-fun bm!80157 () Bool)

(assert (=> bm!80157 (= call!80162 (isEmpty!6612 s!14216))))

(declare-fun b!1084210 () Bool)

(declare-fun res!482323 () Bool)

(assert (=> b!1084210 (=> res!482323 e!685587)))

(assert (=> b!1084210 (= res!482323 (not (is-ElementMatch!2968 r!24820)))))

(assert (=> b!1084210 (= e!685586 e!685587)))

(assert (= (and d!304756 c!183013) b!1084209))

(assert (= (and d!304756 (not c!183013)) b!1084199))

(assert (= (and d!304756 c!183015) b!1084206))

(assert (= (and d!304756 (not c!183015)) b!1084198))

(assert (= (and b!1084198 c!183014) b!1084205))

(assert (= (and b!1084198 (not c!183014)) b!1084210))

(assert (= (and b!1084210 (not res!482323)) b!1084204))

(assert (= (and b!1084204 res!482326) b!1084203))

(assert (= (and b!1084203 res!482322) b!1084207))

(assert (= (and b!1084207 res!482321) b!1084201))

(assert (= (and b!1084204 (not res!482327)) b!1084208))

(assert (= (and b!1084208 res!482325) b!1084200))

(assert (= (and b!1084200 (not res!482324)) b!1084197))

(assert (= (and b!1084197 (not res!482328)) b!1084202))

(assert (= (or b!1084206 b!1084200 b!1084203) bm!80157))

(declare-fun m!1234027 () Bool)

(assert (=> b!1084199 m!1234027))

(assert (=> b!1084199 m!1234027))

(declare-fun m!1234029 () Bool)

(assert (=> b!1084199 m!1234029))

(declare-fun m!1234031 () Bool)

(assert (=> b!1084199 m!1234031))

(assert (=> b!1084199 m!1234029))

(assert (=> b!1084199 m!1234031))

(declare-fun m!1234033 () Bool)

(assert (=> b!1084199 m!1234033))

(assert (=> b!1084197 m!1234031))

(assert (=> b!1084197 m!1234031))

(declare-fun m!1234035 () Bool)

(assert (=> b!1084197 m!1234035))

(assert (=> b!1084202 m!1234027))

(assert (=> b!1084209 m!1234005))

(assert (=> d!304756 m!1234001))

(assert (=> d!304756 m!1234007))

(assert (=> b!1084207 m!1234031))

(assert (=> b!1084207 m!1234031))

(assert (=> b!1084207 m!1234035))

(assert (=> b!1084201 m!1234027))

(assert (=> bm!80157 m!1234001))

(assert (=> b!1084086 d!304756))

(declare-fun b!1084221 () Bool)

(declare-fun e!685590 () Bool)

(assert (=> b!1084221 (= e!685590 tp_is_empty!5567)))

(declare-fun b!1084222 () Bool)

(declare-fun tp!324255 () Bool)

(declare-fun tp!324257 () Bool)

(assert (=> b!1084222 (= e!685590 (and tp!324255 tp!324257))))

(declare-fun b!1084224 () Bool)

(declare-fun tp!324259 () Bool)

(declare-fun tp!324256 () Bool)

(assert (=> b!1084224 (= e!685590 (and tp!324259 tp!324256))))

(assert (=> b!1084084 (= tp!324224 e!685590)))

(declare-fun b!1084223 () Bool)

(declare-fun tp!324258 () Bool)

(assert (=> b!1084223 (= e!685590 tp!324258)))

(assert (= (and b!1084084 (is-ElementMatch!2968 (reg!3297 r!24820))) b!1084221))

(assert (= (and b!1084084 (is-Concat!4801 (reg!3297 r!24820))) b!1084222))

(assert (= (and b!1084084 (is-Star!2968 (reg!3297 r!24820))) b!1084223))

(assert (= (and b!1084084 (is-Union!2968 (reg!3297 r!24820))) b!1084224))

(declare-fun b!1084225 () Bool)

(declare-fun e!685591 () Bool)

(assert (=> b!1084225 (= e!685591 tp_is_empty!5567)))

(declare-fun b!1084226 () Bool)

(declare-fun tp!324260 () Bool)

(declare-fun tp!324262 () Bool)

(assert (=> b!1084226 (= e!685591 (and tp!324260 tp!324262))))

(declare-fun b!1084228 () Bool)

(declare-fun tp!324264 () Bool)

(declare-fun tp!324261 () Bool)

(assert (=> b!1084228 (= e!685591 (and tp!324264 tp!324261))))

(assert (=> b!1084087 (= tp!324223 e!685591)))

(declare-fun b!1084227 () Bool)

(declare-fun tp!324263 () Bool)

(assert (=> b!1084227 (= e!685591 tp!324263)))

(assert (= (and b!1084087 (is-ElementMatch!2968 (regOne!6449 r!24820))) b!1084225))

(assert (= (and b!1084087 (is-Concat!4801 (regOne!6449 r!24820))) b!1084226))

(assert (= (and b!1084087 (is-Star!2968 (regOne!6449 r!24820))) b!1084227))

(assert (= (and b!1084087 (is-Union!2968 (regOne!6449 r!24820))) b!1084228))

(declare-fun b!1084229 () Bool)

(declare-fun e!685592 () Bool)

(assert (=> b!1084229 (= e!685592 tp_is_empty!5567)))

(declare-fun b!1084230 () Bool)

(declare-fun tp!324265 () Bool)

(declare-fun tp!324267 () Bool)

(assert (=> b!1084230 (= e!685592 (and tp!324265 tp!324267))))

(declare-fun b!1084232 () Bool)

(declare-fun tp!324269 () Bool)

(declare-fun tp!324266 () Bool)

(assert (=> b!1084232 (= e!685592 (and tp!324269 tp!324266))))

(assert (=> b!1084087 (= tp!324226 e!685592)))

(declare-fun b!1084231 () Bool)

(declare-fun tp!324268 () Bool)

(assert (=> b!1084231 (= e!685592 tp!324268)))

(assert (= (and b!1084087 (is-ElementMatch!2968 (regTwo!6449 r!24820))) b!1084229))

(assert (= (and b!1084087 (is-Concat!4801 (regTwo!6449 r!24820))) b!1084230))

(assert (= (and b!1084087 (is-Star!2968 (regTwo!6449 r!24820))) b!1084231))

(assert (= (and b!1084087 (is-Union!2968 (regTwo!6449 r!24820))) b!1084232))

(declare-fun b!1084233 () Bool)

(declare-fun e!685593 () Bool)

(assert (=> b!1084233 (= e!685593 tp_is_empty!5567)))

(declare-fun b!1084234 () Bool)

(declare-fun tp!324270 () Bool)

(declare-fun tp!324272 () Bool)

(assert (=> b!1084234 (= e!685593 (and tp!324270 tp!324272))))

(declare-fun b!1084236 () Bool)

(declare-fun tp!324274 () Bool)

(declare-fun tp!324271 () Bool)

(assert (=> b!1084236 (= e!685593 (and tp!324274 tp!324271))))

(assert (=> b!1084082 (= tp!324225 e!685593)))

(declare-fun b!1084235 () Bool)

(declare-fun tp!324273 () Bool)

(assert (=> b!1084235 (= e!685593 tp!324273)))

(assert (= (and b!1084082 (is-ElementMatch!2968 (regOne!6448 r!24820))) b!1084233))

(assert (= (and b!1084082 (is-Concat!4801 (regOne!6448 r!24820))) b!1084234))

(assert (= (and b!1084082 (is-Star!2968 (regOne!6448 r!24820))) b!1084235))

(assert (= (and b!1084082 (is-Union!2968 (regOne!6448 r!24820))) b!1084236))

(declare-fun b!1084237 () Bool)

(declare-fun e!685594 () Bool)

(assert (=> b!1084237 (= e!685594 tp_is_empty!5567)))

(declare-fun b!1084238 () Bool)

(declare-fun tp!324275 () Bool)

(declare-fun tp!324277 () Bool)

(assert (=> b!1084238 (= e!685594 (and tp!324275 tp!324277))))

(declare-fun b!1084240 () Bool)

(declare-fun tp!324279 () Bool)

(declare-fun tp!324276 () Bool)

(assert (=> b!1084240 (= e!685594 (and tp!324279 tp!324276))))

(assert (=> b!1084082 (= tp!324222 e!685594)))

(declare-fun b!1084239 () Bool)

(declare-fun tp!324278 () Bool)

(assert (=> b!1084239 (= e!685594 tp!324278)))

(assert (= (and b!1084082 (is-ElementMatch!2968 (regTwo!6448 r!24820))) b!1084237))

(assert (= (and b!1084082 (is-Concat!4801 (regTwo!6448 r!24820))) b!1084238))

(assert (= (and b!1084082 (is-Star!2968 (regTwo!6448 r!24820))) b!1084239))

(assert (= (and b!1084082 (is-Union!2968 (regTwo!6448 r!24820))) b!1084240))

(declare-fun b!1084245 () Bool)

(declare-fun e!685597 () Bool)

(declare-fun tp!324282 () Bool)

(assert (=> b!1084245 (= e!685597 (and tp_is_empty!5567 tp!324282))))

(assert (=> b!1084085 (= tp!324221 e!685597)))

(assert (= (and b!1084085 (is-Cons!10195 (t!101257 s!14216))) b!1084245))

(push 1)

(assert (not d!304756))

(assert (not b!1084228))

(assert (not b!1084232))

(assert (not b!1084226))

(assert (not d!304746))

(assert (not b!1084231))

(assert (not b!1084197))

(assert (not bm!80157))

(assert (not b!1084199))

(assert (not b!1084209))

(assert (not b!1084227))

(assert (not b!1084239))

(assert (not b!1084202))

(assert (not b!1084207))

(assert tp_is_empty!5567)

(assert (not b!1084224))

(assert (not bm!80152))

(assert (not b!1084234))

(assert (not bm!80150))

(assert (not b!1084240))

(assert (not b!1084223))

(assert (not b!1084140))

(assert (not b!1084222))

(assert (not b!1084236))

(assert (not b!1084245))

(assert (not b!1084230))

(assert (not b!1084201))

(assert (not b!1084235))

(assert (not b!1084238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

