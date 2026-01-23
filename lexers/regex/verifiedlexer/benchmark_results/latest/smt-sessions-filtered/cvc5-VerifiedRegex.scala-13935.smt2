; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739258 () Bool)

(assert start!739258)

(declare-fun b!7758169 () Bool)

(assert (=> b!7758169 true))

(assert (=> b!7758169 true))

(assert (=> b!7758169 true))

(declare-fun b!7758162 () Bool)

(declare-fun res!3092976 () Bool)

(declare-fun e!4598348 () Bool)

(assert (=> b!7758162 (=> (not res!3092976) (not e!4598348))))

(declare-datatypes ((C!41654 0))(
  ( (C!41655 (val!31267 Int)) )
))
(declare-datatypes ((Regex!20664 0))(
  ( (ElementMatch!20664 (c!1430559 C!41654)) (Concat!29509 (regOne!41840 Regex!20664) (regTwo!41840 Regex!20664)) (EmptyExpr!20664) (Star!20664 (reg!20993 Regex!20664)) (EmptyLang!20664) (Union!20664 (regOne!41841 Regex!20664) (regTwo!41841 Regex!20664)) )
))
(declare-fun r2!3230 () Regex!20664)

(declare-fun validRegex!11080 (Regex!20664) Bool)

(assert (=> b!7758162 (= res!3092976 (validRegex!11080 r2!3230))))

(declare-fun b!7758163 () Bool)

(declare-fun e!4598344 () Bool)

(declare-fun tp!2277519 () Bool)

(declare-fun tp!2277513 () Bool)

(assert (=> b!7758163 (= e!4598344 (and tp!2277519 tp!2277513))))

(declare-fun b!7758164 () Bool)

(declare-fun e!4598349 () Bool)

(declare-fun tp!2277514 () Bool)

(declare-fun tp!2277520 () Bool)

(assert (=> b!7758164 (= e!4598349 (and tp!2277514 tp!2277520))))

(declare-fun b!7758165 () Bool)

(declare-fun tp!2277512 () Bool)

(assert (=> b!7758165 (= e!4598344 tp!2277512)))

(declare-fun b!7758166 () Bool)

(declare-fun tp!2277517 () Bool)

(declare-fun tp!2277521 () Bool)

(assert (=> b!7758166 (= e!4598349 (and tp!2277517 tp!2277521))))

(declare-fun b!7758167 () Bool)

(declare-fun e!4598347 () Bool)

(declare-fun e!4598345 () Bool)

(assert (=> b!7758167 (= e!4598347 e!4598345)))

(declare-fun res!3092977 () Bool)

(assert (=> b!7758167 (=> (not res!3092977) (not e!4598345))))

(declare-datatypes ((List!73507 0))(
  ( (Nil!73383) (Cons!73383 (h!79831 C!41654) (t!388242 List!73507)) )
))
(declare-datatypes ((tuple2!69714 0))(
  ( (tuple2!69715 (_1!38160 List!73507) (_2!38160 List!73507)) )
))
(declare-fun lt!2670019 () tuple2!69714)

(declare-fun s!10216 () List!73507)

(declare-fun ++!17841 (List!73507 List!73507) List!73507)

(assert (=> b!7758167 (= res!3092977 (= (++!17841 (_1!38160 lt!2670019) (_2!38160 lt!2670019)) s!10216))))

(declare-datatypes ((Option!17651 0))(
  ( (None!17650) (Some!17650 (v!54785 tuple2!69714)) )
))
(declare-fun lt!2670021 () Option!17651)

(declare-fun get!26149 (Option!17651) tuple2!69714)

(assert (=> b!7758167 (= lt!2670019 (get!26149 lt!2670021))))

(declare-fun b!7758168 () Bool)

(assert (=> b!7758168 (= e!4598348 e!4598347)))

(declare-fun res!3092974 () Bool)

(assert (=> b!7758168 (=> (not res!3092974) (not e!4598347))))

(declare-fun isDefined!14263 (Option!17651) Bool)

(assert (=> b!7758168 (= res!3092974 (isDefined!14263 lt!2670021))))

(declare-fun r1!3330 () Regex!20664)

(declare-fun findConcatSeparation!3681 (Regex!20664 Regex!20664 List!73507 List!73507 List!73507) Option!17651)

(assert (=> b!7758168 (= lt!2670021 (findConcatSeparation!3681 r1!3330 r2!3230 Nil!73383 s!10216 s!10216))))

(declare-fun b!7758170 () Bool)

(declare-fun tp!2277518 () Bool)

(declare-fun tp!2277515 () Bool)

(assert (=> b!7758170 (= e!4598344 (and tp!2277518 tp!2277515))))

(declare-fun b!7758171 () Bool)

(declare-fun tp_is_empty!51683 () Bool)

(assert (=> b!7758171 (= e!4598349 tp_is_empty!51683)))

(declare-fun b!7758172 () Bool)

(assert (=> b!7758172 (= e!4598344 tp_is_empty!51683)))

(declare-fun b!7758173 () Bool)

(declare-fun res!3092973 () Bool)

(assert (=> b!7758173 (=> (not res!3092973) (not e!4598345))))

(declare-fun matchR!10140 (Regex!20664 List!73507) Bool)

(assert (=> b!7758173 (= res!3092973 (matchR!10140 r1!3330 (_1!38160 lt!2670019)))))

(declare-fun b!7758174 () Bool)

(declare-fun e!4598346 () Bool)

(declare-fun tp!2277522 () Bool)

(assert (=> b!7758174 (= e!4598346 (and tp_is_empty!51683 tp!2277522))))

(declare-fun b!7758175 () Bool)

(declare-fun tp!2277516 () Bool)

(assert (=> b!7758175 (= e!4598349 tp!2277516)))

(declare-fun b!7758176 () Bool)

(declare-fun res!3092978 () Bool)

(assert (=> b!7758176 (=> (not res!3092978) (not e!4598345))))

(assert (=> b!7758176 (= res!3092978 (matchR!10140 r2!3230 (_2!38160 lt!2670019)))))

(declare-fun res!3092975 () Bool)

(assert (=> start!739258 (=> (not res!3092975) (not e!4598348))))

(assert (=> start!739258 (= res!3092975 (validRegex!11080 r1!3330))))

(assert (=> start!739258 e!4598348))

(assert (=> start!739258 e!4598349))

(assert (=> start!739258 e!4598344))

(assert (=> start!739258 e!4598346))

(assert (=> b!7758169 (= e!4598345 (not (= (++!17841 Nil!73383 s!10216) s!10216)))))

(declare-datatypes ((Unit!168358 0))(
  ( (Unit!168359) )
))
(declare-fun lt!2670020 () Unit!168358)

(declare-fun lambda!471942 () Int)

(declare-fun ExistsThe!63 (tuple2!69714 Int) Unit!168358)

(assert (=> b!7758169 (= lt!2670020 (ExistsThe!63 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)) lambda!471942))))

(assert (= (and start!739258 res!3092975) b!7758162))

(assert (= (and b!7758162 res!3092976) b!7758168))

(assert (= (and b!7758168 res!3092974) b!7758167))

(assert (= (and b!7758167 res!3092977) b!7758173))

(assert (= (and b!7758173 res!3092973) b!7758176))

(assert (= (and b!7758176 res!3092978) b!7758169))

(assert (= (and start!739258 (is-ElementMatch!20664 r1!3330)) b!7758171))

(assert (= (and start!739258 (is-Concat!29509 r1!3330)) b!7758166))

(assert (= (and start!739258 (is-Star!20664 r1!3330)) b!7758175))

(assert (= (and start!739258 (is-Union!20664 r1!3330)) b!7758164))

(assert (= (and start!739258 (is-ElementMatch!20664 r2!3230)) b!7758172))

(assert (= (and start!739258 (is-Concat!29509 r2!3230)) b!7758163))

(assert (= (and start!739258 (is-Star!20664 r2!3230)) b!7758165))

(assert (= (and start!739258 (is-Union!20664 r2!3230)) b!7758170))

(assert (= (and start!739258 (is-Cons!73383 s!10216)) b!7758174))

(declare-fun m!8219686 () Bool)

(assert (=> b!7758176 m!8219686))

(declare-fun m!8219688 () Bool)

(assert (=> b!7758169 m!8219688))

(declare-fun m!8219690 () Bool)

(assert (=> b!7758169 m!8219690))

(declare-fun m!8219692 () Bool)

(assert (=> b!7758162 m!8219692))

(declare-fun m!8219694 () Bool)

(assert (=> b!7758167 m!8219694))

(declare-fun m!8219696 () Bool)

(assert (=> b!7758167 m!8219696))

(declare-fun m!8219698 () Bool)

(assert (=> b!7758168 m!8219698))

(declare-fun m!8219700 () Bool)

(assert (=> b!7758168 m!8219700))

(declare-fun m!8219702 () Bool)

(assert (=> start!739258 m!8219702))

(declare-fun m!8219704 () Bool)

(assert (=> b!7758173 m!8219704))

(push 1)

(assert (not start!739258))

(assert (not b!7758165))

(assert (not b!7758168))

(assert (not b!7758169))

(assert (not b!7758170))

(assert (not b!7758167))

(assert (not b!7758163))

(assert (not b!7758174))

(assert (not b!7758162))

(assert (not b!7758175))

(assert (not b!7758176))

(assert (not b!7758173))

(assert (not b!7758164))

(assert tp_is_empty!51683)

(assert (not b!7758166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7758262 () Bool)

(declare-fun res!3093019 () Bool)

(declare-fun e!4598390 () Bool)

(assert (=> b!7758262 (=> (not res!3093019) (not e!4598390))))

(declare-fun call!719051 () Bool)

(assert (=> b!7758262 (= res!3093019 (not call!719051))))

(declare-fun b!7758263 () Bool)

(declare-fun res!3093021 () Bool)

(declare-fun e!4598387 () Bool)

(assert (=> b!7758263 (=> res!3093021 e!4598387)))

(assert (=> b!7758263 (= res!3093021 e!4598390)))

(declare-fun res!3093024 () Bool)

(assert (=> b!7758263 (=> (not res!3093024) (not e!4598390))))

(declare-fun lt!2670033 () Bool)

(assert (=> b!7758263 (= res!3093024 lt!2670033)))

(declare-fun b!7758264 () Bool)

(declare-fun head!15849 (List!73507) C!41654)

(assert (=> b!7758264 (= e!4598390 (= (head!15849 (_2!38160 lt!2670019)) (c!1430559 r2!3230)))))

(declare-fun b!7758265 () Bool)

(declare-fun e!4598384 () Bool)

(declare-fun e!4598389 () Bool)

(assert (=> b!7758265 (= e!4598384 e!4598389)))

(declare-fun res!3093017 () Bool)

(assert (=> b!7758265 (=> res!3093017 e!4598389)))

(assert (=> b!7758265 (= res!3093017 call!719051)))

(declare-fun bm!719046 () Bool)

(declare-fun isEmpty!42049 (List!73507) Bool)

(assert (=> bm!719046 (= call!719051 (isEmpty!42049 (_2!38160 lt!2670019)))))

(declare-fun b!7758266 () Bool)

(declare-fun e!4598388 () Bool)

(declare-fun nullable!9100 (Regex!20664) Bool)

(assert (=> b!7758266 (= e!4598388 (nullable!9100 r2!3230))))

(declare-fun b!7758267 () Bool)

(assert (=> b!7758267 (= e!4598387 e!4598384)))

(declare-fun res!3093020 () Bool)

(assert (=> b!7758267 (=> (not res!3093020) (not e!4598384))))

(assert (=> b!7758267 (= res!3093020 (not lt!2670033))))

(declare-fun d!2343428 () Bool)

(declare-fun e!4598386 () Bool)

(assert (=> d!2343428 e!4598386))

(declare-fun c!1430567 () Bool)

(assert (=> d!2343428 (= c!1430567 (is-EmptyExpr!20664 r2!3230))))

(assert (=> d!2343428 (= lt!2670033 e!4598388)))

(declare-fun c!1430569 () Bool)

(assert (=> d!2343428 (= c!1430569 (isEmpty!42049 (_2!38160 lt!2670019)))))

(assert (=> d!2343428 (validRegex!11080 r2!3230)))

(assert (=> d!2343428 (= (matchR!10140 r2!3230 (_2!38160 lt!2670019)) lt!2670033)))

(declare-fun b!7758268 () Bool)

(declare-fun res!3093018 () Bool)

(assert (=> b!7758268 (=> (not res!3093018) (not e!4598390))))

(declare-fun tail!15389 (List!73507) List!73507)

(assert (=> b!7758268 (= res!3093018 (isEmpty!42049 (tail!15389 (_2!38160 lt!2670019))))))

(declare-fun b!7758269 () Bool)

(declare-fun e!4598385 () Bool)

(assert (=> b!7758269 (= e!4598385 (not lt!2670033))))

(declare-fun b!7758270 () Bool)

(declare-fun res!3093023 () Bool)

(assert (=> b!7758270 (=> res!3093023 e!4598387)))

(assert (=> b!7758270 (= res!3093023 (not (is-ElementMatch!20664 r2!3230)))))

(assert (=> b!7758270 (= e!4598385 e!4598387)))

(declare-fun b!7758271 () Bool)

(declare-fun derivativeStep!6053 (Regex!20664 C!41654) Regex!20664)

(assert (=> b!7758271 (= e!4598388 (matchR!10140 (derivativeStep!6053 r2!3230 (head!15849 (_2!38160 lt!2670019))) (tail!15389 (_2!38160 lt!2670019))))))

(declare-fun b!7758272 () Bool)

(assert (=> b!7758272 (= e!4598386 e!4598385)))

(declare-fun c!1430568 () Bool)

(assert (=> b!7758272 (= c!1430568 (is-EmptyLang!20664 r2!3230))))

(declare-fun b!7758273 () Bool)

(assert (=> b!7758273 (= e!4598386 (= lt!2670033 call!719051))))

(declare-fun b!7758274 () Bool)

(assert (=> b!7758274 (= e!4598389 (not (= (head!15849 (_2!38160 lt!2670019)) (c!1430559 r2!3230))))))

(declare-fun b!7758275 () Bool)

(declare-fun res!3093022 () Bool)

(assert (=> b!7758275 (=> res!3093022 e!4598389)))

(assert (=> b!7758275 (= res!3093022 (not (isEmpty!42049 (tail!15389 (_2!38160 lt!2670019)))))))

(assert (= (and d!2343428 c!1430569) b!7758266))

(assert (= (and d!2343428 (not c!1430569)) b!7758271))

(assert (= (and d!2343428 c!1430567) b!7758273))

(assert (= (and d!2343428 (not c!1430567)) b!7758272))

(assert (= (and b!7758272 c!1430568) b!7758269))

(assert (= (and b!7758272 (not c!1430568)) b!7758270))

(assert (= (and b!7758270 (not res!3093023)) b!7758263))

(assert (= (and b!7758263 res!3093024) b!7758262))

(assert (= (and b!7758262 res!3093019) b!7758268))

(assert (= (and b!7758268 res!3093018) b!7758264))

(assert (= (and b!7758263 (not res!3093021)) b!7758267))

(assert (= (and b!7758267 res!3093020) b!7758265))

(assert (= (and b!7758265 (not res!3093017)) b!7758275))

(assert (= (and b!7758275 (not res!3093022)) b!7758274))

(assert (= (or b!7758273 b!7758262 b!7758265) bm!719046))

(declare-fun m!8219726 () Bool)

(assert (=> b!7758264 m!8219726))

(declare-fun m!8219728 () Bool)

(assert (=> d!2343428 m!8219728))

(assert (=> d!2343428 m!8219692))

(assert (=> b!7758274 m!8219726))

(assert (=> b!7758271 m!8219726))

(assert (=> b!7758271 m!8219726))

(declare-fun m!8219730 () Bool)

(assert (=> b!7758271 m!8219730))

(declare-fun m!8219732 () Bool)

(assert (=> b!7758271 m!8219732))

(assert (=> b!7758271 m!8219730))

(assert (=> b!7758271 m!8219732))

(declare-fun m!8219734 () Bool)

(assert (=> b!7758271 m!8219734))

(assert (=> b!7758275 m!8219732))

(assert (=> b!7758275 m!8219732))

(declare-fun m!8219736 () Bool)

(assert (=> b!7758275 m!8219736))

(assert (=> bm!719046 m!8219728))

(assert (=> b!7758268 m!8219732))

(assert (=> b!7758268 m!8219732))

(assert (=> b!7758268 m!8219736))

(declare-fun m!8219738 () Bool)

(assert (=> b!7758266 m!8219738))

(assert (=> b!7758176 d!2343428))

(declare-fun d!2343432 () Bool)

(declare-fun res!3093039 () Bool)

(declare-fun e!4598411 () Bool)

(assert (=> d!2343432 (=> res!3093039 e!4598411)))

(assert (=> d!2343432 (= res!3093039 (is-ElementMatch!20664 r1!3330))))

(assert (=> d!2343432 (= (validRegex!11080 r1!3330) e!4598411)))

(declare-fun b!7758294 () Bool)

(declare-fun e!4598405 () Bool)

(declare-fun call!719058 () Bool)

(assert (=> b!7758294 (= e!4598405 call!719058)))

(declare-fun b!7758295 () Bool)

(declare-fun res!3093035 () Bool)

(declare-fun e!4598406 () Bool)

(assert (=> b!7758295 (=> (not res!3093035) (not e!4598406))))

(declare-fun call!719059 () Bool)

(assert (=> b!7758295 (= res!3093035 call!719059)))

(declare-fun e!4598408 () Bool)

(assert (=> b!7758295 (= e!4598408 e!4598406)))

(declare-fun b!7758296 () Bool)

(declare-fun e!4598407 () Bool)

(declare-fun call!719060 () Bool)

(assert (=> b!7758296 (= e!4598407 call!719060)))

(declare-fun bm!719053 () Bool)

(assert (=> bm!719053 (= call!719059 call!719060)))

(declare-fun b!7758297 () Bool)

(declare-fun e!4598410 () Bool)

(assert (=> b!7758297 (= e!4598411 e!4598410)))

(declare-fun c!1430575 () Bool)

(assert (=> b!7758297 (= c!1430575 (is-Star!20664 r1!3330))))

(declare-fun bm!719054 () Bool)

(declare-fun c!1430574 () Bool)

(assert (=> bm!719054 (= call!719058 (validRegex!11080 (ite c!1430574 (regTwo!41841 r1!3330) (regTwo!41840 r1!3330))))))

(declare-fun b!7758298 () Bool)

(assert (=> b!7758298 (= e!4598406 call!719058)))

(declare-fun b!7758299 () Bool)

(declare-fun res!3093038 () Bool)

(declare-fun e!4598409 () Bool)

(assert (=> b!7758299 (=> res!3093038 e!4598409)))

(assert (=> b!7758299 (= res!3093038 (not (is-Concat!29509 r1!3330)))))

(assert (=> b!7758299 (= e!4598408 e!4598409)))

(declare-fun b!7758300 () Bool)

(assert (=> b!7758300 (= e!4598409 e!4598405)))

(declare-fun res!3093037 () Bool)

(assert (=> b!7758300 (=> (not res!3093037) (not e!4598405))))

(assert (=> b!7758300 (= res!3093037 call!719059)))

(declare-fun bm!719055 () Bool)

(assert (=> bm!719055 (= call!719060 (validRegex!11080 (ite c!1430575 (reg!20993 r1!3330) (ite c!1430574 (regOne!41841 r1!3330) (regOne!41840 r1!3330)))))))

(declare-fun b!7758301 () Bool)

(assert (=> b!7758301 (= e!4598410 e!4598408)))

(assert (=> b!7758301 (= c!1430574 (is-Union!20664 r1!3330))))

(declare-fun b!7758302 () Bool)

(assert (=> b!7758302 (= e!4598410 e!4598407)))

(declare-fun res!3093036 () Bool)

(assert (=> b!7758302 (= res!3093036 (not (nullable!9100 (reg!20993 r1!3330))))))

(assert (=> b!7758302 (=> (not res!3093036) (not e!4598407))))

(assert (= (and d!2343432 (not res!3093039)) b!7758297))

(assert (= (and b!7758297 c!1430575) b!7758302))

(assert (= (and b!7758297 (not c!1430575)) b!7758301))

(assert (= (and b!7758302 res!3093036) b!7758296))

(assert (= (and b!7758301 c!1430574) b!7758295))

(assert (= (and b!7758301 (not c!1430574)) b!7758299))

(assert (= (and b!7758295 res!3093035) b!7758298))

(assert (= (and b!7758299 (not res!3093038)) b!7758300))

(assert (= (and b!7758300 res!3093037) b!7758294))

(assert (= (or b!7758295 b!7758300) bm!719053))

(assert (= (or b!7758298 b!7758294) bm!719054))

(assert (= (or b!7758296 bm!719053) bm!719055))

(declare-fun m!8219740 () Bool)

(assert (=> bm!719054 m!8219740))

(declare-fun m!8219742 () Bool)

(assert (=> bm!719055 m!8219742))

(declare-fun m!8219744 () Bool)

(assert (=> b!7758302 m!8219744))

(assert (=> start!739258 d!2343432))

(declare-fun b!7758312 () Bool)

(declare-fun e!4598417 () List!73507)

(assert (=> b!7758312 (= e!4598417 (Cons!73383 (h!79831 Nil!73383) (++!17841 (t!388242 Nil!73383) s!10216)))))

(declare-fun d!2343434 () Bool)

(declare-fun e!4598416 () Bool)

(assert (=> d!2343434 e!4598416))

(declare-fun res!3093044 () Bool)

(assert (=> d!2343434 (=> (not res!3093044) (not e!4598416))))

(declare-fun lt!2670036 () List!73507)

(declare-fun content!15568 (List!73507) (Set C!41654))

(assert (=> d!2343434 (= res!3093044 (= (content!15568 lt!2670036) (set.union (content!15568 Nil!73383) (content!15568 s!10216))))))

(assert (=> d!2343434 (= lt!2670036 e!4598417)))

(declare-fun c!1430578 () Bool)

(assert (=> d!2343434 (= c!1430578 (is-Nil!73383 Nil!73383))))

(assert (=> d!2343434 (= (++!17841 Nil!73383 s!10216) lt!2670036)))

(declare-fun b!7758313 () Bool)

(declare-fun res!3093045 () Bool)

(assert (=> b!7758313 (=> (not res!3093045) (not e!4598416))))

(declare-fun size!42671 (List!73507) Int)

(assert (=> b!7758313 (= res!3093045 (= (size!42671 lt!2670036) (+ (size!42671 Nil!73383) (size!42671 s!10216))))))

(declare-fun b!7758311 () Bool)

(assert (=> b!7758311 (= e!4598417 s!10216)))

(declare-fun b!7758314 () Bool)

(assert (=> b!7758314 (= e!4598416 (or (not (= s!10216 Nil!73383)) (= lt!2670036 Nil!73383)))))

(assert (= (and d!2343434 c!1430578) b!7758311))

(assert (= (and d!2343434 (not c!1430578)) b!7758312))

(assert (= (and d!2343434 res!3093044) b!7758313))

(assert (= (and b!7758313 res!3093045) b!7758314))

(declare-fun m!8219746 () Bool)

(assert (=> b!7758312 m!8219746))

(declare-fun m!8219748 () Bool)

(assert (=> d!2343434 m!8219748))

(declare-fun m!8219750 () Bool)

(assert (=> d!2343434 m!8219750))

(declare-fun m!8219752 () Bool)

(assert (=> d!2343434 m!8219752))

(declare-fun m!8219754 () Bool)

(assert (=> b!7758313 m!8219754))

(declare-fun m!8219756 () Bool)

(assert (=> b!7758313 m!8219756))

(declare-fun m!8219758 () Bool)

(assert (=> b!7758313 m!8219758))

(assert (=> b!7758169 d!2343434))

(declare-fun d!2343436 () Bool)

(declare-fun Exists!4721 (Int) Bool)

(assert (=> d!2343436 (Exists!4721 lambda!471942)))

(declare-fun lt!2670039 () Unit!168358)

(declare-fun choose!59436 (tuple2!69714 Int) Unit!168358)

(assert (=> d!2343436 (= lt!2670039 (choose!59436 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)) lambda!471942))))

(declare-fun dynLambda!29988 (Int tuple2!69714) Bool)

(assert (=> d!2343436 (dynLambda!29988 lambda!471942 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)))))

(assert (=> d!2343436 (= (ExistsThe!63 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)) lambda!471942) lt!2670039)))

(declare-fun b_lambda!289435 () Bool)

(assert (=> (not b_lambda!289435) (not d!2343436)))

(declare-fun bs!1965907 () Bool)

(assert (= bs!1965907 d!2343436))

(declare-fun m!8219760 () Bool)

(assert (=> bs!1965907 m!8219760))

(declare-fun m!8219762 () Bool)

(assert (=> bs!1965907 m!8219762))

(declare-fun m!8219764 () Bool)

(assert (=> bs!1965907 m!8219764))

(assert (=> b!7758169 d!2343436))

(declare-fun d!2343438 () Bool)

(declare-fun res!3093050 () Bool)

(declare-fun e!4598424 () Bool)

(assert (=> d!2343438 (=> res!3093050 e!4598424)))

(assert (=> d!2343438 (= res!3093050 (is-ElementMatch!20664 r2!3230))))

(assert (=> d!2343438 (= (validRegex!11080 r2!3230) e!4598424)))

(declare-fun b!7758315 () Bool)

(declare-fun e!4598418 () Bool)

(declare-fun call!719061 () Bool)

(assert (=> b!7758315 (= e!4598418 call!719061)))

(declare-fun b!7758316 () Bool)

(declare-fun res!3093046 () Bool)

(declare-fun e!4598419 () Bool)

(assert (=> b!7758316 (=> (not res!3093046) (not e!4598419))))

(declare-fun call!719062 () Bool)

(assert (=> b!7758316 (= res!3093046 call!719062)))

(declare-fun e!4598421 () Bool)

(assert (=> b!7758316 (= e!4598421 e!4598419)))

(declare-fun b!7758317 () Bool)

(declare-fun e!4598420 () Bool)

(declare-fun call!719063 () Bool)

(assert (=> b!7758317 (= e!4598420 call!719063)))

(declare-fun bm!719056 () Bool)

(assert (=> bm!719056 (= call!719062 call!719063)))

(declare-fun b!7758318 () Bool)

(declare-fun e!4598423 () Bool)

(assert (=> b!7758318 (= e!4598424 e!4598423)))

(declare-fun c!1430580 () Bool)

(assert (=> b!7758318 (= c!1430580 (is-Star!20664 r2!3230))))

(declare-fun bm!719057 () Bool)

(declare-fun c!1430579 () Bool)

(assert (=> bm!719057 (= call!719061 (validRegex!11080 (ite c!1430579 (regTwo!41841 r2!3230) (regTwo!41840 r2!3230))))))

(declare-fun b!7758319 () Bool)

(assert (=> b!7758319 (= e!4598419 call!719061)))

(declare-fun b!7758320 () Bool)

(declare-fun res!3093049 () Bool)

(declare-fun e!4598422 () Bool)

(assert (=> b!7758320 (=> res!3093049 e!4598422)))

(assert (=> b!7758320 (= res!3093049 (not (is-Concat!29509 r2!3230)))))

(assert (=> b!7758320 (= e!4598421 e!4598422)))

(declare-fun b!7758321 () Bool)

(assert (=> b!7758321 (= e!4598422 e!4598418)))

(declare-fun res!3093048 () Bool)

(assert (=> b!7758321 (=> (not res!3093048) (not e!4598418))))

(assert (=> b!7758321 (= res!3093048 call!719062)))

(declare-fun bm!719058 () Bool)

(assert (=> bm!719058 (= call!719063 (validRegex!11080 (ite c!1430580 (reg!20993 r2!3230) (ite c!1430579 (regOne!41841 r2!3230) (regOne!41840 r2!3230)))))))

(declare-fun b!7758322 () Bool)

(assert (=> b!7758322 (= e!4598423 e!4598421)))

(assert (=> b!7758322 (= c!1430579 (is-Union!20664 r2!3230))))

(declare-fun b!7758323 () Bool)

(assert (=> b!7758323 (= e!4598423 e!4598420)))

(declare-fun res!3093047 () Bool)

(assert (=> b!7758323 (= res!3093047 (not (nullable!9100 (reg!20993 r2!3230))))))

(assert (=> b!7758323 (=> (not res!3093047) (not e!4598420))))

(assert (= (and d!2343438 (not res!3093050)) b!7758318))

(assert (= (and b!7758318 c!1430580) b!7758323))

(assert (= (and b!7758318 (not c!1430580)) b!7758322))

(assert (= (and b!7758323 res!3093047) b!7758317))

(assert (= (and b!7758322 c!1430579) b!7758316))

(assert (= (and b!7758322 (not c!1430579)) b!7758320))

(assert (= (and b!7758316 res!3093046) b!7758319))

(assert (= (and b!7758320 (not res!3093049)) b!7758321))

(assert (= (and b!7758321 res!3093048) b!7758315))

(assert (= (or b!7758316 b!7758321) bm!719056))

(assert (= (or b!7758319 b!7758315) bm!719057))

(assert (= (or b!7758317 bm!719056) bm!719058))

(declare-fun m!8219766 () Bool)

(assert (=> bm!719057 m!8219766))

(declare-fun m!8219768 () Bool)

(assert (=> bm!719058 m!8219768))

(declare-fun m!8219770 () Bool)

(assert (=> b!7758323 m!8219770))

(assert (=> b!7758162 d!2343438))

(declare-fun b!7758325 () Bool)

(declare-fun e!4598426 () List!73507)

(assert (=> b!7758325 (= e!4598426 (Cons!73383 (h!79831 (_1!38160 lt!2670019)) (++!17841 (t!388242 (_1!38160 lt!2670019)) (_2!38160 lt!2670019))))))

(declare-fun d!2343440 () Bool)

(declare-fun e!4598425 () Bool)

(assert (=> d!2343440 e!4598425))

(declare-fun res!3093051 () Bool)

(assert (=> d!2343440 (=> (not res!3093051) (not e!4598425))))

(declare-fun lt!2670040 () List!73507)

(assert (=> d!2343440 (= res!3093051 (= (content!15568 lt!2670040) (set.union (content!15568 (_1!38160 lt!2670019)) (content!15568 (_2!38160 lt!2670019)))))))

(assert (=> d!2343440 (= lt!2670040 e!4598426)))

(declare-fun c!1430581 () Bool)

(assert (=> d!2343440 (= c!1430581 (is-Nil!73383 (_1!38160 lt!2670019)))))

(assert (=> d!2343440 (= (++!17841 (_1!38160 lt!2670019) (_2!38160 lt!2670019)) lt!2670040)))

(declare-fun b!7758326 () Bool)

(declare-fun res!3093052 () Bool)

(assert (=> b!7758326 (=> (not res!3093052) (not e!4598425))))

(assert (=> b!7758326 (= res!3093052 (= (size!42671 lt!2670040) (+ (size!42671 (_1!38160 lt!2670019)) (size!42671 (_2!38160 lt!2670019)))))))

(declare-fun b!7758324 () Bool)

(assert (=> b!7758324 (= e!4598426 (_2!38160 lt!2670019))))

(declare-fun b!7758327 () Bool)

(assert (=> b!7758327 (= e!4598425 (or (not (= (_2!38160 lt!2670019) Nil!73383)) (= lt!2670040 (_1!38160 lt!2670019))))))

(assert (= (and d!2343440 c!1430581) b!7758324))

(assert (= (and d!2343440 (not c!1430581)) b!7758325))

(assert (= (and d!2343440 res!3093051) b!7758326))

(assert (= (and b!7758326 res!3093052) b!7758327))

(declare-fun m!8219772 () Bool)

(assert (=> b!7758325 m!8219772))

(declare-fun m!8219774 () Bool)

(assert (=> d!2343440 m!8219774))

(declare-fun m!8219776 () Bool)

(assert (=> d!2343440 m!8219776))

(declare-fun m!8219778 () Bool)

(assert (=> d!2343440 m!8219778))

(declare-fun m!8219780 () Bool)

(assert (=> b!7758326 m!8219780))

(declare-fun m!8219782 () Bool)

(assert (=> b!7758326 m!8219782))

(declare-fun m!8219784 () Bool)

(assert (=> b!7758326 m!8219784))

(assert (=> b!7758167 d!2343440))

(declare-fun d!2343442 () Bool)

(assert (=> d!2343442 (= (get!26149 lt!2670021) (v!54785 lt!2670021))))

(assert (=> b!7758167 d!2343442))

(declare-fun d!2343444 () Bool)

(declare-fun isEmpty!42050 (Option!17651) Bool)

(assert (=> d!2343444 (= (isDefined!14263 lt!2670021) (not (isEmpty!42050 lt!2670021)))))

(declare-fun bs!1965908 () Bool)

(assert (= bs!1965908 d!2343444))

(declare-fun m!8219786 () Bool)

(assert (=> bs!1965908 m!8219786))

(assert (=> b!7758168 d!2343444))

(declare-fun b!7758388 () Bool)

(declare-fun e!4598461 () Option!17651)

(assert (=> b!7758388 (= e!4598461 (Some!17650 (tuple2!69715 Nil!73383 s!10216)))))

(declare-fun b!7758389 () Bool)

(declare-fun e!4598460 () Bool)

(declare-fun lt!2670050 () Option!17651)

(assert (=> b!7758389 (= e!4598460 (= (++!17841 (_1!38160 (get!26149 lt!2670050)) (_2!38160 (get!26149 lt!2670050))) s!10216))))

(declare-fun b!7758390 () Bool)

(declare-fun e!4598462 () Option!17651)

(assert (=> b!7758390 (= e!4598461 e!4598462)))

(declare-fun c!1430596 () Bool)

(assert (=> b!7758390 (= c!1430596 (is-Nil!73383 s!10216))))

(declare-fun b!7758391 () Bool)

(assert (=> b!7758391 (= e!4598462 None!17650)))

(declare-fun b!7758392 () Bool)

(declare-fun e!4598458 () Bool)

(assert (=> b!7758392 (= e!4598458 (matchR!10140 r2!3230 s!10216))))

(declare-fun b!7758393 () Bool)

(declare-fun e!4598459 () Bool)

(assert (=> b!7758393 (= e!4598459 (not (isDefined!14263 lt!2670050)))))

(declare-fun b!7758394 () Bool)

(declare-fun res!3093089 () Bool)

(assert (=> b!7758394 (=> (not res!3093089) (not e!4598460))))

(assert (=> b!7758394 (= res!3093089 (matchR!10140 r1!3330 (_1!38160 (get!26149 lt!2670050))))))

(declare-fun b!7758395 () Bool)

(declare-fun res!3093091 () Bool)

(assert (=> b!7758395 (=> (not res!3093091) (not e!4598460))))

(assert (=> b!7758395 (= res!3093091 (matchR!10140 r2!3230 (_2!38160 (get!26149 lt!2670050))))))

(declare-fun d!2343446 () Bool)

(assert (=> d!2343446 e!4598459))

(declare-fun res!3093090 () Bool)

(assert (=> d!2343446 (=> res!3093090 e!4598459)))

(assert (=> d!2343446 (= res!3093090 e!4598460)))

(declare-fun res!3093088 () Bool)

(assert (=> d!2343446 (=> (not res!3093088) (not e!4598460))))

(assert (=> d!2343446 (= res!3093088 (isDefined!14263 lt!2670050))))

(assert (=> d!2343446 (= lt!2670050 e!4598461)))

(declare-fun c!1430595 () Bool)

(assert (=> d!2343446 (= c!1430595 e!4598458)))

(declare-fun res!3093087 () Bool)

(assert (=> d!2343446 (=> (not res!3093087) (not e!4598458))))

(assert (=> d!2343446 (= res!3093087 (matchR!10140 r1!3330 Nil!73383))))

(assert (=> d!2343446 (validRegex!11080 r1!3330)))

(assert (=> d!2343446 (= (findConcatSeparation!3681 r1!3330 r2!3230 Nil!73383 s!10216 s!10216) lt!2670050)))

(declare-fun b!7758396 () Bool)

(declare-fun lt!2670051 () Unit!168358)

(declare-fun lt!2670052 () Unit!168358)

(assert (=> b!7758396 (= lt!2670051 lt!2670052)))

(assert (=> b!7758396 (= (++!17841 (++!17841 Nil!73383 (Cons!73383 (h!79831 s!10216) Nil!73383)) (t!388242 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3352 (List!73507 C!41654 List!73507 List!73507) Unit!168358)

(assert (=> b!7758396 (= lt!2670052 (lemmaMoveElementToOtherListKeepsConcatEq!3352 Nil!73383 (h!79831 s!10216) (t!388242 s!10216) s!10216))))

(assert (=> b!7758396 (= e!4598462 (findConcatSeparation!3681 r1!3330 r2!3230 (++!17841 Nil!73383 (Cons!73383 (h!79831 s!10216) Nil!73383)) (t!388242 s!10216) s!10216))))

(assert (= (and d!2343446 res!3093087) b!7758392))

(assert (= (and d!2343446 c!1430595) b!7758388))

(assert (= (and d!2343446 (not c!1430595)) b!7758390))

(assert (= (and b!7758390 c!1430596) b!7758391))

(assert (= (and b!7758390 (not c!1430596)) b!7758396))

(assert (= (and d!2343446 res!3093088) b!7758394))

(assert (= (and b!7758394 res!3093089) b!7758395))

(assert (= (and b!7758395 res!3093091) b!7758389))

(assert (= (and d!2343446 (not res!3093090)) b!7758393))

(declare-fun m!8219788 () Bool)

(assert (=> d!2343446 m!8219788))

(declare-fun m!8219790 () Bool)

(assert (=> d!2343446 m!8219790))

(assert (=> d!2343446 m!8219702))

(declare-fun m!8219792 () Bool)

(assert (=> b!7758396 m!8219792))

(assert (=> b!7758396 m!8219792))

(declare-fun m!8219794 () Bool)

(assert (=> b!7758396 m!8219794))

(declare-fun m!8219796 () Bool)

(assert (=> b!7758396 m!8219796))

(assert (=> b!7758396 m!8219792))

(declare-fun m!8219798 () Bool)

(assert (=> b!7758396 m!8219798))

(assert (=> b!7758393 m!8219788))

(declare-fun m!8219800 () Bool)

(assert (=> b!7758389 m!8219800))

(declare-fun m!8219802 () Bool)

(assert (=> b!7758389 m!8219802))

(assert (=> b!7758394 m!8219800))

(declare-fun m!8219804 () Bool)

(assert (=> b!7758394 m!8219804))

(assert (=> b!7758395 m!8219800))

(declare-fun m!8219806 () Bool)

(assert (=> b!7758395 m!8219806))

(declare-fun m!8219808 () Bool)

(assert (=> b!7758392 m!8219808))

(assert (=> b!7758168 d!2343446))

(declare-fun b!7758397 () Bool)

(declare-fun res!3093094 () Bool)

(declare-fun e!4598469 () Bool)

(assert (=> b!7758397 (=> (not res!3093094) (not e!4598469))))

(declare-fun call!719067 () Bool)

(assert (=> b!7758397 (= res!3093094 (not call!719067))))

(declare-fun b!7758398 () Bool)

(declare-fun res!3093096 () Bool)

(declare-fun e!4598466 () Bool)

(assert (=> b!7758398 (=> res!3093096 e!4598466)))

(assert (=> b!7758398 (= res!3093096 e!4598469)))

(declare-fun res!3093099 () Bool)

(assert (=> b!7758398 (=> (not res!3093099) (not e!4598469))))

(declare-fun lt!2670053 () Bool)

(assert (=> b!7758398 (= res!3093099 lt!2670053)))

(declare-fun b!7758399 () Bool)

(assert (=> b!7758399 (= e!4598469 (= (head!15849 (_1!38160 lt!2670019)) (c!1430559 r1!3330)))))

(declare-fun b!7758400 () Bool)

(declare-fun e!4598463 () Bool)

(declare-fun e!4598468 () Bool)

(assert (=> b!7758400 (= e!4598463 e!4598468)))

(declare-fun res!3093092 () Bool)

(assert (=> b!7758400 (=> res!3093092 e!4598468)))

(assert (=> b!7758400 (= res!3093092 call!719067)))

(declare-fun bm!719062 () Bool)

(assert (=> bm!719062 (= call!719067 (isEmpty!42049 (_1!38160 lt!2670019)))))

(declare-fun b!7758401 () Bool)

(declare-fun e!4598467 () Bool)

(assert (=> b!7758401 (= e!4598467 (nullable!9100 r1!3330))))

(declare-fun b!7758402 () Bool)

(assert (=> b!7758402 (= e!4598466 e!4598463)))

(declare-fun res!3093095 () Bool)

(assert (=> b!7758402 (=> (not res!3093095) (not e!4598463))))

(assert (=> b!7758402 (= res!3093095 (not lt!2670053))))

(declare-fun d!2343448 () Bool)

(declare-fun e!4598465 () Bool)

(assert (=> d!2343448 e!4598465))

(declare-fun c!1430597 () Bool)

(assert (=> d!2343448 (= c!1430597 (is-EmptyExpr!20664 r1!3330))))

(assert (=> d!2343448 (= lt!2670053 e!4598467)))

(declare-fun c!1430599 () Bool)

(assert (=> d!2343448 (= c!1430599 (isEmpty!42049 (_1!38160 lt!2670019)))))

(assert (=> d!2343448 (validRegex!11080 r1!3330)))

(assert (=> d!2343448 (= (matchR!10140 r1!3330 (_1!38160 lt!2670019)) lt!2670053)))

(declare-fun b!7758403 () Bool)

(declare-fun res!3093093 () Bool)

(assert (=> b!7758403 (=> (not res!3093093) (not e!4598469))))

(assert (=> b!7758403 (= res!3093093 (isEmpty!42049 (tail!15389 (_1!38160 lt!2670019))))))

(declare-fun b!7758404 () Bool)

(declare-fun e!4598464 () Bool)

(assert (=> b!7758404 (= e!4598464 (not lt!2670053))))

(declare-fun b!7758405 () Bool)

(declare-fun res!3093098 () Bool)

(assert (=> b!7758405 (=> res!3093098 e!4598466)))

(assert (=> b!7758405 (= res!3093098 (not (is-ElementMatch!20664 r1!3330)))))

(assert (=> b!7758405 (= e!4598464 e!4598466)))

(declare-fun b!7758406 () Bool)

(assert (=> b!7758406 (= e!4598467 (matchR!10140 (derivativeStep!6053 r1!3330 (head!15849 (_1!38160 lt!2670019))) (tail!15389 (_1!38160 lt!2670019))))))

(declare-fun b!7758407 () Bool)

(assert (=> b!7758407 (= e!4598465 e!4598464)))

(declare-fun c!1430598 () Bool)

(assert (=> b!7758407 (= c!1430598 (is-EmptyLang!20664 r1!3330))))

(declare-fun b!7758408 () Bool)

(assert (=> b!7758408 (= e!4598465 (= lt!2670053 call!719067))))

(declare-fun b!7758409 () Bool)

(assert (=> b!7758409 (= e!4598468 (not (= (head!15849 (_1!38160 lt!2670019)) (c!1430559 r1!3330))))))

(declare-fun b!7758410 () Bool)

(declare-fun res!3093097 () Bool)

(assert (=> b!7758410 (=> res!3093097 e!4598468)))

(assert (=> b!7758410 (= res!3093097 (not (isEmpty!42049 (tail!15389 (_1!38160 lt!2670019)))))))

(assert (= (and d!2343448 c!1430599) b!7758401))

(assert (= (and d!2343448 (not c!1430599)) b!7758406))

(assert (= (and d!2343448 c!1430597) b!7758408))

(assert (= (and d!2343448 (not c!1430597)) b!7758407))

(assert (= (and b!7758407 c!1430598) b!7758404))

(assert (= (and b!7758407 (not c!1430598)) b!7758405))

(assert (= (and b!7758405 (not res!3093098)) b!7758398))

(assert (= (and b!7758398 res!3093099) b!7758397))

(assert (= (and b!7758397 res!3093094) b!7758403))

(assert (= (and b!7758403 res!3093093) b!7758399))

(assert (= (and b!7758398 (not res!3093096)) b!7758402))

(assert (= (and b!7758402 res!3093095) b!7758400))

(assert (= (and b!7758400 (not res!3093092)) b!7758410))

(assert (= (and b!7758410 (not res!3093097)) b!7758409))

(assert (= (or b!7758408 b!7758397 b!7758400) bm!719062))

(declare-fun m!8219822 () Bool)

(assert (=> b!7758399 m!8219822))

(declare-fun m!8219826 () Bool)

(assert (=> d!2343448 m!8219826))

(assert (=> d!2343448 m!8219702))

(assert (=> b!7758409 m!8219822))

(assert (=> b!7758406 m!8219822))

(assert (=> b!7758406 m!8219822))

(declare-fun m!8219828 () Bool)

(assert (=> b!7758406 m!8219828))

(declare-fun m!8219830 () Bool)

(assert (=> b!7758406 m!8219830))

(assert (=> b!7758406 m!8219828))

(assert (=> b!7758406 m!8219830))

(declare-fun m!8219832 () Bool)

(assert (=> b!7758406 m!8219832))

(assert (=> b!7758410 m!8219830))

(assert (=> b!7758410 m!8219830))

(declare-fun m!8219834 () Bool)

(assert (=> b!7758410 m!8219834))

(assert (=> bm!719062 m!8219826))

(assert (=> b!7758403 m!8219830))

(assert (=> b!7758403 m!8219830))

(assert (=> b!7758403 m!8219834))

(declare-fun m!8219836 () Bool)

(assert (=> b!7758401 m!8219836))

(assert (=> b!7758173 d!2343448))

(declare-fun b!7758421 () Bool)

(declare-fun e!4598472 () Bool)

(assert (=> b!7758421 (= e!4598472 tp_is_empty!51683)))

(assert (=> b!7758170 (= tp!2277518 e!4598472)))

(declare-fun b!7758423 () Bool)

(declare-fun tp!2277569 () Bool)

(assert (=> b!7758423 (= e!4598472 tp!2277569)))

(declare-fun b!7758422 () Bool)

(declare-fun tp!2277567 () Bool)

(declare-fun tp!2277568 () Bool)

(assert (=> b!7758422 (= e!4598472 (and tp!2277567 tp!2277568))))

(declare-fun b!7758424 () Bool)

(declare-fun tp!2277570 () Bool)

(declare-fun tp!2277566 () Bool)

(assert (=> b!7758424 (= e!4598472 (and tp!2277570 tp!2277566))))

(assert (= (and b!7758170 (is-ElementMatch!20664 (regOne!41841 r2!3230))) b!7758421))

(assert (= (and b!7758170 (is-Concat!29509 (regOne!41841 r2!3230))) b!7758422))

(assert (= (and b!7758170 (is-Star!20664 (regOne!41841 r2!3230))) b!7758423))

(assert (= (and b!7758170 (is-Union!20664 (regOne!41841 r2!3230))) b!7758424))

(declare-fun b!7758425 () Bool)

(declare-fun e!4598473 () Bool)

(assert (=> b!7758425 (= e!4598473 tp_is_empty!51683)))

(assert (=> b!7758170 (= tp!2277515 e!4598473)))

(declare-fun b!7758427 () Bool)

(declare-fun tp!2277574 () Bool)

(assert (=> b!7758427 (= e!4598473 tp!2277574)))

(declare-fun b!7758426 () Bool)

(declare-fun tp!2277572 () Bool)

(declare-fun tp!2277573 () Bool)

(assert (=> b!7758426 (= e!4598473 (and tp!2277572 tp!2277573))))

(declare-fun b!7758428 () Bool)

(declare-fun tp!2277575 () Bool)

(declare-fun tp!2277571 () Bool)

(assert (=> b!7758428 (= e!4598473 (and tp!2277575 tp!2277571))))

(assert (= (and b!7758170 (is-ElementMatch!20664 (regTwo!41841 r2!3230))) b!7758425))

(assert (= (and b!7758170 (is-Concat!29509 (regTwo!41841 r2!3230))) b!7758426))

(assert (= (and b!7758170 (is-Star!20664 (regTwo!41841 r2!3230))) b!7758427))

(assert (= (and b!7758170 (is-Union!20664 (regTwo!41841 r2!3230))) b!7758428))

(declare-fun b!7758429 () Bool)

(declare-fun e!4598474 () Bool)

(assert (=> b!7758429 (= e!4598474 tp_is_empty!51683)))

(assert (=> b!7758175 (= tp!2277516 e!4598474)))

(declare-fun b!7758431 () Bool)

(declare-fun tp!2277579 () Bool)

(assert (=> b!7758431 (= e!4598474 tp!2277579)))

(declare-fun b!7758430 () Bool)

(declare-fun tp!2277577 () Bool)

(declare-fun tp!2277578 () Bool)

(assert (=> b!7758430 (= e!4598474 (and tp!2277577 tp!2277578))))

(declare-fun b!7758432 () Bool)

(declare-fun tp!2277580 () Bool)

(declare-fun tp!2277576 () Bool)

(assert (=> b!7758432 (= e!4598474 (and tp!2277580 tp!2277576))))

(assert (= (and b!7758175 (is-ElementMatch!20664 (reg!20993 r1!3330))) b!7758429))

(assert (= (and b!7758175 (is-Concat!29509 (reg!20993 r1!3330))) b!7758430))

(assert (= (and b!7758175 (is-Star!20664 (reg!20993 r1!3330))) b!7758431))

(assert (= (and b!7758175 (is-Union!20664 (reg!20993 r1!3330))) b!7758432))

(declare-fun b!7758433 () Bool)

(declare-fun e!4598475 () Bool)

(assert (=> b!7758433 (= e!4598475 tp_is_empty!51683)))

(assert (=> b!7758165 (= tp!2277512 e!4598475)))

(declare-fun b!7758435 () Bool)

(declare-fun tp!2277584 () Bool)

(assert (=> b!7758435 (= e!4598475 tp!2277584)))

(declare-fun b!7758434 () Bool)

(declare-fun tp!2277582 () Bool)

(declare-fun tp!2277583 () Bool)

(assert (=> b!7758434 (= e!4598475 (and tp!2277582 tp!2277583))))

(declare-fun b!7758436 () Bool)

(declare-fun tp!2277585 () Bool)

(declare-fun tp!2277581 () Bool)

(assert (=> b!7758436 (= e!4598475 (and tp!2277585 tp!2277581))))

(assert (= (and b!7758165 (is-ElementMatch!20664 (reg!20993 r2!3230))) b!7758433))

(assert (= (and b!7758165 (is-Concat!29509 (reg!20993 r2!3230))) b!7758434))

(assert (= (and b!7758165 (is-Star!20664 (reg!20993 r2!3230))) b!7758435))

(assert (= (and b!7758165 (is-Union!20664 (reg!20993 r2!3230))) b!7758436))

(declare-fun b!7758441 () Bool)

(declare-fun e!4598478 () Bool)

(declare-fun tp!2277588 () Bool)

(assert (=> b!7758441 (= e!4598478 (and tp_is_empty!51683 tp!2277588))))

(assert (=> b!7758174 (= tp!2277522 e!4598478)))

(assert (= (and b!7758174 (is-Cons!73383 (t!388242 s!10216))) b!7758441))

(declare-fun b!7758442 () Bool)

(declare-fun e!4598479 () Bool)

(assert (=> b!7758442 (= e!4598479 tp_is_empty!51683)))

(assert (=> b!7758163 (= tp!2277519 e!4598479)))

(declare-fun b!7758444 () Bool)

(declare-fun tp!2277592 () Bool)

(assert (=> b!7758444 (= e!4598479 tp!2277592)))

(declare-fun b!7758443 () Bool)

(declare-fun tp!2277590 () Bool)

(declare-fun tp!2277591 () Bool)

(assert (=> b!7758443 (= e!4598479 (and tp!2277590 tp!2277591))))

(declare-fun b!7758445 () Bool)

(declare-fun tp!2277593 () Bool)

(declare-fun tp!2277589 () Bool)

(assert (=> b!7758445 (= e!4598479 (and tp!2277593 tp!2277589))))

(assert (= (and b!7758163 (is-ElementMatch!20664 (regOne!41840 r2!3230))) b!7758442))

(assert (= (and b!7758163 (is-Concat!29509 (regOne!41840 r2!3230))) b!7758443))

(assert (= (and b!7758163 (is-Star!20664 (regOne!41840 r2!3230))) b!7758444))

(assert (= (and b!7758163 (is-Union!20664 (regOne!41840 r2!3230))) b!7758445))

(declare-fun b!7758446 () Bool)

(declare-fun e!4598480 () Bool)

(assert (=> b!7758446 (= e!4598480 tp_is_empty!51683)))

(assert (=> b!7758163 (= tp!2277513 e!4598480)))

(declare-fun b!7758448 () Bool)

(declare-fun tp!2277597 () Bool)

(assert (=> b!7758448 (= e!4598480 tp!2277597)))

(declare-fun b!7758447 () Bool)

(declare-fun tp!2277595 () Bool)

(declare-fun tp!2277596 () Bool)

(assert (=> b!7758447 (= e!4598480 (and tp!2277595 tp!2277596))))

(declare-fun b!7758449 () Bool)

(declare-fun tp!2277598 () Bool)

(declare-fun tp!2277594 () Bool)

(assert (=> b!7758449 (= e!4598480 (and tp!2277598 tp!2277594))))

(assert (= (and b!7758163 (is-ElementMatch!20664 (regTwo!41840 r2!3230))) b!7758446))

(assert (= (and b!7758163 (is-Concat!29509 (regTwo!41840 r2!3230))) b!7758447))

(assert (= (and b!7758163 (is-Star!20664 (regTwo!41840 r2!3230))) b!7758448))

(assert (= (and b!7758163 (is-Union!20664 (regTwo!41840 r2!3230))) b!7758449))

(declare-fun b!7758450 () Bool)

(declare-fun e!4598481 () Bool)

(assert (=> b!7758450 (= e!4598481 tp_is_empty!51683)))

(assert (=> b!7758164 (= tp!2277514 e!4598481)))

(declare-fun b!7758452 () Bool)

(declare-fun tp!2277602 () Bool)

(assert (=> b!7758452 (= e!4598481 tp!2277602)))

(declare-fun b!7758451 () Bool)

(declare-fun tp!2277600 () Bool)

(declare-fun tp!2277601 () Bool)

(assert (=> b!7758451 (= e!4598481 (and tp!2277600 tp!2277601))))

(declare-fun b!7758453 () Bool)

(declare-fun tp!2277603 () Bool)

(declare-fun tp!2277599 () Bool)

(assert (=> b!7758453 (= e!4598481 (and tp!2277603 tp!2277599))))

(assert (= (and b!7758164 (is-ElementMatch!20664 (regOne!41841 r1!3330))) b!7758450))

(assert (= (and b!7758164 (is-Concat!29509 (regOne!41841 r1!3330))) b!7758451))

(assert (= (and b!7758164 (is-Star!20664 (regOne!41841 r1!3330))) b!7758452))

(assert (= (and b!7758164 (is-Union!20664 (regOne!41841 r1!3330))) b!7758453))

(declare-fun b!7758454 () Bool)

(declare-fun e!4598482 () Bool)

(assert (=> b!7758454 (= e!4598482 tp_is_empty!51683)))

(assert (=> b!7758164 (= tp!2277520 e!4598482)))

(declare-fun b!7758456 () Bool)

(declare-fun tp!2277607 () Bool)

(assert (=> b!7758456 (= e!4598482 tp!2277607)))

(declare-fun b!7758455 () Bool)

(declare-fun tp!2277605 () Bool)

(declare-fun tp!2277606 () Bool)

(assert (=> b!7758455 (= e!4598482 (and tp!2277605 tp!2277606))))

(declare-fun b!7758457 () Bool)

(declare-fun tp!2277608 () Bool)

(declare-fun tp!2277604 () Bool)

(assert (=> b!7758457 (= e!4598482 (and tp!2277608 tp!2277604))))

(assert (= (and b!7758164 (is-ElementMatch!20664 (regTwo!41841 r1!3330))) b!7758454))

(assert (= (and b!7758164 (is-Concat!29509 (regTwo!41841 r1!3330))) b!7758455))

(assert (= (and b!7758164 (is-Star!20664 (regTwo!41841 r1!3330))) b!7758456))

(assert (= (and b!7758164 (is-Union!20664 (regTwo!41841 r1!3330))) b!7758457))

(declare-fun b!7758458 () Bool)

(declare-fun e!4598483 () Bool)

(assert (=> b!7758458 (= e!4598483 tp_is_empty!51683)))

(assert (=> b!7758166 (= tp!2277517 e!4598483)))

(declare-fun b!7758460 () Bool)

(declare-fun tp!2277612 () Bool)

(assert (=> b!7758460 (= e!4598483 tp!2277612)))

(declare-fun b!7758459 () Bool)

(declare-fun tp!2277610 () Bool)

(declare-fun tp!2277611 () Bool)

(assert (=> b!7758459 (= e!4598483 (and tp!2277610 tp!2277611))))

(declare-fun b!7758461 () Bool)

(declare-fun tp!2277613 () Bool)

(declare-fun tp!2277609 () Bool)

(assert (=> b!7758461 (= e!4598483 (and tp!2277613 tp!2277609))))

(assert (= (and b!7758166 (is-ElementMatch!20664 (regOne!41840 r1!3330))) b!7758458))

(assert (= (and b!7758166 (is-Concat!29509 (regOne!41840 r1!3330))) b!7758459))

(assert (= (and b!7758166 (is-Star!20664 (regOne!41840 r1!3330))) b!7758460))

(assert (= (and b!7758166 (is-Union!20664 (regOne!41840 r1!3330))) b!7758461))

(declare-fun b!7758462 () Bool)

(declare-fun e!4598484 () Bool)

(assert (=> b!7758462 (= e!4598484 tp_is_empty!51683)))

(assert (=> b!7758166 (= tp!2277521 e!4598484)))

(declare-fun b!7758464 () Bool)

(declare-fun tp!2277617 () Bool)

(assert (=> b!7758464 (= e!4598484 tp!2277617)))

(declare-fun b!7758463 () Bool)

(declare-fun tp!2277615 () Bool)

(declare-fun tp!2277616 () Bool)

(assert (=> b!7758463 (= e!4598484 (and tp!2277615 tp!2277616))))

(declare-fun b!7758465 () Bool)

(declare-fun tp!2277618 () Bool)

(declare-fun tp!2277614 () Bool)

(assert (=> b!7758465 (= e!4598484 (and tp!2277618 tp!2277614))))

(assert (= (and b!7758166 (is-ElementMatch!20664 (regTwo!41840 r1!3330))) b!7758462))

(assert (= (and b!7758166 (is-Concat!29509 (regTwo!41840 r1!3330))) b!7758463))

(assert (= (and b!7758166 (is-Star!20664 (regTwo!41840 r1!3330))) b!7758464))

(assert (= (and b!7758166 (is-Union!20664 (regTwo!41840 r1!3330))) b!7758465))

(declare-fun b_lambda!289437 () Bool)

(assert (= b_lambda!289435 (or b!7758169 b_lambda!289437)))

(declare-fun bs!1965909 () Bool)

(declare-fun d!2343452 () Bool)

(assert (= bs!1965909 (and d!2343452 b!7758169)))

(declare-fun res!3093100 () Bool)

(declare-fun e!4598485 () Bool)

(assert (=> bs!1965909 (=> (not res!3093100) (not e!4598485))))

(assert (=> bs!1965909 (= res!3093100 (= (++!17841 (_1!38160 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019))) (_2!38160 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)))) s!10216))))

(assert (=> bs!1965909 (= (dynLambda!29988 lambda!471942 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019))) e!4598485)))

(declare-fun b!7758466 () Bool)

(declare-fun res!3093101 () Bool)

(assert (=> b!7758466 (=> (not res!3093101) (not e!4598485))))

(assert (=> b!7758466 (= res!3093101 (matchR!10140 r1!3330 (_1!38160 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)))))))

(declare-fun b!7758467 () Bool)

(assert (=> b!7758467 (= e!4598485 (matchR!10140 r2!3230 (_2!38160 (tuple2!69715 (_1!38160 lt!2670019) (_2!38160 lt!2670019)))))))

(assert (= (and bs!1965909 res!3093100) b!7758466))

(assert (= (and b!7758466 res!3093101) b!7758467))

(declare-fun m!8219838 () Bool)

(assert (=> bs!1965909 m!8219838))

(declare-fun m!8219840 () Bool)

(assert (=> b!7758466 m!8219840))

(declare-fun m!8219842 () Bool)

(assert (=> b!7758467 m!8219842))

(assert (=> d!2343436 d!2343452))

(push 1)

(assert (not d!2343440))

(assert (not b!7758459))

(assert (not b!7758447))

(assert (not b!7758449))

(assert (not b!7758410))

(assert (not b!7758422))

(assert (not b!7758448))

(assert (not b!7758427))

(assert (not bm!719055))

(assert (not b!7758406))

(assert (not b!7758325))

(assert (not b!7758452))

(assert (not b!7758409))

(assert (not b!7758399))

(assert (not b!7758401))

(assert (not b!7758424))

(assert (not b!7758430))

(assert (not b!7758423))

(assert (not b!7758274))

(assert (not d!2343428))

(assert (not b!7758460))

(assert (not d!2343444))

(assert (not b!7758268))

(assert (not b!7758455))

(assert (not bm!719062))

(assert (not b_lambda!289437))

(assert (not b!7758394))

(assert (not bs!1965909))

(assert (not b!7758457))

(assert (not bm!719057))

(assert (not b!7758428))

(assert (not b!7758467))

(assert (not b!7758456))

(assert (not b!7758434))

(assert (not b!7758451))

(assert (not d!2343446))

(assert (not b!7758396))

(assert (not b!7758403))

(assert (not bm!719046))

(assert (not b!7758326))

(assert (not b!7758264))

(assert (not b!7758271))

(assert (not b!7758312))

(assert (not b!7758445))

(assert (not b!7758464))

(assert (not d!2343436))

(assert (not b!7758466))

(assert (not b!7758453))

(assert (not d!2343448))

(assert (not b!7758463))

(assert (not b!7758465))

(assert (not b!7758436))

(assert (not b!7758302))

(assert (not bm!719058))

(assert (not bm!719054))

(assert (not b!7758392))

(assert (not b!7758432))

(assert (not b!7758266))

(assert (not b!7758461))

(assert (not b!7758313))

(assert (not b!7758441))

(assert tp_is_empty!51683)

(assert (not b!7758443))

(assert (not b!7758323))

(assert (not b!7758426))

(assert (not b!7758444))

(assert (not b!7758431))

(assert (not b!7758395))

(assert (not b!7758435))

(assert (not b!7758393))

(assert (not d!2343434))

(assert (not b!7758389))

(assert (not b!7758275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

