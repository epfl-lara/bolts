; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537826 () Bool)

(assert start!537826)

(declare-fun setIsEmpty!29179 () Bool)

(declare-fun setRes!29179 () Bool)

(assert (=> setIsEmpty!29179 setRes!29179))

(declare-fun b!5099888 () Bool)

(declare-fun e!3180688 () Bool)

(declare-fun tp!1422477 () Bool)

(declare-fun tp!1422478 () Bool)

(assert (=> b!5099888 (= e!3180688 (and tp!1422477 tp!1422478))))

(declare-fun tp!1422476 () Bool)

(declare-fun e!3180689 () Bool)

(declare-fun setNonEmpty!29179 () Bool)

(declare-datatypes ((C!28330 0))(
  ( (C!28331 (val!23817 Int)) )
))
(declare-datatypes ((Regex!14036 0))(
  ( (ElementMatch!14036 (c!876160 C!28330)) (Concat!22881 (regOne!28584 Regex!14036) (regTwo!28584 Regex!14036)) (EmptyExpr!14036) (Star!14036 (reg!14365 Regex!14036)) (EmptyLang!14036) (Union!14036 (regOne!28585 Regex!14036) (regTwo!28585 Regex!14036)) )
))
(declare-datatypes ((List!58894 0))(
  ( (Nil!58770) (Cons!58770 (h!65218 Regex!14036) (t!371895 List!58894)) )
))
(declare-datatypes ((Context!6840 0))(
  ( (Context!6841 (exprs!3920 List!58894)) )
))
(declare-fun setElem!29179 () Context!6840)

(declare-fun inv!78266 (Context!6840) Bool)

(assert (=> setNonEmpty!29179 (= setRes!29179 (and tp!1422476 (inv!78266 setElem!29179) e!3180689))))

(declare-fun z!4303 () (Set Context!6840))

(declare-fun setRest!29179 () (Set Context!6840))

(assert (=> setNonEmpty!29179 (= z!4303 (set.union (set.insert setElem!29179 (as set.empty (Set Context!6840))) setRest!29179))))

(declare-fun b!5099889 () Bool)

(declare-fun tp!1422481 () Bool)

(declare-fun tp!1422483 () Bool)

(assert (=> b!5099889 (= e!3180688 (and tp!1422481 tp!1422483))))

(declare-fun b!5099890 () Bool)

(declare-fun e!3180692 () Bool)

(declare-fun tp_is_empty!37337 () Bool)

(declare-fun tp!1422480 () Bool)

(assert (=> b!5099890 (= e!3180692 (and tp_is_empty!37337 tp!1422480))))

(declare-fun b!5099891 () Bool)

(declare-fun tp!1422482 () Bool)

(assert (=> b!5099891 (= e!3180689 tp!1422482)))

(declare-fun b!5099892 () Bool)

(declare-fun e!3180691 () Bool)

(declare-datatypes ((List!58895 0))(
  ( (Nil!58771) (Cons!58771 (h!65219 C!28330) (t!371896 List!58895)) )
))
(declare-datatypes ((tuple2!63458 0))(
  ( (tuple2!63459 (_1!35032 List!58895) (_2!35032 List!58895)) )
))
(declare-fun lt!2096380 () tuple2!63458)

(declare-fun input!5654 () List!58895)

(declare-fun ++!12885 (List!58895 List!58895) List!58895)

(assert (=> b!5099892 (= e!3180691 (not (= (++!12885 (_1!35032 lt!2096380) (_2!35032 lt!2096380)) input!5654)))))

(declare-fun b!5099893 () Bool)

(assert (=> b!5099893 (= e!3180688 tp_is_empty!37337)))

(declare-fun b!5099895 () Bool)

(declare-fun e!3180690 () Bool)

(assert (=> b!5099895 (= e!3180690 e!3180691)))

(declare-fun res!2170567 () Bool)

(assert (=> b!5099895 (=> (not res!2170567) (not e!3180691))))

(declare-fun lt!2096379 () tuple2!63458)

(assert (=> b!5099895 (= res!2170567 (= (++!12885 (_1!35032 lt!2096379) (_2!35032 lt!2096379)) input!5654))))

(declare-fun r!12920 () Regex!14036)

(declare-fun findLongestMatch!1866 (Regex!14036 List!58895) tuple2!63458)

(assert (=> b!5099895 (= lt!2096380 (findLongestMatch!1866 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!60 ((Set Context!6840) List!58895) tuple2!63458)

(assert (=> b!5099895 (= lt!2096379 (findLongestMatchZipper!60 z!4303 input!5654))))

(declare-fun b!5099896 () Bool)

(declare-fun tp!1422479 () Bool)

(assert (=> b!5099896 (= e!3180688 tp!1422479)))

(declare-fun res!2170566 () Bool)

(assert (=> start!537826 (=> (not res!2170566) (not e!3180690))))

(declare-fun validRegex!6163 (Regex!14036) Bool)

(assert (=> start!537826 (= res!2170566 (validRegex!6163 r!12920))))

(assert (=> start!537826 e!3180690))

(assert (=> start!537826 e!3180688))

(declare-fun condSetEmpty!29179 () Bool)

(assert (=> start!537826 (= condSetEmpty!29179 (= z!4303 (as set.empty (Set Context!6840))))))

(assert (=> start!537826 setRes!29179))

(assert (=> start!537826 e!3180692))

(declare-fun b!5099894 () Bool)

(declare-fun res!2170565 () Bool)

(assert (=> b!5099894 (=> (not res!2170565) (not e!3180690))))

(declare-datatypes ((List!58896 0))(
  ( (Nil!58772) (Cons!58772 (h!65220 Context!6840) (t!371897 List!58896)) )
))
(declare-fun unfocusZipper!378 (List!58896) Regex!14036)

(declare-fun toList!8170 ((Set Context!6840)) List!58896)

(assert (=> b!5099894 (= res!2170565 (= (unfocusZipper!378 (toList!8170 z!4303)) r!12920))))

(assert (= (and start!537826 res!2170566) b!5099894))

(assert (= (and b!5099894 res!2170565) b!5099895))

(assert (= (and b!5099895 res!2170567) b!5099892))

(assert (= (and start!537826 (is-ElementMatch!14036 r!12920)) b!5099893))

(assert (= (and start!537826 (is-Concat!22881 r!12920)) b!5099889))

(assert (= (and start!537826 (is-Star!14036 r!12920)) b!5099896))

(assert (= (and start!537826 (is-Union!14036 r!12920)) b!5099888))

(assert (= (and start!537826 condSetEmpty!29179) setIsEmpty!29179))

(assert (= (and start!537826 (not condSetEmpty!29179)) setNonEmpty!29179))

(assert (= setNonEmpty!29179 b!5099891))

(assert (= (and start!537826 (is-Cons!58771 input!5654)) b!5099890))

(declare-fun m!6157326 () Bool)

(assert (=> b!5099892 m!6157326))

(declare-fun m!6157328 () Bool)

(assert (=> b!5099895 m!6157328))

(declare-fun m!6157330 () Bool)

(assert (=> b!5099895 m!6157330))

(declare-fun m!6157332 () Bool)

(assert (=> b!5099895 m!6157332))

(declare-fun m!6157334 () Bool)

(assert (=> start!537826 m!6157334))

(declare-fun m!6157336 () Bool)

(assert (=> b!5099894 m!6157336))

(assert (=> b!5099894 m!6157336))

(declare-fun m!6157338 () Bool)

(assert (=> b!5099894 m!6157338))

(declare-fun m!6157340 () Bool)

(assert (=> setNonEmpty!29179 m!6157340))

(push 1)

(assert (not b!5099892))

(assert tp_is_empty!37337)

(assert (not start!537826))

(assert (not b!5099891))

(assert (not setNonEmpty!29179))

(assert (not b!5099889))

(assert (not b!5099894))

(assert (not b!5099890))

(assert (not b!5099888))

(assert (not b!5099896))

(assert (not b!5099895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1649864 () Bool)

(declare-fun lt!2096389 () Regex!14036)

(assert (=> d!1649864 (validRegex!6163 lt!2096389)))

(declare-fun generalisedUnion!597 (List!58894) Regex!14036)

(declare-fun unfocusZipperList!110 (List!58896) List!58894)

(assert (=> d!1649864 (= lt!2096389 (generalisedUnion!597 (unfocusZipperList!110 (toList!8170 z!4303))))))

(assert (=> d!1649864 (= (unfocusZipper!378 (toList!8170 z!4303)) lt!2096389)))

(declare-fun bs!1191494 () Bool)

(assert (= bs!1191494 d!1649864))

(declare-fun m!6157358 () Bool)

(assert (=> bs!1191494 m!6157358))

(assert (=> bs!1191494 m!6157336))

(declare-fun m!6157360 () Bool)

(assert (=> bs!1191494 m!6157360))

(assert (=> bs!1191494 m!6157360))

(declare-fun m!6157362 () Bool)

(assert (=> bs!1191494 m!6157362))

(assert (=> b!5099894 d!1649864))

(declare-fun d!1649868 () Bool)

(declare-fun e!3180712 () Bool)

(assert (=> d!1649868 e!3180712))

(declare-fun res!2170579 () Bool)

(assert (=> d!1649868 (=> (not res!2170579) (not e!3180712))))

(declare-fun lt!2096394 () List!58896)

(declare-fun noDuplicate!1056 (List!58896) Bool)

(assert (=> d!1649868 (= res!2170579 (noDuplicate!1056 lt!2096394))))

(declare-fun choose!37353 ((Set Context!6840)) List!58896)

(assert (=> d!1649868 (= lt!2096394 (choose!37353 z!4303))))

(assert (=> d!1649868 (= (toList!8170 z!4303) lt!2096394)))

(declare-fun b!5099930 () Bool)

(declare-fun content!10451 (List!58896) (Set Context!6840))

(assert (=> b!5099930 (= e!3180712 (= (content!10451 lt!2096394) z!4303))))

(assert (= (and d!1649868 res!2170579) b!5099930))

(declare-fun m!6157364 () Bool)

(assert (=> d!1649868 m!6157364))

(declare-fun m!6157366 () Bool)

(assert (=> d!1649868 m!6157366))

(declare-fun m!6157368 () Bool)

(assert (=> b!5099930 m!6157368))

(assert (=> b!5099894 d!1649868))

(declare-fun d!1649870 () Bool)

(declare-fun lambda!249945 () Int)

(declare-fun forall!13484 (List!58894 Int) Bool)

(assert (=> d!1649870 (= (inv!78266 setElem!29179) (forall!13484 (exprs!3920 setElem!29179) lambda!249945))))

(declare-fun bs!1191497 () Bool)

(assert (= bs!1191497 d!1649870))

(declare-fun m!6157410 () Bool)

(assert (=> bs!1191497 m!6157410))

(assert (=> setNonEmpty!29179 d!1649870))

(declare-fun b!5099947 () Bool)

(declare-fun e!3180721 () List!58895)

(assert (=> b!5099947 (= e!3180721 (_2!35032 lt!2096380))))

(declare-fun b!5099948 () Bool)

(assert (=> b!5099948 (= e!3180721 (Cons!58771 (h!65219 (_1!35032 lt!2096380)) (++!12885 (t!371896 (_1!35032 lt!2096380)) (_2!35032 lt!2096380))))))

(declare-fun b!5099949 () Bool)

(declare-fun res!2170590 () Bool)

(declare-fun e!3180722 () Bool)

(assert (=> b!5099949 (=> (not res!2170590) (not e!3180722))))

(declare-fun lt!2096434 () List!58895)

(declare-fun size!39338 (List!58895) Int)

(assert (=> b!5099949 (= res!2170590 (= (size!39338 lt!2096434) (+ (size!39338 (_1!35032 lt!2096380)) (size!39338 (_2!35032 lt!2096380)))))))

(declare-fun b!5099950 () Bool)

(assert (=> b!5099950 (= e!3180722 (or (not (= (_2!35032 lt!2096380) Nil!58771)) (= lt!2096434 (_1!35032 lt!2096380))))))

(declare-fun d!1649878 () Bool)

(assert (=> d!1649878 e!3180722))

(declare-fun res!2170591 () Bool)

(assert (=> d!1649878 (=> (not res!2170591) (not e!3180722))))

(declare-fun content!10452 (List!58895) (Set C!28330))

(assert (=> d!1649878 (= res!2170591 (= (content!10452 lt!2096434) (set.union (content!10452 (_1!35032 lt!2096380)) (content!10452 (_2!35032 lt!2096380)))))))

(assert (=> d!1649878 (= lt!2096434 e!3180721)))

(declare-fun c!876167 () Bool)

(assert (=> d!1649878 (= c!876167 (is-Nil!58771 (_1!35032 lt!2096380)))))

(assert (=> d!1649878 (= (++!12885 (_1!35032 lt!2096380) (_2!35032 lt!2096380)) lt!2096434)))

(assert (= (and d!1649878 c!876167) b!5099947))

(assert (= (and d!1649878 (not c!876167)) b!5099948))

(assert (= (and d!1649878 res!2170591) b!5099949))

(assert (= (and b!5099949 res!2170590) b!5099950))

(declare-fun m!6157412 () Bool)

(assert (=> b!5099948 m!6157412))

(declare-fun m!6157414 () Bool)

(assert (=> b!5099949 m!6157414))

(declare-fun m!6157416 () Bool)

(assert (=> b!5099949 m!6157416))

(declare-fun m!6157418 () Bool)

(assert (=> b!5099949 m!6157418))

(declare-fun m!6157420 () Bool)

(assert (=> d!1649878 m!6157420))

(declare-fun m!6157422 () Bool)

(assert (=> d!1649878 m!6157422))

(declare-fun m!6157424 () Bool)

(assert (=> d!1649878 m!6157424))

(assert (=> b!5099892 d!1649878))

(declare-fun bm!355103 () Bool)

(declare-fun call!355108 () Bool)

(declare-fun call!355110 () Bool)

(assert (=> bm!355103 (= call!355108 call!355110)))

(declare-fun b!5099969 () Bool)

(declare-fun e!3180738 () Bool)

(declare-fun e!3180740 () Bool)

(assert (=> b!5099969 (= e!3180738 e!3180740)))

(declare-fun res!2170604 () Bool)

(assert (=> b!5099969 (=> (not res!2170604) (not e!3180740))))

(assert (=> b!5099969 (= res!2170604 call!355108)))

(declare-fun b!5099970 () Bool)

(declare-fun res!2170603 () Bool)

(assert (=> b!5099970 (=> res!2170603 e!3180738)))

(assert (=> b!5099970 (= res!2170603 (not (is-Concat!22881 r!12920)))))

(declare-fun e!3180737 () Bool)

(assert (=> b!5099970 (= e!3180737 e!3180738)))

(declare-fun b!5099971 () Bool)

(declare-fun e!3180742 () Bool)

(declare-fun e!3180739 () Bool)

(assert (=> b!5099971 (= e!3180742 e!3180739)))

(declare-fun res!2170602 () Bool)

(declare-fun nullable!4712 (Regex!14036) Bool)

(assert (=> b!5099971 (= res!2170602 (not (nullable!4712 (reg!14365 r!12920))))))

(assert (=> b!5099971 (=> (not res!2170602) (not e!3180739))))

(declare-fun b!5099973 () Bool)

(assert (=> b!5099973 (= e!3180742 e!3180737)))

(declare-fun c!876173 () Bool)

(assert (=> b!5099973 (= c!876173 (is-Union!14036 r!12920))))

(declare-fun b!5099974 () Bool)

(declare-fun call!355109 () Bool)

(assert (=> b!5099974 (= e!3180740 call!355109)))

(declare-fun b!5099975 () Bool)

(declare-fun res!2170605 () Bool)

(declare-fun e!3180741 () Bool)

(assert (=> b!5099975 (=> (not res!2170605) (not e!3180741))))

(assert (=> b!5099975 (= res!2170605 call!355109)))

(assert (=> b!5099975 (= e!3180737 e!3180741)))

(declare-fun b!5099976 () Bool)

(assert (=> b!5099976 (= e!3180741 call!355108)))

(declare-fun b!5099977 () Bool)

(assert (=> b!5099977 (= e!3180739 call!355110)))

(declare-fun b!5099972 () Bool)

(declare-fun e!3180743 () Bool)

(assert (=> b!5099972 (= e!3180743 e!3180742)))

(declare-fun c!876172 () Bool)

(assert (=> b!5099972 (= c!876172 (is-Star!14036 r!12920))))

(declare-fun d!1649880 () Bool)

(declare-fun res!2170606 () Bool)

(assert (=> d!1649880 (=> res!2170606 e!3180743)))

(assert (=> d!1649880 (= res!2170606 (is-ElementMatch!14036 r!12920))))

(assert (=> d!1649880 (= (validRegex!6163 r!12920) e!3180743)))

(declare-fun bm!355104 () Bool)

(assert (=> bm!355104 (= call!355109 (validRegex!6163 (ite c!876173 (regOne!28585 r!12920) (regTwo!28584 r!12920))))))

(declare-fun bm!355105 () Bool)

(assert (=> bm!355105 (= call!355110 (validRegex!6163 (ite c!876172 (reg!14365 r!12920) (ite c!876173 (regTwo!28585 r!12920) (regOne!28584 r!12920)))))))

(assert (= (and d!1649880 (not res!2170606)) b!5099972))

(assert (= (and b!5099972 c!876172) b!5099971))

(assert (= (and b!5099972 (not c!876172)) b!5099973))

(assert (= (and b!5099971 res!2170602) b!5099977))

(assert (= (and b!5099973 c!876173) b!5099975))

(assert (= (and b!5099973 (not c!876173)) b!5099970))

(assert (= (and b!5099975 res!2170605) b!5099976))

(assert (= (and b!5099970 (not res!2170603)) b!5099969))

(assert (= (and b!5099969 res!2170604) b!5099974))

(assert (= (or b!5099976 b!5099969) bm!355103))

(assert (= (or b!5099975 b!5099974) bm!355104))

(assert (= (or b!5099977 bm!355103) bm!355105))

(declare-fun m!6157426 () Bool)

(assert (=> b!5099971 m!6157426))

(declare-fun m!6157428 () Bool)

(assert (=> bm!355104 m!6157428))

(declare-fun m!6157430 () Bool)

(assert (=> bm!355105 m!6157430))

(assert (=> start!537826 d!1649880))

(declare-fun b!5099978 () Bool)

(declare-fun e!3180744 () List!58895)

(assert (=> b!5099978 (= e!3180744 (_2!35032 lt!2096379))))

(declare-fun b!5099979 () Bool)

(assert (=> b!5099979 (= e!3180744 (Cons!58771 (h!65219 (_1!35032 lt!2096379)) (++!12885 (t!371896 (_1!35032 lt!2096379)) (_2!35032 lt!2096379))))))

(declare-fun b!5099980 () Bool)

(declare-fun res!2170607 () Bool)

(declare-fun e!3180745 () Bool)

(assert (=> b!5099980 (=> (not res!2170607) (not e!3180745))))

(declare-fun lt!2096435 () List!58895)

(assert (=> b!5099980 (= res!2170607 (= (size!39338 lt!2096435) (+ (size!39338 (_1!35032 lt!2096379)) (size!39338 (_2!35032 lt!2096379)))))))

(declare-fun b!5099981 () Bool)

(assert (=> b!5099981 (= e!3180745 (or (not (= (_2!35032 lt!2096379) Nil!58771)) (= lt!2096435 (_1!35032 lt!2096379))))))

(declare-fun d!1649882 () Bool)

(assert (=> d!1649882 e!3180745))

(declare-fun res!2170608 () Bool)

(assert (=> d!1649882 (=> (not res!2170608) (not e!3180745))))

(assert (=> d!1649882 (= res!2170608 (= (content!10452 lt!2096435) (set.union (content!10452 (_1!35032 lt!2096379)) (content!10452 (_2!35032 lt!2096379)))))))

(assert (=> d!1649882 (= lt!2096435 e!3180744)))

(declare-fun c!876174 () Bool)

(assert (=> d!1649882 (= c!876174 (is-Nil!58771 (_1!35032 lt!2096379)))))

(assert (=> d!1649882 (= (++!12885 (_1!35032 lt!2096379) (_2!35032 lt!2096379)) lt!2096435)))

(assert (= (and d!1649882 c!876174) b!5099978))

(assert (= (and d!1649882 (not c!876174)) b!5099979))

(assert (= (and d!1649882 res!2170608) b!5099980))

(assert (= (and b!5099980 res!2170607) b!5099981))

(declare-fun m!6157432 () Bool)

(assert (=> b!5099979 m!6157432))

(declare-fun m!6157434 () Bool)

(assert (=> b!5099980 m!6157434))

(declare-fun m!6157436 () Bool)

(assert (=> b!5099980 m!6157436))

(declare-fun m!6157438 () Bool)

(assert (=> b!5099980 m!6157438))

(declare-fun m!6157440 () Bool)

(assert (=> d!1649882 m!6157440))

(declare-fun m!6157442 () Bool)

(assert (=> d!1649882 m!6157442))

(declare-fun m!6157444 () Bool)

(assert (=> d!1649882 m!6157444))

(assert (=> b!5099895 d!1649882))

(declare-fun d!1649884 () Bool)

(declare-fun lt!2096456 () tuple2!63458)

(assert (=> d!1649884 (= (++!12885 (_1!35032 lt!2096456) (_2!35032 lt!2096456)) input!5654)))

(declare-fun findLongestMatchInner!2049 (Regex!14036 List!58895 Int List!58895 List!58895 Int) tuple2!63458)

(declare-fun sizeTr!422 (List!58895 Int) Int)

(assert (=> d!1649884 (= lt!2096456 (findLongestMatchInner!2049 r!12920 Nil!58771 0 input!5654 input!5654 (sizeTr!422 input!5654 0)))))

(declare-datatypes ((Unit!149796 0))(
  ( (Unit!149797) )
))
(declare-fun lt!2096455 () Unit!149796)

(declare-fun lt!2096454 () Unit!149796)

(assert (=> d!1649884 (= lt!2096455 lt!2096454)))

(declare-fun lt!2096459 () List!58895)

(declare-fun lt!2096458 () Int)

(assert (=> d!1649884 (= (sizeTr!422 lt!2096459 lt!2096458) (+ (size!39338 lt!2096459) lt!2096458))))

(declare-fun lemmaSizeTrEqualsSize!421 (List!58895 Int) Unit!149796)

(assert (=> d!1649884 (= lt!2096454 (lemmaSizeTrEqualsSize!421 lt!2096459 lt!2096458))))

(assert (=> d!1649884 (= lt!2096458 0)))

(assert (=> d!1649884 (= lt!2096459 Nil!58771)))

(declare-fun lt!2096453 () Unit!149796)

(declare-fun lt!2096452 () Unit!149796)

(assert (=> d!1649884 (= lt!2096453 lt!2096452)))

(declare-fun lt!2096457 () Int)

(assert (=> d!1649884 (= (sizeTr!422 input!5654 lt!2096457) (+ (size!39338 input!5654) lt!2096457))))

(assert (=> d!1649884 (= lt!2096452 (lemmaSizeTrEqualsSize!421 input!5654 lt!2096457))))

(assert (=> d!1649884 (= lt!2096457 0)))

(assert (=> d!1649884 (validRegex!6163 r!12920)))

(assert (=> d!1649884 (= (findLongestMatch!1866 r!12920 input!5654) lt!2096456)))

(declare-fun bs!1191498 () Bool)

(assert (= bs!1191498 d!1649884))

(declare-fun m!6157446 () Bool)

(assert (=> bs!1191498 m!6157446))

(declare-fun m!6157448 () Bool)

(assert (=> bs!1191498 m!6157448))

(declare-fun m!6157450 () Bool)

(assert (=> bs!1191498 m!6157450))

(declare-fun m!6157452 () Bool)

(assert (=> bs!1191498 m!6157452))

(declare-fun m!6157454 () Bool)

(assert (=> bs!1191498 m!6157454))

(declare-fun m!6157456 () Bool)

(assert (=> bs!1191498 m!6157456))

(assert (=> bs!1191498 m!6157450))

(declare-fun m!6157458 () Bool)

(assert (=> bs!1191498 m!6157458))

(declare-fun m!6157460 () Bool)

(assert (=> bs!1191498 m!6157460))

(declare-fun m!6157462 () Bool)

(assert (=> bs!1191498 m!6157462))

(assert (=> bs!1191498 m!6157334))

(assert (=> b!5099895 d!1649884))

(declare-fun d!1649886 () Bool)

(declare-fun lt!2096468 () tuple2!63458)

(assert (=> d!1649886 (= (++!12885 (_1!35032 lt!2096468) (_2!35032 lt!2096468)) input!5654)))

(declare-fun findLongestMatchInnerZipper!110 ((Set Context!6840) List!58895 Int List!58895 List!58895 Int) tuple2!63458)

(assert (=> d!1649886 (= lt!2096468 (findLongestMatchInnerZipper!110 z!4303 Nil!58771 0 input!5654 input!5654 (sizeTr!422 input!5654 0)))))

(declare-fun lt!2096469 () Unit!149796)

(declare-fun lt!2096471 () Unit!149796)

(assert (=> d!1649886 (= lt!2096469 lt!2096471)))

(declare-fun lt!2096470 () Int)

(assert (=> d!1649886 (= (sizeTr!422 input!5654 lt!2096470) (+ (size!39338 input!5654) lt!2096470))))

(assert (=> d!1649886 (= lt!2096471 (lemmaSizeTrEqualsSize!421 input!5654 lt!2096470))))

(assert (=> d!1649886 (= lt!2096470 0)))

(assert (=> d!1649886 (= (findLongestMatchZipper!60 z!4303 input!5654) lt!2096468)))

(declare-fun bs!1191499 () Bool)

(assert (= bs!1191499 d!1649886))

(assert (=> bs!1191499 m!6157456))

(assert (=> bs!1191499 m!6157450))

(assert (=> bs!1191499 m!6157450))

(declare-fun m!6157464 () Bool)

(assert (=> bs!1191499 m!6157464))

(declare-fun m!6157466 () Bool)

(assert (=> bs!1191499 m!6157466))

(declare-fun m!6157468 () Bool)

(assert (=> bs!1191499 m!6157468))

(declare-fun m!6157470 () Bool)

(assert (=> bs!1191499 m!6157470))

(assert (=> b!5099895 d!1649886))

(declare-fun b!5099992 () Bool)

(declare-fun e!3180748 () Bool)

(assert (=> b!5099992 (= e!3180748 tp_is_empty!37337)))

(declare-fun b!5099995 () Bool)

(declare-fun tp!1422520 () Bool)

(declare-fun tp!1422522 () Bool)

(assert (=> b!5099995 (= e!3180748 (and tp!1422520 tp!1422522))))

(declare-fun b!5099994 () Bool)

(declare-fun tp!1422521 () Bool)

(assert (=> b!5099994 (= e!3180748 tp!1422521)))

(assert (=> b!5099889 (= tp!1422481 e!3180748)))

(declare-fun b!5099993 () Bool)

(declare-fun tp!1422519 () Bool)

(declare-fun tp!1422518 () Bool)

(assert (=> b!5099993 (= e!3180748 (and tp!1422519 tp!1422518))))

(assert (= (and b!5099889 (is-ElementMatch!14036 (regOne!28584 r!12920))) b!5099992))

(assert (= (and b!5099889 (is-Concat!22881 (regOne!28584 r!12920))) b!5099993))

(assert (= (and b!5099889 (is-Star!14036 (regOne!28584 r!12920))) b!5099994))

(assert (= (and b!5099889 (is-Union!14036 (regOne!28584 r!12920))) b!5099995))

(declare-fun b!5099996 () Bool)

(declare-fun e!3180749 () Bool)

(assert (=> b!5099996 (= e!3180749 tp_is_empty!37337)))

(declare-fun b!5099999 () Bool)

(declare-fun tp!1422525 () Bool)

(declare-fun tp!1422527 () Bool)

(assert (=> b!5099999 (= e!3180749 (and tp!1422525 tp!1422527))))

(declare-fun b!5099998 () Bool)

(declare-fun tp!1422526 () Bool)

(assert (=> b!5099998 (= e!3180749 tp!1422526)))

(assert (=> b!5099889 (= tp!1422483 e!3180749)))

(declare-fun b!5099997 () Bool)

(declare-fun tp!1422524 () Bool)

(declare-fun tp!1422523 () Bool)

(assert (=> b!5099997 (= e!3180749 (and tp!1422524 tp!1422523))))

(assert (= (and b!5099889 (is-ElementMatch!14036 (regTwo!28584 r!12920))) b!5099996))

(assert (= (and b!5099889 (is-Concat!22881 (regTwo!28584 r!12920))) b!5099997))

(assert (= (and b!5099889 (is-Star!14036 (regTwo!28584 r!12920))) b!5099998))

(assert (= (and b!5099889 (is-Union!14036 (regTwo!28584 r!12920))) b!5099999))

(declare-fun condSetEmpty!29185 () Bool)

(assert (=> setNonEmpty!29179 (= condSetEmpty!29185 (= setRest!29179 (as set.empty (Set Context!6840))))))

(declare-fun setRes!29185 () Bool)

(assert (=> setNonEmpty!29179 (= tp!1422476 setRes!29185)))

(declare-fun setIsEmpty!29185 () Bool)

(assert (=> setIsEmpty!29185 setRes!29185))

(declare-fun tp!1422532 () Bool)

(declare-fun setNonEmpty!29185 () Bool)

(declare-fun e!3180752 () Bool)

(declare-fun setElem!29185 () Context!6840)

(assert (=> setNonEmpty!29185 (= setRes!29185 (and tp!1422532 (inv!78266 setElem!29185) e!3180752))))

(declare-fun setRest!29185 () (Set Context!6840))

(assert (=> setNonEmpty!29185 (= setRest!29179 (set.union (set.insert setElem!29185 (as set.empty (Set Context!6840))) setRest!29185))))

(declare-fun b!5100004 () Bool)

(declare-fun tp!1422533 () Bool)

(assert (=> b!5100004 (= e!3180752 tp!1422533)))

(assert (= (and setNonEmpty!29179 condSetEmpty!29185) setIsEmpty!29185))

(assert (= (and setNonEmpty!29179 (not condSetEmpty!29185)) setNonEmpty!29185))

(assert (= setNonEmpty!29185 b!5100004))

(declare-fun m!6157472 () Bool)

(assert (=> setNonEmpty!29185 m!6157472))

(declare-fun b!5100005 () Bool)

(declare-fun e!3180753 () Bool)

(assert (=> b!5100005 (= e!3180753 tp_is_empty!37337)))

(declare-fun b!5100008 () Bool)

(declare-fun tp!1422536 () Bool)

(declare-fun tp!1422538 () Bool)

(assert (=> b!5100008 (= e!3180753 (and tp!1422536 tp!1422538))))

(declare-fun b!5100007 () Bool)

(declare-fun tp!1422537 () Bool)

(assert (=> b!5100007 (= e!3180753 tp!1422537)))

(assert (=> b!5099888 (= tp!1422477 e!3180753)))

(declare-fun b!5100006 () Bool)

(declare-fun tp!1422535 () Bool)

(declare-fun tp!1422534 () Bool)

(assert (=> b!5100006 (= e!3180753 (and tp!1422535 tp!1422534))))

(assert (= (and b!5099888 (is-ElementMatch!14036 (regOne!28585 r!12920))) b!5100005))

(assert (= (and b!5099888 (is-Concat!22881 (regOne!28585 r!12920))) b!5100006))

(assert (= (and b!5099888 (is-Star!14036 (regOne!28585 r!12920))) b!5100007))

(assert (= (and b!5099888 (is-Union!14036 (regOne!28585 r!12920))) b!5100008))

(declare-fun b!5100009 () Bool)

(declare-fun e!3180754 () Bool)

(assert (=> b!5100009 (= e!3180754 tp_is_empty!37337)))

(declare-fun b!5100012 () Bool)

(declare-fun tp!1422541 () Bool)

(declare-fun tp!1422543 () Bool)

(assert (=> b!5100012 (= e!3180754 (and tp!1422541 tp!1422543))))

(declare-fun b!5100011 () Bool)

(declare-fun tp!1422542 () Bool)

(assert (=> b!5100011 (= e!3180754 tp!1422542)))

(assert (=> b!5099888 (= tp!1422478 e!3180754)))

(declare-fun b!5100010 () Bool)

(declare-fun tp!1422540 () Bool)

(declare-fun tp!1422539 () Bool)

(assert (=> b!5100010 (= e!3180754 (and tp!1422540 tp!1422539))))

(assert (= (and b!5099888 (is-ElementMatch!14036 (regTwo!28585 r!12920))) b!5100009))

(assert (= (and b!5099888 (is-Concat!22881 (regTwo!28585 r!12920))) b!5100010))

(assert (= (and b!5099888 (is-Star!14036 (regTwo!28585 r!12920))) b!5100011))

(assert (= (and b!5099888 (is-Union!14036 (regTwo!28585 r!12920))) b!5100012))

(declare-fun b!5100013 () Bool)

(declare-fun e!3180755 () Bool)

(assert (=> b!5100013 (= e!3180755 tp_is_empty!37337)))

(declare-fun b!5100016 () Bool)

(declare-fun tp!1422546 () Bool)

(declare-fun tp!1422548 () Bool)

(assert (=> b!5100016 (= e!3180755 (and tp!1422546 tp!1422548))))

(declare-fun b!5100015 () Bool)

(declare-fun tp!1422547 () Bool)

(assert (=> b!5100015 (= e!3180755 tp!1422547)))

(assert (=> b!5099896 (= tp!1422479 e!3180755)))

(declare-fun b!5100014 () Bool)

(declare-fun tp!1422545 () Bool)

(declare-fun tp!1422544 () Bool)

(assert (=> b!5100014 (= e!3180755 (and tp!1422545 tp!1422544))))

(assert (= (and b!5099896 (is-ElementMatch!14036 (reg!14365 r!12920))) b!5100013))

(assert (= (and b!5099896 (is-Concat!22881 (reg!14365 r!12920))) b!5100014))

(assert (= (and b!5099896 (is-Star!14036 (reg!14365 r!12920))) b!5100015))

(assert (= (and b!5099896 (is-Union!14036 (reg!14365 r!12920))) b!5100016))

(declare-fun b!5100021 () Bool)

(declare-fun e!3180758 () Bool)

(declare-fun tp!1422553 () Bool)

(declare-fun tp!1422554 () Bool)

(assert (=> b!5100021 (= e!3180758 (and tp!1422553 tp!1422554))))

(assert (=> b!5099891 (= tp!1422482 e!3180758)))

(assert (= (and b!5099891 (is-Cons!58770 (exprs!3920 setElem!29179))) b!5100021))

(declare-fun b!5100026 () Bool)

(declare-fun e!3180761 () Bool)

(declare-fun tp!1422557 () Bool)

(assert (=> b!5100026 (= e!3180761 (and tp_is_empty!37337 tp!1422557))))

(assert (=> b!5099890 (= tp!1422480 e!3180761)))

(assert (= (and b!5099890 (is-Cons!58771 (t!371896 input!5654))) b!5100026))

(push 1)

(assert (not b!5100008))

(assert (not b!5100016))

(assert (not b!5100026))

(assert (not b!5100006))

(assert (not d!1649864))

(assert (not b!5100004))

(assert (not b!5099995))

(assert (not b!5100007))

(assert (not b!5099993))

(assert (not d!1649886))

(assert (not b!5099980))

(assert (not b!5100012))

(assert (not setNonEmpty!29185))

(assert tp_is_empty!37337)

(assert (not d!1649882))

(assert (not b!5099999))

(assert (not d!1649878))

(assert (not b!5099948))

(assert (not b!5099930))

(assert (not b!5100021))

(assert (not b!5100011))

(assert (not d!1649870))

(assert (not b!5100010))

(assert (not b!5099997))

(assert (not d!1649868))

(assert (not bm!355104))

(assert (not b!5099971))

(assert (not b!5099949))

(assert (not b!5099994))

(assert (not b!5099979))

(assert (not b!5099998))

(assert (not d!1649884))

(assert (not bm!355105))

(assert (not b!5100015))

(assert (not b!5100014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

