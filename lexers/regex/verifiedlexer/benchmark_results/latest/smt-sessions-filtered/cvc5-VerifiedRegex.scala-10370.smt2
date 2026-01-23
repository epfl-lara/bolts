; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537794 () Bool)

(assert start!537794)

(declare-fun setIsEmpty!29167 () Bool)

(declare-fun setRes!29167 () Bool)

(assert (=> setIsEmpty!29167 setRes!29167))

(declare-fun res!2170504 () Bool)

(declare-fun e!3180570 () Bool)

(assert (=> start!537794 (=> (not res!2170504) (not e!3180570))))

(declare-datatypes ((C!28326 0))(
  ( (C!28327 (val!23815 Int)) )
))
(declare-datatypes ((Regex!14034 0))(
  ( (ElementMatch!14034 (c!876140 C!28326)) (Concat!22879 (regOne!28580 Regex!14034) (regTwo!28580 Regex!14034)) (EmptyExpr!14034) (Star!14034 (reg!14363 Regex!14034)) (EmptyLang!14034) (Union!14034 (regOne!28581 Regex!14034) (regTwo!28581 Regex!14034)) )
))
(declare-fun r!12920 () Regex!14034)

(declare-fun validRegex!6161 (Regex!14034) Bool)

(assert (=> start!537794 (= res!2170504 (validRegex!6161 r!12920))))

(assert (=> start!537794 e!3180570))

(declare-fun e!3180571 () Bool)

(assert (=> start!537794 e!3180571))

(declare-fun condSetEmpty!29167 () Bool)

(declare-datatypes ((List!58888 0))(
  ( (Nil!58764) (Cons!58764 (h!65212 Regex!14034) (t!371889 List!58888)) )
))
(declare-datatypes ((Context!6836 0))(
  ( (Context!6837 (exprs!3918 List!58888)) )
))
(declare-fun z!4303 () (Set Context!6836))

(assert (=> start!537794 (= condSetEmpty!29167 (= z!4303 (as set.empty (Set Context!6836))))))

(assert (=> start!537794 setRes!29167))

(declare-fun e!3180572 () Bool)

(assert (=> start!537794 e!3180572))

(declare-fun b!5099664 () Bool)

(declare-fun res!2170503 () Bool)

(assert (=> b!5099664 (=> (not res!2170503) (not e!3180570))))

(declare-datatypes ((List!58889 0))(
  ( (Nil!58765) (Cons!58765 (h!65213 Context!6836) (t!371890 List!58889)) )
))
(declare-fun unfocusZipper!376 (List!58889) Regex!14034)

(declare-fun toList!8168 ((Set Context!6836)) List!58889)

(assert (=> b!5099664 (= res!2170503 (= (unfocusZipper!376 (toList!8168 z!4303)) r!12920))))

(declare-fun b!5099665 () Bool)

(declare-fun tp_is_empty!37333 () Bool)

(declare-fun tp!1422329 () Bool)

(assert (=> b!5099665 (= e!3180572 (and tp_is_empty!37333 tp!1422329))))

(declare-fun b!5099666 () Bool)

(declare-fun e!3180573 () Bool)

(declare-fun tp!1422332 () Bool)

(assert (=> b!5099666 (= e!3180573 tp!1422332)))

(declare-fun b!5099667 () Bool)

(assert (=> b!5099667 (= e!3180571 tp_is_empty!37333)))

(declare-fun b!5099668 () Bool)

(declare-datatypes ((List!58890 0))(
  ( (Nil!58766) (Cons!58766 (h!65214 C!28326) (t!371891 List!58890)) )
))
(declare-datatypes ((tuple2!63454 0))(
  ( (tuple2!63455 (_1!35030 List!58890) (_2!35030 List!58890)) )
))
(declare-fun lt!2096277 () tuple2!63454)

(declare-fun input!5654 () List!58890)

(declare-fun ++!12883 (List!58890 List!58890) List!58890)

(assert (=> b!5099668 (= e!3180570 (not (= (++!12883 (_1!35030 lt!2096277) (_2!35030 lt!2096277)) input!5654)))))

(declare-fun lt!2096278 () tuple2!63454)

(declare-fun findLongestMatch!1864 (Regex!14034 List!58890) tuple2!63454)

(assert (=> b!5099668 (= lt!2096278 (findLongestMatch!1864 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!58 ((Set Context!6836) List!58890) tuple2!63454)

(assert (=> b!5099668 (= lt!2096277 (findLongestMatchZipper!58 z!4303 input!5654))))

(declare-fun b!5099669 () Bool)

(declare-fun tp!1422333 () Bool)

(declare-fun tp!1422335 () Bool)

(assert (=> b!5099669 (= e!3180571 (and tp!1422333 tp!1422335))))

(declare-fun b!5099670 () Bool)

(declare-fun tp!1422334 () Bool)

(declare-fun tp!1422331 () Bool)

(assert (=> b!5099670 (= e!3180571 (and tp!1422334 tp!1422331))))

(declare-fun b!5099671 () Bool)

(declare-fun tp!1422330 () Bool)

(assert (=> b!5099671 (= e!3180571 tp!1422330)))

(declare-fun setElem!29167 () Context!6836)

(declare-fun tp!1422328 () Bool)

(declare-fun setNonEmpty!29167 () Bool)

(declare-fun inv!78261 (Context!6836) Bool)

(assert (=> setNonEmpty!29167 (= setRes!29167 (and tp!1422328 (inv!78261 setElem!29167) e!3180573))))

(declare-fun setRest!29167 () (Set Context!6836))

(assert (=> setNonEmpty!29167 (= z!4303 (set.union (set.insert setElem!29167 (as set.empty (Set Context!6836))) setRest!29167))))

(assert (= (and start!537794 res!2170504) b!5099664))

(assert (= (and b!5099664 res!2170503) b!5099668))

(assert (= (and start!537794 (is-ElementMatch!14034 r!12920)) b!5099667))

(assert (= (and start!537794 (is-Concat!22879 r!12920)) b!5099670))

(assert (= (and start!537794 (is-Star!14034 r!12920)) b!5099671))

(assert (= (and start!537794 (is-Union!14034 r!12920)) b!5099669))

(assert (= (and start!537794 condSetEmpty!29167) setIsEmpty!29167))

(assert (= (and start!537794 (not condSetEmpty!29167)) setNonEmpty!29167))

(assert (= setNonEmpty!29167 b!5099666))

(assert (= (and start!537794 (is-Cons!58766 input!5654)) b!5099665))

(declare-fun m!6157174 () Bool)

(assert (=> start!537794 m!6157174))

(declare-fun m!6157176 () Bool)

(assert (=> b!5099664 m!6157176))

(assert (=> b!5099664 m!6157176))

(declare-fun m!6157178 () Bool)

(assert (=> b!5099664 m!6157178))

(declare-fun m!6157180 () Bool)

(assert (=> b!5099668 m!6157180))

(declare-fun m!6157182 () Bool)

(assert (=> b!5099668 m!6157182))

(declare-fun m!6157184 () Bool)

(assert (=> b!5099668 m!6157184))

(declare-fun m!6157186 () Bool)

(assert (=> setNonEmpty!29167 m!6157186))

(push 1)

(assert (not b!5099670))

(assert (not start!537794))

(assert tp_is_empty!37333)

(assert (not setNonEmpty!29167))

(assert (not b!5099666))

(assert (not b!5099671))

(assert (not b!5099669))

(assert (not b!5099665))

(assert (not b!5099664))

(assert (not b!5099668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1649835 () Bool)

(declare-fun lambda!249939 () Int)

(declare-fun forall!13482 (List!58888 Int) Bool)

(assert (=> d!1649835 (= (inv!78261 setElem!29167) (forall!13482 (exprs!3918 setElem!29167) lambda!249939))))

(declare-fun bs!1191484 () Bool)

(assert (= bs!1191484 d!1649835))

(declare-fun m!6157202 () Bool)

(assert (=> bs!1191484 m!6157202))

(assert (=> setNonEmpty!29167 d!1649835))

(declare-fun bm!355085 () Bool)

(declare-fun call!355092 () Bool)

(declare-fun c!876147 () Bool)

(assert (=> bm!355085 (= call!355092 (validRegex!6161 (ite c!876147 (regOne!28581 r!12920) (regTwo!28580 r!12920))))))

(declare-fun d!1649839 () Bool)

(declare-fun res!2170521 () Bool)

(declare-fun e!3180605 () Bool)

(assert (=> d!1649839 (=> res!2170521 e!3180605)))

(assert (=> d!1649839 (= res!2170521 (is-ElementMatch!14034 r!12920))))

(assert (=> d!1649839 (= (validRegex!6161 r!12920) e!3180605)))

(declare-fun b!5099714 () Bool)

(declare-fun e!3180601 () Bool)

(declare-fun e!3180604 () Bool)

(assert (=> b!5099714 (= e!3180601 e!3180604)))

(assert (=> b!5099714 (= c!876147 (is-Union!14034 r!12920))))

(declare-fun b!5099715 () Bool)

(declare-fun e!3180606 () Bool)

(declare-fun e!3180603 () Bool)

(assert (=> b!5099715 (= e!3180606 e!3180603)))

(declare-fun res!2170525 () Bool)

(assert (=> b!5099715 (=> (not res!2170525) (not e!3180603))))

(declare-fun call!355090 () Bool)

(assert (=> b!5099715 (= res!2170525 call!355090)))

(declare-fun b!5099716 () Bool)

(declare-fun e!3180602 () Bool)

(assert (=> b!5099716 (= e!3180602 call!355090)))

(declare-fun b!5099717 () Bool)

(declare-fun e!3180600 () Bool)

(assert (=> b!5099717 (= e!3180601 e!3180600)))

(declare-fun res!2170524 () Bool)

(declare-fun nullable!4710 (Regex!14034) Bool)

(assert (=> b!5099717 (= res!2170524 (not (nullable!4710 (reg!14363 r!12920))))))

(assert (=> b!5099717 (=> (not res!2170524) (not e!3180600))))

(declare-fun b!5099718 () Bool)

(declare-fun call!355091 () Bool)

(assert (=> b!5099718 (= e!3180600 call!355091)))

(declare-fun b!5099719 () Bool)

(assert (=> b!5099719 (= e!3180603 call!355092)))

(declare-fun b!5099720 () Bool)

(declare-fun res!2170523 () Bool)

(assert (=> b!5099720 (=> res!2170523 e!3180606)))

(assert (=> b!5099720 (= res!2170523 (not (is-Concat!22879 r!12920)))))

(assert (=> b!5099720 (= e!3180604 e!3180606)))

(declare-fun b!5099721 () Bool)

(assert (=> b!5099721 (= e!3180605 e!3180601)))

(declare-fun c!876146 () Bool)

(assert (=> b!5099721 (= c!876146 (is-Star!14034 r!12920))))

(declare-fun bm!355086 () Bool)

(assert (=> bm!355086 (= call!355091 (validRegex!6161 (ite c!876146 (reg!14363 r!12920) (ite c!876147 (regTwo!28581 r!12920) (regOne!28580 r!12920)))))))

(declare-fun bm!355087 () Bool)

(assert (=> bm!355087 (= call!355090 call!355091)))

(declare-fun b!5099722 () Bool)

(declare-fun res!2170522 () Bool)

(assert (=> b!5099722 (=> (not res!2170522) (not e!3180602))))

(assert (=> b!5099722 (= res!2170522 call!355092)))

(assert (=> b!5099722 (= e!3180604 e!3180602)))

(assert (= (and d!1649839 (not res!2170521)) b!5099721))

(assert (= (and b!5099721 c!876146) b!5099717))

(assert (= (and b!5099721 (not c!876146)) b!5099714))

(assert (= (and b!5099717 res!2170524) b!5099718))

(assert (= (and b!5099714 c!876147) b!5099722))

(assert (= (and b!5099714 (not c!876147)) b!5099720))

(assert (= (and b!5099722 res!2170522) b!5099716))

(assert (= (and b!5099720 (not res!2170523)) b!5099715))

(assert (= (and b!5099715 res!2170525) b!5099719))

(assert (= (or b!5099716 b!5099715) bm!355087))

(assert (= (or b!5099722 b!5099719) bm!355085))

(assert (= (or b!5099718 bm!355087) bm!355086))

(declare-fun m!6157204 () Bool)

(assert (=> bm!355085 m!6157204))

(declare-fun m!6157206 () Bool)

(assert (=> b!5099717 m!6157206))

(declare-fun m!6157208 () Bool)

(assert (=> bm!355086 m!6157208))

(assert (=> start!537794 d!1649839))

(declare-fun d!1649841 () Bool)

(declare-fun lt!2096287 () Regex!14034)

(assert (=> d!1649841 (validRegex!6161 lt!2096287)))

(declare-fun generalisedUnion!595 (List!58888) Regex!14034)

(declare-fun unfocusZipperList!108 (List!58889) List!58888)

(assert (=> d!1649841 (= lt!2096287 (generalisedUnion!595 (unfocusZipperList!108 (toList!8168 z!4303))))))

(assert (=> d!1649841 (= (unfocusZipper!376 (toList!8168 z!4303)) lt!2096287)))

(declare-fun bs!1191485 () Bool)

(assert (= bs!1191485 d!1649841))

(declare-fun m!6157210 () Bool)

(assert (=> bs!1191485 m!6157210))

(assert (=> bs!1191485 m!6157176))

(declare-fun m!6157212 () Bool)

(assert (=> bs!1191485 m!6157212))

(assert (=> bs!1191485 m!6157212))

(declare-fun m!6157214 () Bool)

(assert (=> bs!1191485 m!6157214))

(assert (=> b!5099664 d!1649841))

(declare-fun d!1649843 () Bool)

(declare-fun e!3180609 () Bool)

(assert (=> d!1649843 e!3180609))

(declare-fun res!2170528 () Bool)

(assert (=> d!1649843 (=> (not res!2170528) (not e!3180609))))

(declare-fun lt!2096290 () List!58889)

(declare-fun noDuplicate!1054 (List!58889) Bool)

(assert (=> d!1649843 (= res!2170528 (noDuplicate!1054 lt!2096290))))

(declare-fun choose!37351 ((Set Context!6836)) List!58889)

(assert (=> d!1649843 (= lt!2096290 (choose!37351 z!4303))))

(assert (=> d!1649843 (= (toList!8168 z!4303) lt!2096290)))

(declare-fun b!5099725 () Bool)

(declare-fun content!10447 (List!58889) (Set Context!6836))

(assert (=> b!5099725 (= e!3180609 (= (content!10447 lt!2096290) z!4303))))

(assert (= (and d!1649843 res!2170528) b!5099725))

(declare-fun m!6157216 () Bool)

(assert (=> d!1649843 m!6157216))

(declare-fun m!6157218 () Bool)

(assert (=> d!1649843 m!6157218))

(declare-fun m!6157220 () Bool)

(assert (=> b!5099725 m!6157220))

(assert (=> b!5099664 d!1649843))

(declare-fun b!5099735 () Bool)

(declare-fun e!3180614 () List!58890)

(assert (=> b!5099735 (= e!3180614 (Cons!58766 (h!65214 (_1!35030 lt!2096277)) (++!12883 (t!371891 (_1!35030 lt!2096277)) (_2!35030 lt!2096277))))))

(declare-fun b!5099734 () Bool)

(assert (=> b!5099734 (= e!3180614 (_2!35030 lt!2096277))))

(declare-fun b!5099737 () Bool)

(declare-fun e!3180615 () Bool)

(declare-fun lt!2096293 () List!58890)

(assert (=> b!5099737 (= e!3180615 (or (not (= (_2!35030 lt!2096277) Nil!58766)) (= lt!2096293 (_1!35030 lt!2096277))))))

(declare-fun b!5099736 () Bool)

(declare-fun res!2170534 () Bool)

(assert (=> b!5099736 (=> (not res!2170534) (not e!3180615))))

(declare-fun size!39336 (List!58890) Int)

(assert (=> b!5099736 (= res!2170534 (= (size!39336 lt!2096293) (+ (size!39336 (_1!35030 lt!2096277)) (size!39336 (_2!35030 lt!2096277)))))))

(declare-fun d!1649845 () Bool)

(assert (=> d!1649845 e!3180615))

(declare-fun res!2170533 () Bool)

(assert (=> d!1649845 (=> (not res!2170533) (not e!3180615))))

(declare-fun content!10448 (List!58890) (Set C!28326))

(assert (=> d!1649845 (= res!2170533 (= (content!10448 lt!2096293) (set.union (content!10448 (_1!35030 lt!2096277)) (content!10448 (_2!35030 lt!2096277)))))))

(assert (=> d!1649845 (= lt!2096293 e!3180614)))

(declare-fun c!876150 () Bool)

(assert (=> d!1649845 (= c!876150 (is-Nil!58766 (_1!35030 lt!2096277)))))

(assert (=> d!1649845 (= (++!12883 (_1!35030 lt!2096277) (_2!35030 lt!2096277)) lt!2096293)))

(assert (= (and d!1649845 c!876150) b!5099734))

(assert (= (and d!1649845 (not c!876150)) b!5099735))

(assert (= (and d!1649845 res!2170533) b!5099736))

(assert (= (and b!5099736 res!2170534) b!5099737))

(declare-fun m!6157222 () Bool)

(assert (=> b!5099735 m!6157222))

(declare-fun m!6157224 () Bool)

(assert (=> b!5099736 m!6157224))

(declare-fun m!6157226 () Bool)

(assert (=> b!5099736 m!6157226))

(declare-fun m!6157228 () Bool)

(assert (=> b!5099736 m!6157228))

(declare-fun m!6157230 () Bool)

(assert (=> d!1649845 m!6157230))

(declare-fun m!6157232 () Bool)

(assert (=> d!1649845 m!6157232))

(declare-fun m!6157234 () Bool)

(assert (=> d!1649845 m!6157234))

(assert (=> b!5099668 d!1649845))

(declare-fun d!1649847 () Bool)

(declare-fun lt!2096313 () tuple2!63454)

(assert (=> d!1649847 (= (++!12883 (_1!35030 lt!2096313) (_2!35030 lt!2096313)) input!5654)))

(declare-fun findLongestMatchInner!2047 (Regex!14034 List!58890 Int List!58890 List!58890 Int) tuple2!63454)

(declare-fun sizeTr!420 (List!58890 Int) Int)

(assert (=> d!1649847 (= lt!2096313 (findLongestMatchInner!2047 r!12920 Nil!58766 0 input!5654 input!5654 (sizeTr!420 input!5654 0)))))

(declare-datatypes ((Unit!149792 0))(
  ( (Unit!149793) )
))
(declare-fun lt!2096315 () Unit!149792)

(declare-fun lt!2096314 () Unit!149792)

(assert (=> d!1649847 (= lt!2096315 lt!2096314)))

(declare-fun lt!2096317 () List!58890)

(declare-fun lt!2096312 () Int)

(assert (=> d!1649847 (= (sizeTr!420 lt!2096317 lt!2096312) (+ (size!39336 lt!2096317) lt!2096312))))

(declare-fun lemmaSizeTrEqualsSize!419 (List!58890 Int) Unit!149792)

(assert (=> d!1649847 (= lt!2096314 (lemmaSizeTrEqualsSize!419 lt!2096317 lt!2096312))))

(assert (=> d!1649847 (= lt!2096312 0)))

(assert (=> d!1649847 (= lt!2096317 Nil!58766)))

(declare-fun lt!2096316 () Unit!149792)

(declare-fun lt!2096311 () Unit!149792)

(assert (=> d!1649847 (= lt!2096316 lt!2096311)))

(declare-fun lt!2096310 () Int)

(assert (=> d!1649847 (= (sizeTr!420 input!5654 lt!2096310) (+ (size!39336 input!5654) lt!2096310))))

(assert (=> d!1649847 (= lt!2096311 (lemmaSizeTrEqualsSize!419 input!5654 lt!2096310))))

(assert (=> d!1649847 (= lt!2096310 0)))

(assert (=> d!1649847 (validRegex!6161 r!12920)))

(assert (=> d!1649847 (= (findLongestMatch!1864 r!12920 input!5654) lt!2096313)))

(declare-fun bs!1191486 () Bool)

(assert (= bs!1191486 d!1649847))

(declare-fun m!6157236 () Bool)

(assert (=> bs!1191486 m!6157236))

(declare-fun m!6157238 () Bool)

(assert (=> bs!1191486 m!6157238))

(assert (=> bs!1191486 m!6157174))

(declare-fun m!6157240 () Bool)

(assert (=> bs!1191486 m!6157240))

(declare-fun m!6157242 () Bool)

(assert (=> bs!1191486 m!6157242))

(declare-fun m!6157244 () Bool)

(assert (=> bs!1191486 m!6157244))

(assert (=> bs!1191486 m!6157238))

(declare-fun m!6157246 () Bool)

(assert (=> bs!1191486 m!6157246))

(declare-fun m!6157248 () Bool)

(assert (=> bs!1191486 m!6157248))

(declare-fun m!6157250 () Bool)

(assert (=> bs!1191486 m!6157250))

(declare-fun m!6157252 () Bool)

(assert (=> bs!1191486 m!6157252))

(assert (=> b!5099668 d!1649847))

(declare-fun d!1649849 () Bool)

(declare-fun lt!2096326 () tuple2!63454)

(assert (=> d!1649849 (= (++!12883 (_1!35030 lt!2096326) (_2!35030 lt!2096326)) input!5654)))

(declare-fun findLongestMatchInnerZipper!108 ((Set Context!6836) List!58890 Int List!58890 List!58890 Int) tuple2!63454)

(assert (=> d!1649849 (= lt!2096326 (findLongestMatchInnerZipper!108 z!4303 Nil!58766 0 input!5654 input!5654 (sizeTr!420 input!5654 0)))))

(declare-fun lt!2096327 () Unit!149792)

(declare-fun lt!2096329 () Unit!149792)

(assert (=> d!1649849 (= lt!2096327 lt!2096329)))

(declare-fun lt!2096328 () Int)

(assert (=> d!1649849 (= (sizeTr!420 input!5654 lt!2096328) (+ (size!39336 input!5654) lt!2096328))))

(assert (=> d!1649849 (= lt!2096329 (lemmaSizeTrEqualsSize!419 input!5654 lt!2096328))))

(assert (=> d!1649849 (= lt!2096328 0)))

(assert (=> d!1649849 (= (findLongestMatchZipper!58 z!4303 input!5654) lt!2096326)))

(declare-fun bs!1191487 () Bool)

(assert (= bs!1191487 d!1649849))

(declare-fun m!6157254 () Bool)

(assert (=> bs!1191487 m!6157254))

(assert (=> bs!1191487 m!6157248))

(assert (=> bs!1191487 m!6157238))

(declare-fun m!6157256 () Bool)

(assert (=> bs!1191487 m!6157256))

(assert (=> bs!1191487 m!6157238))

(declare-fun m!6157258 () Bool)

(assert (=> bs!1191487 m!6157258))

(declare-fun m!6157260 () Bool)

(assert (=> bs!1191487 m!6157260))

(assert (=> b!5099668 d!1649849))

(declare-fun condSetEmpty!29173 () Bool)

(assert (=> setNonEmpty!29167 (= condSetEmpty!29173 (= setRest!29167 (as set.empty (Set Context!6836))))))

(declare-fun setRes!29173 () Bool)

(assert (=> setNonEmpty!29167 (= tp!1422328 setRes!29173)))

(declare-fun setIsEmpty!29173 () Bool)

(assert (=> setIsEmpty!29173 setRes!29173))

(declare-fun setElem!29173 () Context!6836)

(declare-fun e!3180618 () Bool)

(declare-fun setNonEmpty!29173 () Bool)

(declare-fun tp!1422365 () Bool)

(assert (=> setNonEmpty!29173 (= setRes!29173 (and tp!1422365 (inv!78261 setElem!29173) e!3180618))))

(declare-fun setRest!29173 () (Set Context!6836))

(assert (=> setNonEmpty!29173 (= setRest!29167 (set.union (set.insert setElem!29173 (as set.empty (Set Context!6836))) setRest!29173))))

(declare-fun b!5099742 () Bool)

(declare-fun tp!1422364 () Bool)

(assert (=> b!5099742 (= e!3180618 tp!1422364)))

(assert (= (and setNonEmpty!29167 condSetEmpty!29173) setIsEmpty!29173))

(assert (= (and setNonEmpty!29167 (not condSetEmpty!29173)) setNonEmpty!29173))

(assert (= setNonEmpty!29173 b!5099742))

(declare-fun m!6157262 () Bool)

(assert (=> setNonEmpty!29173 m!6157262))

(declare-fun b!5099747 () Bool)

(declare-fun e!3180621 () Bool)

(declare-fun tp!1422370 () Bool)

(declare-fun tp!1422371 () Bool)

(assert (=> b!5099747 (= e!3180621 (and tp!1422370 tp!1422371))))

(assert (=> b!5099666 (= tp!1422332 e!3180621)))

(assert (= (and b!5099666 (is-Cons!58764 (exprs!3918 setElem!29167))) b!5099747))

(declare-fun b!5099758 () Bool)

(declare-fun e!3180624 () Bool)

(assert (=> b!5099758 (= e!3180624 tp_is_empty!37333)))

(assert (=> b!5099671 (= tp!1422330 e!3180624)))

(declare-fun b!5099761 () Bool)

(declare-fun tp!1422386 () Bool)

(declare-fun tp!1422384 () Bool)

(assert (=> b!5099761 (= e!3180624 (and tp!1422386 tp!1422384))))

(declare-fun b!5099760 () Bool)

(declare-fun tp!1422385 () Bool)

(assert (=> b!5099760 (= e!3180624 tp!1422385)))

(declare-fun b!5099759 () Bool)

(declare-fun tp!1422383 () Bool)

(declare-fun tp!1422382 () Bool)

(assert (=> b!5099759 (= e!3180624 (and tp!1422383 tp!1422382))))

(assert (= (and b!5099671 (is-ElementMatch!14034 (reg!14363 r!12920))) b!5099758))

(assert (= (and b!5099671 (is-Concat!22879 (reg!14363 r!12920))) b!5099759))

(assert (= (and b!5099671 (is-Star!14034 (reg!14363 r!12920))) b!5099760))

(assert (= (and b!5099671 (is-Union!14034 (reg!14363 r!12920))) b!5099761))

(declare-fun b!5099766 () Bool)

(declare-fun e!3180627 () Bool)

(declare-fun tp!1422389 () Bool)

(assert (=> b!5099766 (= e!3180627 (and tp_is_empty!37333 tp!1422389))))

(assert (=> b!5099665 (= tp!1422329 e!3180627)))

(assert (= (and b!5099665 (is-Cons!58766 (t!371891 input!5654))) b!5099766))

(declare-fun b!5099767 () Bool)

(declare-fun e!3180628 () Bool)

(assert (=> b!5099767 (= e!3180628 tp_is_empty!37333)))

(assert (=> b!5099670 (= tp!1422334 e!3180628)))

(declare-fun b!5099770 () Bool)

(declare-fun tp!1422394 () Bool)

(declare-fun tp!1422392 () Bool)

(assert (=> b!5099770 (= e!3180628 (and tp!1422394 tp!1422392))))

(declare-fun b!5099769 () Bool)

(declare-fun tp!1422393 () Bool)

(assert (=> b!5099769 (= e!3180628 tp!1422393)))

(declare-fun b!5099768 () Bool)

(declare-fun tp!1422391 () Bool)

(declare-fun tp!1422390 () Bool)

(assert (=> b!5099768 (= e!3180628 (and tp!1422391 tp!1422390))))

(assert (= (and b!5099670 (is-ElementMatch!14034 (regOne!28580 r!12920))) b!5099767))

(assert (= (and b!5099670 (is-Concat!22879 (regOne!28580 r!12920))) b!5099768))

(assert (= (and b!5099670 (is-Star!14034 (regOne!28580 r!12920))) b!5099769))

(assert (= (and b!5099670 (is-Union!14034 (regOne!28580 r!12920))) b!5099770))

(declare-fun b!5099771 () Bool)

(declare-fun e!3180629 () Bool)

(assert (=> b!5099771 (= e!3180629 tp_is_empty!37333)))

(assert (=> b!5099670 (= tp!1422331 e!3180629)))

(declare-fun b!5099774 () Bool)

(declare-fun tp!1422399 () Bool)

(declare-fun tp!1422397 () Bool)

(assert (=> b!5099774 (= e!3180629 (and tp!1422399 tp!1422397))))

(declare-fun b!5099773 () Bool)

(declare-fun tp!1422398 () Bool)

(assert (=> b!5099773 (= e!3180629 tp!1422398)))

(declare-fun b!5099772 () Bool)

(declare-fun tp!1422396 () Bool)

(declare-fun tp!1422395 () Bool)

(assert (=> b!5099772 (= e!3180629 (and tp!1422396 tp!1422395))))

(assert (= (and b!5099670 (is-ElementMatch!14034 (regTwo!28580 r!12920))) b!5099771))

(assert (= (and b!5099670 (is-Concat!22879 (regTwo!28580 r!12920))) b!5099772))

(assert (= (and b!5099670 (is-Star!14034 (regTwo!28580 r!12920))) b!5099773))

(assert (= (and b!5099670 (is-Union!14034 (regTwo!28580 r!12920))) b!5099774))

(declare-fun b!5099775 () Bool)

(declare-fun e!3180630 () Bool)

(assert (=> b!5099775 (= e!3180630 tp_is_empty!37333)))

(assert (=> b!5099669 (= tp!1422333 e!3180630)))

(declare-fun b!5099778 () Bool)

(declare-fun tp!1422404 () Bool)

(declare-fun tp!1422402 () Bool)

(assert (=> b!5099778 (= e!3180630 (and tp!1422404 tp!1422402))))

(declare-fun b!5099777 () Bool)

(declare-fun tp!1422403 () Bool)

(assert (=> b!5099777 (= e!3180630 tp!1422403)))

(declare-fun b!5099776 () Bool)

(declare-fun tp!1422401 () Bool)

(declare-fun tp!1422400 () Bool)

(assert (=> b!5099776 (= e!3180630 (and tp!1422401 tp!1422400))))

(assert (= (and b!5099669 (is-ElementMatch!14034 (regOne!28581 r!12920))) b!5099775))

(assert (= (and b!5099669 (is-Concat!22879 (regOne!28581 r!12920))) b!5099776))

(assert (= (and b!5099669 (is-Star!14034 (regOne!28581 r!12920))) b!5099777))

(assert (= (and b!5099669 (is-Union!14034 (regOne!28581 r!12920))) b!5099778))

(declare-fun b!5099779 () Bool)

(declare-fun e!3180631 () Bool)

(assert (=> b!5099779 (= e!3180631 tp_is_empty!37333)))

(assert (=> b!5099669 (= tp!1422335 e!3180631)))

(declare-fun b!5099782 () Bool)

(declare-fun tp!1422409 () Bool)

(declare-fun tp!1422407 () Bool)

(assert (=> b!5099782 (= e!3180631 (and tp!1422409 tp!1422407))))

(declare-fun b!5099781 () Bool)

(declare-fun tp!1422408 () Bool)

(assert (=> b!5099781 (= e!3180631 tp!1422408)))

(declare-fun b!5099780 () Bool)

(declare-fun tp!1422406 () Bool)

(declare-fun tp!1422405 () Bool)

(assert (=> b!5099780 (= e!3180631 (and tp!1422406 tp!1422405))))

(assert (= (and b!5099669 (is-ElementMatch!14034 (regTwo!28581 r!12920))) b!5099779))

(assert (= (and b!5099669 (is-Concat!22879 (regTwo!28581 r!12920))) b!5099780))

(assert (= (and b!5099669 (is-Star!14034 (regTwo!28581 r!12920))) b!5099781))

(assert (= (and b!5099669 (is-Union!14034 (regTwo!28581 r!12920))) b!5099782))

(push 1)

(assert (not b!5099772))

(assert (not b!5099782))

(assert (not b!5099778))

(assert (not d!1649835))

(assert (not b!5099759))

(assert (not d!1649841))

(assert (not bm!355086))

(assert (not d!1649849))

(assert (not b!5099769))

(assert (not b!5099725))

(assert (not bm!355085))

(assert (not b!5099747))

(assert (not b!5099717))

(assert (not d!1649845))

(assert (not b!5099770))

(assert tp_is_empty!37333)

(assert (not b!5099774))

(assert (not b!5099781))

(assert (not b!5099780))

(assert (not setNonEmpty!29173))

(assert (not b!5099742))

(assert (not b!5099776))

(assert (not d!1649843))

(assert (not b!5099761))

(assert (not b!5099760))

(assert (not b!5099773))

(assert (not b!5099735))

(assert (not b!5099768))

(assert (not b!5099736))

(assert (not b!5099766))

(assert (not d!1649847))

(assert (not b!5099777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

