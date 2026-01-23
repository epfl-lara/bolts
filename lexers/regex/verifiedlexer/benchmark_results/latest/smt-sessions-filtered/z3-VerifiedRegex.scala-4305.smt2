; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230476 () Bool)

(assert start!230476)

(declare-fun b!2334447 () Bool)

(declare-fun e!1495018 () Bool)

(declare-fun tp!740211 () Bool)

(declare-fun tp!740208 () Bool)

(assert (=> b!2334447 (= e!1495018 (and tp!740211 tp!740208))))

(declare-fun b!2334448 () Bool)

(declare-fun res!995972 () Bool)

(declare-fun e!1495017 () Bool)

(assert (=> b!2334448 (=> (not res!995972) (not e!1495017))))

(declare-datatypes ((C!13856 0))(
  ( (C!13857 (val!8088 Int)) )
))
(declare-datatypes ((Regex!6849 0))(
  ( (ElementMatch!6849 (c!370995 C!13856)) (Concat!11471 (regOne!14210 Regex!6849) (regTwo!14210 Regex!6849)) (EmptyExpr!6849) (Star!6849 (reg!7178 Regex!6849)) (EmptyLang!6849) (Union!6849 (regOne!14211 Regex!6849) (regTwo!14211 Regex!6849)) )
))
(declare-fun r!26197 () Regex!6849)

(declare-fun c!13498 () C!13856)

(declare-fun nullable!1928 (Regex!6849) Bool)

(declare-fun derivativeStep!1588 (Regex!6849 C!13856) Regex!6849)

(assert (=> b!2334448 (= res!995972 (nullable!1928 (derivativeStep!1588 r!26197 c!13498)))))

(declare-fun b!2334449 () Bool)

(declare-fun res!995974 () Bool)

(assert (=> b!2334449 (=> (not res!995974) (not e!1495017))))

(get-info :version)

(assert (=> b!2334449 (= res!995974 (and (not ((_ is EmptyExpr!6849) r!26197)) (not ((_ is EmptyLang!6849) r!26197)) ((_ is ElementMatch!6849) r!26197)))))

(declare-fun b!2334450 () Bool)

(declare-fun tp_is_empty!11009 () Bool)

(assert (=> b!2334450 (= e!1495018 tp_is_empty!11009)))

(declare-fun b!2334451 () Bool)

(declare-datatypes ((List!27934 0))(
  ( (Nil!27836) (Cons!27836 (h!33237 C!13856) (t!207793 List!27934)) )
))
(declare-fun contains!4815 (List!27934 C!13856) Bool)

(declare-fun usedCharacters!434 (Regex!6849) List!27934)

(assert (=> b!2334451 (= e!1495017 (not (contains!4815 (usedCharacters!434 r!26197) c!13498)))))

(declare-fun b!2334452 () Bool)

(declare-fun tp!740209 () Bool)

(declare-fun tp!740207 () Bool)

(assert (=> b!2334452 (= e!1495018 (and tp!740209 tp!740207))))

(declare-fun b!2334453 () Bool)

(declare-fun tp!740210 () Bool)

(assert (=> b!2334453 (= e!1495018 tp!740210)))

(declare-fun b!2334454 () Bool)

(declare-fun res!995973 () Bool)

(assert (=> b!2334454 (=> (not res!995973) (not e!1495017))))

(assert (=> b!2334454 (= res!995973 (not (nullable!1928 r!26197)))))

(declare-fun res!995975 () Bool)

(assert (=> start!230476 (=> (not res!995975) (not e!1495017))))

(declare-fun validRegex!2594 (Regex!6849) Bool)

(assert (=> start!230476 (= res!995975 (validRegex!2594 r!26197))))

(assert (=> start!230476 e!1495017))

(assert (=> start!230476 e!1495018))

(assert (=> start!230476 tp_is_empty!11009))

(assert (= (and start!230476 res!995975) b!2334454))

(assert (= (and b!2334454 res!995973) b!2334448))

(assert (= (and b!2334448 res!995972) b!2334449))

(assert (= (and b!2334449 res!995974) b!2334451))

(assert (= (and start!230476 ((_ is ElementMatch!6849) r!26197)) b!2334450))

(assert (= (and start!230476 ((_ is Concat!11471) r!26197)) b!2334447))

(assert (= (and start!230476 ((_ is Star!6849) r!26197)) b!2334453))

(assert (= (and start!230476 ((_ is Union!6849) r!26197)) b!2334452))

(declare-fun m!2762155 () Bool)

(assert (=> b!2334448 m!2762155))

(assert (=> b!2334448 m!2762155))

(declare-fun m!2762157 () Bool)

(assert (=> b!2334448 m!2762157))

(declare-fun m!2762159 () Bool)

(assert (=> b!2334451 m!2762159))

(assert (=> b!2334451 m!2762159))

(declare-fun m!2762161 () Bool)

(assert (=> b!2334451 m!2762161))

(declare-fun m!2762163 () Bool)

(assert (=> b!2334454 m!2762163))

(declare-fun m!2762165 () Bool)

(assert (=> start!230476 m!2762165))

(check-sat (not b!2334451) (not b!2334454) (not b!2334453) (not start!230476) (not b!2334448) (not b!2334447) tp_is_empty!11009 (not b!2334452))
(check-sat)
(get-model)

(declare-fun call!139782 () Bool)

(declare-fun bm!139776 () Bool)

(declare-fun c!371001 () Bool)

(declare-fun c!371000 () Bool)

(assert (=> bm!139776 (= call!139782 (validRegex!2594 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun bm!139777 () Bool)

(declare-fun call!139781 () Bool)

(assert (=> bm!139777 (= call!139781 call!139782)))

(declare-fun b!2334479 () Bool)

(declare-fun res!995993 () Bool)

(declare-fun e!1495041 () Bool)

(assert (=> b!2334479 (=> (not res!995993) (not e!1495041))))

(assert (=> b!2334479 (= res!995993 call!139781)))

(declare-fun e!1495043 () Bool)

(assert (=> b!2334479 (= e!1495043 e!1495041)))

(declare-fun b!2334480 () Bool)

(declare-fun e!1495045 () Bool)

(declare-fun e!1495040 () Bool)

(assert (=> b!2334480 (= e!1495045 e!1495040)))

(assert (=> b!2334480 (= c!371000 ((_ is Star!6849) r!26197))))

(declare-fun b!2334481 () Bool)

(declare-fun e!1495042 () Bool)

(assert (=> b!2334481 (= e!1495040 e!1495042)))

(declare-fun res!995996 () Bool)

(assert (=> b!2334481 (= res!995996 (not (nullable!1928 (reg!7178 r!26197))))))

(assert (=> b!2334481 (=> (not res!995996) (not e!1495042))))

(declare-fun d!690336 () Bool)

(declare-fun res!995992 () Bool)

(assert (=> d!690336 (=> res!995992 e!1495045)))

(assert (=> d!690336 (= res!995992 ((_ is ElementMatch!6849) r!26197))))

(assert (=> d!690336 (= (validRegex!2594 r!26197) e!1495045)))

(declare-fun b!2334482 () Bool)

(declare-fun res!995994 () Bool)

(declare-fun e!1495044 () Bool)

(assert (=> b!2334482 (=> res!995994 e!1495044)))

(assert (=> b!2334482 (= res!995994 (not ((_ is Concat!11471) r!26197)))))

(assert (=> b!2334482 (= e!1495043 e!1495044)))

(declare-fun b!2334483 () Bool)

(declare-fun e!1495039 () Bool)

(assert (=> b!2334483 (= e!1495044 e!1495039)))

(declare-fun res!995995 () Bool)

(assert (=> b!2334483 (=> (not res!995995) (not e!1495039))))

(assert (=> b!2334483 (= res!995995 call!139781)))

(declare-fun b!2334484 () Bool)

(assert (=> b!2334484 (= e!1495042 call!139782)))

(declare-fun b!2334485 () Bool)

(declare-fun call!139783 () Bool)

(assert (=> b!2334485 (= e!1495039 call!139783)))

(declare-fun b!2334486 () Bool)

(assert (=> b!2334486 (= e!1495041 call!139783)))

(declare-fun bm!139778 () Bool)

(assert (=> bm!139778 (= call!139783 (validRegex!2594 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334487 () Bool)

(assert (=> b!2334487 (= e!1495040 e!1495043)))

(assert (=> b!2334487 (= c!371001 ((_ is Union!6849) r!26197))))

(assert (= (and d!690336 (not res!995992)) b!2334480))

(assert (= (and b!2334480 c!371000) b!2334481))

(assert (= (and b!2334480 (not c!371000)) b!2334487))

(assert (= (and b!2334481 res!995996) b!2334484))

(assert (= (and b!2334487 c!371001) b!2334479))

(assert (= (and b!2334487 (not c!371001)) b!2334482))

(assert (= (and b!2334479 res!995993) b!2334486))

(assert (= (and b!2334482 (not res!995994)) b!2334483))

(assert (= (and b!2334483 res!995995) b!2334485))

(assert (= (or b!2334486 b!2334485) bm!139778))

(assert (= (or b!2334479 b!2334483) bm!139777))

(assert (= (or b!2334484 bm!139777) bm!139776))

(declare-fun m!2762173 () Bool)

(assert (=> bm!139776 m!2762173))

(declare-fun m!2762175 () Bool)

(assert (=> b!2334481 m!2762175))

(declare-fun m!2762177 () Bool)

(assert (=> bm!139778 m!2762177))

(assert (=> start!230476 d!690336))

(declare-fun d!690342 () Bool)

(declare-fun nullableFct!484 (Regex!6849) Bool)

(assert (=> d!690342 (= (nullable!1928 r!26197) (nullableFct!484 r!26197))))

(declare-fun bs!459891 () Bool)

(assert (= bs!459891 d!690342))

(declare-fun m!2762179 () Bool)

(assert (=> bs!459891 m!2762179))

(assert (=> b!2334454 d!690342))

(declare-fun d!690344 () Bool)

(declare-fun lt!862397 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3768 (List!27934) (InoxSet C!13856))

(assert (=> d!690344 (= lt!862397 (select (content!3768 (usedCharacters!434 r!26197)) c!13498))))

(declare-fun e!1495058 () Bool)

(assert (=> d!690344 (= lt!862397 e!1495058)))

(declare-fun res!996002 () Bool)

(assert (=> d!690344 (=> (not res!996002) (not e!1495058))))

(assert (=> d!690344 (= res!996002 ((_ is Cons!27836) (usedCharacters!434 r!26197)))))

(assert (=> d!690344 (= (contains!4815 (usedCharacters!434 r!26197) c!13498) lt!862397)))

(declare-fun b!2334508 () Bool)

(declare-fun e!1495059 () Bool)

(assert (=> b!2334508 (= e!1495058 e!1495059)))

(declare-fun res!996001 () Bool)

(assert (=> b!2334508 (=> res!996001 e!1495059)))

(assert (=> b!2334508 (= res!996001 (= (h!33237 (usedCharacters!434 r!26197)) c!13498))))

(declare-fun b!2334509 () Bool)

(assert (=> b!2334509 (= e!1495059 (contains!4815 (t!207793 (usedCharacters!434 r!26197)) c!13498))))

(assert (= (and d!690344 res!996002) b!2334508))

(assert (= (and b!2334508 (not res!996001)) b!2334509))

(assert (=> d!690344 m!2762159))

(declare-fun m!2762181 () Bool)

(assert (=> d!690344 m!2762181))

(declare-fun m!2762183 () Bool)

(assert (=> d!690344 m!2762183))

(declare-fun m!2762185 () Bool)

(assert (=> b!2334509 m!2762185))

(assert (=> b!2334451 d!690344))

(declare-fun b!2334552 () Bool)

(declare-fun c!371029 () Bool)

(assert (=> b!2334552 (= c!371029 ((_ is Star!6849) r!26197))))

(declare-fun e!1495086 () List!27934)

(declare-fun e!1495087 () List!27934)

(assert (=> b!2334552 (= e!1495086 e!1495087)))

(declare-fun bm!139805 () Bool)

(declare-fun call!139810 () List!27934)

(declare-fun c!371027 () Bool)

(assert (=> bm!139805 (= call!139810 (usedCharacters!434 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334553 () Bool)

(declare-fun e!1495088 () List!27934)

(assert (=> b!2334553 (= e!1495088 Nil!27836)))

(declare-fun b!2334554 () Bool)

(declare-fun e!1495089 () List!27934)

(declare-fun call!139812 () List!27934)

(assert (=> b!2334554 (= e!1495089 call!139812)))

(declare-fun bm!139807 () Bool)

(declare-fun call!139811 () List!27934)

(declare-fun call!139813 () List!27934)

(assert (=> bm!139807 (= call!139811 call!139813)))

(declare-fun bm!139806 () Bool)

(assert (=> bm!139806 (= call!139813 (usedCharacters!434 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun d!690346 () Bool)

(declare-fun c!371026 () Bool)

(assert (=> d!690346 (= c!371026 (or ((_ is EmptyExpr!6849) r!26197) ((_ is EmptyLang!6849) r!26197)))))

(assert (=> d!690346 (= (usedCharacters!434 r!26197) e!1495088)))

(declare-fun bm!139808 () Bool)

(declare-fun ++!6859 (List!27934 List!27934) List!27934)

(assert (=> bm!139808 (= call!139812 (++!6859 call!139811 call!139810))))

(declare-fun b!2334555 () Bool)

(assert (=> b!2334555 (= e!1495088 e!1495086)))

(declare-fun c!371028 () Bool)

(assert (=> b!2334555 (= c!371028 ((_ is ElementMatch!6849) r!26197))))

(declare-fun b!2334556 () Bool)

(assert (=> b!2334556 (= e!1495086 (Cons!27836 (c!370995 r!26197) Nil!27836))))

(declare-fun b!2334557 () Bool)

(assert (=> b!2334557 (= e!1495089 call!139812)))

(declare-fun b!2334558 () Bool)

(assert (=> b!2334558 (= e!1495087 e!1495089)))

(assert (=> b!2334558 (= c!371027 ((_ is Union!6849) r!26197))))

(declare-fun b!2334559 () Bool)

(assert (=> b!2334559 (= e!1495087 call!139813)))

(assert (= (and d!690346 c!371026) b!2334553))

(assert (= (and d!690346 (not c!371026)) b!2334555))

(assert (= (and b!2334555 c!371028) b!2334556))

(assert (= (and b!2334555 (not c!371028)) b!2334552))

(assert (= (and b!2334552 c!371029) b!2334559))

(assert (= (and b!2334552 (not c!371029)) b!2334558))

(assert (= (and b!2334558 c!371027) b!2334554))

(assert (= (and b!2334558 (not c!371027)) b!2334557))

(assert (= (or b!2334554 b!2334557) bm!139805))

(assert (= (or b!2334554 b!2334557) bm!139807))

(assert (= (or b!2334554 b!2334557) bm!139808))

(assert (= (or b!2334559 bm!139807) bm!139806))

(declare-fun m!2762193 () Bool)

(assert (=> bm!139805 m!2762193))

(declare-fun m!2762195 () Bool)

(assert (=> bm!139806 m!2762195))

(declare-fun m!2762197 () Bool)

(assert (=> bm!139808 m!2762197))

(assert (=> b!2334451 d!690346))

(declare-fun d!690350 () Bool)

(assert (=> d!690350 (= (nullable!1928 (derivativeStep!1588 r!26197 c!13498)) (nullableFct!484 (derivativeStep!1588 r!26197 c!13498)))))

(declare-fun bs!459892 () Bool)

(assert (= bs!459892 d!690350))

(assert (=> bs!459892 m!2762155))

(declare-fun m!2762199 () Bool)

(assert (=> bs!459892 m!2762199))

(assert (=> b!2334448 d!690350))

(declare-fun b!2334609 () Bool)

(declare-fun e!1495118 () Regex!6849)

(assert (=> b!2334609 (= e!1495118 EmptyLang!6849)))

(declare-fun bm!139820 () Bool)

(declare-fun call!139825 () Regex!6849)

(declare-fun call!139828 () Regex!6849)

(assert (=> bm!139820 (= call!139825 call!139828)))

(declare-fun b!2334610 () Bool)

(declare-fun e!1495117 () Regex!6849)

(assert (=> b!2334610 (= e!1495117 (ite (= c!13498 (c!370995 r!26197)) EmptyExpr!6849 EmptyLang!6849))))

(declare-fun b!2334611 () Bool)

(declare-fun e!1495121 () Regex!6849)

(assert (=> b!2334611 (= e!1495121 (Union!6849 (Concat!11471 call!139825 (regTwo!14210 r!26197)) EmptyLang!6849))))

(declare-fun bm!139821 () Bool)

(declare-fun c!371053 () Bool)

(declare-fun call!139826 () Regex!6849)

(assert (=> bm!139821 (= call!139826 (derivativeStep!1588 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)) c!13498))))

(declare-fun b!2334613 () Bool)

(declare-fun e!1495120 () Regex!6849)

(declare-fun call!139827 () Regex!6849)

(assert (=> b!2334613 (= e!1495120 (Union!6849 call!139826 call!139827))))

(declare-fun b!2334614 () Bool)

(assert (=> b!2334614 (= e!1495121 (Union!6849 (Concat!11471 call!139825 (regTwo!14210 r!26197)) call!139826))))

(declare-fun b!2334615 () Bool)

(declare-fun e!1495119 () Regex!6849)

(assert (=> b!2334615 (= e!1495119 (Concat!11471 call!139828 r!26197))))

(declare-fun bm!139822 () Bool)

(assert (=> bm!139822 (= call!139828 call!139827)))

(declare-fun b!2334616 () Bool)

(declare-fun c!371055 () Bool)

(assert (=> b!2334616 (= c!371055 (nullable!1928 (regOne!14210 r!26197)))))

(assert (=> b!2334616 (= e!1495119 e!1495121)))

(declare-fun b!2334617 () Bool)

(assert (=> b!2334617 (= c!371053 ((_ is Union!6849) r!26197))))

(assert (=> b!2334617 (= e!1495117 e!1495120)))

(declare-fun b!2334612 () Bool)

(assert (=> b!2334612 (= e!1495118 e!1495117)))

(declare-fun c!371056 () Bool)

(assert (=> b!2334612 (= c!371056 ((_ is ElementMatch!6849) r!26197))))

(declare-fun d!690352 () Bool)

(declare-fun lt!862402 () Regex!6849)

(assert (=> d!690352 (validRegex!2594 lt!862402)))

(assert (=> d!690352 (= lt!862402 e!1495118)))

(declare-fun c!371054 () Bool)

(assert (=> d!690352 (= c!371054 (or ((_ is EmptyExpr!6849) r!26197) ((_ is EmptyLang!6849) r!26197)))))

(assert (=> d!690352 (validRegex!2594 r!26197)))

(assert (=> d!690352 (= (derivativeStep!1588 r!26197 c!13498) lt!862402)))

(declare-fun bm!139823 () Bool)

(declare-fun c!371052 () Bool)

(assert (=> bm!139823 (= call!139827 (derivativeStep!1588 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))) c!13498))))

(declare-fun b!2334618 () Bool)

(assert (=> b!2334618 (= e!1495120 e!1495119)))

(assert (=> b!2334618 (= c!371052 ((_ is Star!6849) r!26197))))

(assert (= (and d!690352 c!371054) b!2334609))

(assert (= (and d!690352 (not c!371054)) b!2334612))

(assert (= (and b!2334612 c!371056) b!2334610))

(assert (= (and b!2334612 (not c!371056)) b!2334617))

(assert (= (and b!2334617 c!371053) b!2334613))

(assert (= (and b!2334617 (not c!371053)) b!2334618))

(assert (= (and b!2334618 c!371052) b!2334615))

(assert (= (and b!2334618 (not c!371052)) b!2334616))

(assert (= (and b!2334616 c!371055) b!2334614))

(assert (= (and b!2334616 (not c!371055)) b!2334611))

(assert (= (or b!2334614 b!2334611) bm!139820))

(assert (= (or b!2334615 bm!139820) bm!139822))

(assert (= (or b!2334613 bm!139822) bm!139823))

(assert (= (or b!2334613 b!2334614) bm!139821))

(declare-fun m!2762211 () Bool)

(assert (=> bm!139821 m!2762211))

(declare-fun m!2762213 () Bool)

(assert (=> b!2334616 m!2762213))

(declare-fun m!2762215 () Bool)

(assert (=> d!690352 m!2762215))

(assert (=> d!690352 m!2762165))

(declare-fun m!2762217 () Bool)

(assert (=> bm!139823 m!2762217))

(assert (=> b!2334448 d!690352))

(declare-fun b!2334631 () Bool)

(declare-fun e!1495124 () Bool)

(declare-fun tp!740226 () Bool)

(assert (=> b!2334631 (= e!1495124 tp!740226)))

(declare-fun b!2334629 () Bool)

(assert (=> b!2334629 (= e!1495124 tp_is_empty!11009)))

(declare-fun b!2334630 () Bool)

(declare-fun tp!740224 () Bool)

(declare-fun tp!740225 () Bool)

(assert (=> b!2334630 (= e!1495124 (and tp!740224 tp!740225))))

(declare-fun b!2334632 () Bool)

(declare-fun tp!740223 () Bool)

(declare-fun tp!740222 () Bool)

(assert (=> b!2334632 (= e!1495124 (and tp!740223 tp!740222))))

(assert (=> b!2334452 (= tp!740209 e!1495124)))

(assert (= (and b!2334452 ((_ is ElementMatch!6849) (regOne!14211 r!26197))) b!2334629))

(assert (= (and b!2334452 ((_ is Concat!11471) (regOne!14211 r!26197))) b!2334630))

(assert (= (and b!2334452 ((_ is Star!6849) (regOne!14211 r!26197))) b!2334631))

(assert (= (and b!2334452 ((_ is Union!6849) (regOne!14211 r!26197))) b!2334632))

(declare-fun b!2334635 () Bool)

(declare-fun e!1495125 () Bool)

(declare-fun tp!740231 () Bool)

(assert (=> b!2334635 (= e!1495125 tp!740231)))

(declare-fun b!2334633 () Bool)

(assert (=> b!2334633 (= e!1495125 tp_is_empty!11009)))

(declare-fun b!2334634 () Bool)

(declare-fun tp!740229 () Bool)

(declare-fun tp!740230 () Bool)

(assert (=> b!2334634 (= e!1495125 (and tp!740229 tp!740230))))

(declare-fun b!2334636 () Bool)

(declare-fun tp!740228 () Bool)

(declare-fun tp!740227 () Bool)

(assert (=> b!2334636 (= e!1495125 (and tp!740228 tp!740227))))

(assert (=> b!2334452 (= tp!740207 e!1495125)))

(assert (= (and b!2334452 ((_ is ElementMatch!6849) (regTwo!14211 r!26197))) b!2334633))

(assert (= (and b!2334452 ((_ is Concat!11471) (regTwo!14211 r!26197))) b!2334634))

(assert (= (and b!2334452 ((_ is Star!6849) (regTwo!14211 r!26197))) b!2334635))

(assert (= (and b!2334452 ((_ is Union!6849) (regTwo!14211 r!26197))) b!2334636))

(declare-fun b!2334639 () Bool)

(declare-fun e!1495126 () Bool)

(declare-fun tp!740236 () Bool)

(assert (=> b!2334639 (= e!1495126 tp!740236)))

(declare-fun b!2334637 () Bool)

(assert (=> b!2334637 (= e!1495126 tp_is_empty!11009)))

(declare-fun b!2334638 () Bool)

(declare-fun tp!740234 () Bool)

(declare-fun tp!740235 () Bool)

(assert (=> b!2334638 (= e!1495126 (and tp!740234 tp!740235))))

(declare-fun b!2334640 () Bool)

(declare-fun tp!740233 () Bool)

(declare-fun tp!740232 () Bool)

(assert (=> b!2334640 (= e!1495126 (and tp!740233 tp!740232))))

(assert (=> b!2334453 (= tp!740210 e!1495126)))

(assert (= (and b!2334453 ((_ is ElementMatch!6849) (reg!7178 r!26197))) b!2334637))

(assert (= (and b!2334453 ((_ is Concat!11471) (reg!7178 r!26197))) b!2334638))

(assert (= (and b!2334453 ((_ is Star!6849) (reg!7178 r!26197))) b!2334639))

(assert (= (and b!2334453 ((_ is Union!6849) (reg!7178 r!26197))) b!2334640))

(declare-fun b!2334643 () Bool)

(declare-fun e!1495127 () Bool)

(declare-fun tp!740241 () Bool)

(assert (=> b!2334643 (= e!1495127 tp!740241)))

(declare-fun b!2334641 () Bool)

(assert (=> b!2334641 (= e!1495127 tp_is_empty!11009)))

(declare-fun b!2334642 () Bool)

(declare-fun tp!740239 () Bool)

(declare-fun tp!740240 () Bool)

(assert (=> b!2334642 (= e!1495127 (and tp!740239 tp!740240))))

(declare-fun b!2334644 () Bool)

(declare-fun tp!740238 () Bool)

(declare-fun tp!740237 () Bool)

(assert (=> b!2334644 (= e!1495127 (and tp!740238 tp!740237))))

(assert (=> b!2334447 (= tp!740211 e!1495127)))

(assert (= (and b!2334447 ((_ is ElementMatch!6849) (regOne!14210 r!26197))) b!2334641))

(assert (= (and b!2334447 ((_ is Concat!11471) (regOne!14210 r!26197))) b!2334642))

(assert (= (and b!2334447 ((_ is Star!6849) (regOne!14210 r!26197))) b!2334643))

(assert (= (and b!2334447 ((_ is Union!6849) (regOne!14210 r!26197))) b!2334644))

(declare-fun b!2334647 () Bool)

(declare-fun e!1495128 () Bool)

(declare-fun tp!740246 () Bool)

(assert (=> b!2334647 (= e!1495128 tp!740246)))

(declare-fun b!2334645 () Bool)

(assert (=> b!2334645 (= e!1495128 tp_is_empty!11009)))

(declare-fun b!2334646 () Bool)

(declare-fun tp!740244 () Bool)

(declare-fun tp!740245 () Bool)

(assert (=> b!2334646 (= e!1495128 (and tp!740244 tp!740245))))

(declare-fun b!2334648 () Bool)

(declare-fun tp!740243 () Bool)

(declare-fun tp!740242 () Bool)

(assert (=> b!2334648 (= e!1495128 (and tp!740243 tp!740242))))

(assert (=> b!2334447 (= tp!740208 e!1495128)))

(assert (= (and b!2334447 ((_ is ElementMatch!6849) (regTwo!14210 r!26197))) b!2334645))

(assert (= (and b!2334447 ((_ is Concat!11471) (regTwo!14210 r!26197))) b!2334646))

(assert (= (and b!2334447 ((_ is Star!6849) (regTwo!14210 r!26197))) b!2334647))

(assert (= (and b!2334447 ((_ is Union!6849) (regTwo!14210 r!26197))) b!2334648))

(check-sat (not b!2334640) (not b!2334635) (not b!2334638) (not b!2334644) (not d!690350) (not d!690342) (not bm!139823) (not d!690352) (not b!2334646) (not b!2334616) (not bm!139778) (not b!2334630) (not b!2334631) (not bm!139805) (not b!2334634) (not bm!139821) (not b!2334648) (not b!2334636) (not b!2334481) (not b!2334642) (not bm!139806) (not b!2334643) (not bm!139808) tp_is_empty!11009 (not b!2334509) (not b!2334632) (not b!2334647) (not d!690344) (not b!2334639) (not bm!139776))
(check-sat)
(get-model)

(declare-fun d!690360 () Bool)

(assert (=> d!690360 (= (nullable!1928 (regOne!14210 r!26197)) (nullableFct!484 (regOne!14210 r!26197)))))

(declare-fun bs!459895 () Bool)

(assert (= bs!459895 d!690360))

(declare-fun m!2762227 () Bool)

(assert (=> bs!459895 m!2762227))

(assert (=> b!2334616 d!690360))

(declare-fun b!2334697 () Bool)

(declare-fun e!1495146 () List!27934)

(assert (=> b!2334697 (= e!1495146 call!139810)))

(declare-fun lt!862406 () List!27934)

(declare-fun e!1495145 () Bool)

(declare-fun b!2334700 () Bool)

(assert (=> b!2334700 (= e!1495145 (or (not (= call!139810 Nil!27836)) (= lt!862406 call!139811)))))

(declare-fun b!2334699 () Bool)

(declare-fun res!996023 () Bool)

(assert (=> b!2334699 (=> (not res!996023) (not e!1495145))))

(declare-fun size!22020 (List!27934) Int)

(assert (=> b!2334699 (= res!996023 (= (size!22020 lt!862406) (+ (size!22020 call!139811) (size!22020 call!139810))))))

(declare-fun b!2334698 () Bool)

(assert (=> b!2334698 (= e!1495146 (Cons!27836 (h!33237 call!139811) (++!6859 (t!207793 call!139811) call!139810)))))

(declare-fun d!690362 () Bool)

(assert (=> d!690362 e!1495145))

(declare-fun res!996022 () Bool)

(assert (=> d!690362 (=> (not res!996022) (not e!1495145))))

(assert (=> d!690362 (= res!996022 (= (content!3768 lt!862406) ((_ map or) (content!3768 call!139811) (content!3768 call!139810))))))

(assert (=> d!690362 (= lt!862406 e!1495146)))

(declare-fun c!371064 () Bool)

(assert (=> d!690362 (= c!371064 ((_ is Nil!27836) call!139811))))

(assert (=> d!690362 (= (++!6859 call!139811 call!139810) lt!862406)))

(assert (= (and d!690362 c!371064) b!2334697))

(assert (= (and d!690362 (not c!371064)) b!2334698))

(assert (= (and d!690362 res!996022) b!2334699))

(assert (= (and b!2334699 res!996023) b!2334700))

(declare-fun m!2762229 () Bool)

(assert (=> b!2334699 m!2762229))

(declare-fun m!2762231 () Bool)

(assert (=> b!2334699 m!2762231))

(declare-fun m!2762233 () Bool)

(assert (=> b!2334699 m!2762233))

(declare-fun m!2762235 () Bool)

(assert (=> b!2334698 m!2762235))

(declare-fun m!2762237 () Bool)

(assert (=> d!690362 m!2762237))

(declare-fun m!2762239 () Bool)

(assert (=> d!690362 m!2762239))

(declare-fun m!2762241 () Bool)

(assert (=> d!690362 m!2762241))

(assert (=> bm!139808 d!690362))

(declare-fun d!690364 () Bool)

(declare-fun lt!862407 () Bool)

(assert (=> d!690364 (= lt!862407 (select (content!3768 (t!207793 (usedCharacters!434 r!26197))) c!13498))))

(declare-fun e!1495147 () Bool)

(assert (=> d!690364 (= lt!862407 e!1495147)))

(declare-fun res!996025 () Bool)

(assert (=> d!690364 (=> (not res!996025) (not e!1495147))))

(assert (=> d!690364 (= res!996025 ((_ is Cons!27836) (t!207793 (usedCharacters!434 r!26197))))))

(assert (=> d!690364 (= (contains!4815 (t!207793 (usedCharacters!434 r!26197)) c!13498) lt!862407)))

(declare-fun b!2334701 () Bool)

(declare-fun e!1495148 () Bool)

(assert (=> b!2334701 (= e!1495147 e!1495148)))

(declare-fun res!996024 () Bool)

(assert (=> b!2334701 (=> res!996024 e!1495148)))

(assert (=> b!2334701 (= res!996024 (= (h!33237 (t!207793 (usedCharacters!434 r!26197))) c!13498))))

(declare-fun b!2334702 () Bool)

(assert (=> b!2334702 (= e!1495148 (contains!4815 (t!207793 (t!207793 (usedCharacters!434 r!26197))) c!13498))))

(assert (= (and d!690364 res!996025) b!2334701))

(assert (= (and b!2334701 (not res!996024)) b!2334702))

(declare-fun m!2762243 () Bool)

(assert (=> d!690364 m!2762243))

(declare-fun m!2762245 () Bool)

(assert (=> d!690364 m!2762245))

(declare-fun m!2762247 () Bool)

(assert (=> b!2334702 m!2762247))

(assert (=> b!2334509 d!690364))

(declare-fun b!2334703 () Bool)

(declare-fun c!371068 () Bool)

(assert (=> b!2334703 (= c!371068 ((_ is Star!6849) (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun e!1495149 () List!27934)

(declare-fun e!1495150 () List!27934)

(assert (=> b!2334703 (= e!1495149 e!1495150)))

(declare-fun bm!139836 () Bool)

(declare-fun c!371066 () Bool)

(declare-fun call!139841 () List!27934)

(assert (=> bm!139836 (= call!139841 (usedCharacters!434 (ite c!371066 (regTwo!14211 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (regTwo!14210 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))))

(declare-fun b!2334704 () Bool)

(declare-fun e!1495151 () List!27934)

(assert (=> b!2334704 (= e!1495151 Nil!27836)))

(declare-fun b!2334705 () Bool)

(declare-fun e!1495152 () List!27934)

(declare-fun call!139843 () List!27934)

(assert (=> b!2334705 (= e!1495152 call!139843)))

(declare-fun bm!139838 () Bool)

(declare-fun call!139842 () List!27934)

(declare-fun call!139844 () List!27934)

(assert (=> bm!139838 (= call!139842 call!139844)))

(declare-fun bm!139837 () Bool)

(assert (=> bm!139837 (= call!139844 (usedCharacters!434 (ite c!371068 (reg!7178 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (ite c!371066 (regOne!14211 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (regOne!14210 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197))))))))))

(declare-fun c!371065 () Bool)

(declare-fun d!690366 () Bool)

(assert (=> d!690366 (= c!371065 (or ((_ is EmptyExpr!6849) (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) ((_ is EmptyLang!6849) (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197))))))))

(assert (=> d!690366 (= (usedCharacters!434 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) e!1495151)))

(declare-fun bm!139839 () Bool)

(assert (=> bm!139839 (= call!139843 (++!6859 call!139842 call!139841))))

(declare-fun b!2334706 () Bool)

(assert (=> b!2334706 (= e!1495151 e!1495149)))

(declare-fun c!371067 () Bool)

(assert (=> b!2334706 (= c!371067 ((_ is ElementMatch!6849) (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun b!2334707 () Bool)

(assert (=> b!2334707 (= e!1495149 (Cons!27836 (c!370995 (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))) Nil!27836))))

(declare-fun b!2334708 () Bool)

(assert (=> b!2334708 (= e!1495152 call!139843)))

(declare-fun b!2334709 () Bool)

(assert (=> b!2334709 (= e!1495150 e!1495152)))

(assert (=> b!2334709 (= c!371066 ((_ is Union!6849) (ite c!371029 (reg!7178 r!26197) (ite c!371027 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun b!2334710 () Bool)

(assert (=> b!2334710 (= e!1495150 call!139844)))

(assert (= (and d!690366 c!371065) b!2334704))

(assert (= (and d!690366 (not c!371065)) b!2334706))

(assert (= (and b!2334706 c!371067) b!2334707))

(assert (= (and b!2334706 (not c!371067)) b!2334703))

(assert (= (and b!2334703 c!371068) b!2334710))

(assert (= (and b!2334703 (not c!371068)) b!2334709))

(assert (= (and b!2334709 c!371066) b!2334705))

(assert (= (and b!2334709 (not c!371066)) b!2334708))

(assert (= (or b!2334705 b!2334708) bm!139836))

(assert (= (or b!2334705 b!2334708) bm!139838))

(assert (= (or b!2334705 b!2334708) bm!139839))

(assert (= (or b!2334710 bm!139838) bm!139837))

(declare-fun m!2762249 () Bool)

(assert (=> bm!139836 m!2762249))

(declare-fun m!2762251 () Bool)

(assert (=> bm!139837 m!2762251))

(declare-fun m!2762253 () Bool)

(assert (=> bm!139839 m!2762253))

(assert (=> bm!139806 d!690366))

(declare-fun d!690368 () Bool)

(assert (=> d!690368 (= (nullable!1928 (reg!7178 r!26197)) (nullableFct!484 (reg!7178 r!26197)))))

(declare-fun bs!459896 () Bool)

(assert (= bs!459896 d!690368))

(declare-fun m!2762255 () Bool)

(assert (=> bs!459896 m!2762255))

(assert (=> b!2334481 d!690368))

(declare-fun bm!139840 () Bool)

(declare-fun c!371069 () Bool)

(declare-fun call!139846 () Bool)

(declare-fun c!371070 () Bool)

(assert (=> bm!139840 (= call!139846 (validRegex!2594 (ite c!371069 (reg!7178 lt!862402) (ite c!371070 (regOne!14211 lt!862402) (regOne!14210 lt!862402)))))))

(declare-fun bm!139841 () Bool)

(declare-fun call!139845 () Bool)

(assert (=> bm!139841 (= call!139845 call!139846)))

(declare-fun b!2334711 () Bool)

(declare-fun res!996027 () Bool)

(declare-fun e!1495155 () Bool)

(assert (=> b!2334711 (=> (not res!996027) (not e!1495155))))

(assert (=> b!2334711 (= res!996027 call!139845)))

(declare-fun e!1495157 () Bool)

(assert (=> b!2334711 (= e!1495157 e!1495155)))

(declare-fun b!2334712 () Bool)

(declare-fun e!1495159 () Bool)

(declare-fun e!1495154 () Bool)

(assert (=> b!2334712 (= e!1495159 e!1495154)))

(assert (=> b!2334712 (= c!371069 ((_ is Star!6849) lt!862402))))

(declare-fun b!2334713 () Bool)

(declare-fun e!1495156 () Bool)

(assert (=> b!2334713 (= e!1495154 e!1495156)))

(declare-fun res!996030 () Bool)

(assert (=> b!2334713 (= res!996030 (not (nullable!1928 (reg!7178 lt!862402))))))

(assert (=> b!2334713 (=> (not res!996030) (not e!1495156))))

(declare-fun d!690370 () Bool)

(declare-fun res!996026 () Bool)

(assert (=> d!690370 (=> res!996026 e!1495159)))

(assert (=> d!690370 (= res!996026 ((_ is ElementMatch!6849) lt!862402))))

(assert (=> d!690370 (= (validRegex!2594 lt!862402) e!1495159)))

(declare-fun b!2334714 () Bool)

(declare-fun res!996028 () Bool)

(declare-fun e!1495158 () Bool)

(assert (=> b!2334714 (=> res!996028 e!1495158)))

(assert (=> b!2334714 (= res!996028 (not ((_ is Concat!11471) lt!862402)))))

(assert (=> b!2334714 (= e!1495157 e!1495158)))

(declare-fun b!2334715 () Bool)

(declare-fun e!1495153 () Bool)

(assert (=> b!2334715 (= e!1495158 e!1495153)))

(declare-fun res!996029 () Bool)

(assert (=> b!2334715 (=> (not res!996029) (not e!1495153))))

(assert (=> b!2334715 (= res!996029 call!139845)))

(declare-fun b!2334716 () Bool)

(assert (=> b!2334716 (= e!1495156 call!139846)))

(declare-fun b!2334717 () Bool)

(declare-fun call!139847 () Bool)

(assert (=> b!2334717 (= e!1495153 call!139847)))

(declare-fun b!2334718 () Bool)

(assert (=> b!2334718 (= e!1495155 call!139847)))

(declare-fun bm!139842 () Bool)

(assert (=> bm!139842 (= call!139847 (validRegex!2594 (ite c!371070 (regTwo!14211 lt!862402) (regTwo!14210 lt!862402))))))

(declare-fun b!2334719 () Bool)

(assert (=> b!2334719 (= e!1495154 e!1495157)))

(assert (=> b!2334719 (= c!371070 ((_ is Union!6849) lt!862402))))

(assert (= (and d!690370 (not res!996026)) b!2334712))

(assert (= (and b!2334712 c!371069) b!2334713))

(assert (= (and b!2334712 (not c!371069)) b!2334719))

(assert (= (and b!2334713 res!996030) b!2334716))

(assert (= (and b!2334719 c!371070) b!2334711))

(assert (= (and b!2334719 (not c!371070)) b!2334714))

(assert (= (and b!2334711 res!996027) b!2334718))

(assert (= (and b!2334714 (not res!996028)) b!2334715))

(assert (= (and b!2334715 res!996029) b!2334717))

(assert (= (or b!2334718 b!2334717) bm!139842))

(assert (= (or b!2334711 b!2334715) bm!139841))

(assert (= (or b!2334716 bm!139841) bm!139840))

(declare-fun m!2762257 () Bool)

(assert (=> bm!139840 m!2762257))

(declare-fun m!2762259 () Bool)

(assert (=> b!2334713 m!2762259))

(declare-fun m!2762261 () Bool)

(assert (=> bm!139842 m!2762261))

(assert (=> d!690352 d!690370))

(assert (=> d!690352 d!690336))

(declare-fun b!2334720 () Bool)

(declare-fun e!1495161 () Regex!6849)

(assert (=> b!2334720 (= e!1495161 EmptyLang!6849)))

(declare-fun bm!139843 () Bool)

(declare-fun call!139848 () Regex!6849)

(declare-fun call!139851 () Regex!6849)

(assert (=> bm!139843 (= call!139848 call!139851)))

(declare-fun b!2334721 () Bool)

(declare-fun e!1495160 () Regex!6849)

(assert (=> b!2334721 (= e!1495160 (ite (= c!13498 (c!370995 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))) EmptyExpr!6849 EmptyLang!6849))))

(declare-fun b!2334722 () Bool)

(declare-fun e!1495164 () Regex!6849)

(assert (=> b!2334722 (= e!1495164 (Union!6849 (Concat!11471 call!139848 (regTwo!14210 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))) EmptyLang!6849))))

(declare-fun bm!139844 () Bool)

(declare-fun call!139849 () Regex!6849)

(declare-fun c!371072 () Bool)

(assert (=> bm!139844 (= call!139849 (derivativeStep!1588 (ite c!371072 (regOne!14211 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))) (regTwo!14210 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))) c!13498))))

(declare-fun b!2334724 () Bool)

(declare-fun e!1495163 () Regex!6849)

(declare-fun call!139850 () Regex!6849)

(assert (=> b!2334724 (= e!1495163 (Union!6849 call!139849 call!139850))))

(declare-fun b!2334725 () Bool)

(assert (=> b!2334725 (= e!1495164 (Union!6849 (Concat!11471 call!139848 (regTwo!14210 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))) call!139849))))

(declare-fun e!1495162 () Regex!6849)

(declare-fun b!2334726 () Bool)

(assert (=> b!2334726 (= e!1495162 (Concat!11471 call!139851 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun bm!139845 () Bool)

(assert (=> bm!139845 (= call!139851 call!139850)))

(declare-fun b!2334727 () Bool)

(declare-fun c!371074 () Bool)

(assert (=> b!2334727 (= c!371074 (nullable!1928 (regOne!14210 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))))))

(assert (=> b!2334727 (= e!1495162 e!1495164)))

(declare-fun b!2334728 () Bool)

(assert (=> b!2334728 (= c!371072 ((_ is Union!6849) (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))))))

(assert (=> b!2334728 (= e!1495160 e!1495163)))

(declare-fun b!2334723 () Bool)

(assert (=> b!2334723 (= e!1495161 e!1495160)))

(declare-fun c!371075 () Bool)

(assert (=> b!2334723 (= c!371075 ((_ is ElementMatch!6849) (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun d!690372 () Bool)

(declare-fun lt!862408 () Regex!6849)

(assert (=> d!690372 (validRegex!2594 lt!862408)))

(assert (=> d!690372 (= lt!862408 e!1495161)))

(declare-fun c!371073 () Bool)

(assert (=> d!690372 (= c!371073 (or ((_ is EmptyExpr!6849) (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))) ((_ is EmptyLang!6849) (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))))))

(assert (=> d!690372 (validRegex!2594 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)))))

(assert (=> d!690372 (= (derivativeStep!1588 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197)) c!13498) lt!862408)))

(declare-fun bm!139846 () Bool)

(declare-fun c!371071 () Bool)

(assert (=> bm!139846 (= call!139850 (derivativeStep!1588 (ite c!371072 (regTwo!14211 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))) (ite c!371071 (reg!7178 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))) (regOne!14210 (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))))) c!13498))))

(declare-fun b!2334729 () Bool)

(assert (=> b!2334729 (= e!1495163 e!1495162)))

(assert (=> b!2334729 (= c!371071 ((_ is Star!6849) (ite c!371053 (regOne!14211 r!26197) (regTwo!14210 r!26197))))))

(assert (= (and d!690372 c!371073) b!2334720))

(assert (= (and d!690372 (not c!371073)) b!2334723))

(assert (= (and b!2334723 c!371075) b!2334721))

(assert (= (and b!2334723 (not c!371075)) b!2334728))

(assert (= (and b!2334728 c!371072) b!2334724))

(assert (= (and b!2334728 (not c!371072)) b!2334729))

(assert (= (and b!2334729 c!371071) b!2334726))

(assert (= (and b!2334729 (not c!371071)) b!2334727))

(assert (= (and b!2334727 c!371074) b!2334725))

(assert (= (and b!2334727 (not c!371074)) b!2334722))

(assert (= (or b!2334725 b!2334722) bm!139843))

(assert (= (or b!2334726 bm!139843) bm!139845))

(assert (= (or b!2334724 bm!139845) bm!139846))

(assert (= (or b!2334724 b!2334725) bm!139844))

(declare-fun m!2762263 () Bool)

(assert (=> bm!139844 m!2762263))

(declare-fun m!2762265 () Bool)

(assert (=> b!2334727 m!2762265))

(declare-fun m!2762267 () Bool)

(assert (=> d!690372 m!2762267))

(declare-fun m!2762269 () Bool)

(assert (=> d!690372 m!2762269))

(declare-fun m!2762271 () Bool)

(assert (=> bm!139846 m!2762271))

(assert (=> bm!139821 d!690372))

(declare-fun b!2334744 () Bool)

(declare-fun e!1495180 () Bool)

(declare-fun call!139857 () Bool)

(assert (=> b!2334744 (= e!1495180 call!139857)))

(declare-fun b!2334745 () Bool)

(declare-fun e!1495179 () Bool)

(declare-fun e!1495177 () Bool)

(assert (=> b!2334745 (= e!1495179 e!1495177)))

(declare-fun c!371078 () Bool)

(assert (=> b!2334745 (= c!371078 ((_ is Union!6849) r!26197))))

(declare-fun b!2334746 () Bool)

(declare-fun e!1495181 () Bool)

(assert (=> b!2334746 (= e!1495181 call!139857)))

(declare-fun b!2334747 () Bool)

(assert (=> b!2334747 (= e!1495177 e!1495180)))

(declare-fun res!996044 () Bool)

(declare-fun call!139856 () Bool)

(assert (=> b!2334747 (= res!996044 call!139856)))

(assert (=> b!2334747 (=> res!996044 e!1495180)))

(declare-fun bm!139851 () Bool)

(assert (=> bm!139851 (= call!139857 (nullable!1928 (ite c!371078 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334748 () Bool)

(assert (=> b!2334748 (= e!1495177 e!1495181)))

(declare-fun res!996042 () Bool)

(assert (=> b!2334748 (= res!996042 call!139856)))

(assert (=> b!2334748 (=> (not res!996042) (not e!1495181))))

(declare-fun bm!139852 () Bool)

(assert (=> bm!139852 (= call!139856 (nullable!1928 (ite c!371078 (regOne!14211 r!26197) (regOne!14210 r!26197))))))

(declare-fun b!2334749 () Bool)

(declare-fun e!1495178 () Bool)

(assert (=> b!2334749 (= e!1495178 e!1495179)))

(declare-fun res!996045 () Bool)

(assert (=> b!2334749 (=> res!996045 e!1495179)))

(assert (=> b!2334749 (= res!996045 ((_ is Star!6849) r!26197))))

(declare-fun b!2334750 () Bool)

(declare-fun e!1495182 () Bool)

(assert (=> b!2334750 (= e!1495182 e!1495178)))

(declare-fun res!996041 () Bool)

(assert (=> b!2334750 (=> (not res!996041) (not e!1495178))))

(assert (=> b!2334750 (= res!996041 (and (not ((_ is EmptyLang!6849) r!26197)) (not ((_ is ElementMatch!6849) r!26197))))))

(declare-fun d!690374 () Bool)

(declare-fun res!996043 () Bool)

(assert (=> d!690374 (=> res!996043 e!1495182)))

(assert (=> d!690374 (= res!996043 ((_ is EmptyExpr!6849) r!26197))))

(assert (=> d!690374 (= (nullableFct!484 r!26197) e!1495182)))

(assert (= (and d!690374 (not res!996043)) b!2334750))

(assert (= (and b!2334750 res!996041) b!2334749))

(assert (= (and b!2334749 (not res!996045)) b!2334745))

(assert (= (and b!2334745 c!371078) b!2334747))

(assert (= (and b!2334745 (not c!371078)) b!2334748))

(assert (= (and b!2334747 (not res!996044)) b!2334744))

(assert (= (and b!2334748 res!996042) b!2334746))

(assert (= (or b!2334747 b!2334748) bm!139852))

(assert (= (or b!2334744 b!2334746) bm!139851))

(declare-fun m!2762273 () Bool)

(assert (=> bm!139851 m!2762273))

(declare-fun m!2762275 () Bool)

(assert (=> bm!139852 m!2762275))

(assert (=> d!690342 d!690374))

(declare-fun b!2334751 () Bool)

(declare-fun c!371082 () Bool)

(assert (=> b!2334751 (= c!371082 ((_ is Star!6849) (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun e!1495183 () List!27934)

(declare-fun e!1495184 () List!27934)

(assert (=> b!2334751 (= e!1495183 e!1495184)))

(declare-fun call!139858 () List!27934)

(declare-fun c!371080 () Bool)

(declare-fun bm!139853 () Bool)

(assert (=> bm!139853 (= call!139858 (usedCharacters!434 (ite c!371080 (regTwo!14211 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (regTwo!14210 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))))

(declare-fun b!2334752 () Bool)

(declare-fun e!1495185 () List!27934)

(assert (=> b!2334752 (= e!1495185 Nil!27836)))

(declare-fun b!2334753 () Bool)

(declare-fun e!1495186 () List!27934)

(declare-fun call!139860 () List!27934)

(assert (=> b!2334753 (= e!1495186 call!139860)))

(declare-fun bm!139855 () Bool)

(declare-fun call!139859 () List!27934)

(declare-fun call!139861 () List!27934)

(assert (=> bm!139855 (= call!139859 call!139861)))

(declare-fun bm!139854 () Bool)

(assert (=> bm!139854 (= call!139861 (usedCharacters!434 (ite c!371082 (reg!7178 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (ite c!371080 (regOne!14211 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (regOne!14210 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197)))))))))

(declare-fun d!690376 () Bool)

(declare-fun c!371079 () Bool)

(assert (=> d!690376 (= c!371079 (or ((_ is EmptyExpr!6849) (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) ((_ is EmptyLang!6849) (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197)))))))

(assert (=> d!690376 (= (usedCharacters!434 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) e!1495185)))

(declare-fun bm!139856 () Bool)

(assert (=> bm!139856 (= call!139860 (++!6859 call!139859 call!139858))))

(declare-fun b!2334754 () Bool)

(assert (=> b!2334754 (= e!1495185 e!1495183)))

(declare-fun c!371081 () Bool)

(assert (=> b!2334754 (= c!371081 ((_ is ElementMatch!6849) (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334755 () Bool)

(assert (=> b!2334755 (= e!1495183 (Cons!27836 (c!370995 (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) Nil!27836))))

(declare-fun b!2334756 () Bool)

(assert (=> b!2334756 (= e!1495186 call!139860)))

(declare-fun b!2334757 () Bool)

(assert (=> b!2334757 (= e!1495184 e!1495186)))

(assert (=> b!2334757 (= c!371080 ((_ is Union!6849) (ite c!371027 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334758 () Bool)

(assert (=> b!2334758 (= e!1495184 call!139861)))

(assert (= (and d!690376 c!371079) b!2334752))

(assert (= (and d!690376 (not c!371079)) b!2334754))

(assert (= (and b!2334754 c!371081) b!2334755))

(assert (= (and b!2334754 (not c!371081)) b!2334751))

(assert (= (and b!2334751 c!371082) b!2334758))

(assert (= (and b!2334751 (not c!371082)) b!2334757))

(assert (= (and b!2334757 c!371080) b!2334753))

(assert (= (and b!2334757 (not c!371080)) b!2334756))

(assert (= (or b!2334753 b!2334756) bm!139853))

(assert (= (or b!2334753 b!2334756) bm!139855))

(assert (= (or b!2334753 b!2334756) bm!139856))

(assert (= (or b!2334758 bm!139855) bm!139854))

(declare-fun m!2762277 () Bool)

(assert (=> bm!139853 m!2762277))

(declare-fun m!2762279 () Bool)

(assert (=> bm!139854 m!2762279))

(declare-fun m!2762281 () Bool)

(assert (=> bm!139856 m!2762281))

(assert (=> bm!139805 d!690376))

(declare-fun b!2334759 () Bool)

(declare-fun e!1495188 () Regex!6849)

(assert (=> b!2334759 (= e!1495188 EmptyLang!6849)))

(declare-fun bm!139857 () Bool)

(declare-fun call!139862 () Regex!6849)

(declare-fun call!139865 () Regex!6849)

(assert (=> bm!139857 (= call!139862 call!139865)))

(declare-fun e!1495187 () Regex!6849)

(declare-fun b!2334760 () Bool)

(assert (=> b!2334760 (= e!1495187 (ite (= c!13498 (c!370995 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))) EmptyExpr!6849 EmptyLang!6849))))

(declare-fun e!1495191 () Regex!6849)

(declare-fun b!2334761 () Bool)

(assert (=> b!2334761 (= e!1495191 (Union!6849 (Concat!11471 call!139862 (regTwo!14210 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))) EmptyLang!6849))))

(declare-fun call!139863 () Regex!6849)

(declare-fun bm!139858 () Bool)

(declare-fun c!371084 () Bool)

(assert (=> bm!139858 (= call!139863 (derivativeStep!1588 (ite c!371084 (regOne!14211 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))) (regTwo!14210 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))) c!13498))))

(declare-fun b!2334763 () Bool)

(declare-fun e!1495190 () Regex!6849)

(declare-fun call!139864 () Regex!6849)

(assert (=> b!2334763 (= e!1495190 (Union!6849 call!139863 call!139864))))

(declare-fun b!2334764 () Bool)

(assert (=> b!2334764 (= e!1495191 (Union!6849 (Concat!11471 call!139862 (regTwo!14210 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))) call!139863))))

(declare-fun b!2334765 () Bool)

(declare-fun e!1495189 () Regex!6849)

(assert (=> b!2334765 (= e!1495189 (Concat!11471 call!139865 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))))))

(declare-fun bm!139859 () Bool)

(assert (=> bm!139859 (= call!139865 call!139864)))

(declare-fun c!371086 () Bool)

(declare-fun b!2334766 () Bool)

(assert (=> b!2334766 (= c!371086 (nullable!1928 (regOne!14210 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))))))

(assert (=> b!2334766 (= e!1495189 e!1495191)))

(declare-fun b!2334767 () Bool)

(assert (=> b!2334767 (= c!371084 ((_ is Union!6849) (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))))))

(assert (=> b!2334767 (= e!1495187 e!1495190)))

(declare-fun b!2334762 () Bool)

(assert (=> b!2334762 (= e!1495188 e!1495187)))

(declare-fun c!371087 () Bool)

(assert (=> b!2334762 (= c!371087 ((_ is ElementMatch!6849) (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))))))

(declare-fun d!690378 () Bool)

(declare-fun lt!862409 () Regex!6849)

(assert (=> d!690378 (validRegex!2594 lt!862409)))

(assert (=> d!690378 (= lt!862409 e!1495188)))

(declare-fun c!371085 () Bool)

(assert (=> d!690378 (= c!371085 (or ((_ is EmptyExpr!6849) (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))) ((_ is EmptyLang!6849) (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))))))

(assert (=> d!690378 (validRegex!2594 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))))))

(assert (=> d!690378 (= (derivativeStep!1588 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197))) c!13498) lt!862409)))

(declare-fun c!371083 () Bool)

(declare-fun bm!139860 () Bool)

(assert (=> bm!139860 (= call!139864 (derivativeStep!1588 (ite c!371084 (regTwo!14211 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))) (ite c!371083 (reg!7178 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))) (regOne!14210 (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))))) c!13498))))

(declare-fun b!2334768 () Bool)

(assert (=> b!2334768 (= e!1495190 e!1495189)))

(assert (=> b!2334768 (= c!371083 ((_ is Star!6849) (ite c!371053 (regTwo!14211 r!26197) (ite c!371052 (reg!7178 r!26197) (regOne!14210 r!26197)))))))

(assert (= (and d!690378 c!371085) b!2334759))

(assert (= (and d!690378 (not c!371085)) b!2334762))

(assert (= (and b!2334762 c!371087) b!2334760))

(assert (= (and b!2334762 (not c!371087)) b!2334767))

(assert (= (and b!2334767 c!371084) b!2334763))

(assert (= (and b!2334767 (not c!371084)) b!2334768))

(assert (= (and b!2334768 c!371083) b!2334765))

(assert (= (and b!2334768 (not c!371083)) b!2334766))

(assert (= (and b!2334766 c!371086) b!2334764))

(assert (= (and b!2334766 (not c!371086)) b!2334761))

(assert (= (or b!2334764 b!2334761) bm!139857))

(assert (= (or b!2334765 bm!139857) bm!139859))

(assert (= (or b!2334763 bm!139859) bm!139860))

(assert (= (or b!2334763 b!2334764) bm!139858))

(declare-fun m!2762283 () Bool)

(assert (=> bm!139858 m!2762283))

(declare-fun m!2762285 () Bool)

(assert (=> b!2334766 m!2762285))

(declare-fun m!2762287 () Bool)

(assert (=> d!690378 m!2762287))

(declare-fun m!2762289 () Bool)

(assert (=> d!690378 m!2762289))

(declare-fun m!2762291 () Bool)

(assert (=> bm!139860 m!2762291))

(assert (=> bm!139823 d!690378))

(declare-fun bm!139861 () Bool)

(declare-fun c!371089 () Bool)

(declare-fun call!139867 () Bool)

(declare-fun c!371088 () Bool)

(assert (=> bm!139861 (= call!139867 (validRegex!2594 (ite c!371088 (reg!7178 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (ite c!371089 (regOne!14211 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (regOne!14210 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197))))))))))

(declare-fun bm!139862 () Bool)

(declare-fun call!139866 () Bool)

(assert (=> bm!139862 (= call!139866 call!139867)))

(declare-fun b!2334769 () Bool)

(declare-fun res!996047 () Bool)

(declare-fun e!1495194 () Bool)

(assert (=> b!2334769 (=> (not res!996047) (not e!1495194))))

(assert (=> b!2334769 (= res!996047 call!139866)))

(declare-fun e!1495196 () Bool)

(assert (=> b!2334769 (= e!1495196 e!1495194)))

(declare-fun b!2334770 () Bool)

(declare-fun e!1495198 () Bool)

(declare-fun e!1495193 () Bool)

(assert (=> b!2334770 (= e!1495198 e!1495193)))

(assert (=> b!2334770 (= c!371088 ((_ is Star!6849) (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(declare-fun b!2334771 () Bool)

(declare-fun e!1495195 () Bool)

(assert (=> b!2334771 (= e!1495193 e!1495195)))

(declare-fun res!996050 () Bool)

(assert (=> b!2334771 (= res!996050 (not (nullable!1928 (reg!7178 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))))

(assert (=> b!2334771 (=> (not res!996050) (not e!1495195))))

(declare-fun d!690380 () Bool)

(declare-fun res!996046 () Bool)

(assert (=> d!690380 (=> res!996046 e!1495198)))

(assert (=> d!690380 (= res!996046 ((_ is ElementMatch!6849) (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(assert (=> d!690380 (= (validRegex!2594 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))) e!1495198)))

(declare-fun b!2334772 () Bool)

(declare-fun res!996048 () Bool)

(declare-fun e!1495197 () Bool)

(assert (=> b!2334772 (=> res!996048 e!1495197)))

(assert (=> b!2334772 (= res!996048 (not ((_ is Concat!11471) (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197))))))))

(assert (=> b!2334772 (= e!1495196 e!1495197)))

(declare-fun b!2334773 () Bool)

(declare-fun e!1495192 () Bool)

(assert (=> b!2334773 (= e!1495197 e!1495192)))

(declare-fun res!996049 () Bool)

(assert (=> b!2334773 (=> (not res!996049) (not e!1495192))))

(assert (=> b!2334773 (= res!996049 call!139866)))

(declare-fun b!2334774 () Bool)

(assert (=> b!2334774 (= e!1495195 call!139867)))

(declare-fun b!2334775 () Bool)

(declare-fun call!139868 () Bool)

(assert (=> b!2334775 (= e!1495192 call!139868)))

(declare-fun b!2334776 () Bool)

(assert (=> b!2334776 (= e!1495194 call!139868)))

(declare-fun bm!139863 () Bool)

(assert (=> bm!139863 (= call!139868 (validRegex!2594 (ite c!371089 (regTwo!14211 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))) (regTwo!14210 (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))))

(declare-fun b!2334777 () Bool)

(assert (=> b!2334777 (= e!1495193 e!1495196)))

(assert (=> b!2334777 (= c!371089 ((_ is Union!6849) (ite c!371000 (reg!7178 r!26197) (ite c!371001 (regOne!14211 r!26197) (regOne!14210 r!26197)))))))

(assert (= (and d!690380 (not res!996046)) b!2334770))

(assert (= (and b!2334770 c!371088) b!2334771))

(assert (= (and b!2334770 (not c!371088)) b!2334777))

(assert (= (and b!2334771 res!996050) b!2334774))

(assert (= (and b!2334777 c!371089) b!2334769))

(assert (= (and b!2334777 (not c!371089)) b!2334772))

(assert (= (and b!2334769 res!996047) b!2334776))

(assert (= (and b!2334772 (not res!996048)) b!2334773))

(assert (= (and b!2334773 res!996049) b!2334775))

(assert (= (or b!2334776 b!2334775) bm!139863))

(assert (= (or b!2334769 b!2334773) bm!139862))

(assert (= (or b!2334774 bm!139862) bm!139861))

(declare-fun m!2762293 () Bool)

(assert (=> bm!139861 m!2762293))

(declare-fun m!2762295 () Bool)

(assert (=> b!2334771 m!2762295))

(declare-fun m!2762297 () Bool)

(assert (=> bm!139863 m!2762297))

(assert (=> bm!139776 d!690380))

(declare-fun b!2334778 () Bool)

(declare-fun e!1495202 () Bool)

(declare-fun call!139870 () Bool)

(assert (=> b!2334778 (= e!1495202 call!139870)))

(declare-fun b!2334779 () Bool)

(declare-fun e!1495201 () Bool)

(declare-fun e!1495199 () Bool)

(assert (=> b!2334779 (= e!1495201 e!1495199)))

(declare-fun c!371090 () Bool)

(assert (=> b!2334779 (= c!371090 ((_ is Union!6849) (derivativeStep!1588 r!26197 c!13498)))))

(declare-fun b!2334780 () Bool)

(declare-fun e!1495203 () Bool)

(assert (=> b!2334780 (= e!1495203 call!139870)))

(declare-fun b!2334781 () Bool)

(assert (=> b!2334781 (= e!1495199 e!1495202)))

(declare-fun res!996054 () Bool)

(declare-fun call!139869 () Bool)

(assert (=> b!2334781 (= res!996054 call!139869)))

(assert (=> b!2334781 (=> res!996054 e!1495202)))

(declare-fun bm!139864 () Bool)

(assert (=> bm!139864 (= call!139870 (nullable!1928 (ite c!371090 (regTwo!14211 (derivativeStep!1588 r!26197 c!13498)) (regTwo!14210 (derivativeStep!1588 r!26197 c!13498)))))))

(declare-fun b!2334782 () Bool)

(assert (=> b!2334782 (= e!1495199 e!1495203)))

(declare-fun res!996052 () Bool)

(assert (=> b!2334782 (= res!996052 call!139869)))

(assert (=> b!2334782 (=> (not res!996052) (not e!1495203))))

(declare-fun bm!139865 () Bool)

(assert (=> bm!139865 (= call!139869 (nullable!1928 (ite c!371090 (regOne!14211 (derivativeStep!1588 r!26197 c!13498)) (regOne!14210 (derivativeStep!1588 r!26197 c!13498)))))))

(declare-fun b!2334783 () Bool)

(declare-fun e!1495200 () Bool)

(assert (=> b!2334783 (= e!1495200 e!1495201)))

(declare-fun res!996055 () Bool)

(assert (=> b!2334783 (=> res!996055 e!1495201)))

(assert (=> b!2334783 (= res!996055 ((_ is Star!6849) (derivativeStep!1588 r!26197 c!13498)))))

(declare-fun b!2334784 () Bool)

(declare-fun e!1495204 () Bool)

(assert (=> b!2334784 (= e!1495204 e!1495200)))

(declare-fun res!996051 () Bool)

(assert (=> b!2334784 (=> (not res!996051) (not e!1495200))))

(assert (=> b!2334784 (= res!996051 (and (not ((_ is EmptyLang!6849) (derivativeStep!1588 r!26197 c!13498))) (not ((_ is ElementMatch!6849) (derivativeStep!1588 r!26197 c!13498)))))))

(declare-fun d!690382 () Bool)

(declare-fun res!996053 () Bool)

(assert (=> d!690382 (=> res!996053 e!1495204)))

(assert (=> d!690382 (= res!996053 ((_ is EmptyExpr!6849) (derivativeStep!1588 r!26197 c!13498)))))

(assert (=> d!690382 (= (nullableFct!484 (derivativeStep!1588 r!26197 c!13498)) e!1495204)))

(assert (= (and d!690382 (not res!996053)) b!2334784))

(assert (= (and b!2334784 res!996051) b!2334783))

(assert (= (and b!2334783 (not res!996055)) b!2334779))

(assert (= (and b!2334779 c!371090) b!2334781))

(assert (= (and b!2334779 (not c!371090)) b!2334782))

(assert (= (and b!2334781 (not res!996054)) b!2334778))

(assert (= (and b!2334782 res!996052) b!2334780))

(assert (= (or b!2334781 b!2334782) bm!139865))

(assert (= (or b!2334778 b!2334780) bm!139864))

(declare-fun m!2762299 () Bool)

(assert (=> bm!139864 m!2762299))

(declare-fun m!2762301 () Bool)

(assert (=> bm!139865 m!2762301))

(assert (=> d!690350 d!690382))

(declare-fun c!371092 () Bool)

(declare-fun c!371091 () Bool)

(declare-fun call!139872 () Bool)

(declare-fun bm!139866 () Bool)

(assert (=> bm!139866 (= call!139872 (validRegex!2594 (ite c!371091 (reg!7178 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (ite c!371092 (regOne!14211 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (regOne!14210 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197)))))))))

(declare-fun bm!139867 () Bool)

(declare-fun call!139871 () Bool)

(assert (=> bm!139867 (= call!139871 call!139872)))

(declare-fun b!2334785 () Bool)

(declare-fun res!996057 () Bool)

(declare-fun e!1495207 () Bool)

(assert (=> b!2334785 (=> (not res!996057) (not e!1495207))))

(assert (=> b!2334785 (= res!996057 call!139871)))

(declare-fun e!1495209 () Bool)

(assert (=> b!2334785 (= e!1495209 e!1495207)))

(declare-fun b!2334786 () Bool)

(declare-fun e!1495211 () Bool)

(declare-fun e!1495206 () Bool)

(assert (=> b!2334786 (= e!1495211 e!1495206)))

(assert (=> b!2334786 (= c!371091 ((_ is Star!6849) (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(declare-fun b!2334787 () Bool)

(declare-fun e!1495208 () Bool)

(assert (=> b!2334787 (= e!1495206 e!1495208)))

(declare-fun res!996060 () Bool)

(assert (=> b!2334787 (= res!996060 (not (nullable!1928 (reg!7178 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))))

(assert (=> b!2334787 (=> (not res!996060) (not e!1495208))))

(declare-fun d!690384 () Bool)

(declare-fun res!996056 () Bool)

(assert (=> d!690384 (=> res!996056 e!1495211)))

(assert (=> d!690384 (= res!996056 ((_ is ElementMatch!6849) (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(assert (=> d!690384 (= (validRegex!2594 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) e!1495211)))

(declare-fun b!2334788 () Bool)

(declare-fun res!996058 () Bool)

(declare-fun e!1495210 () Bool)

(assert (=> b!2334788 (=> res!996058 e!1495210)))

(assert (=> b!2334788 (= res!996058 (not ((_ is Concat!11471) (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197)))))))

(assert (=> b!2334788 (= e!1495209 e!1495210)))

(declare-fun b!2334789 () Bool)

(declare-fun e!1495205 () Bool)

(assert (=> b!2334789 (= e!1495210 e!1495205)))

(declare-fun res!996059 () Bool)

(assert (=> b!2334789 (=> (not res!996059) (not e!1495205))))

(assert (=> b!2334789 (= res!996059 call!139871)))

(declare-fun b!2334790 () Bool)

(assert (=> b!2334790 (= e!1495208 call!139872)))

(declare-fun b!2334791 () Bool)

(declare-fun call!139873 () Bool)

(assert (=> b!2334791 (= e!1495205 call!139873)))

(declare-fun b!2334792 () Bool)

(assert (=> b!2334792 (= e!1495207 call!139873)))

(declare-fun bm!139868 () Bool)

(assert (=> bm!139868 (= call!139873 (validRegex!2594 (ite c!371092 (regTwo!14211 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))) (regTwo!14210 (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))))

(declare-fun b!2334793 () Bool)

(assert (=> b!2334793 (= e!1495206 e!1495209)))

(assert (=> b!2334793 (= c!371092 ((_ is Union!6849) (ite c!371001 (regTwo!14211 r!26197) (regTwo!14210 r!26197))))))

(assert (= (and d!690384 (not res!996056)) b!2334786))

(assert (= (and b!2334786 c!371091) b!2334787))

(assert (= (and b!2334786 (not c!371091)) b!2334793))

(assert (= (and b!2334787 res!996060) b!2334790))

(assert (= (and b!2334793 c!371092) b!2334785))

(assert (= (and b!2334793 (not c!371092)) b!2334788))

(assert (= (and b!2334785 res!996057) b!2334792))

(assert (= (and b!2334788 (not res!996058)) b!2334789))

(assert (= (and b!2334789 res!996059) b!2334791))

(assert (= (or b!2334792 b!2334791) bm!139868))

(assert (= (or b!2334785 b!2334789) bm!139867))

(assert (= (or b!2334790 bm!139867) bm!139866))

(declare-fun m!2762303 () Bool)

(assert (=> bm!139866 m!2762303))

(declare-fun m!2762305 () Bool)

(assert (=> b!2334787 m!2762305))

(declare-fun m!2762307 () Bool)

(assert (=> bm!139868 m!2762307))

(assert (=> bm!139778 d!690384))

(declare-fun d!690386 () Bool)

(declare-fun c!371095 () Bool)

(assert (=> d!690386 (= c!371095 ((_ is Nil!27836) (usedCharacters!434 r!26197)))))

(declare-fun e!1495214 () (InoxSet C!13856))

(assert (=> d!690386 (= (content!3768 (usedCharacters!434 r!26197)) e!1495214)))

(declare-fun b!2334798 () Bool)

(assert (=> b!2334798 (= e!1495214 ((as const (Array C!13856 Bool)) false))))

(declare-fun b!2334799 () Bool)

(assert (=> b!2334799 (= e!1495214 ((_ map or) (store ((as const (Array C!13856 Bool)) false) (h!33237 (usedCharacters!434 r!26197)) true) (content!3768 (t!207793 (usedCharacters!434 r!26197)))))))

(assert (= (and d!690386 c!371095) b!2334798))

(assert (= (and d!690386 (not c!371095)) b!2334799))

(declare-fun m!2762309 () Bool)

(assert (=> b!2334799 m!2762309))

(assert (=> b!2334799 m!2762243))

(assert (=> d!690344 d!690386))

(declare-fun b!2334802 () Bool)

(declare-fun e!1495215 () Bool)

(declare-fun tp!740286 () Bool)

(assert (=> b!2334802 (= e!1495215 tp!740286)))

(declare-fun b!2334800 () Bool)

(assert (=> b!2334800 (= e!1495215 tp_is_empty!11009)))

(declare-fun b!2334801 () Bool)

(declare-fun tp!740284 () Bool)

(declare-fun tp!740285 () Bool)

(assert (=> b!2334801 (= e!1495215 (and tp!740284 tp!740285))))

(declare-fun b!2334803 () Bool)

(declare-fun tp!740283 () Bool)

(declare-fun tp!740282 () Bool)

(assert (=> b!2334803 (= e!1495215 (and tp!740283 tp!740282))))

(assert (=> b!2334632 (= tp!740223 e!1495215)))

(assert (= (and b!2334632 ((_ is ElementMatch!6849) (regOne!14211 (regOne!14211 r!26197)))) b!2334800))

(assert (= (and b!2334632 ((_ is Concat!11471) (regOne!14211 (regOne!14211 r!26197)))) b!2334801))

(assert (= (and b!2334632 ((_ is Star!6849) (regOne!14211 (regOne!14211 r!26197)))) b!2334802))

(assert (= (and b!2334632 ((_ is Union!6849) (regOne!14211 (regOne!14211 r!26197)))) b!2334803))

(declare-fun b!2334806 () Bool)

(declare-fun e!1495216 () Bool)

(declare-fun tp!740291 () Bool)

(assert (=> b!2334806 (= e!1495216 tp!740291)))

(declare-fun b!2334804 () Bool)

(assert (=> b!2334804 (= e!1495216 tp_is_empty!11009)))

(declare-fun b!2334805 () Bool)

(declare-fun tp!740289 () Bool)

(declare-fun tp!740290 () Bool)

(assert (=> b!2334805 (= e!1495216 (and tp!740289 tp!740290))))

(declare-fun b!2334807 () Bool)

(declare-fun tp!740288 () Bool)

(declare-fun tp!740287 () Bool)

(assert (=> b!2334807 (= e!1495216 (and tp!740288 tp!740287))))

(assert (=> b!2334632 (= tp!740222 e!1495216)))

(assert (= (and b!2334632 ((_ is ElementMatch!6849) (regTwo!14211 (regOne!14211 r!26197)))) b!2334804))

(assert (= (and b!2334632 ((_ is Concat!11471) (regTwo!14211 (regOne!14211 r!26197)))) b!2334805))

(assert (= (and b!2334632 ((_ is Star!6849) (regTwo!14211 (regOne!14211 r!26197)))) b!2334806))

(assert (= (and b!2334632 ((_ is Union!6849) (regTwo!14211 (regOne!14211 r!26197)))) b!2334807))

(declare-fun b!2334810 () Bool)

(declare-fun e!1495217 () Bool)

(declare-fun tp!740296 () Bool)

(assert (=> b!2334810 (= e!1495217 tp!740296)))

(declare-fun b!2334808 () Bool)

(assert (=> b!2334808 (= e!1495217 tp_is_empty!11009)))

(declare-fun b!2334809 () Bool)

(declare-fun tp!740294 () Bool)

(declare-fun tp!740295 () Bool)

(assert (=> b!2334809 (= e!1495217 (and tp!740294 tp!740295))))

(declare-fun b!2334811 () Bool)

(declare-fun tp!740293 () Bool)

(declare-fun tp!740292 () Bool)

(assert (=> b!2334811 (= e!1495217 (and tp!740293 tp!740292))))

(assert (=> b!2334639 (= tp!740236 e!1495217)))

(assert (= (and b!2334639 ((_ is ElementMatch!6849) (reg!7178 (reg!7178 r!26197)))) b!2334808))

(assert (= (and b!2334639 ((_ is Concat!11471) (reg!7178 (reg!7178 r!26197)))) b!2334809))

(assert (= (and b!2334639 ((_ is Star!6849) (reg!7178 (reg!7178 r!26197)))) b!2334810))

(assert (= (and b!2334639 ((_ is Union!6849) (reg!7178 (reg!7178 r!26197)))) b!2334811))

(declare-fun b!2334814 () Bool)

(declare-fun e!1495218 () Bool)

(declare-fun tp!740301 () Bool)

(assert (=> b!2334814 (= e!1495218 tp!740301)))

(declare-fun b!2334812 () Bool)

(assert (=> b!2334812 (= e!1495218 tp_is_empty!11009)))

(declare-fun b!2334813 () Bool)

(declare-fun tp!740299 () Bool)

(declare-fun tp!740300 () Bool)

(assert (=> b!2334813 (= e!1495218 (and tp!740299 tp!740300))))

(declare-fun b!2334815 () Bool)

(declare-fun tp!740298 () Bool)

(declare-fun tp!740297 () Bool)

(assert (=> b!2334815 (= e!1495218 (and tp!740298 tp!740297))))

(assert (=> b!2334634 (= tp!740229 e!1495218)))

(assert (= (and b!2334634 ((_ is ElementMatch!6849) (regOne!14210 (regTwo!14211 r!26197)))) b!2334812))

(assert (= (and b!2334634 ((_ is Concat!11471) (regOne!14210 (regTwo!14211 r!26197)))) b!2334813))

(assert (= (and b!2334634 ((_ is Star!6849) (regOne!14210 (regTwo!14211 r!26197)))) b!2334814))

(assert (= (and b!2334634 ((_ is Union!6849) (regOne!14210 (regTwo!14211 r!26197)))) b!2334815))

(declare-fun b!2334818 () Bool)

(declare-fun e!1495219 () Bool)

(declare-fun tp!740306 () Bool)

(assert (=> b!2334818 (= e!1495219 tp!740306)))

(declare-fun b!2334816 () Bool)

(assert (=> b!2334816 (= e!1495219 tp_is_empty!11009)))

(declare-fun b!2334817 () Bool)

(declare-fun tp!740304 () Bool)

(declare-fun tp!740305 () Bool)

(assert (=> b!2334817 (= e!1495219 (and tp!740304 tp!740305))))

(declare-fun b!2334819 () Bool)

(declare-fun tp!740303 () Bool)

(declare-fun tp!740302 () Bool)

(assert (=> b!2334819 (= e!1495219 (and tp!740303 tp!740302))))

(assert (=> b!2334634 (= tp!740230 e!1495219)))

(assert (= (and b!2334634 ((_ is ElementMatch!6849) (regTwo!14210 (regTwo!14211 r!26197)))) b!2334816))

(assert (= (and b!2334634 ((_ is Concat!11471) (regTwo!14210 (regTwo!14211 r!26197)))) b!2334817))

(assert (= (and b!2334634 ((_ is Star!6849) (regTwo!14210 (regTwo!14211 r!26197)))) b!2334818))

(assert (= (and b!2334634 ((_ is Union!6849) (regTwo!14210 (regTwo!14211 r!26197)))) b!2334819))

(declare-fun b!2334822 () Bool)

(declare-fun e!1495220 () Bool)

(declare-fun tp!740311 () Bool)

(assert (=> b!2334822 (= e!1495220 tp!740311)))

(declare-fun b!2334820 () Bool)

(assert (=> b!2334820 (= e!1495220 tp_is_empty!11009)))

(declare-fun b!2334821 () Bool)

(declare-fun tp!740309 () Bool)

(declare-fun tp!740310 () Bool)

(assert (=> b!2334821 (= e!1495220 (and tp!740309 tp!740310))))

(declare-fun b!2334823 () Bool)

(declare-fun tp!740308 () Bool)

(declare-fun tp!740307 () Bool)

(assert (=> b!2334823 (= e!1495220 (and tp!740308 tp!740307))))

(assert (=> b!2334648 (= tp!740243 e!1495220)))

(assert (= (and b!2334648 ((_ is ElementMatch!6849) (regOne!14211 (regTwo!14210 r!26197)))) b!2334820))

(assert (= (and b!2334648 ((_ is Concat!11471) (regOne!14211 (regTwo!14210 r!26197)))) b!2334821))

(assert (= (and b!2334648 ((_ is Star!6849) (regOne!14211 (regTwo!14210 r!26197)))) b!2334822))

(assert (= (and b!2334648 ((_ is Union!6849) (regOne!14211 (regTwo!14210 r!26197)))) b!2334823))

(declare-fun b!2334826 () Bool)

(declare-fun e!1495221 () Bool)

(declare-fun tp!740316 () Bool)

(assert (=> b!2334826 (= e!1495221 tp!740316)))

(declare-fun b!2334824 () Bool)

(assert (=> b!2334824 (= e!1495221 tp_is_empty!11009)))

(declare-fun b!2334825 () Bool)

(declare-fun tp!740314 () Bool)

(declare-fun tp!740315 () Bool)

(assert (=> b!2334825 (= e!1495221 (and tp!740314 tp!740315))))

(declare-fun b!2334827 () Bool)

(declare-fun tp!740313 () Bool)

(declare-fun tp!740312 () Bool)

(assert (=> b!2334827 (= e!1495221 (and tp!740313 tp!740312))))

(assert (=> b!2334648 (= tp!740242 e!1495221)))

(assert (= (and b!2334648 ((_ is ElementMatch!6849) (regTwo!14211 (regTwo!14210 r!26197)))) b!2334824))

(assert (= (and b!2334648 ((_ is Concat!11471) (regTwo!14211 (regTwo!14210 r!26197)))) b!2334825))

(assert (= (and b!2334648 ((_ is Star!6849) (regTwo!14211 (regTwo!14210 r!26197)))) b!2334826))

(assert (= (and b!2334648 ((_ is Union!6849) (regTwo!14211 (regTwo!14210 r!26197)))) b!2334827))

(declare-fun b!2334830 () Bool)

(declare-fun e!1495222 () Bool)

(declare-fun tp!740321 () Bool)

(assert (=> b!2334830 (= e!1495222 tp!740321)))

(declare-fun b!2334828 () Bool)

(assert (=> b!2334828 (= e!1495222 tp_is_empty!11009)))

(declare-fun b!2334829 () Bool)

(declare-fun tp!740319 () Bool)

(declare-fun tp!740320 () Bool)

(assert (=> b!2334829 (= e!1495222 (and tp!740319 tp!740320))))

(declare-fun b!2334831 () Bool)

(declare-fun tp!740318 () Bool)

(declare-fun tp!740317 () Bool)

(assert (=> b!2334831 (= e!1495222 (and tp!740318 tp!740317))))

(assert (=> b!2334635 (= tp!740231 e!1495222)))

(assert (= (and b!2334635 ((_ is ElementMatch!6849) (reg!7178 (regTwo!14211 r!26197)))) b!2334828))

(assert (= (and b!2334635 ((_ is Concat!11471) (reg!7178 (regTwo!14211 r!26197)))) b!2334829))

(assert (= (and b!2334635 ((_ is Star!6849) (reg!7178 (regTwo!14211 r!26197)))) b!2334830))

(assert (= (and b!2334635 ((_ is Union!6849) (reg!7178 (regTwo!14211 r!26197)))) b!2334831))

(declare-fun b!2334834 () Bool)

(declare-fun e!1495223 () Bool)

(declare-fun tp!740326 () Bool)

(assert (=> b!2334834 (= e!1495223 tp!740326)))

(declare-fun b!2334832 () Bool)

(assert (=> b!2334832 (= e!1495223 tp_is_empty!11009)))

(declare-fun b!2334833 () Bool)

(declare-fun tp!740324 () Bool)

(declare-fun tp!740325 () Bool)

(assert (=> b!2334833 (= e!1495223 (and tp!740324 tp!740325))))

(declare-fun b!2334835 () Bool)

(declare-fun tp!740323 () Bool)

(declare-fun tp!740322 () Bool)

(assert (=> b!2334835 (= e!1495223 (and tp!740323 tp!740322))))

(assert (=> b!2334630 (= tp!740224 e!1495223)))

(assert (= (and b!2334630 ((_ is ElementMatch!6849) (regOne!14210 (regOne!14211 r!26197)))) b!2334832))

(assert (= (and b!2334630 ((_ is Concat!11471) (regOne!14210 (regOne!14211 r!26197)))) b!2334833))

(assert (= (and b!2334630 ((_ is Star!6849) (regOne!14210 (regOne!14211 r!26197)))) b!2334834))

(assert (= (and b!2334630 ((_ is Union!6849) (regOne!14210 (regOne!14211 r!26197)))) b!2334835))

(declare-fun b!2334838 () Bool)

(declare-fun e!1495224 () Bool)

(declare-fun tp!740331 () Bool)

(assert (=> b!2334838 (= e!1495224 tp!740331)))

(declare-fun b!2334836 () Bool)

(assert (=> b!2334836 (= e!1495224 tp_is_empty!11009)))

(declare-fun b!2334837 () Bool)

(declare-fun tp!740329 () Bool)

(declare-fun tp!740330 () Bool)

(assert (=> b!2334837 (= e!1495224 (and tp!740329 tp!740330))))

(declare-fun b!2334839 () Bool)

(declare-fun tp!740328 () Bool)

(declare-fun tp!740327 () Bool)

(assert (=> b!2334839 (= e!1495224 (and tp!740328 tp!740327))))

(assert (=> b!2334630 (= tp!740225 e!1495224)))

(assert (= (and b!2334630 ((_ is ElementMatch!6849) (regTwo!14210 (regOne!14211 r!26197)))) b!2334836))

(assert (= (and b!2334630 ((_ is Concat!11471) (regTwo!14210 (regOne!14211 r!26197)))) b!2334837))

(assert (= (and b!2334630 ((_ is Star!6849) (regTwo!14210 (regOne!14211 r!26197)))) b!2334838))

(assert (= (and b!2334630 ((_ is Union!6849) (regTwo!14210 (regOne!14211 r!26197)))) b!2334839))

(declare-fun b!2334842 () Bool)

(declare-fun e!1495225 () Bool)

(declare-fun tp!740336 () Bool)

(assert (=> b!2334842 (= e!1495225 tp!740336)))

(declare-fun b!2334840 () Bool)

(assert (=> b!2334840 (= e!1495225 tp_is_empty!11009)))

(declare-fun b!2334841 () Bool)

(declare-fun tp!740334 () Bool)

(declare-fun tp!740335 () Bool)

(assert (=> b!2334841 (= e!1495225 (and tp!740334 tp!740335))))

(declare-fun b!2334843 () Bool)

(declare-fun tp!740333 () Bool)

(declare-fun tp!740332 () Bool)

(assert (=> b!2334843 (= e!1495225 (and tp!740333 tp!740332))))

(assert (=> b!2334644 (= tp!740238 e!1495225)))

(assert (= (and b!2334644 ((_ is ElementMatch!6849) (regOne!14211 (regOne!14210 r!26197)))) b!2334840))

(assert (= (and b!2334644 ((_ is Concat!11471) (regOne!14211 (regOne!14210 r!26197)))) b!2334841))

(assert (= (and b!2334644 ((_ is Star!6849) (regOne!14211 (regOne!14210 r!26197)))) b!2334842))

(assert (= (and b!2334644 ((_ is Union!6849) (regOne!14211 (regOne!14210 r!26197)))) b!2334843))

(declare-fun b!2334846 () Bool)

(declare-fun e!1495226 () Bool)

(declare-fun tp!740341 () Bool)

(assert (=> b!2334846 (= e!1495226 tp!740341)))

(declare-fun b!2334844 () Bool)

(assert (=> b!2334844 (= e!1495226 tp_is_empty!11009)))

(declare-fun b!2334845 () Bool)

(declare-fun tp!740339 () Bool)

(declare-fun tp!740340 () Bool)

(assert (=> b!2334845 (= e!1495226 (and tp!740339 tp!740340))))

(declare-fun b!2334847 () Bool)

(declare-fun tp!740338 () Bool)

(declare-fun tp!740337 () Bool)

(assert (=> b!2334847 (= e!1495226 (and tp!740338 tp!740337))))

(assert (=> b!2334644 (= tp!740237 e!1495226)))

(assert (= (and b!2334644 ((_ is ElementMatch!6849) (regTwo!14211 (regOne!14210 r!26197)))) b!2334844))

(assert (= (and b!2334644 ((_ is Concat!11471) (regTwo!14211 (regOne!14210 r!26197)))) b!2334845))

(assert (= (and b!2334644 ((_ is Star!6849) (regTwo!14211 (regOne!14210 r!26197)))) b!2334846))

(assert (= (and b!2334644 ((_ is Union!6849) (regTwo!14211 (regOne!14210 r!26197)))) b!2334847))

(declare-fun b!2334850 () Bool)

(declare-fun e!1495227 () Bool)

(declare-fun tp!740346 () Bool)

(assert (=> b!2334850 (= e!1495227 tp!740346)))

(declare-fun b!2334848 () Bool)

(assert (=> b!2334848 (= e!1495227 tp_is_empty!11009)))

(declare-fun b!2334849 () Bool)

(declare-fun tp!740344 () Bool)

(declare-fun tp!740345 () Bool)

(assert (=> b!2334849 (= e!1495227 (and tp!740344 tp!740345))))

(declare-fun b!2334851 () Bool)

(declare-fun tp!740343 () Bool)

(declare-fun tp!740342 () Bool)

(assert (=> b!2334851 (= e!1495227 (and tp!740343 tp!740342))))

(assert (=> b!2334631 (= tp!740226 e!1495227)))

(assert (= (and b!2334631 ((_ is ElementMatch!6849) (reg!7178 (regOne!14211 r!26197)))) b!2334848))

(assert (= (and b!2334631 ((_ is Concat!11471) (reg!7178 (regOne!14211 r!26197)))) b!2334849))

(assert (= (and b!2334631 ((_ is Star!6849) (reg!7178 (regOne!14211 r!26197)))) b!2334850))

(assert (= (and b!2334631 ((_ is Union!6849) (reg!7178 (regOne!14211 r!26197)))) b!2334851))

(declare-fun b!2334854 () Bool)

(declare-fun e!1495228 () Bool)

(declare-fun tp!740351 () Bool)

(assert (=> b!2334854 (= e!1495228 tp!740351)))

(declare-fun b!2334852 () Bool)

(assert (=> b!2334852 (= e!1495228 tp_is_empty!11009)))

(declare-fun b!2334853 () Bool)

(declare-fun tp!740349 () Bool)

(declare-fun tp!740350 () Bool)

(assert (=> b!2334853 (= e!1495228 (and tp!740349 tp!740350))))

(declare-fun b!2334855 () Bool)

(declare-fun tp!740348 () Bool)

(declare-fun tp!740347 () Bool)

(assert (=> b!2334855 (= e!1495228 (and tp!740348 tp!740347))))

(assert (=> b!2334640 (= tp!740233 e!1495228)))

(assert (= (and b!2334640 ((_ is ElementMatch!6849) (regOne!14211 (reg!7178 r!26197)))) b!2334852))

(assert (= (and b!2334640 ((_ is Concat!11471) (regOne!14211 (reg!7178 r!26197)))) b!2334853))

(assert (= (and b!2334640 ((_ is Star!6849) (regOne!14211 (reg!7178 r!26197)))) b!2334854))

(assert (= (and b!2334640 ((_ is Union!6849) (regOne!14211 (reg!7178 r!26197)))) b!2334855))

(declare-fun b!2334858 () Bool)

(declare-fun e!1495229 () Bool)

(declare-fun tp!740356 () Bool)

(assert (=> b!2334858 (= e!1495229 tp!740356)))

(declare-fun b!2334856 () Bool)

(assert (=> b!2334856 (= e!1495229 tp_is_empty!11009)))

(declare-fun b!2334857 () Bool)

(declare-fun tp!740354 () Bool)

(declare-fun tp!740355 () Bool)

(assert (=> b!2334857 (= e!1495229 (and tp!740354 tp!740355))))

(declare-fun b!2334859 () Bool)

(declare-fun tp!740353 () Bool)

(declare-fun tp!740352 () Bool)

(assert (=> b!2334859 (= e!1495229 (and tp!740353 tp!740352))))

(assert (=> b!2334640 (= tp!740232 e!1495229)))

(assert (= (and b!2334640 ((_ is ElementMatch!6849) (regTwo!14211 (reg!7178 r!26197)))) b!2334856))

(assert (= (and b!2334640 ((_ is Concat!11471) (regTwo!14211 (reg!7178 r!26197)))) b!2334857))

(assert (= (and b!2334640 ((_ is Star!6849) (regTwo!14211 (reg!7178 r!26197)))) b!2334858))

(assert (= (and b!2334640 ((_ is Union!6849) (regTwo!14211 (reg!7178 r!26197)))) b!2334859))

(declare-fun b!2334862 () Bool)

(declare-fun e!1495230 () Bool)

(declare-fun tp!740361 () Bool)

(assert (=> b!2334862 (= e!1495230 tp!740361)))

(declare-fun b!2334860 () Bool)

(assert (=> b!2334860 (= e!1495230 tp_is_empty!11009)))

(declare-fun b!2334861 () Bool)

(declare-fun tp!740359 () Bool)

(declare-fun tp!740360 () Bool)

(assert (=> b!2334861 (= e!1495230 (and tp!740359 tp!740360))))

(declare-fun b!2334863 () Bool)

(declare-fun tp!740358 () Bool)

(declare-fun tp!740357 () Bool)

(assert (=> b!2334863 (= e!1495230 (and tp!740358 tp!740357))))

(assert (=> b!2334636 (= tp!740228 e!1495230)))

(assert (= (and b!2334636 ((_ is ElementMatch!6849) (regOne!14211 (regTwo!14211 r!26197)))) b!2334860))

(assert (= (and b!2334636 ((_ is Concat!11471) (regOne!14211 (regTwo!14211 r!26197)))) b!2334861))

(assert (= (and b!2334636 ((_ is Star!6849) (regOne!14211 (regTwo!14211 r!26197)))) b!2334862))

(assert (= (and b!2334636 ((_ is Union!6849) (regOne!14211 (regTwo!14211 r!26197)))) b!2334863))

(declare-fun b!2334866 () Bool)

(declare-fun e!1495231 () Bool)

(declare-fun tp!740366 () Bool)

(assert (=> b!2334866 (= e!1495231 tp!740366)))

(declare-fun b!2334864 () Bool)

(assert (=> b!2334864 (= e!1495231 tp_is_empty!11009)))

(declare-fun b!2334865 () Bool)

(declare-fun tp!740364 () Bool)

(declare-fun tp!740365 () Bool)

(assert (=> b!2334865 (= e!1495231 (and tp!740364 tp!740365))))

(declare-fun b!2334867 () Bool)

(declare-fun tp!740363 () Bool)

(declare-fun tp!740362 () Bool)

(assert (=> b!2334867 (= e!1495231 (and tp!740363 tp!740362))))

(assert (=> b!2334636 (= tp!740227 e!1495231)))

(assert (= (and b!2334636 ((_ is ElementMatch!6849) (regTwo!14211 (regTwo!14211 r!26197)))) b!2334864))

(assert (= (and b!2334636 ((_ is Concat!11471) (regTwo!14211 (regTwo!14211 r!26197)))) b!2334865))

(assert (= (and b!2334636 ((_ is Star!6849) (regTwo!14211 (regTwo!14211 r!26197)))) b!2334866))

(assert (= (and b!2334636 ((_ is Union!6849) (regTwo!14211 (regTwo!14211 r!26197)))) b!2334867))

(declare-fun b!2334870 () Bool)

(declare-fun e!1495232 () Bool)

(declare-fun tp!740371 () Bool)

(assert (=> b!2334870 (= e!1495232 tp!740371)))

(declare-fun b!2334868 () Bool)

(assert (=> b!2334868 (= e!1495232 tp_is_empty!11009)))

(declare-fun b!2334869 () Bool)

(declare-fun tp!740369 () Bool)

(declare-fun tp!740370 () Bool)

(assert (=> b!2334869 (= e!1495232 (and tp!740369 tp!740370))))

(declare-fun b!2334871 () Bool)

(declare-fun tp!740368 () Bool)

(declare-fun tp!740367 () Bool)

(assert (=> b!2334871 (= e!1495232 (and tp!740368 tp!740367))))

(assert (=> b!2334646 (= tp!740244 e!1495232)))

(assert (= (and b!2334646 ((_ is ElementMatch!6849) (regOne!14210 (regTwo!14210 r!26197)))) b!2334868))

(assert (= (and b!2334646 ((_ is Concat!11471) (regOne!14210 (regTwo!14210 r!26197)))) b!2334869))

(assert (= (and b!2334646 ((_ is Star!6849) (regOne!14210 (regTwo!14210 r!26197)))) b!2334870))

(assert (= (and b!2334646 ((_ is Union!6849) (regOne!14210 (regTwo!14210 r!26197)))) b!2334871))

(declare-fun b!2334882 () Bool)

(declare-fun e!1495237 () Bool)

(declare-fun tp!740376 () Bool)

(assert (=> b!2334882 (= e!1495237 tp!740376)))

(declare-fun b!2334880 () Bool)

(assert (=> b!2334880 (= e!1495237 tp_is_empty!11009)))

(declare-fun b!2334881 () Bool)

(declare-fun tp!740374 () Bool)

(declare-fun tp!740375 () Bool)

(assert (=> b!2334881 (= e!1495237 (and tp!740374 tp!740375))))

(declare-fun b!2334883 () Bool)

(declare-fun tp!740373 () Bool)

(declare-fun tp!740372 () Bool)

(assert (=> b!2334883 (= e!1495237 (and tp!740373 tp!740372))))

(assert (=> b!2334646 (= tp!740245 e!1495237)))

(assert (= (and b!2334646 ((_ is ElementMatch!6849) (regTwo!14210 (regTwo!14210 r!26197)))) b!2334880))

(assert (= (and b!2334646 ((_ is Concat!11471) (regTwo!14210 (regTwo!14210 r!26197)))) b!2334881))

(assert (= (and b!2334646 ((_ is Star!6849) (regTwo!14210 (regTwo!14210 r!26197)))) b!2334882))

(assert (= (and b!2334646 ((_ is Union!6849) (regTwo!14210 (regTwo!14210 r!26197)))) b!2334883))

(declare-fun b!2334886 () Bool)

(declare-fun e!1495238 () Bool)

(declare-fun tp!740381 () Bool)

(assert (=> b!2334886 (= e!1495238 tp!740381)))

(declare-fun b!2334884 () Bool)

(assert (=> b!2334884 (= e!1495238 tp_is_empty!11009)))

(declare-fun b!2334885 () Bool)

(declare-fun tp!740379 () Bool)

(declare-fun tp!740380 () Bool)

(assert (=> b!2334885 (= e!1495238 (and tp!740379 tp!740380))))

(declare-fun b!2334887 () Bool)

(declare-fun tp!740378 () Bool)

(declare-fun tp!740377 () Bool)

(assert (=> b!2334887 (= e!1495238 (and tp!740378 tp!740377))))

(assert (=> b!2334647 (= tp!740246 e!1495238)))

(assert (= (and b!2334647 ((_ is ElementMatch!6849) (reg!7178 (regTwo!14210 r!26197)))) b!2334884))

(assert (= (and b!2334647 ((_ is Concat!11471) (reg!7178 (regTwo!14210 r!26197)))) b!2334885))

(assert (= (and b!2334647 ((_ is Star!6849) (reg!7178 (regTwo!14210 r!26197)))) b!2334886))

(assert (= (and b!2334647 ((_ is Union!6849) (reg!7178 (regTwo!14210 r!26197)))) b!2334887))

(declare-fun b!2334890 () Bool)

(declare-fun e!1495239 () Bool)

(declare-fun tp!740386 () Bool)

(assert (=> b!2334890 (= e!1495239 tp!740386)))

(declare-fun b!2334888 () Bool)

(assert (=> b!2334888 (= e!1495239 tp_is_empty!11009)))

(declare-fun b!2334889 () Bool)

(declare-fun tp!740384 () Bool)

(declare-fun tp!740385 () Bool)

(assert (=> b!2334889 (= e!1495239 (and tp!740384 tp!740385))))

(declare-fun b!2334891 () Bool)

(declare-fun tp!740383 () Bool)

(declare-fun tp!740382 () Bool)

(assert (=> b!2334891 (= e!1495239 (and tp!740383 tp!740382))))

(assert (=> b!2334642 (= tp!740239 e!1495239)))

(assert (= (and b!2334642 ((_ is ElementMatch!6849) (regOne!14210 (regOne!14210 r!26197)))) b!2334888))

(assert (= (and b!2334642 ((_ is Concat!11471) (regOne!14210 (regOne!14210 r!26197)))) b!2334889))

(assert (= (and b!2334642 ((_ is Star!6849) (regOne!14210 (regOne!14210 r!26197)))) b!2334890))

(assert (= (and b!2334642 ((_ is Union!6849) (regOne!14210 (regOne!14210 r!26197)))) b!2334891))

(declare-fun b!2334894 () Bool)

(declare-fun e!1495240 () Bool)

(declare-fun tp!740391 () Bool)

(assert (=> b!2334894 (= e!1495240 tp!740391)))

(declare-fun b!2334892 () Bool)

(assert (=> b!2334892 (= e!1495240 tp_is_empty!11009)))

(declare-fun b!2334893 () Bool)

(declare-fun tp!740389 () Bool)

(declare-fun tp!740390 () Bool)

(assert (=> b!2334893 (= e!1495240 (and tp!740389 tp!740390))))

(declare-fun b!2334895 () Bool)

(declare-fun tp!740388 () Bool)

(declare-fun tp!740387 () Bool)

(assert (=> b!2334895 (= e!1495240 (and tp!740388 tp!740387))))

(assert (=> b!2334642 (= tp!740240 e!1495240)))

(assert (= (and b!2334642 ((_ is ElementMatch!6849) (regTwo!14210 (regOne!14210 r!26197)))) b!2334892))

(assert (= (and b!2334642 ((_ is Concat!11471) (regTwo!14210 (regOne!14210 r!26197)))) b!2334893))

(assert (= (and b!2334642 ((_ is Star!6849) (regTwo!14210 (regOne!14210 r!26197)))) b!2334894))

(assert (= (and b!2334642 ((_ is Union!6849) (regTwo!14210 (regOne!14210 r!26197)))) b!2334895))

(declare-fun b!2334898 () Bool)

(declare-fun e!1495241 () Bool)

(declare-fun tp!740396 () Bool)

(assert (=> b!2334898 (= e!1495241 tp!740396)))

(declare-fun b!2334896 () Bool)

(assert (=> b!2334896 (= e!1495241 tp_is_empty!11009)))

(declare-fun b!2334897 () Bool)

(declare-fun tp!740394 () Bool)

(declare-fun tp!740395 () Bool)

(assert (=> b!2334897 (= e!1495241 (and tp!740394 tp!740395))))

(declare-fun b!2334899 () Bool)

(declare-fun tp!740393 () Bool)

(declare-fun tp!740392 () Bool)

(assert (=> b!2334899 (= e!1495241 (and tp!740393 tp!740392))))

(assert (=> b!2334643 (= tp!740241 e!1495241)))

(assert (= (and b!2334643 ((_ is ElementMatch!6849) (reg!7178 (regOne!14210 r!26197)))) b!2334896))

(assert (= (and b!2334643 ((_ is Concat!11471) (reg!7178 (regOne!14210 r!26197)))) b!2334897))

(assert (= (and b!2334643 ((_ is Star!6849) (reg!7178 (regOne!14210 r!26197)))) b!2334898))

(assert (= (and b!2334643 ((_ is Union!6849) (reg!7178 (regOne!14210 r!26197)))) b!2334899))

(declare-fun b!2334902 () Bool)

(declare-fun e!1495242 () Bool)

(declare-fun tp!740401 () Bool)

(assert (=> b!2334902 (= e!1495242 tp!740401)))

(declare-fun b!2334900 () Bool)

(assert (=> b!2334900 (= e!1495242 tp_is_empty!11009)))

(declare-fun b!2334901 () Bool)

(declare-fun tp!740399 () Bool)

(declare-fun tp!740400 () Bool)

(assert (=> b!2334901 (= e!1495242 (and tp!740399 tp!740400))))

(declare-fun b!2334903 () Bool)

(declare-fun tp!740398 () Bool)

(declare-fun tp!740397 () Bool)

(assert (=> b!2334903 (= e!1495242 (and tp!740398 tp!740397))))

(assert (=> b!2334638 (= tp!740234 e!1495242)))

(assert (= (and b!2334638 ((_ is ElementMatch!6849) (regOne!14210 (reg!7178 r!26197)))) b!2334900))

(assert (= (and b!2334638 ((_ is Concat!11471) (regOne!14210 (reg!7178 r!26197)))) b!2334901))

(assert (= (and b!2334638 ((_ is Star!6849) (regOne!14210 (reg!7178 r!26197)))) b!2334902))

(assert (= (and b!2334638 ((_ is Union!6849) (regOne!14210 (reg!7178 r!26197)))) b!2334903))

(declare-fun b!2334906 () Bool)

(declare-fun e!1495243 () Bool)

(declare-fun tp!740406 () Bool)

(assert (=> b!2334906 (= e!1495243 tp!740406)))

(declare-fun b!2334904 () Bool)

(assert (=> b!2334904 (= e!1495243 tp_is_empty!11009)))

(declare-fun b!2334905 () Bool)

(declare-fun tp!740404 () Bool)

(declare-fun tp!740405 () Bool)

(assert (=> b!2334905 (= e!1495243 (and tp!740404 tp!740405))))

(declare-fun b!2334907 () Bool)

(declare-fun tp!740403 () Bool)

(declare-fun tp!740402 () Bool)

(assert (=> b!2334907 (= e!1495243 (and tp!740403 tp!740402))))

(assert (=> b!2334638 (= tp!740235 e!1495243)))

(assert (= (and b!2334638 ((_ is ElementMatch!6849) (regTwo!14210 (reg!7178 r!26197)))) b!2334904))

(assert (= (and b!2334638 ((_ is Concat!11471) (regTwo!14210 (reg!7178 r!26197)))) b!2334905))

(assert (= (and b!2334638 ((_ is Star!6849) (regTwo!14210 (reg!7178 r!26197)))) b!2334906))

(assert (= (and b!2334638 ((_ is Union!6849) (regTwo!14210 (reg!7178 r!26197)))) b!2334907))

(check-sat (not bm!139865) (not b!2334818) (not b!2334847) (not b!2334859) (not b!2334903) (not b!2334889) (not b!2334905) (not b!2334835) (not b!2334870) (not b!2334838) (not b!2334771) (not b!2334825) (not b!2334809) (not b!2334867) (not b!2334855) (not bm!139839) (not b!2334842) (not b!2334849) (not bm!139864) (not b!2334891) (not b!2334866) (not b!2334899) (not b!2334858) (not b!2334831) (not b!2334907) (not b!2334819) (not b!2334863) (not b!2334827) (not b!2334886) (not bm!139858) (not b!2334805) (not b!2334897) (not b!2334893) (not bm!139851) (not b!2334843) (not b!2334806) (not b!2334902) (not b!2334702) (not b!2334883) (not b!2334851) (not b!2334823) (not b!2334799) (not b!2334811) (not bm!139866) (not bm!139856) (not b!2334882) (not b!2334887) (not b!2334853) (not b!2334890) (not b!2334895) (not b!2334861) (not b!2334801) (not bm!139840) (not b!2334881) (not d!690364) (not b!2334898) (not b!2334830) tp_is_empty!11009 (not b!2334802) (not b!2334894) (not b!2334822) (not bm!139863) (not b!2334826) (not b!2334810) (not b!2334846) (not bm!139868) (not d!690368) (not b!2334833) (not bm!139853) (not b!2334727) (not b!2334821) (not bm!139852) (not bm!139842) (not b!2334698) (not b!2334803) (not d!690360) (not b!2334829) (not b!2334901) (not b!2334857) (not b!2334871) (not b!2334699) (not b!2334865) (not b!2334850) (not b!2334814) (not b!2334906) (not d!690362) (not b!2334837) (not bm!139846) (not bm!139837) (not b!2334713) (not b!2334834) (not b!2334807) (not b!2334885) (not d!690372) (not b!2334817) (not bm!139860) (not b!2334845) (not b!2334862) (not b!2334766) (not b!2334787) (not b!2334869) (not d!690378) (not bm!139854) (not b!2334841) (not b!2334854) (not b!2334839) (not bm!139844) (not b!2334815) (not bm!139836) (not b!2334813) (not bm!139861))
(check-sat)
