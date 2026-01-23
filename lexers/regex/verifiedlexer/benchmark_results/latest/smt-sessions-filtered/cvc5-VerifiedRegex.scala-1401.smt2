; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73788 () Bool)

(assert start!73788)

(declare-fun b!825226 () Bool)

(declare-fun e!544678 () Bool)

(declare-fun tp!257947 () Bool)

(declare-fun tp!257948 () Bool)

(assert (=> b!825226 (= e!544678 (and tp!257947 tp!257948))))

(declare-fun b!825227 () Bool)

(declare-fun res!380234 () Bool)

(declare-fun e!544679 () Bool)

(assert (=> b!825227 (=> (not res!380234) (not e!544679))))

(declare-datatypes ((C!4690 0))(
  ( (C!4691 (val!2593 Int)) )
))
(declare-datatypes ((Regex!2060 0))(
  ( (ElementMatch!2060 (c!133951 C!4690)) (Concat!3791 (regOne!4632 Regex!2060) (regTwo!4632 Regex!2060)) (EmptyExpr!2060) (Star!2060 (reg!2389 Regex!2060)) (EmptyLang!2060) (Union!2060 (regOne!4633 Regex!2060) (regTwo!4633 Regex!2060)) )
))
(declare-fun r!27177 () Regex!2060)

(assert (=> b!825227 (= res!380234 (and (not (is-EmptyExpr!2060 r!27177)) (not (is-EmptyLang!2060 r!27177)) (not (is-ElementMatch!2060 r!27177)) (not (is-Star!2060 r!27177)) (is-Union!2060 r!27177)))))

(declare-fun b!825228 () Bool)

(declare-fun res!380231 () Bool)

(assert (=> b!825228 (=> (not res!380231) (not e!544679))))

(declare-fun c!13916 () C!4690)

(declare-datatypes ((List!8886 0))(
  ( (Nil!8870) (Cons!8870 (h!14271 C!4690) (t!93178 List!8886)) )
))
(declare-fun contains!1651 (List!8886 C!4690) Bool)

(declare-fun firstChars!31 (Regex!2060) List!8886)

(assert (=> b!825228 (= res!380231 (contains!1651 (firstChars!31 r!27177) c!13916))))

(declare-fun b!825229 () Bool)

(declare-fun res!380230 () Bool)

(assert (=> b!825229 (=> (not res!380230) (not e!544679))))

(assert (=> b!825229 (= res!380230 (contains!1651 (firstChars!31 (regOne!4633 r!27177)) c!13916))))

(declare-fun b!825230 () Bool)

(declare-fun tp!257949 () Bool)

(assert (=> b!825230 (= e!544678 tp!257949)))

(declare-fun res!380233 () Bool)

(assert (=> start!73788 (=> (not res!380233) (not e!544679))))

(declare-fun validRegex!613 (Regex!2060) Bool)

(assert (=> start!73788 (= res!380233 (validRegex!613 r!27177))))

(assert (=> start!73788 e!544679))

(assert (=> start!73788 e!544678))

(declare-fun tp_is_empty!3843 () Bool)

(assert (=> start!73788 tp_is_empty!3843))

(declare-fun b!825231 () Bool)

(declare-fun RegexPrimitiveSize!89 (Regex!2060) Int)

(assert (=> b!825231 (= e!544679 (>= (RegexPrimitiveSize!89 (regOne!4633 r!27177)) (RegexPrimitiveSize!89 r!27177)))))

(declare-fun b!825232 () Bool)

(declare-fun res!380232 () Bool)

(assert (=> b!825232 (=> (not res!380232) (not e!544679))))

(assert (=> b!825232 (= res!380232 (validRegex!613 (regOne!4633 r!27177)))))

(declare-fun b!825233 () Bool)

(assert (=> b!825233 (= e!544678 tp_is_empty!3843)))

(declare-fun b!825234 () Bool)

(declare-fun tp!257946 () Bool)

(declare-fun tp!257945 () Bool)

(assert (=> b!825234 (= e!544678 (and tp!257946 tp!257945))))

(assert (= (and start!73788 res!380233) b!825228))

(assert (= (and b!825228 res!380231) b!825227))

(assert (= (and b!825227 res!380234) b!825229))

(assert (= (and b!825229 res!380230) b!825232))

(assert (= (and b!825232 res!380232) b!825231))

(assert (= (and start!73788 (is-ElementMatch!2060 r!27177)) b!825233))

(assert (= (and start!73788 (is-Concat!3791 r!27177)) b!825234))

(assert (= (and start!73788 (is-Star!2060 r!27177)) b!825230))

(assert (= (and start!73788 (is-Union!2060 r!27177)) b!825226))

(declare-fun m!1064589 () Bool)

(assert (=> b!825231 m!1064589))

(declare-fun m!1064591 () Bool)

(assert (=> b!825231 m!1064591))

(declare-fun m!1064593 () Bool)

(assert (=> b!825232 m!1064593))

(declare-fun m!1064595 () Bool)

(assert (=> b!825229 m!1064595))

(assert (=> b!825229 m!1064595))

(declare-fun m!1064597 () Bool)

(assert (=> b!825229 m!1064597))

(declare-fun m!1064599 () Bool)

(assert (=> b!825228 m!1064599))

(assert (=> b!825228 m!1064599))

(declare-fun m!1064601 () Bool)

(assert (=> b!825228 m!1064601))

(declare-fun m!1064603 () Bool)

(assert (=> start!73788 m!1064603))

(push 1)

(assert (not b!825234))

(assert (not start!73788))

(assert (not b!825228))

(assert (not b!825226))

(assert (not b!825229))

(assert (not b!825232))

(assert tp_is_empty!3843)

(assert (not b!825231))

(assert (not b!825230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!825282 () Bool)

(declare-fun e!544700 () Int)

(declare-fun call!47746 () Int)

(declare-fun call!47747 () Int)

(assert (=> b!825282 (= e!544700 (+ 1 call!47746 call!47747))))

(declare-fun b!825283 () Bool)

(declare-fun c!133967 () Bool)

(assert (=> b!825283 (= c!133967 (is-EmptyExpr!2060 (regOne!4633 r!27177)))))

(declare-fun e!544698 () Int)

(assert (=> b!825283 (= e!544700 e!544698)))

(declare-fun b!825284 () Bool)

(assert (=> b!825284 (= e!544698 0)))

(declare-fun bm!47741 () Bool)

(declare-fun call!47748 () Int)

(assert (=> bm!47741 (= call!47748 call!47746)))

(declare-fun b!825285 () Bool)

(declare-fun e!544699 () Int)

(assert (=> b!825285 (= e!544699 (+ 1 call!47748 call!47747))))

(declare-fun c!133964 () Bool)

(declare-fun c!133965 () Bool)

(declare-fun bm!47742 () Bool)

(assert (=> bm!47742 (= call!47746 (RegexPrimitiveSize!89 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(declare-fun b!825286 () Bool)

(assert (=> b!825286 (= e!544699 0)))

(declare-fun b!825287 () Bool)

(declare-fun c!133966 () Bool)

(assert (=> b!825287 (= c!133966 (is-EmptyLang!2060 (regOne!4633 r!27177)))))

(declare-fun e!544697 () Int)

(assert (=> b!825287 (= e!544697 e!544699)))

(declare-fun bm!47743 () Bool)

(assert (=> bm!47743 (= call!47747 (RegexPrimitiveSize!89 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(declare-fun b!825288 () Bool)

(assert (=> b!825288 (= e!544697 (+ 1 call!47748))))

(declare-fun b!825289 () Bool)

(assert (=> b!825289 (= e!544698 e!544697)))

(assert (=> b!825289 (= c!133965 (is-Star!2060 (regOne!4633 r!27177)))))

(declare-fun b!825290 () Bool)

(declare-fun e!544696 () Int)

(assert (=> b!825290 (= e!544696 1)))

(declare-fun d!259234 () Bool)

(declare-fun lt!317476 () Int)

(assert (=> d!259234 (>= lt!317476 0)))

(assert (=> d!259234 (= lt!317476 e!544696)))

(declare-fun c!133963 () Bool)

(assert (=> d!259234 (= c!133963 (is-ElementMatch!2060 (regOne!4633 r!27177)))))

(assert (=> d!259234 (= (RegexPrimitiveSize!89 (regOne!4633 r!27177)) lt!317476)))

(declare-fun b!825291 () Bool)

(assert (=> b!825291 (= e!544696 e!544700)))

(assert (=> b!825291 (= c!133964 (is-Concat!3791 (regOne!4633 r!27177)))))

(assert (= (and d!259234 c!133963) b!825290))

(assert (= (and d!259234 (not c!133963)) b!825291))

(assert (= (and b!825291 c!133964) b!825282))

(assert (= (and b!825291 (not c!133964)) b!825283))

(assert (= (and b!825283 c!133967) b!825284))

(assert (= (and b!825283 (not c!133967)) b!825289))

(assert (= (and b!825289 c!133965) b!825288))

(assert (= (and b!825289 (not c!133965)) b!825287))

(assert (= (and b!825287 c!133966) b!825286))

(assert (= (and b!825287 (not c!133966)) b!825285))

(assert (= (or b!825288 b!825285) bm!47741))

(assert (= (or b!825282 bm!47741) bm!47742))

(assert (= (or b!825282 b!825285) bm!47743))

(declare-fun m!1064621 () Bool)

(assert (=> bm!47742 m!1064621))

(declare-fun m!1064623 () Bool)

(assert (=> bm!47743 m!1064623))

(assert (=> b!825231 d!259234))

(declare-fun b!825292 () Bool)

(declare-fun e!544705 () Int)

(declare-fun call!47749 () Int)

(declare-fun call!47750 () Int)

(assert (=> b!825292 (= e!544705 (+ 1 call!47749 call!47750))))

(declare-fun b!825293 () Bool)

(declare-fun c!133972 () Bool)

(assert (=> b!825293 (= c!133972 (is-EmptyExpr!2060 r!27177))))

(declare-fun e!544703 () Int)

(assert (=> b!825293 (= e!544705 e!544703)))

(declare-fun b!825294 () Bool)

(assert (=> b!825294 (= e!544703 0)))

(declare-fun bm!47744 () Bool)

(declare-fun call!47751 () Int)

(assert (=> bm!47744 (= call!47751 call!47749)))

(declare-fun b!825295 () Bool)

(declare-fun e!544704 () Int)

(assert (=> b!825295 (= e!544704 (+ 1 call!47751 call!47750))))

(declare-fun c!133970 () Bool)

(declare-fun c!133969 () Bool)

(declare-fun bm!47745 () Bool)

(assert (=> bm!47745 (= call!47749 (RegexPrimitiveSize!89 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(declare-fun b!825296 () Bool)

(assert (=> b!825296 (= e!544704 0)))

(declare-fun b!825297 () Bool)

(declare-fun c!133971 () Bool)

(assert (=> b!825297 (= c!133971 (is-EmptyLang!2060 r!27177))))

(declare-fun e!544702 () Int)

(assert (=> b!825297 (= e!544702 e!544704)))

(declare-fun bm!47746 () Bool)

(assert (=> bm!47746 (= call!47750 (RegexPrimitiveSize!89 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(declare-fun b!825298 () Bool)

(assert (=> b!825298 (= e!544702 (+ 1 call!47751))))

(declare-fun b!825299 () Bool)

(assert (=> b!825299 (= e!544703 e!544702)))

(assert (=> b!825299 (= c!133970 (is-Star!2060 r!27177))))

(declare-fun b!825300 () Bool)

(declare-fun e!544701 () Int)

(assert (=> b!825300 (= e!544701 1)))

(declare-fun d!259238 () Bool)

(declare-fun lt!317477 () Int)

(assert (=> d!259238 (>= lt!317477 0)))

(assert (=> d!259238 (= lt!317477 e!544701)))

(declare-fun c!133968 () Bool)

(assert (=> d!259238 (= c!133968 (is-ElementMatch!2060 r!27177))))

(assert (=> d!259238 (= (RegexPrimitiveSize!89 r!27177) lt!317477)))

(declare-fun b!825301 () Bool)

(assert (=> b!825301 (= e!544701 e!544705)))

(assert (=> b!825301 (= c!133969 (is-Concat!3791 r!27177))))

(assert (= (and d!259238 c!133968) b!825300))

(assert (= (and d!259238 (not c!133968)) b!825301))

(assert (= (and b!825301 c!133969) b!825292))

(assert (= (and b!825301 (not c!133969)) b!825293))

(assert (= (and b!825293 c!133972) b!825294))

(assert (= (and b!825293 (not c!133972)) b!825299))

(assert (= (and b!825299 c!133970) b!825298))

(assert (= (and b!825299 (not c!133970)) b!825297))

(assert (= (and b!825297 c!133971) b!825296))

(assert (= (and b!825297 (not c!133971)) b!825295))

(assert (= (or b!825298 b!825295) bm!47744))

(assert (= (or b!825292 bm!47744) bm!47745))

(assert (= (or b!825292 b!825295) bm!47746))

(declare-fun m!1064625 () Bool)

(assert (=> bm!47745 m!1064625))

(declare-fun m!1064627 () Bool)

(assert (=> bm!47746 m!1064627))

(assert (=> b!825231 d!259238))

(declare-fun d!259240 () Bool)

(declare-fun lt!317480 () Bool)

(declare-fun content!1299 (List!8886) (Set C!4690))

(assert (=> d!259240 (= lt!317480 (set.member c!13916 (content!1299 (firstChars!31 r!27177))))))

(declare-fun e!544716 () Bool)

(assert (=> d!259240 (= lt!317480 e!544716)))

(declare-fun res!380259 () Bool)

(assert (=> d!259240 (=> (not res!380259) (not e!544716))))

(assert (=> d!259240 (= res!380259 (is-Cons!8870 (firstChars!31 r!27177)))))

(assert (=> d!259240 (= (contains!1651 (firstChars!31 r!27177) c!13916) lt!317480)))

(declare-fun b!825314 () Bool)

(declare-fun e!544717 () Bool)

(assert (=> b!825314 (= e!544716 e!544717)))

(declare-fun res!380258 () Bool)

(assert (=> b!825314 (=> res!380258 e!544717)))

(assert (=> b!825314 (= res!380258 (= (h!14271 (firstChars!31 r!27177)) c!13916))))

(declare-fun b!825315 () Bool)

(assert (=> b!825315 (= e!544717 (contains!1651 (t!93178 (firstChars!31 r!27177)) c!13916))))

(assert (= (and d!259240 res!380259) b!825314))

(assert (= (and b!825314 (not res!380258)) b!825315))

(assert (=> d!259240 m!1064599))

(declare-fun m!1064629 () Bool)

(assert (=> d!259240 m!1064629))

(declare-fun m!1064631 () Bool)

(assert (=> d!259240 m!1064631))

(declare-fun m!1064633 () Bool)

(assert (=> b!825315 m!1064633))

(assert (=> b!825228 d!259240))

(declare-fun b!825346 () Bool)

(declare-fun e!544736 () List!8886)

(assert (=> b!825346 (= e!544736 Nil!8870)))

(declare-fun b!825347 () Bool)

(declare-fun e!544738 () List!8886)

(assert (=> b!825347 (= e!544738 (Cons!8870 (c!133951 r!27177) Nil!8870))))

(declare-fun b!825348 () Bool)

(declare-fun c!133989 () Bool)

(assert (=> b!825348 (= c!133989 (is-Star!2060 r!27177))))

(declare-fun e!544739 () List!8886)

(assert (=> b!825348 (= e!544738 e!544739)))

(declare-fun bm!47763 () Bool)

(declare-fun call!47772 () List!8886)

(declare-fun call!47769 () List!8886)

(assert (=> bm!47763 (= call!47772 call!47769)))

(declare-fun b!825349 () Bool)

(declare-fun e!544737 () List!8886)

(declare-fun call!47770 () List!8886)

(assert (=> b!825349 (= e!544737 call!47770)))

(declare-fun c!133988 () Bool)

(declare-fun bm!47764 () Bool)

(assert (=> bm!47764 (= call!47769 (firstChars!31 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))

(declare-fun b!825351 () Bool)

(declare-fun e!544740 () List!8886)

(declare-fun call!47768 () List!8886)

(assert (=> b!825351 (= e!544740 call!47768)))

(declare-fun b!825352 () Bool)

(assert (=> b!825352 (= e!544739 e!544737)))

(assert (=> b!825352 (= c!133988 (is-Union!2060 r!27177))))

(declare-fun call!47771 () List!8886)

(declare-fun bm!47765 () Bool)

(declare-fun ++!2287 (List!8886 List!8886) List!8886)

(assert (=> bm!47765 (= call!47770 (++!2287 (ite c!133988 call!47771 call!47768) (ite c!133988 call!47772 call!47771)))))

(declare-fun b!825353 () Bool)

(assert (=> b!825353 (= e!544740 call!47770)))

(declare-fun bm!47766 () Bool)

(assert (=> bm!47766 (= call!47771 (firstChars!31 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))

(declare-fun b!825354 () Bool)

(assert (=> b!825354 (= e!544739 call!47769)))

(declare-fun b!825355 () Bool)

(declare-fun c!133987 () Bool)

(declare-fun nullable!511 (Regex!2060) Bool)

(assert (=> b!825355 (= c!133987 (nullable!511 (regOne!4632 r!27177)))))

(assert (=> b!825355 (= e!544737 e!544740)))

(declare-fun bm!47767 () Bool)

(assert (=> bm!47767 (= call!47768 call!47772)))

(declare-fun b!825350 () Bool)

(assert (=> b!825350 (= e!544736 e!544738)))

(declare-fun c!133990 () Bool)

(assert (=> b!825350 (= c!133990 (is-ElementMatch!2060 r!27177))))

(declare-fun d!259242 () Bool)

(declare-fun c!133991 () Bool)

(assert (=> d!259242 (= c!133991 (or (is-EmptyExpr!2060 r!27177) (is-EmptyLang!2060 r!27177)))))

(assert (=> d!259242 (= (firstChars!31 r!27177) e!544736)))

(assert (= (and d!259242 c!133991) b!825346))

(assert (= (and d!259242 (not c!133991)) b!825350))

(assert (= (and b!825350 c!133990) b!825347))

(assert (= (and b!825350 (not c!133990)) b!825348))

(assert (= (and b!825348 c!133989) b!825354))

(assert (= (and b!825348 (not c!133989)) b!825352))

(assert (= (and b!825352 c!133988) b!825349))

(assert (= (and b!825352 (not c!133988)) b!825355))

(assert (= (and b!825355 c!133987) b!825353))

(assert (= (and b!825355 (not c!133987)) b!825351))

(assert (= (or b!825353 b!825351) bm!47767))

(assert (= (or b!825349 bm!47767) bm!47763))

(assert (= (or b!825349 b!825353) bm!47766))

(assert (= (or b!825349 b!825353) bm!47765))

(assert (= (or b!825354 bm!47763) bm!47764))

(declare-fun m!1064635 () Bool)

(assert (=> bm!47764 m!1064635))

(declare-fun m!1064637 () Bool)

(assert (=> bm!47765 m!1064637))

(declare-fun m!1064639 () Bool)

(assert (=> bm!47766 m!1064639))

(declare-fun m!1064641 () Bool)

(assert (=> b!825355 m!1064641))

(assert (=> b!825228 d!259242))

(declare-fun d!259244 () Bool)

(declare-fun lt!317481 () Bool)

(assert (=> d!259244 (= lt!317481 (set.member c!13916 (content!1299 (firstChars!31 (regOne!4633 r!27177)))))))

(declare-fun e!544741 () Bool)

(assert (=> d!259244 (= lt!317481 e!544741)))

(declare-fun res!380267 () Bool)

(assert (=> d!259244 (=> (not res!380267) (not e!544741))))

(assert (=> d!259244 (= res!380267 (is-Cons!8870 (firstChars!31 (regOne!4633 r!27177))))))

(assert (=> d!259244 (= (contains!1651 (firstChars!31 (regOne!4633 r!27177)) c!13916) lt!317481)))

(declare-fun b!825356 () Bool)

(declare-fun e!544742 () Bool)

(assert (=> b!825356 (= e!544741 e!544742)))

(declare-fun res!380266 () Bool)

(assert (=> b!825356 (=> res!380266 e!544742)))

(assert (=> b!825356 (= res!380266 (= (h!14271 (firstChars!31 (regOne!4633 r!27177))) c!13916))))

(declare-fun b!825357 () Bool)

(assert (=> b!825357 (= e!544742 (contains!1651 (t!93178 (firstChars!31 (regOne!4633 r!27177))) c!13916))))

(assert (= (and d!259244 res!380267) b!825356))

(assert (= (and b!825356 (not res!380266)) b!825357))

(assert (=> d!259244 m!1064595))

(declare-fun m!1064643 () Bool)

(assert (=> d!259244 m!1064643))

(declare-fun m!1064645 () Bool)

(assert (=> d!259244 m!1064645))

(declare-fun m!1064647 () Bool)

(assert (=> b!825357 m!1064647))

(assert (=> b!825229 d!259244))

(declare-fun b!825367 () Bool)

(declare-fun e!544750 () List!8886)

(assert (=> b!825367 (= e!544750 Nil!8870)))

(declare-fun b!825368 () Bool)

(declare-fun e!544752 () List!8886)

(assert (=> b!825368 (= e!544752 (Cons!8870 (c!133951 (regOne!4633 r!27177)) Nil!8870))))

(declare-fun b!825369 () Bool)

(declare-fun c!133996 () Bool)

(assert (=> b!825369 (= c!133996 (is-Star!2060 (regOne!4633 r!27177)))))

(declare-fun e!544753 () List!8886)

(assert (=> b!825369 (= e!544752 e!544753)))

(declare-fun bm!47771 () Bool)

(declare-fun call!47780 () List!8886)

(declare-fun call!47777 () List!8886)

(assert (=> bm!47771 (= call!47780 call!47777)))

(declare-fun b!825370 () Bool)

(declare-fun e!544751 () List!8886)

(declare-fun call!47778 () List!8886)

(assert (=> b!825370 (= e!544751 call!47778)))

(declare-fun bm!47772 () Bool)

(declare-fun c!133995 () Bool)

(assert (=> bm!47772 (= call!47777 (firstChars!31 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))

(declare-fun b!825372 () Bool)

(declare-fun e!544754 () List!8886)

(declare-fun call!47776 () List!8886)

(assert (=> b!825372 (= e!544754 call!47776)))

(declare-fun b!825373 () Bool)

(assert (=> b!825373 (= e!544753 e!544751)))

(assert (=> b!825373 (= c!133995 (is-Union!2060 (regOne!4633 r!27177)))))

(declare-fun bm!47773 () Bool)

(declare-fun call!47779 () List!8886)

(assert (=> bm!47773 (= call!47778 (++!2287 (ite c!133995 call!47779 call!47776) (ite c!133995 call!47780 call!47779)))))

(declare-fun b!825374 () Bool)

(assert (=> b!825374 (= e!544754 call!47778)))

(declare-fun bm!47774 () Bool)

(assert (=> bm!47774 (= call!47779 (firstChars!31 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))

(declare-fun b!825375 () Bool)

(assert (=> b!825375 (= e!544753 call!47777)))

(declare-fun b!825376 () Bool)

(declare-fun c!133994 () Bool)

(assert (=> b!825376 (= c!133994 (nullable!511 (regOne!4632 (regOne!4633 r!27177))))))

(assert (=> b!825376 (= e!544751 e!544754)))

(declare-fun bm!47775 () Bool)

(assert (=> bm!47775 (= call!47776 call!47780)))

(declare-fun b!825371 () Bool)

(assert (=> b!825371 (= e!544750 e!544752)))

(declare-fun c!133997 () Bool)

(assert (=> b!825371 (= c!133997 (is-ElementMatch!2060 (regOne!4633 r!27177)))))

(declare-fun d!259246 () Bool)

(declare-fun c!133998 () Bool)

(assert (=> d!259246 (= c!133998 (or (is-EmptyExpr!2060 (regOne!4633 r!27177)) (is-EmptyLang!2060 (regOne!4633 r!27177))))))

(assert (=> d!259246 (= (firstChars!31 (regOne!4633 r!27177)) e!544750)))

(assert (= (and d!259246 c!133998) b!825367))

(assert (= (and d!259246 (not c!133998)) b!825371))

(assert (= (and b!825371 c!133997) b!825368))

(assert (= (and b!825371 (not c!133997)) b!825369))

(assert (= (and b!825369 c!133996) b!825375))

(assert (= (and b!825369 (not c!133996)) b!825373))

(assert (= (and b!825373 c!133995) b!825370))

(assert (= (and b!825373 (not c!133995)) b!825376))

(assert (= (and b!825376 c!133994) b!825374))

(assert (= (and b!825376 (not c!133994)) b!825372))

(assert (= (or b!825374 b!825372) bm!47775))

(assert (= (or b!825370 bm!47775) bm!47771))

(assert (= (or b!825370 b!825374) bm!47774))

(assert (= (or b!825370 b!825374) bm!47773))

(assert (= (or b!825375 bm!47771) bm!47772))

(declare-fun m!1064649 () Bool)

(assert (=> bm!47772 m!1064649))

(declare-fun m!1064651 () Bool)

(assert (=> bm!47773 m!1064651))

(declare-fun m!1064653 () Bool)

(assert (=> bm!47774 m!1064653))

(declare-fun m!1064655 () Bool)

(assert (=> b!825376 m!1064655))

(assert (=> b!825229 d!259246))

(declare-fun b!825397 () Bool)

(declare-fun e!544772 () Bool)

(declare-fun e!544769 () Bool)

(assert (=> b!825397 (= e!544772 e!544769)))

(declare-fun c!134003 () Bool)

(assert (=> b!825397 (= c!134003 (is-Star!2060 (regOne!4633 r!27177)))))

(declare-fun b!825398 () Bool)

(declare-fun res!380287 () Bool)

(declare-fun e!544775 () Bool)

(assert (=> b!825398 (=> (not res!380287) (not e!544775))))

(declare-fun call!47789 () Bool)

(assert (=> b!825398 (= res!380287 call!47789)))

(declare-fun e!544770 () Bool)

(assert (=> b!825398 (= e!544770 e!544775)))

(declare-fun b!825399 () Bool)

(declare-fun e!544774 () Bool)

(declare-fun call!47788 () Bool)

(assert (=> b!825399 (= e!544774 call!47788)))

(declare-fun c!134004 () Bool)

(declare-fun bm!47782 () Bool)

(assert (=> bm!47782 (= call!47788 (validRegex!613 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(declare-fun b!825400 () Bool)

(declare-fun e!544773 () Bool)

(declare-fun e!544771 () Bool)

(assert (=> b!825400 (= e!544773 e!544771)))

(declare-fun res!380284 () Bool)

(assert (=> b!825400 (=> (not res!380284) (not e!544771))))

(declare-fun call!47787 () Bool)

(assert (=> b!825400 (= res!380284 call!47787)))

(declare-fun b!825401 () Bool)

(assert (=> b!825401 (= e!544769 e!544774)))

(declare-fun res!380286 () Bool)

(assert (=> b!825401 (= res!380286 (not (nullable!511 (reg!2389 (regOne!4633 r!27177)))))))

(assert (=> b!825401 (=> (not res!380286) (not e!544774))))

(declare-fun bm!47783 () Bool)

(assert (=> bm!47783 (= call!47789 call!47788)))

(declare-fun b!825402 () Bool)

(assert (=> b!825402 (= e!544771 call!47789)))

(declare-fun d!259248 () Bool)

(declare-fun res!380285 () Bool)

(assert (=> d!259248 (=> res!380285 e!544772)))

(assert (=> d!259248 (= res!380285 (is-ElementMatch!2060 (regOne!4633 r!27177)))))

(assert (=> d!259248 (= (validRegex!613 (regOne!4633 r!27177)) e!544772)))

(declare-fun b!825403 () Bool)

(declare-fun res!380283 () Bool)

(assert (=> b!825403 (=> res!380283 e!544773)))

(assert (=> b!825403 (= res!380283 (not (is-Concat!3791 (regOne!4633 r!27177))))))

(assert (=> b!825403 (= e!544770 e!544773)))

(declare-fun b!825404 () Bool)

(assert (=> b!825404 (= e!544769 e!544770)))

(assert (=> b!825404 (= c!134004 (is-Union!2060 (regOne!4633 r!27177)))))

(declare-fun b!825405 () Bool)

(assert (=> b!825405 (= e!544775 call!47787)))

(declare-fun bm!47784 () Bool)

(assert (=> bm!47784 (= call!47787 (validRegex!613 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))

(assert (= (and d!259248 (not res!380285)) b!825397))

(assert (= (and b!825397 c!134003) b!825401))

(assert (= (and b!825397 (not c!134003)) b!825404))

(assert (= (and b!825401 res!380286) b!825399))

(assert (= (and b!825404 c!134004) b!825398))

(assert (= (and b!825404 (not c!134004)) b!825403))

(assert (= (and b!825398 res!380287) b!825405))

(assert (= (and b!825403 (not res!380283)) b!825400))

(assert (= (and b!825400 res!380284) b!825402))

(assert (= (or b!825398 b!825402) bm!47783))

(assert (= (or b!825405 b!825400) bm!47784))

(assert (= (or b!825399 bm!47783) bm!47782))

(declare-fun m!1064663 () Bool)

(assert (=> bm!47782 m!1064663))

(declare-fun m!1064665 () Bool)

(assert (=> b!825401 m!1064665))

(declare-fun m!1064667 () Bool)

(assert (=> bm!47784 m!1064667))

(assert (=> b!825232 d!259248))

(declare-fun b!825424 () Bool)

(declare-fun e!544789 () Bool)

(declare-fun e!544786 () Bool)

(assert (=> b!825424 (= e!544789 e!544786)))

(declare-fun c!134015 () Bool)

(assert (=> b!825424 (= c!134015 (is-Star!2060 r!27177))))

(declare-fun b!825425 () Bool)

(declare-fun res!380292 () Bool)

(declare-fun e!544792 () Bool)

(assert (=> b!825425 (=> (not res!380292) (not e!544792))))

(declare-fun call!47792 () Bool)

(assert (=> b!825425 (= res!380292 call!47792)))

(declare-fun e!544787 () Bool)

(assert (=> b!825425 (= e!544787 e!544792)))

(declare-fun b!825426 () Bool)

(declare-fun e!544791 () Bool)

(declare-fun call!47791 () Bool)

(assert (=> b!825426 (= e!544791 call!47791)))

(declare-fun c!134016 () Bool)

(declare-fun bm!47785 () Bool)

(assert (=> bm!47785 (= call!47791 (validRegex!613 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(declare-fun b!825427 () Bool)

(declare-fun e!544790 () Bool)

(declare-fun e!544788 () Bool)

(assert (=> b!825427 (= e!544790 e!544788)))

(declare-fun res!380289 () Bool)

(assert (=> b!825427 (=> (not res!380289) (not e!544788))))

(declare-fun call!47790 () Bool)

(assert (=> b!825427 (= res!380289 call!47790)))

(declare-fun b!825428 () Bool)

(assert (=> b!825428 (= e!544786 e!544791)))

(declare-fun res!380291 () Bool)

(assert (=> b!825428 (= res!380291 (not (nullable!511 (reg!2389 r!27177))))))

(assert (=> b!825428 (=> (not res!380291) (not e!544791))))

(declare-fun bm!47786 () Bool)

(assert (=> bm!47786 (= call!47792 call!47791)))

(declare-fun b!825429 () Bool)

(assert (=> b!825429 (= e!544788 call!47792)))

(declare-fun d!259252 () Bool)

(declare-fun res!380290 () Bool)

(assert (=> d!259252 (=> res!380290 e!544789)))

(assert (=> d!259252 (= res!380290 (is-ElementMatch!2060 r!27177))))

(assert (=> d!259252 (= (validRegex!613 r!27177) e!544789)))

(declare-fun b!825430 () Bool)

(declare-fun res!380288 () Bool)

(assert (=> b!825430 (=> res!380288 e!544790)))

(assert (=> b!825430 (= res!380288 (not (is-Concat!3791 r!27177)))))

(assert (=> b!825430 (= e!544787 e!544790)))

(declare-fun b!825431 () Bool)

(assert (=> b!825431 (= e!544786 e!544787)))

(assert (=> b!825431 (= c!134016 (is-Union!2060 r!27177))))

(declare-fun b!825432 () Bool)

(assert (=> b!825432 (= e!544792 call!47790)))

(declare-fun bm!47787 () Bool)

(assert (=> bm!47787 (= call!47790 (validRegex!613 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))

(assert (= (and d!259252 (not res!380290)) b!825424))

(assert (= (and b!825424 c!134015) b!825428))

(assert (= (and b!825424 (not c!134015)) b!825431))

(assert (= (and b!825428 res!380291) b!825426))

(assert (= (and b!825431 c!134016) b!825425))

(assert (= (and b!825431 (not c!134016)) b!825430))

(assert (= (and b!825425 res!380292) b!825432))

(assert (= (and b!825430 (not res!380288)) b!825427))

(assert (= (and b!825427 res!380289) b!825429))

(assert (= (or b!825425 b!825429) bm!47786))

(assert (= (or b!825432 b!825427) bm!47787))

(assert (= (or b!825426 bm!47786) bm!47785))

(declare-fun m!1064669 () Bool)

(assert (=> bm!47785 m!1064669))

(declare-fun m!1064671 () Bool)

(assert (=> b!825428 m!1064671))

(declare-fun m!1064673 () Bool)

(assert (=> bm!47787 m!1064673))

(assert (=> start!73788 d!259252))

(declare-fun b!825445 () Bool)

(declare-fun e!544795 () Bool)

(declare-fun tp!257977 () Bool)

(assert (=> b!825445 (= e!544795 tp!257977)))

(declare-fun b!825446 () Bool)

(declare-fun tp!257976 () Bool)

(declare-fun tp!257979 () Bool)

(assert (=> b!825446 (= e!544795 (and tp!257976 tp!257979))))

(declare-fun b!825444 () Bool)

(declare-fun tp!257975 () Bool)

(declare-fun tp!257978 () Bool)

(assert (=> b!825444 (= e!544795 (and tp!257975 tp!257978))))

(declare-fun b!825443 () Bool)

(assert (=> b!825443 (= e!544795 tp_is_empty!3843)))

(assert (=> b!825226 (= tp!257947 e!544795)))

(assert (= (and b!825226 (is-ElementMatch!2060 (regOne!4633 r!27177))) b!825443))

(assert (= (and b!825226 (is-Concat!3791 (regOne!4633 r!27177))) b!825444))

(assert (= (and b!825226 (is-Star!2060 (regOne!4633 r!27177))) b!825445))

(assert (= (and b!825226 (is-Union!2060 (regOne!4633 r!27177))) b!825446))

(declare-fun b!825449 () Bool)

(declare-fun e!544796 () Bool)

(declare-fun tp!257982 () Bool)

(assert (=> b!825449 (= e!544796 tp!257982)))

(declare-fun b!825450 () Bool)

(declare-fun tp!257981 () Bool)

(declare-fun tp!257984 () Bool)

(assert (=> b!825450 (= e!544796 (and tp!257981 tp!257984))))

(declare-fun b!825448 () Bool)

(declare-fun tp!257980 () Bool)

(declare-fun tp!257983 () Bool)

(assert (=> b!825448 (= e!544796 (and tp!257980 tp!257983))))

(declare-fun b!825447 () Bool)

(assert (=> b!825447 (= e!544796 tp_is_empty!3843)))

(assert (=> b!825226 (= tp!257948 e!544796)))

(assert (= (and b!825226 (is-ElementMatch!2060 (regTwo!4633 r!27177))) b!825447))

(assert (= (and b!825226 (is-Concat!3791 (regTwo!4633 r!27177))) b!825448))

(assert (= (and b!825226 (is-Star!2060 (regTwo!4633 r!27177))) b!825449))

(assert (= (and b!825226 (is-Union!2060 (regTwo!4633 r!27177))) b!825450))

(declare-fun b!825453 () Bool)

(declare-fun e!544797 () Bool)

(declare-fun tp!257987 () Bool)

(assert (=> b!825453 (= e!544797 tp!257987)))

(declare-fun b!825454 () Bool)

(declare-fun tp!257986 () Bool)

(declare-fun tp!257989 () Bool)

(assert (=> b!825454 (= e!544797 (and tp!257986 tp!257989))))

(declare-fun b!825452 () Bool)

(declare-fun tp!257985 () Bool)

(declare-fun tp!257988 () Bool)

(assert (=> b!825452 (= e!544797 (and tp!257985 tp!257988))))

(declare-fun b!825451 () Bool)

(assert (=> b!825451 (= e!544797 tp_is_empty!3843)))

(assert (=> b!825230 (= tp!257949 e!544797)))

(assert (= (and b!825230 (is-ElementMatch!2060 (reg!2389 r!27177))) b!825451))

(assert (= (and b!825230 (is-Concat!3791 (reg!2389 r!27177))) b!825452))

(assert (= (and b!825230 (is-Star!2060 (reg!2389 r!27177))) b!825453))

(assert (= (and b!825230 (is-Union!2060 (reg!2389 r!27177))) b!825454))

(declare-fun b!825457 () Bool)

(declare-fun e!544798 () Bool)

(declare-fun tp!257992 () Bool)

(assert (=> b!825457 (= e!544798 tp!257992)))

(declare-fun b!825458 () Bool)

(declare-fun tp!257991 () Bool)

(declare-fun tp!257994 () Bool)

(assert (=> b!825458 (= e!544798 (and tp!257991 tp!257994))))

(declare-fun b!825456 () Bool)

(declare-fun tp!257990 () Bool)

(declare-fun tp!257993 () Bool)

(assert (=> b!825456 (= e!544798 (and tp!257990 tp!257993))))

(declare-fun b!825455 () Bool)

(assert (=> b!825455 (= e!544798 tp_is_empty!3843)))

(assert (=> b!825234 (= tp!257946 e!544798)))

(assert (= (and b!825234 (is-ElementMatch!2060 (regOne!4632 r!27177))) b!825455))

(assert (= (and b!825234 (is-Concat!3791 (regOne!4632 r!27177))) b!825456))

(assert (= (and b!825234 (is-Star!2060 (regOne!4632 r!27177))) b!825457))

(assert (= (and b!825234 (is-Union!2060 (regOne!4632 r!27177))) b!825458))

(declare-fun b!825461 () Bool)

(declare-fun e!544799 () Bool)

(declare-fun tp!257997 () Bool)

(assert (=> b!825461 (= e!544799 tp!257997)))

(declare-fun b!825462 () Bool)

(declare-fun tp!257996 () Bool)

(declare-fun tp!257999 () Bool)

(assert (=> b!825462 (= e!544799 (and tp!257996 tp!257999))))

(declare-fun b!825460 () Bool)

(declare-fun tp!257995 () Bool)

(declare-fun tp!257998 () Bool)

(assert (=> b!825460 (= e!544799 (and tp!257995 tp!257998))))

(declare-fun b!825459 () Bool)

(assert (=> b!825459 (= e!544799 tp_is_empty!3843)))

(assert (=> b!825234 (= tp!257945 e!544799)))

(assert (= (and b!825234 (is-ElementMatch!2060 (regTwo!4632 r!27177))) b!825459))

(assert (= (and b!825234 (is-Concat!3791 (regTwo!4632 r!27177))) b!825460))

(assert (= (and b!825234 (is-Star!2060 (regTwo!4632 r!27177))) b!825461))

(assert (= (and b!825234 (is-Union!2060 (regTwo!4632 r!27177))) b!825462))

(push 1)

(assert (not b!825449))

(assert (not b!825456))

(assert (not b!825450))

(assert (not bm!47764))

(assert (not bm!47772))

(assert (not b!825444))

(assert (not bm!47746))

(assert (not b!825401))

(assert (not b!825454))

(assert (not b!825446))

(assert (not b!825457))

(assert (not b!825452))

(assert (not bm!47773))

(assert (not bm!47743))

(assert (not b!825462))

(assert (not d!259240))

(assert (not bm!47742))

(assert (not bm!47745))

(assert (not b!825357))

(assert (not bm!47784))

(assert (not b!825461))

(assert (not b!825315))

(assert (not b!825453))

(assert (not b!825355))

(assert (not b!825458))

(assert tp_is_empty!3843)

(assert (not b!825460))

(assert (not bm!47787))

(assert (not bm!47782))

(assert (not d!259244))

(assert (not b!825448))

(assert (not bm!47774))

(assert (not bm!47765))

(assert (not bm!47785))

(assert (not b!825428))

(assert (not b!825445))

(assert (not b!825376))

(assert (not bm!47766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!825570 () Bool)

(declare-fun e!544856 () Int)

(declare-fun call!47828 () Int)

(declare-fun call!47829 () Int)

(assert (=> b!825570 (= e!544856 (+ 1 call!47828 call!47829))))

(declare-fun b!825571 () Bool)

(declare-fun c!134053 () Bool)

(assert (=> b!825571 (= c!134053 (is-EmptyExpr!2060 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(declare-fun e!544854 () Int)

(assert (=> b!825571 (= e!544856 e!544854)))

(declare-fun b!825572 () Bool)

(assert (=> b!825572 (= e!544854 0)))

(declare-fun bm!47823 () Bool)

(declare-fun call!47830 () Int)

(assert (=> bm!47823 (= call!47830 call!47828)))

(declare-fun b!825573 () Bool)

(declare-fun e!544855 () Int)

(assert (=> b!825573 (= e!544855 (+ 1 call!47830 call!47829))))

(declare-fun bm!47824 () Bool)

(declare-fun c!134050 () Bool)

(declare-fun c!134051 () Bool)

(assert (=> bm!47824 (= call!47828 (RegexPrimitiveSize!89 (ite c!134050 (regOne!4632 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))) (ite c!134051 (reg!2389 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))) (regOne!4633 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177)))))))))))

(declare-fun b!825574 () Bool)

(assert (=> b!825574 (= e!544855 0)))

(declare-fun c!134052 () Bool)

(declare-fun b!825575 () Bool)

(assert (=> b!825575 (= c!134052 (is-EmptyLang!2060 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(declare-fun e!544853 () Int)

(assert (=> b!825575 (= e!544853 e!544855)))

(declare-fun bm!47825 () Bool)

(assert (=> bm!47825 (= call!47829 (RegexPrimitiveSize!89 (ite c!134050 (regTwo!4632 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))) (regTwo!4633 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))))

(declare-fun b!825576 () Bool)

(assert (=> b!825576 (= e!544853 (+ 1 call!47830))))

(declare-fun b!825577 () Bool)

(assert (=> b!825577 (= e!544854 e!544853)))

(assert (=> b!825577 (= c!134051 (is-Star!2060 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(declare-fun b!825578 () Bool)

(declare-fun e!544852 () Int)

(assert (=> b!825578 (= e!544852 1)))

(declare-fun d!259266 () Bool)

(declare-fun lt!317490 () Int)

(assert (=> d!259266 (>= lt!317490 0)))

(assert (=> d!259266 (= lt!317490 e!544852)))

(declare-fun c!134049 () Bool)

(assert (=> d!259266 (= c!134049 (is-ElementMatch!2060 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(assert (=> d!259266 (= (RegexPrimitiveSize!89 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))) lt!317490)))

(declare-fun b!825579 () Bool)

(assert (=> b!825579 (= e!544852 e!544856)))

(assert (=> b!825579 (= c!134050 (is-Concat!3791 (ite c!133964 (regOne!4632 (regOne!4633 r!27177)) (ite c!133965 (reg!2389 (regOne!4633 r!27177)) (regOne!4633 (regOne!4633 r!27177))))))))

(assert (= (and d!259266 c!134049) b!825578))

(assert (= (and d!259266 (not c!134049)) b!825579))

(assert (= (and b!825579 c!134050) b!825570))

(assert (= (and b!825579 (not c!134050)) b!825571))

(assert (= (and b!825571 c!134053) b!825572))

(assert (= (and b!825571 (not c!134053)) b!825577))

(assert (= (and b!825577 c!134051) b!825576))

(assert (= (and b!825577 (not c!134051)) b!825575))

(assert (= (and b!825575 c!134052) b!825574))

(assert (= (and b!825575 (not c!134052)) b!825573))

(assert (= (or b!825576 b!825573) bm!47823))

(assert (= (or b!825570 bm!47823) bm!47824))

(assert (= (or b!825570 b!825573) bm!47825))

(declare-fun m!1064717 () Bool)

(assert (=> bm!47824 m!1064717))

(declare-fun m!1064719 () Bool)

(assert (=> bm!47825 m!1064719))

(assert (=> bm!47742 d!259266))

(declare-fun b!825580 () Bool)

(declare-fun e!544857 () List!8886)

(assert (=> b!825580 (= e!544857 Nil!8870)))

(declare-fun b!825581 () Bool)

(declare-fun e!544859 () List!8886)

(assert (=> b!825581 (= e!544859 (Cons!8870 (c!133951 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) Nil!8870))))

(declare-fun c!134056 () Bool)

(declare-fun b!825582 () Bool)

(assert (=> b!825582 (= c!134056 (is-Star!2060 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))

(declare-fun e!544860 () List!8886)

(assert (=> b!825582 (= e!544859 e!544860)))

(declare-fun bm!47826 () Bool)

(declare-fun call!47835 () List!8886)

(declare-fun call!47832 () List!8886)

(assert (=> bm!47826 (= call!47835 call!47832)))

(declare-fun b!825583 () Bool)

(declare-fun e!544858 () List!8886)

(declare-fun call!47833 () List!8886)

(assert (=> b!825583 (= e!544858 call!47833)))

(declare-fun c!134055 () Bool)

(declare-fun bm!47827 () Bool)

(assert (=> bm!47827 (= call!47832 (firstChars!31 (ite c!134056 (reg!2389 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) (ite c!134055 (regTwo!4633 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) (regOne!4632 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))))))

(declare-fun b!825585 () Bool)

(declare-fun e!544861 () List!8886)

(declare-fun call!47831 () List!8886)

(assert (=> b!825585 (= e!544861 call!47831)))

(declare-fun b!825586 () Bool)

(assert (=> b!825586 (= e!544860 e!544858)))

(assert (=> b!825586 (= c!134055 (is-Union!2060 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))

(declare-fun bm!47828 () Bool)

(declare-fun call!47834 () List!8886)

(assert (=> bm!47828 (= call!47833 (++!2287 (ite c!134055 call!47834 call!47831) (ite c!134055 call!47835 call!47834)))))

(declare-fun b!825587 () Bool)

(assert (=> b!825587 (= e!544861 call!47833)))

(declare-fun bm!47829 () Bool)

(assert (=> bm!47829 (= call!47834 (firstChars!31 (ite c!134055 (regOne!4633 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) (regTwo!4632 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))))

(declare-fun b!825588 () Bool)

(assert (=> b!825588 (= e!544860 call!47832)))

(declare-fun b!825589 () Bool)

(declare-fun c!134054 () Bool)

(assert (=> b!825589 (= c!134054 (nullable!511 (regOne!4632 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))))

(assert (=> b!825589 (= e!544858 e!544861)))

(declare-fun bm!47830 () Bool)

(assert (=> bm!47830 (= call!47831 call!47835)))

(declare-fun b!825584 () Bool)

(assert (=> b!825584 (= e!544857 e!544859)))

(declare-fun c!134057 () Bool)

(assert (=> b!825584 (= c!134057 (is-ElementMatch!2060 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))

(declare-fun c!134058 () Bool)

(declare-fun d!259268 () Bool)

(assert (=> d!259268 (= c!134058 (or (is-EmptyExpr!2060 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) (is-EmptyLang!2060 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))))

(assert (=> d!259268 (= (firstChars!31 (ite c!133989 (reg!2389 r!27177) (ite c!133988 (regTwo!4633 r!27177) (regOne!4632 r!27177)))) e!544857)))

(assert (= (and d!259268 c!134058) b!825580))

(assert (= (and d!259268 (not c!134058)) b!825584))

(assert (= (and b!825584 c!134057) b!825581))

(assert (= (and b!825584 (not c!134057)) b!825582))

(assert (= (and b!825582 c!134056) b!825588))

(assert (= (and b!825582 (not c!134056)) b!825586))

(assert (= (and b!825586 c!134055) b!825583))

(assert (= (and b!825586 (not c!134055)) b!825589))

(assert (= (and b!825589 c!134054) b!825587))

(assert (= (and b!825589 (not c!134054)) b!825585))

(assert (= (or b!825587 b!825585) bm!47830))

(assert (= (or b!825583 bm!47830) bm!47826))

(assert (= (or b!825583 b!825587) bm!47829))

(assert (= (or b!825583 b!825587) bm!47828))

(assert (= (or b!825588 bm!47826) bm!47827))

(declare-fun m!1064721 () Bool)

(assert (=> bm!47827 m!1064721))

(declare-fun m!1064723 () Bool)

(assert (=> bm!47828 m!1064723))

(declare-fun m!1064725 () Bool)

(assert (=> bm!47829 m!1064725))

(declare-fun m!1064727 () Bool)

(assert (=> b!825589 m!1064727))

(assert (=> bm!47764 d!259268))

(declare-fun b!825590 () Bool)

(declare-fun e!544866 () Int)

(declare-fun call!47836 () Int)

(declare-fun call!47837 () Int)

(assert (=> b!825590 (= e!544866 (+ 1 call!47836 call!47837))))

(declare-fun c!134063 () Bool)

(declare-fun b!825591 () Bool)

(assert (=> b!825591 (= c!134063 (is-EmptyExpr!2060 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(declare-fun e!544864 () Int)

(assert (=> b!825591 (= e!544866 e!544864)))

(declare-fun b!825592 () Bool)

(assert (=> b!825592 (= e!544864 0)))

(declare-fun bm!47831 () Bool)

(declare-fun call!47838 () Int)

(assert (=> bm!47831 (= call!47838 call!47836)))

(declare-fun b!825593 () Bool)

(declare-fun e!544865 () Int)

(assert (=> b!825593 (= e!544865 (+ 1 call!47838 call!47837))))

(declare-fun c!134060 () Bool)

(declare-fun c!134061 () Bool)

(declare-fun bm!47832 () Bool)

(assert (=> bm!47832 (= call!47836 (RegexPrimitiveSize!89 (ite c!134060 (regOne!4632 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))) (ite c!134061 (reg!2389 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))) (regOne!4633 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177))))))))))

(declare-fun b!825594 () Bool)

(assert (=> b!825594 (= e!544865 0)))

(declare-fun c!134062 () Bool)

(declare-fun b!825595 () Bool)

(assert (=> b!825595 (= c!134062 (is-EmptyLang!2060 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(declare-fun e!544863 () Int)

(assert (=> b!825595 (= e!544863 e!544865)))

(declare-fun bm!47833 () Bool)

(assert (=> bm!47833 (= call!47837 (RegexPrimitiveSize!89 (ite c!134060 (regTwo!4632 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))) (regTwo!4633 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))))

(declare-fun b!825596 () Bool)

(assert (=> b!825596 (= e!544863 (+ 1 call!47838))))

(declare-fun b!825597 () Bool)

(assert (=> b!825597 (= e!544864 e!544863)))

(assert (=> b!825597 (= c!134061 (is-Star!2060 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(declare-fun b!825598 () Bool)

(declare-fun e!544862 () Int)

(assert (=> b!825598 (= e!544862 1)))

(declare-fun d!259270 () Bool)

(declare-fun lt!317491 () Int)

(assert (=> d!259270 (>= lt!317491 0)))

(assert (=> d!259270 (= lt!317491 e!544862)))

(declare-fun c!134059 () Bool)

(assert (=> d!259270 (= c!134059 (is-ElementMatch!2060 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(assert (=> d!259270 (= (RegexPrimitiveSize!89 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))) lt!317491)))

(declare-fun b!825599 () Bool)

(assert (=> b!825599 (= e!544862 e!544866)))

(assert (=> b!825599 (= c!134060 (is-Concat!3791 (ite c!133969 (regOne!4632 r!27177) (ite c!133970 (reg!2389 r!27177) (regOne!4633 r!27177)))))))

(assert (= (and d!259270 c!134059) b!825598))

(assert (= (and d!259270 (not c!134059)) b!825599))

(assert (= (and b!825599 c!134060) b!825590))

(assert (= (and b!825599 (not c!134060)) b!825591))

(assert (= (and b!825591 c!134063) b!825592))

(assert (= (and b!825591 (not c!134063)) b!825597))

(assert (= (and b!825597 c!134061) b!825596))

(assert (= (and b!825597 (not c!134061)) b!825595))

(assert (= (and b!825595 c!134062) b!825594))

(assert (= (and b!825595 (not c!134062)) b!825593))

(assert (= (or b!825596 b!825593) bm!47831))

(assert (= (or b!825590 bm!47831) bm!47832))

(assert (= (or b!825590 b!825593) bm!47833))

(declare-fun m!1064729 () Bool)

(assert (=> bm!47832 m!1064729))

(declare-fun m!1064731 () Bool)

(assert (=> bm!47833 m!1064731))

(assert (=> bm!47745 d!259270))

(declare-fun d!259272 () Bool)

(declare-fun nullableFct!152 (Regex!2060) Bool)

(assert (=> d!259272 (= (nullable!511 (reg!2389 r!27177)) (nullableFct!152 (reg!2389 r!27177)))))

(declare-fun bs!229574 () Bool)

(assert (= bs!229574 d!259272))

(declare-fun m!1064733 () Bool)

(assert (=> bs!229574 m!1064733))

(assert (=> b!825428 d!259272))

(declare-fun b!825600 () Bool)

(declare-fun e!544867 () List!8886)

(assert (=> b!825600 (= e!544867 Nil!8870)))

(declare-fun e!544869 () List!8886)

(declare-fun b!825601 () Bool)

(assert (=> b!825601 (= e!544869 (Cons!8870 (c!133951 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) Nil!8870))))

(declare-fun c!134066 () Bool)

(declare-fun b!825602 () Bool)

(assert (=> b!825602 (= c!134066 (is-Star!2060 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))

(declare-fun e!544870 () List!8886)

(assert (=> b!825602 (= e!544869 e!544870)))

(declare-fun bm!47834 () Bool)

(declare-fun call!47843 () List!8886)

(declare-fun call!47840 () List!8886)

(assert (=> bm!47834 (= call!47843 call!47840)))

(declare-fun b!825603 () Bool)

(declare-fun e!544868 () List!8886)

(declare-fun call!47841 () List!8886)

(assert (=> b!825603 (= e!544868 call!47841)))

(declare-fun bm!47835 () Bool)

(declare-fun c!134065 () Bool)

(assert (=> bm!47835 (= call!47840 (firstChars!31 (ite c!134066 (reg!2389 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) (ite c!134065 (regTwo!4633 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) (regOne!4632 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))))))

(declare-fun b!825605 () Bool)

(declare-fun e!544871 () List!8886)

(declare-fun call!47839 () List!8886)

(assert (=> b!825605 (= e!544871 call!47839)))

(declare-fun b!825606 () Bool)

(assert (=> b!825606 (= e!544870 e!544868)))

(assert (=> b!825606 (= c!134065 (is-Union!2060 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))

(declare-fun call!47842 () List!8886)

(declare-fun bm!47836 () Bool)

(assert (=> bm!47836 (= call!47841 (++!2287 (ite c!134065 call!47842 call!47839) (ite c!134065 call!47843 call!47842)))))

(declare-fun b!825607 () Bool)

(assert (=> b!825607 (= e!544871 call!47841)))

(declare-fun bm!47837 () Bool)

(assert (=> bm!47837 (= call!47842 (firstChars!31 (ite c!134065 (regOne!4633 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) (regTwo!4632 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))))

(declare-fun b!825608 () Bool)

(assert (=> b!825608 (= e!544870 call!47840)))

(declare-fun b!825609 () Bool)

(declare-fun c!134064 () Bool)

(assert (=> b!825609 (= c!134064 (nullable!511 (regOne!4632 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))))

(assert (=> b!825609 (= e!544868 e!544871)))

(declare-fun bm!47838 () Bool)

(assert (=> bm!47838 (= call!47839 call!47843)))

(declare-fun b!825604 () Bool)

(assert (=> b!825604 (= e!544867 e!544869)))

(declare-fun c!134067 () Bool)

(assert (=> b!825604 (= c!134067 (is-ElementMatch!2060 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))

(declare-fun d!259274 () Bool)

(declare-fun c!134068 () Bool)

(assert (=> d!259274 (= c!134068 (or (is-EmptyExpr!2060 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) (is-EmptyLang!2060 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))))

(assert (=> d!259274 (= (firstChars!31 (ite c!133996 (reg!2389 (regOne!4633 r!27177)) (ite c!133995 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))) e!544867)))

(assert (= (and d!259274 c!134068) b!825600))

(assert (= (and d!259274 (not c!134068)) b!825604))

(assert (= (and b!825604 c!134067) b!825601))

(assert (= (and b!825604 (not c!134067)) b!825602))

(assert (= (and b!825602 c!134066) b!825608))

(assert (= (and b!825602 (not c!134066)) b!825606))

(assert (= (and b!825606 c!134065) b!825603))

(assert (= (and b!825606 (not c!134065)) b!825609))

(assert (= (and b!825609 c!134064) b!825607))

(assert (= (and b!825609 (not c!134064)) b!825605))

(assert (= (or b!825607 b!825605) bm!47838))

(assert (= (or b!825603 bm!47838) bm!47834))

(assert (= (or b!825603 b!825607) bm!47837))

(assert (= (or b!825603 b!825607) bm!47836))

(assert (= (or b!825608 bm!47834) bm!47835))

(declare-fun m!1064735 () Bool)

(assert (=> bm!47835 m!1064735))

(declare-fun m!1064737 () Bool)

(assert (=> bm!47836 m!1064737))

(declare-fun m!1064739 () Bool)

(assert (=> bm!47837 m!1064739))

(declare-fun m!1064741 () Bool)

(assert (=> b!825609 m!1064741))

(assert (=> bm!47772 d!259274))

(declare-fun d!259276 () Bool)

(assert (=> d!259276 (= (nullable!511 (reg!2389 (regOne!4633 r!27177))) (nullableFct!152 (reg!2389 (regOne!4633 r!27177))))))

(declare-fun bs!229575 () Bool)

(assert (= bs!229575 d!259276))

(declare-fun m!1064743 () Bool)

(assert (=> bs!229575 m!1064743))

(assert (=> b!825401 d!259276))

(declare-fun b!825610 () Bool)

(declare-fun e!544875 () Bool)

(declare-fun e!544872 () Bool)

(assert (=> b!825610 (= e!544875 e!544872)))

(declare-fun c!134069 () Bool)

(assert (=> b!825610 (= c!134069 (is-Star!2060 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(declare-fun b!825611 () Bool)

(declare-fun res!380310 () Bool)

(declare-fun e!544878 () Bool)

(assert (=> b!825611 (=> (not res!380310) (not e!544878))))

(declare-fun call!47846 () Bool)

(assert (=> b!825611 (= res!380310 call!47846)))

(declare-fun e!544873 () Bool)

(assert (=> b!825611 (= e!544873 e!544878)))

(declare-fun b!825612 () Bool)

(declare-fun e!544877 () Bool)

(declare-fun call!47845 () Bool)

(assert (=> b!825612 (= e!544877 call!47845)))

(declare-fun c!134070 () Bool)

(declare-fun bm!47839 () Bool)

(assert (=> bm!47839 (= call!47845 (validRegex!613 (ite c!134069 (reg!2389 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))) (ite c!134070 (regOne!4633 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))) (regTwo!4632 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))))))

(declare-fun b!825613 () Bool)

(declare-fun e!544876 () Bool)

(declare-fun e!544874 () Bool)

(assert (=> b!825613 (= e!544876 e!544874)))

(declare-fun res!380307 () Bool)

(assert (=> b!825613 (=> (not res!380307) (not e!544874))))

(declare-fun call!47844 () Bool)

(assert (=> b!825613 (= res!380307 call!47844)))

(declare-fun b!825614 () Bool)

(assert (=> b!825614 (= e!544872 e!544877)))

(declare-fun res!380309 () Bool)

(assert (=> b!825614 (= res!380309 (not (nullable!511 (reg!2389 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))))

(assert (=> b!825614 (=> (not res!380309) (not e!544877))))

(declare-fun bm!47840 () Bool)

(assert (=> bm!47840 (= call!47846 call!47845)))

(declare-fun b!825615 () Bool)

(assert (=> b!825615 (= e!544874 call!47846)))

(declare-fun d!259278 () Bool)

(declare-fun res!380308 () Bool)

(assert (=> d!259278 (=> res!380308 e!544875)))

(assert (=> d!259278 (= res!380308 (is-ElementMatch!2060 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(assert (=> d!259278 (= (validRegex!613 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))) e!544875)))

(declare-fun b!825616 () Bool)

(declare-fun res!380306 () Bool)

(assert (=> b!825616 (=> res!380306 e!544876)))

(assert (=> b!825616 (= res!380306 (not (is-Concat!3791 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))))

(assert (=> b!825616 (= e!544873 e!544876)))

(declare-fun b!825617 () Bool)

(assert (=> b!825617 (= e!544872 e!544873)))

(assert (=> b!825617 (= c!134070 (is-Union!2060 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(declare-fun b!825618 () Bool)

(assert (=> b!825618 (= e!544878 call!47844)))

(declare-fun bm!47841 () Bool)

(assert (=> bm!47841 (= call!47844 (validRegex!613 (ite c!134070 (regTwo!4633 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))) (regOne!4632 (ite c!134015 (reg!2389 r!27177) (ite c!134016 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))))

(assert (= (and d!259278 (not res!380308)) b!825610))

(assert (= (and b!825610 c!134069) b!825614))

(assert (= (and b!825610 (not c!134069)) b!825617))

(assert (= (and b!825614 res!380309) b!825612))

(assert (= (and b!825617 c!134070) b!825611))

(assert (= (and b!825617 (not c!134070)) b!825616))

(assert (= (and b!825611 res!380310) b!825618))

(assert (= (and b!825616 (not res!380306)) b!825613))

(assert (= (and b!825613 res!380307) b!825615))

(assert (= (or b!825611 b!825615) bm!47840))

(assert (= (or b!825618 b!825613) bm!47841))

(assert (= (or b!825612 bm!47840) bm!47839))

(declare-fun m!1064745 () Bool)

(assert (=> bm!47839 m!1064745))

(declare-fun m!1064747 () Bool)

(assert (=> b!825614 m!1064747))

(declare-fun m!1064749 () Bool)

(assert (=> bm!47841 m!1064749))

(assert (=> bm!47785 d!259278))

(declare-fun d!259280 () Bool)

(declare-fun c!134073 () Bool)

(assert (=> d!259280 (= c!134073 (is-Nil!8870 (firstChars!31 (regOne!4633 r!27177))))))

(declare-fun e!544881 () (Set C!4690))

(assert (=> d!259280 (= (content!1299 (firstChars!31 (regOne!4633 r!27177))) e!544881)))

(declare-fun b!825623 () Bool)

(assert (=> b!825623 (= e!544881 (as set.empty (Set C!4690)))))

(declare-fun b!825624 () Bool)

(assert (=> b!825624 (= e!544881 (set.union (set.insert (h!14271 (firstChars!31 (regOne!4633 r!27177))) (as set.empty (Set C!4690))) (content!1299 (t!93178 (firstChars!31 (regOne!4633 r!27177))))))))

(assert (= (and d!259280 c!134073) b!825623))

(assert (= (and d!259280 (not c!134073)) b!825624))

(declare-fun m!1064751 () Bool)

(assert (=> b!825624 m!1064751))

(declare-fun m!1064753 () Bool)

(assert (=> b!825624 m!1064753))

(assert (=> d!259244 d!259280))

(declare-fun b!825625 () Bool)

(declare-fun e!544885 () Bool)

(declare-fun e!544882 () Bool)

(assert (=> b!825625 (= e!544885 e!544882)))

(declare-fun c!134074 () Bool)

(assert (=> b!825625 (= c!134074 (is-Star!2060 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(declare-fun b!825626 () Bool)

(declare-fun res!380315 () Bool)

(declare-fun e!544888 () Bool)

(assert (=> b!825626 (=> (not res!380315) (not e!544888))))

(declare-fun call!47849 () Bool)

(assert (=> b!825626 (= res!380315 call!47849)))

(declare-fun e!544883 () Bool)

(assert (=> b!825626 (= e!544883 e!544888)))

(declare-fun b!825627 () Bool)

(declare-fun e!544887 () Bool)

(declare-fun call!47848 () Bool)

(assert (=> b!825627 (= e!544887 call!47848)))

(declare-fun bm!47842 () Bool)

(declare-fun c!134075 () Bool)

(assert (=> bm!47842 (= call!47848 (validRegex!613 (ite c!134074 (reg!2389 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))) (ite c!134075 (regOne!4633 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))) (regTwo!4632 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))))))

(declare-fun b!825628 () Bool)

(declare-fun e!544886 () Bool)

(declare-fun e!544884 () Bool)

(assert (=> b!825628 (= e!544886 e!544884)))

(declare-fun res!380312 () Bool)

(assert (=> b!825628 (=> (not res!380312) (not e!544884))))

(declare-fun call!47847 () Bool)

(assert (=> b!825628 (= res!380312 call!47847)))

(declare-fun b!825629 () Bool)

(assert (=> b!825629 (= e!544882 e!544887)))

(declare-fun res!380314 () Bool)

(assert (=> b!825629 (= res!380314 (not (nullable!511 (reg!2389 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))))

(assert (=> b!825629 (=> (not res!380314) (not e!544887))))

(declare-fun bm!47843 () Bool)

(assert (=> bm!47843 (= call!47849 call!47848)))

(declare-fun b!825630 () Bool)

(assert (=> b!825630 (= e!544884 call!47849)))

(declare-fun d!259282 () Bool)

(declare-fun res!380313 () Bool)

(assert (=> d!259282 (=> res!380313 e!544885)))

(assert (=> d!259282 (= res!380313 (is-ElementMatch!2060 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(assert (=> d!259282 (= (validRegex!613 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))) e!544885)))

(declare-fun b!825631 () Bool)

(declare-fun res!380311 () Bool)

(assert (=> b!825631 (=> res!380311 e!544886)))

(assert (=> b!825631 (= res!380311 (not (is-Concat!3791 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))))

(assert (=> b!825631 (= e!544883 e!544886)))

(declare-fun b!825632 () Bool)

(assert (=> b!825632 (= e!544882 e!544883)))

(assert (=> b!825632 (= c!134075 (is-Union!2060 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(declare-fun b!825633 () Bool)

(assert (=> b!825633 (= e!544888 call!47847)))

(declare-fun bm!47844 () Bool)

(assert (=> bm!47844 (= call!47847 (validRegex!613 (ite c!134075 (regTwo!4633 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))) (regOne!4632 (ite c!134003 (reg!2389 (regOne!4633 r!27177)) (ite c!134004 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))))

(assert (= (and d!259282 (not res!380313)) b!825625))

(assert (= (and b!825625 c!134074) b!825629))

(assert (= (and b!825625 (not c!134074)) b!825632))

(assert (= (and b!825629 res!380314) b!825627))

(assert (= (and b!825632 c!134075) b!825626))

(assert (= (and b!825632 (not c!134075)) b!825631))

(assert (= (and b!825626 res!380315) b!825633))

(assert (= (and b!825631 (not res!380311)) b!825628))

(assert (= (and b!825628 res!380312) b!825630))

(assert (= (or b!825626 b!825630) bm!47843))

(assert (= (or b!825633 b!825628) bm!47844))

(assert (= (or b!825627 bm!47843) bm!47842))

(declare-fun m!1064755 () Bool)

(assert (=> bm!47842 m!1064755))

(declare-fun m!1064757 () Bool)

(assert (=> b!825629 m!1064757))

(declare-fun m!1064759 () Bool)

(assert (=> bm!47844 m!1064759))

(assert (=> bm!47782 d!259282))

(declare-fun d!259284 () Bool)

(assert (=> d!259284 (= (nullable!511 (regOne!4632 r!27177)) (nullableFct!152 (regOne!4632 r!27177)))))

(declare-fun bs!229576 () Bool)

(assert (= bs!229576 d!259284))

(declare-fun m!1064761 () Bool)

(assert (=> bs!229576 m!1064761))

(assert (=> b!825355 d!259284))

(declare-fun d!259286 () Bool)

(declare-fun lt!317492 () Bool)

(assert (=> d!259286 (= lt!317492 (set.member c!13916 (content!1299 (t!93178 (firstChars!31 r!27177)))))))

(declare-fun e!544889 () Bool)

(assert (=> d!259286 (= lt!317492 e!544889)))

(declare-fun res!380317 () Bool)

(assert (=> d!259286 (=> (not res!380317) (not e!544889))))

(assert (=> d!259286 (= res!380317 (is-Cons!8870 (t!93178 (firstChars!31 r!27177))))))

(assert (=> d!259286 (= (contains!1651 (t!93178 (firstChars!31 r!27177)) c!13916) lt!317492)))

(declare-fun b!825634 () Bool)

(declare-fun e!544890 () Bool)

(assert (=> b!825634 (= e!544889 e!544890)))

(declare-fun res!380316 () Bool)

(assert (=> b!825634 (=> res!380316 e!544890)))

(assert (=> b!825634 (= res!380316 (= (h!14271 (t!93178 (firstChars!31 r!27177))) c!13916))))

(declare-fun b!825635 () Bool)

(assert (=> b!825635 (= e!544890 (contains!1651 (t!93178 (t!93178 (firstChars!31 r!27177))) c!13916))))

(assert (= (and d!259286 res!380317) b!825634))

(assert (= (and b!825634 (not res!380316)) b!825635))

(declare-fun m!1064763 () Bool)

(assert (=> d!259286 m!1064763))

(declare-fun m!1064765 () Bool)

(assert (=> d!259286 m!1064765))

(declare-fun m!1064767 () Bool)

(assert (=> b!825635 m!1064767))

(assert (=> b!825315 d!259286))

(declare-fun d!259288 () Bool)

(assert (=> d!259288 (= (nullable!511 (regOne!4632 (regOne!4633 r!27177))) (nullableFct!152 (regOne!4632 (regOne!4633 r!27177))))))

(declare-fun bs!229577 () Bool)

(assert (= bs!229577 d!259288))

(declare-fun m!1064769 () Bool)

(assert (=> bs!229577 m!1064769))

(assert (=> b!825376 d!259288))

(declare-fun b!825636 () Bool)

(declare-fun e!544894 () Bool)

(declare-fun e!544891 () Bool)

(assert (=> b!825636 (= e!544894 e!544891)))

(declare-fun c!134076 () Bool)

(assert (=> b!825636 (= c!134076 (is-Star!2060 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))

(declare-fun b!825637 () Bool)

(declare-fun res!380322 () Bool)

(declare-fun e!544897 () Bool)

(assert (=> b!825637 (=> (not res!380322) (not e!544897))))

(declare-fun call!47852 () Bool)

(assert (=> b!825637 (= res!380322 call!47852)))

(declare-fun e!544892 () Bool)

(assert (=> b!825637 (= e!544892 e!544897)))

(declare-fun b!825638 () Bool)

(declare-fun e!544896 () Bool)

(declare-fun call!47851 () Bool)

(assert (=> b!825638 (= e!544896 call!47851)))

(declare-fun c!134077 () Bool)

(declare-fun bm!47845 () Bool)

(assert (=> bm!47845 (= call!47851 (validRegex!613 (ite c!134076 (reg!2389 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))) (ite c!134077 (regOne!4633 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))) (regTwo!4632 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))))

(declare-fun b!825639 () Bool)

(declare-fun e!544895 () Bool)

(declare-fun e!544893 () Bool)

(assert (=> b!825639 (= e!544895 e!544893)))

(declare-fun res!380319 () Bool)

(assert (=> b!825639 (=> (not res!380319) (not e!544893))))

(declare-fun call!47850 () Bool)

(assert (=> b!825639 (= res!380319 call!47850)))

(declare-fun b!825640 () Bool)

(assert (=> b!825640 (= e!544891 e!544896)))

(declare-fun res!380321 () Bool)

(assert (=> b!825640 (= res!380321 (not (nullable!511 (reg!2389 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))))

(assert (=> b!825640 (=> (not res!380321) (not e!544896))))

(declare-fun bm!47846 () Bool)

(assert (=> bm!47846 (= call!47852 call!47851)))

(declare-fun b!825641 () Bool)

(assert (=> b!825641 (= e!544893 call!47852)))

(declare-fun d!259290 () Bool)

(declare-fun res!380320 () Bool)

(assert (=> d!259290 (=> res!380320 e!544894)))

(assert (=> d!259290 (= res!380320 (is-ElementMatch!2060 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))

(assert (=> d!259290 (= (validRegex!613 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))) e!544894)))

(declare-fun b!825642 () Bool)

(declare-fun res!380318 () Bool)

(assert (=> b!825642 (=> res!380318 e!544895)))

(assert (=> b!825642 (= res!380318 (not (is-Concat!3791 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177)))))))

(assert (=> b!825642 (= e!544892 e!544895)))

(declare-fun b!825643 () Bool)

(assert (=> b!825643 (= e!544891 e!544892)))

(assert (=> b!825643 (= c!134077 (is-Union!2060 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))

(declare-fun b!825644 () Bool)

(assert (=> b!825644 (= e!544897 call!47850)))

(declare-fun bm!47847 () Bool)

(assert (=> bm!47847 (= call!47850 (validRegex!613 (ite c!134077 (regTwo!4633 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))) (regOne!4632 (ite c!134016 (regTwo!4633 r!27177) (regOne!4632 r!27177))))))))

(assert (= (and d!259290 (not res!380320)) b!825636))

(assert (= (and b!825636 c!134076) b!825640))

(assert (= (and b!825636 (not c!134076)) b!825643))

(assert (= (and b!825640 res!380321) b!825638))

(assert (= (and b!825643 c!134077) b!825637))

(assert (= (and b!825643 (not c!134077)) b!825642))

(assert (= (and b!825637 res!380322) b!825644))

(assert (= (and b!825642 (not res!380318)) b!825639))

(assert (= (and b!825639 res!380319) b!825641))

(assert (= (or b!825637 b!825641) bm!47846))

(assert (= (or b!825644 b!825639) bm!47847))

(assert (= (or b!825638 bm!47846) bm!47845))

(declare-fun m!1064771 () Bool)

(assert (=> bm!47845 m!1064771))

(declare-fun m!1064773 () Bool)

(assert (=> b!825640 m!1064773))

(declare-fun m!1064775 () Bool)

(assert (=> bm!47847 m!1064775))

(assert (=> bm!47787 d!259290))

(declare-fun b!825645 () Bool)

(declare-fun e!544901 () Bool)

(declare-fun e!544898 () Bool)

(assert (=> b!825645 (= e!544901 e!544898)))

(declare-fun c!134078 () Bool)

(assert (=> b!825645 (= c!134078 (is-Star!2060 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))

(declare-fun b!825646 () Bool)

(declare-fun res!380327 () Bool)

(declare-fun e!544904 () Bool)

(assert (=> b!825646 (=> (not res!380327) (not e!544904))))

(declare-fun call!47855 () Bool)

(assert (=> b!825646 (= res!380327 call!47855)))

(declare-fun e!544899 () Bool)

(assert (=> b!825646 (= e!544899 e!544904)))

(declare-fun b!825647 () Bool)

(declare-fun e!544903 () Bool)

(declare-fun call!47854 () Bool)

(assert (=> b!825647 (= e!544903 call!47854)))

(declare-fun c!134079 () Bool)

(declare-fun bm!47848 () Bool)

(assert (=> bm!47848 (= call!47854 (validRegex!613 (ite c!134078 (reg!2389 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))) (ite c!134079 (regOne!4633 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))) (regTwo!4632 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))))

(declare-fun b!825648 () Bool)

(declare-fun e!544902 () Bool)

(declare-fun e!544900 () Bool)

(assert (=> b!825648 (= e!544902 e!544900)))

(declare-fun res!380324 () Bool)

(assert (=> b!825648 (=> (not res!380324) (not e!544900))))

(declare-fun call!47853 () Bool)

(assert (=> b!825648 (= res!380324 call!47853)))

(declare-fun b!825649 () Bool)

(assert (=> b!825649 (= e!544898 e!544903)))

(declare-fun res!380326 () Bool)

(assert (=> b!825649 (= res!380326 (not (nullable!511 (reg!2389 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))))

(assert (=> b!825649 (=> (not res!380326) (not e!544903))))

(declare-fun bm!47849 () Bool)

(assert (=> bm!47849 (= call!47855 call!47854)))

(declare-fun b!825650 () Bool)

(assert (=> b!825650 (= e!544900 call!47855)))

(declare-fun d!259292 () Bool)

(declare-fun res!380325 () Bool)

(assert (=> d!259292 (=> res!380325 e!544901)))

(assert (=> d!259292 (= res!380325 (is-ElementMatch!2060 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))

(assert (=> d!259292 (= (validRegex!613 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))) e!544901)))

(declare-fun b!825651 () Bool)

(declare-fun res!380323 () Bool)

(assert (=> b!825651 (=> res!380323 e!544902)))

(assert (=> b!825651 (= res!380323 (not (is-Concat!3791 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177))))))))

(assert (=> b!825651 (= e!544899 e!544902)))

(declare-fun b!825652 () Bool)

(assert (=> b!825652 (= e!544898 e!544899)))

(assert (=> b!825652 (= c!134079 (is-Union!2060 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))

(declare-fun b!825653 () Bool)

(assert (=> b!825653 (= e!544904 call!47853)))

(declare-fun bm!47850 () Bool)

(assert (=> bm!47850 (= call!47853 (validRegex!613 (ite c!134079 (regTwo!4633 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))) (regOne!4632 (ite c!134004 (regTwo!4633 (regOne!4633 r!27177)) (regOne!4632 (regOne!4633 r!27177)))))))))

(assert (= (and d!259292 (not res!380325)) b!825645))

(assert (= (and b!825645 c!134078) b!825649))

(assert (= (and b!825645 (not c!134078)) b!825652))

(assert (= (and b!825649 res!380326) b!825647))

(assert (= (and b!825652 c!134079) b!825646))

(assert (= (and b!825652 (not c!134079)) b!825651))

(assert (= (and b!825646 res!380327) b!825653))

(assert (= (and b!825651 (not res!380323)) b!825648))

(assert (= (and b!825648 res!380324) b!825650))

(assert (= (or b!825646 b!825650) bm!47849))

(assert (= (or b!825653 b!825648) bm!47850))

(assert (= (or b!825647 bm!47849) bm!47848))

(declare-fun m!1064777 () Bool)

(assert (=> bm!47848 m!1064777))

(declare-fun m!1064779 () Bool)

(assert (=> b!825649 m!1064779))

(declare-fun m!1064781 () Bool)

(assert (=> bm!47850 m!1064781))

(assert (=> bm!47784 d!259292))

(declare-fun b!825654 () Bool)

(declare-fun e!544905 () List!8886)

(assert (=> b!825654 (= e!544905 Nil!8870)))

(declare-fun b!825655 () Bool)

(declare-fun e!544907 () List!8886)

(assert (=> b!825655 (= e!544907 (Cons!8870 (c!133951 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) Nil!8870))))

(declare-fun b!825656 () Bool)

(declare-fun c!134082 () Bool)

(assert (=> b!825656 (= c!134082 (is-Star!2060 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))

(declare-fun e!544908 () List!8886)

(assert (=> b!825656 (= e!544907 e!544908)))

(declare-fun bm!47851 () Bool)

(declare-fun call!47860 () List!8886)

(declare-fun call!47857 () List!8886)

(assert (=> bm!47851 (= call!47860 call!47857)))

(declare-fun b!825657 () Bool)

(declare-fun e!544906 () List!8886)

(declare-fun call!47858 () List!8886)

(assert (=> b!825657 (= e!544906 call!47858)))

(declare-fun bm!47852 () Bool)

(declare-fun c!134081 () Bool)

(assert (=> bm!47852 (= call!47857 (firstChars!31 (ite c!134082 (reg!2389 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) (ite c!134081 (regTwo!4633 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) (regOne!4632 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))))

(declare-fun b!825659 () Bool)

(declare-fun e!544909 () List!8886)

(declare-fun call!47856 () List!8886)

(assert (=> b!825659 (= e!544909 call!47856)))

(declare-fun b!825660 () Bool)

(assert (=> b!825660 (= e!544908 e!544906)))

(assert (=> b!825660 (= c!134081 (is-Union!2060 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))

(declare-fun call!47859 () List!8886)

(declare-fun bm!47853 () Bool)

(assert (=> bm!47853 (= call!47858 (++!2287 (ite c!134081 call!47859 call!47856) (ite c!134081 call!47860 call!47859)))))

(declare-fun b!825661 () Bool)

(assert (=> b!825661 (= e!544909 call!47858)))

(declare-fun bm!47854 () Bool)

(assert (=> bm!47854 (= call!47859 (firstChars!31 (ite c!134081 (regOne!4633 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) (regTwo!4632 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))))

(declare-fun b!825662 () Bool)

(assert (=> b!825662 (= e!544908 call!47857)))

(declare-fun b!825663 () Bool)

(declare-fun c!134080 () Bool)

(assert (=> b!825663 (= c!134080 (nullable!511 (regOne!4632 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(assert (=> b!825663 (= e!544906 e!544909)))

(declare-fun bm!47855 () Bool)

(assert (=> bm!47855 (= call!47856 call!47860)))

(declare-fun b!825658 () Bool)

(assert (=> b!825658 (= e!544905 e!544907)))

(declare-fun c!134083 () Bool)

(assert (=> b!825658 (= c!134083 (is-ElementMatch!2060 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))))))

(declare-fun d!259294 () Bool)

(declare-fun c!134084 () Bool)

(assert (=> d!259294 (= c!134084 (or (is-EmptyExpr!2060 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) (is-EmptyLang!2060 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177)))))))

(assert (=> d!259294 (= (firstChars!31 (ite c!133988 (regOne!4633 r!27177) (regTwo!4632 r!27177))) e!544905)))

(assert (= (and d!259294 c!134084) b!825654))

(assert (= (and d!259294 (not c!134084)) b!825658))

(assert (= (and b!825658 c!134083) b!825655))

(assert (= (and b!825658 (not c!134083)) b!825656))

(assert (= (and b!825656 c!134082) b!825662))

(assert (= (and b!825656 (not c!134082)) b!825660))

(assert (= (and b!825660 c!134081) b!825657))

(assert (= (and b!825660 (not c!134081)) b!825663))

(assert (= (and b!825663 c!134080) b!825661))

(assert (= (and b!825663 (not c!134080)) b!825659))

(assert (= (or b!825661 b!825659) bm!47855))

(assert (= (or b!825657 bm!47855) bm!47851))

(assert (= (or b!825657 b!825661) bm!47854))

(assert (= (or b!825657 b!825661) bm!47853))

(assert (= (or b!825662 bm!47851) bm!47852))

(declare-fun m!1064783 () Bool)

(assert (=> bm!47852 m!1064783))

(declare-fun m!1064785 () Bool)

(assert (=> bm!47853 m!1064785))

(declare-fun m!1064787 () Bool)

(assert (=> bm!47854 m!1064787))

(declare-fun m!1064789 () Bool)

(assert (=> b!825663 m!1064789))

(assert (=> bm!47766 d!259294))

(declare-fun e!544914 () List!8886)

(declare-fun b!825672 () Bool)

(assert (=> b!825672 (= e!544914 (ite c!133988 call!47772 call!47771))))

(declare-fun d!259296 () Bool)

(declare-fun e!544915 () Bool)

(assert (=> d!259296 e!544915))

(declare-fun res!380333 () Bool)

(assert (=> d!259296 (=> (not res!380333) (not e!544915))))

(declare-fun lt!317495 () List!8886)

(assert (=> d!259296 (= res!380333 (= (content!1299 lt!317495) (set.union (content!1299 (ite c!133988 call!47771 call!47768)) (content!1299 (ite c!133988 call!47772 call!47771)))))))

(assert (=> d!259296 (= lt!317495 e!544914)))

(declare-fun c!134087 () Bool)

(assert (=> d!259296 (= c!134087 (is-Nil!8870 (ite c!133988 call!47771 call!47768)))))

(assert (=> d!259296 (= (++!2287 (ite c!133988 call!47771 call!47768) (ite c!133988 call!47772 call!47771)) lt!317495)))

(declare-fun b!825674 () Bool)

(declare-fun res!380332 () Bool)

(assert (=> b!825674 (=> (not res!380332) (not e!544915))))

(declare-fun size!7470 (List!8886) Int)

(assert (=> b!825674 (= res!380332 (= (size!7470 lt!317495) (+ (size!7470 (ite c!133988 call!47771 call!47768)) (size!7470 (ite c!133988 call!47772 call!47771)))))))

(declare-fun b!825675 () Bool)

(assert (=> b!825675 (= e!544915 (or (not (= (ite c!133988 call!47772 call!47771) Nil!8870)) (= lt!317495 (ite c!133988 call!47771 call!47768))))))

(declare-fun b!825673 () Bool)

(assert (=> b!825673 (= e!544914 (Cons!8870 (h!14271 (ite c!133988 call!47771 call!47768)) (++!2287 (t!93178 (ite c!133988 call!47771 call!47768)) (ite c!133988 call!47772 call!47771))))))

(assert (= (and d!259296 c!134087) b!825672))

(assert (= (and d!259296 (not c!134087)) b!825673))

(assert (= (and d!259296 res!380333) b!825674))

(assert (= (and b!825674 res!380332) b!825675))

(declare-fun m!1064791 () Bool)

(assert (=> d!259296 m!1064791))

(declare-fun m!1064793 () Bool)

(assert (=> d!259296 m!1064793))

(declare-fun m!1064795 () Bool)

(assert (=> d!259296 m!1064795))

(declare-fun m!1064797 () Bool)

(assert (=> b!825674 m!1064797))

(declare-fun m!1064799 () Bool)

(assert (=> b!825674 m!1064799))

(declare-fun m!1064801 () Bool)

(assert (=> b!825674 m!1064801))

(declare-fun m!1064803 () Bool)

(assert (=> b!825673 m!1064803))

(assert (=> bm!47765 d!259296))

(declare-fun b!825676 () Bool)

(declare-fun e!544920 () Int)

(declare-fun call!47861 () Int)

(declare-fun call!47862 () Int)

(assert (=> b!825676 (= e!544920 (+ 1 call!47861 call!47862))))

(declare-fun b!825677 () Bool)

(declare-fun c!134092 () Bool)

(assert (=> b!825677 (= c!134092 (is-EmptyExpr!2060 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(declare-fun e!544918 () Int)

(assert (=> b!825677 (= e!544920 e!544918)))

(declare-fun b!825678 () Bool)

(assert (=> b!825678 (= e!544918 0)))

(declare-fun bm!47856 () Bool)

(declare-fun call!47863 () Int)

(assert (=> bm!47856 (= call!47863 call!47861)))

(declare-fun b!825679 () Bool)

(declare-fun e!544919 () Int)

(assert (=> b!825679 (= e!544919 (+ 1 call!47863 call!47862))))

(declare-fun c!134089 () Bool)

(declare-fun bm!47857 () Bool)

(declare-fun c!134090 () Bool)

(assert (=> bm!47857 (= call!47861 (RegexPrimitiveSize!89 (ite c!134089 (regOne!4632 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))) (ite c!134090 (reg!2389 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))) (regOne!4633 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177)))))))))

(declare-fun b!825680 () Bool)

(assert (=> b!825680 (= e!544919 0)))

(declare-fun b!825681 () Bool)

(declare-fun c!134091 () Bool)

(assert (=> b!825681 (= c!134091 (is-EmptyLang!2060 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(declare-fun e!544917 () Int)

(assert (=> b!825681 (= e!544917 e!544919)))

(declare-fun bm!47858 () Bool)

(assert (=> bm!47858 (= call!47862 (RegexPrimitiveSize!89 (ite c!134089 (regTwo!4632 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))) (regTwo!4633 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))))

(declare-fun b!825682 () Bool)

(assert (=> b!825682 (= e!544917 (+ 1 call!47863))))

(declare-fun b!825683 () Bool)

(assert (=> b!825683 (= e!544918 e!544917)))

(assert (=> b!825683 (= c!134090 (is-Star!2060 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(declare-fun b!825684 () Bool)

(declare-fun e!544916 () Int)

(assert (=> b!825684 (= e!544916 1)))

(declare-fun d!259298 () Bool)

(declare-fun lt!317496 () Int)

(assert (=> d!259298 (>= lt!317496 0)))

(assert (=> d!259298 (= lt!317496 e!544916)))

(declare-fun c!134088 () Bool)

(assert (=> d!259298 (= c!134088 (is-ElementMatch!2060 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(assert (=> d!259298 (= (RegexPrimitiveSize!89 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))) lt!317496)))

(declare-fun b!825685 () Bool)

(assert (=> b!825685 (= e!544916 e!544920)))

(assert (=> b!825685 (= c!134089 (is-Concat!3791 (ite c!133969 (regTwo!4632 r!27177) (regTwo!4633 r!27177))))))

(assert (= (and d!259298 c!134088) b!825684))

(assert (= (and d!259298 (not c!134088)) b!825685))

(assert (= (and b!825685 c!134089) b!825676))

(assert (= (and b!825685 (not c!134089)) b!825677))

(assert (= (and b!825677 c!134092) b!825678))

(assert (= (and b!825677 (not c!134092)) b!825683))

(assert (= (and b!825683 c!134090) b!825682))

(assert (= (and b!825683 (not c!134090)) b!825681))

(assert (= (and b!825681 c!134091) b!825680))

(assert (= (and b!825681 (not c!134091)) b!825679))

(assert (= (or b!825682 b!825679) bm!47856))

(assert (= (or b!825676 bm!47856) bm!47857))

(assert (= (or b!825676 b!825679) bm!47858))

(declare-fun m!1064805 () Bool)

(assert (=> bm!47857 m!1064805))

(declare-fun m!1064807 () Bool)

(assert (=> bm!47858 m!1064807))

(assert (=> bm!47746 d!259298))

(declare-fun b!825686 () Bool)

(declare-fun e!544921 () List!8886)

(assert (=> b!825686 (= e!544921 Nil!8870)))

(declare-fun b!825687 () Bool)

(declare-fun e!544923 () List!8886)

(assert (=> b!825687 (= e!544923 (Cons!8870 (c!133951 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) Nil!8870))))

(declare-fun b!825688 () Bool)

(declare-fun c!134095 () Bool)

(assert (=> b!825688 (= c!134095 (is-Star!2060 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))

(declare-fun e!544924 () List!8886)

(assert (=> b!825688 (= e!544923 e!544924)))

(declare-fun bm!47859 () Bool)

(declare-fun call!47868 () List!8886)

(declare-fun call!47865 () List!8886)

(assert (=> bm!47859 (= call!47868 call!47865)))

(declare-fun b!825689 () Bool)

(declare-fun e!544922 () List!8886)

(declare-fun call!47866 () List!8886)

(assert (=> b!825689 (= e!544922 call!47866)))

(declare-fun bm!47860 () Bool)

(declare-fun c!134094 () Bool)

(assert (=> bm!47860 (= call!47865 (firstChars!31 (ite c!134095 (reg!2389 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) (ite c!134094 (regTwo!4633 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) (regOne!4632 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))))

(declare-fun b!825691 () Bool)

(declare-fun e!544925 () List!8886)

(declare-fun call!47864 () List!8886)

(assert (=> b!825691 (= e!544925 call!47864)))

(declare-fun b!825692 () Bool)

(assert (=> b!825692 (= e!544924 e!544922)))

(assert (=> b!825692 (= c!134094 (is-Union!2060 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))

(declare-fun call!47867 () List!8886)

(declare-fun bm!47861 () Bool)

(assert (=> bm!47861 (= call!47866 (++!2287 (ite c!134094 call!47867 call!47864) (ite c!134094 call!47868 call!47867)))))

(declare-fun b!825693 () Bool)

(assert (=> b!825693 (= e!544925 call!47866)))

(declare-fun bm!47862 () Bool)

(assert (=> bm!47862 (= call!47867 (firstChars!31 (ite c!134094 (regOne!4633 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) (regTwo!4632 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))))

(declare-fun b!825694 () Bool)

(assert (=> b!825694 (= e!544924 call!47865)))

(declare-fun b!825695 () Bool)

(declare-fun c!134093 () Bool)

(assert (=> b!825695 (= c!134093 (nullable!511 (regOne!4632 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(assert (=> b!825695 (= e!544922 e!544925)))

(declare-fun bm!47863 () Bool)

(assert (=> bm!47863 (= call!47864 call!47868)))

(declare-fun b!825690 () Bool)

(assert (=> b!825690 (= e!544921 e!544923)))

(declare-fun c!134096 () Bool)

(assert (=> b!825690 (= c!134096 (is-ElementMatch!2060 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))))))

(declare-fun d!259300 () Bool)

(declare-fun c!134097 () Bool)

(assert (=> d!259300 (= c!134097 (or (is-EmptyExpr!2060 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) (is-EmptyLang!2060 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177))))))))

(assert (=> d!259300 (= (firstChars!31 (ite c!133995 (regOne!4633 (regOne!4633 r!27177)) (regTwo!4632 (regOne!4633 r!27177)))) e!544921)))

(assert (= (and d!259300 c!134097) b!825686))

(assert (= (and d!259300 (not c!134097)) b!825690))

(assert (= (and b!825690 c!134096) b!825687))

(assert (= (and b!825690 (not c!134096)) b!825688))

(assert (= (and b!825688 c!134095) b!825694))

(assert (= (and b!825688 (not c!134095)) b!825692))

(assert (= (and b!825692 c!134094) b!825689))

(assert (= (and b!825692 (not c!134094)) b!825695))

(assert (= (and b!825695 c!134093) b!825693))

(assert (= (and b!825695 (not c!134093)) b!825691))

(assert (= (or b!825693 b!825691) bm!47863))

(assert (= (or b!825689 bm!47863) bm!47859))

(assert (= (or b!825689 b!825693) bm!47862))

(assert (= (or b!825689 b!825693) bm!47861))

(assert (= (or b!825694 bm!47859) bm!47860))

(declare-fun m!1064809 () Bool)

(assert (=> bm!47860 m!1064809))

(declare-fun m!1064811 () Bool)

(assert (=> bm!47861 m!1064811))

(declare-fun m!1064813 () Bool)

(assert (=> bm!47862 m!1064813))

(declare-fun m!1064815 () Bool)

(assert (=> b!825695 m!1064815))

(assert (=> bm!47774 d!259300))

(declare-fun d!259302 () Bool)

(declare-fun lt!317497 () Bool)

(assert (=> d!259302 (= lt!317497 (set.member c!13916 (content!1299 (t!93178 (firstChars!31 (regOne!4633 r!27177))))))))

(declare-fun e!544926 () Bool)

(assert (=> d!259302 (= lt!317497 e!544926)))

(declare-fun res!380335 () Bool)

(assert (=> d!259302 (=> (not res!380335) (not e!544926))))

(assert (=> d!259302 (= res!380335 (is-Cons!8870 (t!93178 (firstChars!31 (regOne!4633 r!27177)))))))

(assert (=> d!259302 (= (contains!1651 (t!93178 (firstChars!31 (regOne!4633 r!27177))) c!13916) lt!317497)))

(declare-fun b!825696 () Bool)

(declare-fun e!544927 () Bool)

(assert (=> b!825696 (= e!544926 e!544927)))

(declare-fun res!380334 () Bool)

(assert (=> b!825696 (=> res!380334 e!544927)))

(assert (=> b!825696 (= res!380334 (= (h!14271 (t!93178 (firstChars!31 (regOne!4633 r!27177)))) c!13916))))

(declare-fun b!825697 () Bool)

(assert (=> b!825697 (= e!544927 (contains!1651 (t!93178 (t!93178 (firstChars!31 (regOne!4633 r!27177)))) c!13916))))

(assert (= (and d!259302 res!380335) b!825696))

(assert (= (and b!825696 (not res!380334)) b!825697))

(assert (=> d!259302 m!1064753))

(declare-fun m!1064817 () Bool)

(assert (=> d!259302 m!1064817))

(declare-fun m!1064819 () Bool)

(assert (=> b!825697 m!1064819))

(assert (=> b!825357 d!259302))

(declare-fun b!825698 () Bool)

(declare-fun e!544932 () Int)

(declare-fun call!47869 () Int)

(declare-fun call!47870 () Int)

(assert (=> b!825698 (= e!544932 (+ 1 call!47869 call!47870))))

(declare-fun b!825699 () Bool)

(declare-fun c!134102 () Bool)

(assert (=> b!825699 (= c!134102 (is-EmptyExpr!2060 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(declare-fun e!544930 () Int)

(assert (=> b!825699 (= e!544932 e!544930)))

(declare-fun b!825700 () Bool)

(assert (=> b!825700 (= e!544930 0)))

(declare-fun bm!47864 () Bool)

(declare-fun call!47871 () Int)

(assert (=> bm!47864 (= call!47871 call!47869)))

(declare-fun b!825701 () Bool)

(declare-fun e!544931 () Int)

(assert (=> b!825701 (= e!544931 (+ 1 call!47871 call!47870))))

(declare-fun c!134100 () Bool)

(declare-fun bm!47865 () Bool)

(declare-fun c!134099 () Bool)

(assert (=> bm!47865 (= call!47869 (RegexPrimitiveSize!89 (ite c!134099 (regOne!4632 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))) (ite c!134100 (reg!2389 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))) (regOne!4633 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177))))))))))

(declare-fun b!825702 () Bool)

(assert (=> b!825702 (= e!544931 0)))

(declare-fun b!825703 () Bool)

(declare-fun c!134101 () Bool)

(assert (=> b!825703 (= c!134101 (is-EmptyLang!2060 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(declare-fun e!544929 () Int)

(assert (=> b!825703 (= e!544929 e!544931)))

(declare-fun bm!47866 () Bool)

(assert (=> bm!47866 (= call!47870 (RegexPrimitiveSize!89 (ite c!134099 (regTwo!4632 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))) (regTwo!4633 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))))

(declare-fun b!825704 () Bool)

(assert (=> b!825704 (= e!544929 (+ 1 call!47871))))

(declare-fun b!825705 () Bool)

(assert (=> b!825705 (= e!544930 e!544929)))

(assert (=> b!825705 (= c!134100 (is-Star!2060 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(declare-fun b!825706 () Bool)

(declare-fun e!544928 () Int)

(assert (=> b!825706 (= e!544928 1)))

(declare-fun d!259304 () Bool)

(declare-fun lt!317498 () Int)

(assert (=> d!259304 (>= lt!317498 0)))

(assert (=> d!259304 (= lt!317498 e!544928)))

(declare-fun c!134098 () Bool)

(assert (=> d!259304 (= c!134098 (is-ElementMatch!2060 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(assert (=> d!259304 (= (RegexPrimitiveSize!89 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))) lt!317498)))

(declare-fun b!825707 () Bool)

(assert (=> b!825707 (= e!544928 e!544932)))

(assert (=> b!825707 (= c!134099 (is-Concat!3791 (ite c!133964 (regTwo!4632 (regOne!4633 r!27177)) (regTwo!4633 (regOne!4633 r!27177)))))))

(assert (= (and d!259304 c!134098) b!825706))

(assert (= (and d!259304 (not c!134098)) b!825707))

(assert (= (and b!825707 c!134099) b!825698))

(assert (= (and b!825707 (not c!134099)) b!825699))

(assert (= (and b!825699 c!134102) b!825700))

(assert (= (and b!825699 (not c!134102)) b!825705))

(assert (= (and b!825705 c!134100) b!825704))

(assert (= (and b!825705 (not c!134100)) b!825703))

(assert (= (and b!825703 c!134101) b!825702))

(assert (= (and b!825703 (not c!134101)) b!825701))

(assert (= (or b!825704 b!825701) bm!47864))

(assert (= (or b!825698 bm!47864) bm!47865))

(assert (= (or b!825698 b!825701) bm!47866))

(declare-fun m!1064821 () Bool)

(assert (=> bm!47865 m!1064821))

(declare-fun m!1064823 () Bool)

(assert (=> bm!47866 m!1064823))

(assert (=> bm!47743 d!259304))

(declare-fun e!544933 () List!8886)

(declare-fun b!825708 () Bool)

(assert (=> b!825708 (= e!544933 (ite c!133995 call!47780 call!47779))))

(declare-fun d!259306 () Bool)

(declare-fun e!544934 () Bool)

(assert (=> d!259306 e!544934))

(declare-fun res!380337 () Bool)

(assert (=> d!259306 (=> (not res!380337) (not e!544934))))

(declare-fun lt!317499 () List!8886)

(assert (=> d!259306 (= res!380337 (= (content!1299 lt!317499) (set.union (content!1299 (ite c!133995 call!47779 call!47776)) (content!1299 (ite c!133995 call!47780 call!47779)))))))

(assert (=> d!259306 (= lt!317499 e!544933)))

(declare-fun c!134103 () Bool)

(assert (=> d!259306 (= c!134103 (is-Nil!8870 (ite c!133995 call!47779 call!47776)))))

(assert (=> d!259306 (= (++!2287 (ite c!133995 call!47779 call!47776) (ite c!133995 call!47780 call!47779)) lt!317499)))

(declare-fun b!825710 () Bool)

(declare-fun res!380336 () Bool)

(assert (=> b!825710 (=> (not res!380336) (not e!544934))))

(assert (=> b!825710 (= res!380336 (= (size!7470 lt!317499) (+ (size!7470 (ite c!133995 call!47779 call!47776)) (size!7470 (ite c!133995 call!47780 call!47779)))))))

(declare-fun b!825711 () Bool)

(assert (=> b!825711 (= e!544934 (or (not (= (ite c!133995 call!47780 call!47779) Nil!8870)) (= lt!317499 (ite c!133995 call!47779 call!47776))))))

(declare-fun b!825709 () Bool)

(assert (=> b!825709 (= e!544933 (Cons!8870 (h!14271 (ite c!133995 call!47779 call!47776)) (++!2287 (t!93178 (ite c!133995 call!47779 call!47776)) (ite c!133995 call!47780 call!47779))))))

(assert (= (and d!259306 c!134103) b!825708))

(assert (= (and d!259306 (not c!134103)) b!825709))

(assert (= (and d!259306 res!380337) b!825710))

(assert (= (and b!825710 res!380336) b!825711))

(declare-fun m!1064825 () Bool)

(assert (=> d!259306 m!1064825))

(declare-fun m!1064827 () Bool)

(assert (=> d!259306 m!1064827))

(declare-fun m!1064829 () Bool)

(assert (=> d!259306 m!1064829))

(declare-fun m!1064831 () Bool)

(assert (=> b!825710 m!1064831))

(declare-fun m!1064833 () Bool)

(assert (=> b!825710 m!1064833))

(declare-fun m!1064835 () Bool)

(assert (=> b!825710 m!1064835))

(declare-fun m!1064837 () Bool)

(assert (=> b!825709 m!1064837))

(assert (=> bm!47773 d!259306))

(declare-fun d!259308 () Bool)

(declare-fun c!134104 () Bool)

(assert (=> d!259308 (= c!134104 (is-Nil!8870 (firstChars!31 r!27177)))))

(declare-fun e!544935 () (Set C!4690))

(assert (=> d!259308 (= (content!1299 (firstChars!31 r!27177)) e!544935)))

(declare-fun b!825712 () Bool)

(assert (=> b!825712 (= e!544935 (as set.empty (Set C!4690)))))

(declare-fun b!825713 () Bool)

(assert (=> b!825713 (= e!544935 (set.union (set.insert (h!14271 (firstChars!31 r!27177)) (as set.empty (Set C!4690))) (content!1299 (t!93178 (firstChars!31 r!27177)))))))

(assert (= (and d!259308 c!134104) b!825712))

(assert (= (and d!259308 (not c!134104)) b!825713))

(declare-fun m!1064839 () Bool)

(assert (=> b!825713 m!1064839))

(assert (=> b!825713 m!1064763))

(assert (=> d!259240 d!259308))

(declare-fun b!825716 () Bool)

(declare-fun e!544936 () Bool)

(declare-fun tp!258037 () Bool)

(assert (=> b!825716 (= e!544936 tp!258037)))

(declare-fun b!825717 () Bool)

(declare-fun tp!258036 () Bool)

(declare-fun tp!258039 () Bool)

(assert (=> b!825717 (= e!544936 (and tp!258036 tp!258039))))

(declare-fun b!825715 () Bool)

(declare-fun tp!258035 () Bool)

(declare-fun tp!258038 () Bool)

(assert (=> b!825715 (= e!544936 (and tp!258035 tp!258038))))

(declare-fun b!825714 () Bool)

(assert (=> b!825714 (= e!544936 tp_is_empty!3843)))

(assert (=> b!825458 (= tp!257991 e!544936)))

(assert (= (and b!825458 (is-ElementMatch!2060 (regOne!4633 (regOne!4632 r!27177)))) b!825714))

(assert (= (and b!825458 (is-Concat!3791 (regOne!4633 (regOne!4632 r!27177)))) b!825715))

(assert (= (and b!825458 (is-Star!2060 (regOne!4633 (regOne!4632 r!27177)))) b!825716))

(assert (= (and b!825458 (is-Union!2060 (regOne!4633 (regOne!4632 r!27177)))) b!825717))

(declare-fun b!825720 () Bool)

(declare-fun e!544937 () Bool)

(declare-fun tp!258042 () Bool)

(assert (=> b!825720 (= e!544937 tp!258042)))

(declare-fun b!825721 () Bool)

(declare-fun tp!258041 () Bool)

(declare-fun tp!258044 () Bool)

(assert (=> b!825721 (= e!544937 (and tp!258041 tp!258044))))

(declare-fun b!825719 () Bool)

(declare-fun tp!258040 () Bool)

(declare-fun tp!258043 () Bool)

(assert (=> b!825719 (= e!544937 (and tp!258040 tp!258043))))

(declare-fun b!825718 () Bool)

(assert (=> b!825718 (= e!544937 tp_is_empty!3843)))

(assert (=> b!825458 (= tp!257994 e!544937)))

(assert (= (and b!825458 (is-ElementMatch!2060 (regTwo!4633 (regOne!4632 r!27177)))) b!825718))

(assert (= (and b!825458 (is-Concat!3791 (regTwo!4633 (regOne!4632 r!27177)))) b!825719))

(assert (= (and b!825458 (is-Star!2060 (regTwo!4633 (regOne!4632 r!27177)))) b!825720))

(assert (= (and b!825458 (is-Union!2060 (regTwo!4633 (regOne!4632 r!27177)))) b!825721))

(declare-fun b!825724 () Bool)

(declare-fun e!544938 () Bool)

(declare-fun tp!258047 () Bool)

(assert (=> b!825724 (= e!544938 tp!258047)))

(declare-fun b!825725 () Bool)

(declare-fun tp!258046 () Bool)

(declare-fun tp!258049 () Bool)

(assert (=> b!825725 (= e!544938 (and tp!258046 tp!258049))))

(declare-fun b!825723 () Bool)

(declare-fun tp!258045 () Bool)

(declare-fun tp!258048 () Bool)

(assert (=> b!825723 (= e!544938 (and tp!258045 tp!258048))))

(declare-fun b!825722 () Bool)

(assert (=> b!825722 (= e!544938 tp_is_empty!3843)))

(assert (=> b!825461 (= tp!257997 e!544938)))

(assert (= (and b!825461 (is-ElementMatch!2060 (reg!2389 (regTwo!4632 r!27177)))) b!825722))

(assert (= (and b!825461 (is-Concat!3791 (reg!2389 (regTwo!4632 r!27177)))) b!825723))

(assert (= (and b!825461 (is-Star!2060 (reg!2389 (regTwo!4632 r!27177)))) b!825724))

(assert (= (and b!825461 (is-Union!2060 (reg!2389 (regTwo!4632 r!27177)))) b!825725))

(declare-fun b!825728 () Bool)

(declare-fun e!544939 () Bool)

(declare-fun tp!258052 () Bool)

(assert (=> b!825728 (= e!544939 tp!258052)))

(declare-fun b!825729 () Bool)

(declare-fun tp!258051 () Bool)

(declare-fun tp!258054 () Bool)

(assert (=> b!825729 (= e!544939 (and tp!258051 tp!258054))))

(declare-fun b!825727 () Bool)

(declare-fun tp!258050 () Bool)

(declare-fun tp!258053 () Bool)

(assert (=> b!825727 (= e!544939 (and tp!258050 tp!258053))))

(declare-fun b!825726 () Bool)

(assert (=> b!825726 (= e!544939 tp_is_empty!3843)))

(assert (=> b!825454 (= tp!257986 e!544939)))

(assert (= (and b!825454 (is-ElementMatch!2060 (regOne!4633 (reg!2389 r!27177)))) b!825726))

(assert (= (and b!825454 (is-Concat!3791 (regOne!4633 (reg!2389 r!27177)))) b!825727))

(assert (= (and b!825454 (is-Star!2060 (regOne!4633 (reg!2389 r!27177)))) b!825728))

(assert (= (and b!825454 (is-Union!2060 (regOne!4633 (reg!2389 r!27177)))) b!825729))

(declare-fun b!825732 () Bool)

(declare-fun e!544940 () Bool)

(declare-fun tp!258057 () Bool)

(assert (=> b!825732 (= e!544940 tp!258057)))

(declare-fun b!825733 () Bool)

(declare-fun tp!258056 () Bool)

(declare-fun tp!258059 () Bool)

(assert (=> b!825733 (= e!544940 (and tp!258056 tp!258059))))

(declare-fun b!825731 () Bool)

(declare-fun tp!258055 () Bool)

(declare-fun tp!258058 () Bool)

(assert (=> b!825731 (= e!544940 (and tp!258055 tp!258058))))

(declare-fun b!825730 () Bool)

(assert (=> b!825730 (= e!544940 tp_is_empty!3843)))

(assert (=> b!825454 (= tp!257989 e!544940)))

(assert (= (and b!825454 (is-ElementMatch!2060 (regTwo!4633 (reg!2389 r!27177)))) b!825730))

(assert (= (and b!825454 (is-Concat!3791 (regTwo!4633 (reg!2389 r!27177)))) b!825731))

(assert (= (and b!825454 (is-Star!2060 (regTwo!4633 (reg!2389 r!27177)))) b!825732))

(assert (= (and b!825454 (is-Union!2060 (regTwo!4633 (reg!2389 r!27177)))) b!825733))

(declare-fun b!825736 () Bool)

(declare-fun e!544941 () Bool)

(declare-fun tp!258062 () Bool)

(assert (=> b!825736 (= e!544941 tp!258062)))

(declare-fun b!825737 () Bool)

(declare-fun tp!258061 () Bool)

(declare-fun tp!258064 () Bool)

(assert (=> b!825737 (= e!544941 (and tp!258061 tp!258064))))

(declare-fun b!825735 () Bool)

(declare-fun tp!258060 () Bool)

(declare-fun tp!258063 () Bool)

(assert (=> b!825735 (= e!544941 (and tp!258060 tp!258063))))

(declare-fun b!825734 () Bool)

(assert (=> b!825734 (= e!544941 tp_is_empty!3843)))

(assert (=> b!825457 (= tp!257992 e!544941)))

(assert (= (and b!825457 (is-ElementMatch!2060 (reg!2389 (regOne!4632 r!27177)))) b!825734))

(assert (= (and b!825457 (is-Concat!3791 (reg!2389 (regOne!4632 r!27177)))) b!825735))

(assert (= (and b!825457 (is-Star!2060 (reg!2389 (regOne!4632 r!27177)))) b!825736))

(assert (= (and b!825457 (is-Union!2060 (reg!2389 (regOne!4632 r!27177)))) b!825737))

(declare-fun b!825740 () Bool)

(declare-fun e!544942 () Bool)

(declare-fun tp!258067 () Bool)

(assert (=> b!825740 (= e!544942 tp!258067)))

(declare-fun b!825741 () Bool)

(declare-fun tp!258066 () Bool)

(declare-fun tp!258069 () Bool)

(assert (=> b!825741 (= e!544942 (and tp!258066 tp!258069))))

(declare-fun b!825739 () Bool)

(declare-fun tp!258065 () Bool)

(declare-fun tp!258068 () Bool)

(assert (=> b!825739 (= e!544942 (and tp!258065 tp!258068))))

(declare-fun b!825738 () Bool)

(assert (=> b!825738 (= e!544942 tp_is_empty!3843)))

(assert (=> b!825462 (= tp!257996 e!544942)))

(assert (= (and b!825462 (is-ElementMatch!2060 (regOne!4633 (regTwo!4632 r!27177)))) b!825738))

(assert (= (and b!825462 (is-Concat!3791 (regOne!4633 (regTwo!4632 r!27177)))) b!825739))

(assert (= (and b!825462 (is-Star!2060 (regOne!4633 (regTwo!4632 r!27177)))) b!825740))

(assert (= (and b!825462 (is-Union!2060 (regOne!4633 (regTwo!4632 r!27177)))) b!825741))

(declare-fun b!825744 () Bool)

(declare-fun e!544943 () Bool)

(declare-fun tp!258072 () Bool)

(assert (=> b!825744 (= e!544943 tp!258072)))

(declare-fun b!825745 () Bool)

(declare-fun tp!258071 () Bool)

(declare-fun tp!258074 () Bool)

(assert (=> b!825745 (= e!544943 (and tp!258071 tp!258074))))

(declare-fun b!825743 () Bool)

(declare-fun tp!258070 () Bool)

(declare-fun tp!258073 () Bool)

(assert (=> b!825743 (= e!544943 (and tp!258070 tp!258073))))

(declare-fun b!825742 () Bool)

(assert (=> b!825742 (= e!544943 tp_is_empty!3843)))

(assert (=> b!825462 (= tp!257999 e!544943)))

(assert (= (and b!825462 (is-ElementMatch!2060 (regTwo!4633 (regTwo!4632 r!27177)))) b!825742))

(assert (= (and b!825462 (is-Concat!3791 (regTwo!4633 (regTwo!4632 r!27177)))) b!825743))

(assert (= (and b!825462 (is-Star!2060 (regTwo!4633 (regTwo!4632 r!27177)))) b!825744))

(assert (= (and b!825462 (is-Union!2060 (regTwo!4633 (regTwo!4632 r!27177)))) b!825745))

(declare-fun b!825748 () Bool)

(declare-fun e!544944 () Bool)

(declare-fun tp!258077 () Bool)

(assert (=> b!825748 (= e!544944 tp!258077)))

(declare-fun b!825749 () Bool)

(declare-fun tp!258076 () Bool)

(declare-fun tp!258079 () Bool)

(assert (=> b!825749 (= e!544944 (and tp!258076 tp!258079))))

(declare-fun b!825747 () Bool)

(declare-fun tp!258075 () Bool)

(declare-fun tp!258078 () Bool)

(assert (=> b!825747 (= e!544944 (and tp!258075 tp!258078))))

(declare-fun b!825746 () Bool)

(assert (=> b!825746 (= e!544944 tp_is_empty!3843)))

(assert (=> b!825450 (= tp!257981 e!544944)))

(assert (= (and b!825450 (is-ElementMatch!2060 (regOne!4633 (regTwo!4633 r!27177)))) b!825746))

(assert (= (and b!825450 (is-Concat!3791 (regOne!4633 (regTwo!4633 r!27177)))) b!825747))

(assert (= (and b!825450 (is-Star!2060 (regOne!4633 (regTwo!4633 r!27177)))) b!825748))

(assert (= (and b!825450 (is-Union!2060 (regOne!4633 (regTwo!4633 r!27177)))) b!825749))

(declare-fun b!825752 () Bool)

(declare-fun e!544945 () Bool)

(declare-fun tp!258082 () Bool)

(assert (=> b!825752 (= e!544945 tp!258082)))

(declare-fun b!825753 () Bool)

(declare-fun tp!258081 () Bool)

(declare-fun tp!258084 () Bool)

(assert (=> b!825753 (= e!544945 (and tp!258081 tp!258084))))

(declare-fun b!825751 () Bool)

(declare-fun tp!258080 () Bool)

(declare-fun tp!258083 () Bool)

(assert (=> b!825751 (= e!544945 (and tp!258080 tp!258083))))

(declare-fun b!825750 () Bool)

(assert (=> b!825750 (= e!544945 tp_is_empty!3843)))

(assert (=> b!825450 (= tp!257984 e!544945)))

(assert (= (and b!825450 (is-ElementMatch!2060 (regTwo!4633 (regTwo!4633 r!27177)))) b!825750))

(assert (= (and b!825450 (is-Concat!3791 (regTwo!4633 (regTwo!4633 r!27177)))) b!825751))

(assert (= (and b!825450 (is-Star!2060 (regTwo!4633 (regTwo!4633 r!27177)))) b!825752))

(assert (= (and b!825450 (is-Union!2060 (regTwo!4633 (regTwo!4633 r!27177)))) b!825753))

(declare-fun b!825756 () Bool)

(declare-fun e!544946 () Bool)

(declare-fun tp!258087 () Bool)

(assert (=> b!825756 (= e!544946 tp!258087)))

(declare-fun b!825757 () Bool)

(declare-fun tp!258086 () Bool)

(declare-fun tp!258089 () Bool)

(assert (=> b!825757 (= e!544946 (and tp!258086 tp!258089))))

(declare-fun b!825755 () Bool)

(declare-fun tp!258085 () Bool)

(declare-fun tp!258088 () Bool)

(assert (=> b!825755 (= e!544946 (and tp!258085 tp!258088))))

(declare-fun b!825754 () Bool)

(assert (=> b!825754 (= e!544946 tp_is_empty!3843)))

(assert (=> b!825445 (= tp!257977 e!544946)))

(assert (= (and b!825445 (is-ElementMatch!2060 (reg!2389 (regOne!4633 r!27177)))) b!825754))

(assert (= (and b!825445 (is-Concat!3791 (reg!2389 (regOne!4633 r!27177)))) b!825755))

(assert (= (and b!825445 (is-Star!2060 (reg!2389 (regOne!4633 r!27177)))) b!825756))

(assert (= (and b!825445 (is-Union!2060 (reg!2389 (regOne!4633 r!27177)))) b!825757))

(declare-fun b!825760 () Bool)

(declare-fun e!544947 () Bool)

(declare-fun tp!258092 () Bool)

(assert (=> b!825760 (= e!544947 tp!258092)))

(declare-fun b!825761 () Bool)

(declare-fun tp!258091 () Bool)

(declare-fun tp!258094 () Bool)

(assert (=> b!825761 (= e!544947 (and tp!258091 tp!258094))))

(declare-fun b!825759 () Bool)

(declare-fun tp!258090 () Bool)

(declare-fun tp!258093 () Bool)

(assert (=> b!825759 (= e!544947 (and tp!258090 tp!258093))))

(declare-fun b!825758 () Bool)

(assert (=> b!825758 (= e!544947 tp_is_empty!3843)))

(assert (=> b!825460 (= tp!257995 e!544947)))

(assert (= (and b!825460 (is-ElementMatch!2060 (regOne!4632 (regTwo!4632 r!27177)))) b!825758))

(assert (= (and b!825460 (is-Concat!3791 (regOne!4632 (regTwo!4632 r!27177)))) b!825759))

(assert (= (and b!825460 (is-Star!2060 (regOne!4632 (regTwo!4632 r!27177)))) b!825760))

(assert (= (and b!825460 (is-Union!2060 (regOne!4632 (regTwo!4632 r!27177)))) b!825761))

(declare-fun b!825764 () Bool)

(declare-fun e!544948 () Bool)

(declare-fun tp!258097 () Bool)

(assert (=> b!825764 (= e!544948 tp!258097)))

(declare-fun b!825765 () Bool)

(declare-fun tp!258096 () Bool)

(declare-fun tp!258099 () Bool)

(assert (=> b!825765 (= e!544948 (and tp!258096 tp!258099))))

(declare-fun b!825763 () Bool)

(declare-fun tp!258095 () Bool)

(declare-fun tp!258098 () Bool)

(assert (=> b!825763 (= e!544948 (and tp!258095 tp!258098))))

(declare-fun b!825762 () Bool)

(assert (=> b!825762 (= e!544948 tp_is_empty!3843)))

(assert (=> b!825460 (= tp!257998 e!544948)))

(assert (= (and b!825460 (is-ElementMatch!2060 (regTwo!4632 (regTwo!4632 r!27177)))) b!825762))

(assert (= (and b!825460 (is-Concat!3791 (regTwo!4632 (regTwo!4632 r!27177)))) b!825763))

(assert (= (and b!825460 (is-Star!2060 (regTwo!4632 (regTwo!4632 r!27177)))) b!825764))

(assert (= (and b!825460 (is-Union!2060 (regTwo!4632 (regTwo!4632 r!27177)))) b!825765))

(declare-fun b!825768 () Bool)

(declare-fun e!544949 () Bool)

(declare-fun tp!258102 () Bool)

(assert (=> b!825768 (= e!544949 tp!258102)))

(declare-fun b!825769 () Bool)

(declare-fun tp!258101 () Bool)

(declare-fun tp!258104 () Bool)

(assert (=> b!825769 (= e!544949 (and tp!258101 tp!258104))))

(declare-fun b!825767 () Bool)

(declare-fun tp!258100 () Bool)

(declare-fun tp!258103 () Bool)

(assert (=> b!825767 (= e!544949 (and tp!258100 tp!258103))))

(declare-fun b!825766 () Bool)

(assert (=> b!825766 (= e!544949 tp_is_empty!3843)))

(assert (=> b!825446 (= tp!257976 e!544949)))

(assert (= (and b!825446 (is-ElementMatch!2060 (regOne!4633 (regOne!4633 r!27177)))) b!825766))

(assert (= (and b!825446 (is-Concat!3791 (regOne!4633 (regOne!4633 r!27177)))) b!825767))

(assert (= (and b!825446 (is-Star!2060 (regOne!4633 (regOne!4633 r!27177)))) b!825768))

(assert (= (and b!825446 (is-Union!2060 (regOne!4633 (regOne!4633 r!27177)))) b!825769))

(declare-fun b!825772 () Bool)

(declare-fun e!544950 () Bool)

(declare-fun tp!258107 () Bool)

(assert (=> b!825772 (= e!544950 tp!258107)))

(declare-fun b!825773 () Bool)

(declare-fun tp!258106 () Bool)

(declare-fun tp!258109 () Bool)

(assert (=> b!825773 (= e!544950 (and tp!258106 tp!258109))))

(declare-fun b!825771 () Bool)

(declare-fun tp!258105 () Bool)

(declare-fun tp!258108 () Bool)

(assert (=> b!825771 (= e!544950 (and tp!258105 tp!258108))))

(declare-fun b!825770 () Bool)

(assert (=> b!825770 (= e!544950 tp_is_empty!3843)))

(assert (=> b!825446 (= tp!257979 e!544950)))

(assert (= (and b!825446 (is-ElementMatch!2060 (regTwo!4633 (regOne!4633 r!27177)))) b!825770))

(assert (= (and b!825446 (is-Concat!3791 (regTwo!4633 (regOne!4633 r!27177)))) b!825771))

(assert (= (and b!825446 (is-Star!2060 (regTwo!4633 (regOne!4633 r!27177)))) b!825772))

(assert (= (and b!825446 (is-Union!2060 (regTwo!4633 (regOne!4633 r!27177)))) b!825773))

(declare-fun b!825776 () Bool)

(declare-fun e!544951 () Bool)

(declare-fun tp!258112 () Bool)

(assert (=> b!825776 (= e!544951 tp!258112)))

(declare-fun b!825777 () Bool)

(declare-fun tp!258111 () Bool)

(declare-fun tp!258114 () Bool)

(assert (=> b!825777 (= e!544951 (and tp!258111 tp!258114))))

(declare-fun b!825775 () Bool)

(declare-fun tp!258110 () Bool)

(declare-fun tp!258113 () Bool)

(assert (=> b!825775 (= e!544951 (and tp!258110 tp!258113))))

(declare-fun b!825774 () Bool)

(assert (=> b!825774 (= e!544951 tp_is_empty!3843)))

(assert (=> b!825453 (= tp!257987 e!544951)))

(assert (= (and b!825453 (is-ElementMatch!2060 (reg!2389 (reg!2389 r!27177)))) b!825774))

(assert (= (and b!825453 (is-Concat!3791 (reg!2389 (reg!2389 r!27177)))) b!825775))

(assert (= (and b!825453 (is-Star!2060 (reg!2389 (reg!2389 r!27177)))) b!825776))

(assert (= (and b!825453 (is-Union!2060 (reg!2389 (reg!2389 r!27177)))) b!825777))

(declare-fun b!825780 () Bool)

(declare-fun e!544952 () Bool)

(declare-fun tp!258117 () Bool)

(assert (=> b!825780 (= e!544952 tp!258117)))

(declare-fun b!825781 () Bool)

(declare-fun tp!258116 () Bool)

(declare-fun tp!258119 () Bool)

(assert (=> b!825781 (= e!544952 (and tp!258116 tp!258119))))

(declare-fun b!825779 () Bool)

(declare-fun tp!258115 () Bool)

(declare-fun tp!258118 () Bool)

(assert (=> b!825779 (= e!544952 (and tp!258115 tp!258118))))

(declare-fun b!825778 () Bool)

(assert (=> b!825778 (= e!544952 tp_is_empty!3843)))

(assert (=> b!825456 (= tp!257990 e!544952)))

(assert (= (and b!825456 (is-ElementMatch!2060 (regOne!4632 (regOne!4632 r!27177)))) b!825778))

(assert (= (and b!825456 (is-Concat!3791 (regOne!4632 (regOne!4632 r!27177)))) b!825779))

(assert (= (and b!825456 (is-Star!2060 (regOne!4632 (regOne!4632 r!27177)))) b!825780))

(assert (= (and b!825456 (is-Union!2060 (regOne!4632 (regOne!4632 r!27177)))) b!825781))

(declare-fun b!825784 () Bool)

(declare-fun e!544953 () Bool)

(declare-fun tp!258122 () Bool)

(assert (=> b!825784 (= e!544953 tp!258122)))

(declare-fun b!825785 () Bool)

(declare-fun tp!258121 () Bool)

(declare-fun tp!258124 () Bool)

(assert (=> b!825785 (= e!544953 (and tp!258121 tp!258124))))

(declare-fun b!825783 () Bool)

(declare-fun tp!258120 () Bool)

(declare-fun tp!258123 () Bool)

(assert (=> b!825783 (= e!544953 (and tp!258120 tp!258123))))

(declare-fun b!825782 () Bool)

(assert (=> b!825782 (= e!544953 tp_is_empty!3843)))

(assert (=> b!825456 (= tp!257993 e!544953)))

(assert (= (and b!825456 (is-ElementMatch!2060 (regTwo!4632 (regOne!4632 r!27177)))) b!825782))

(assert (= (and b!825456 (is-Concat!3791 (regTwo!4632 (regOne!4632 r!27177)))) b!825783))

(assert (= (and b!825456 (is-Star!2060 (regTwo!4632 (regOne!4632 r!27177)))) b!825784))

(assert (= (and b!825456 (is-Union!2060 (regTwo!4632 (regOne!4632 r!27177)))) b!825785))

(declare-fun b!825788 () Bool)

(declare-fun e!544954 () Bool)

(declare-fun tp!258127 () Bool)

(assert (=> b!825788 (= e!544954 tp!258127)))

(declare-fun b!825789 () Bool)

(declare-fun tp!258126 () Bool)

(declare-fun tp!258129 () Bool)

(assert (=> b!825789 (= e!544954 (and tp!258126 tp!258129))))

(declare-fun b!825787 () Bool)

(declare-fun tp!258125 () Bool)

(declare-fun tp!258128 () Bool)

(assert (=> b!825787 (= e!544954 (and tp!258125 tp!258128))))

(declare-fun b!825786 () Bool)

(assert (=> b!825786 (= e!544954 tp_is_empty!3843)))

(assert (=> b!825444 (= tp!257975 e!544954)))

(assert (= (and b!825444 (is-ElementMatch!2060 (regOne!4632 (regOne!4633 r!27177)))) b!825786))

(assert (= (and b!825444 (is-Concat!3791 (regOne!4632 (regOne!4633 r!27177)))) b!825787))

(assert (= (and b!825444 (is-Star!2060 (regOne!4632 (regOne!4633 r!27177)))) b!825788))

(assert (= (and b!825444 (is-Union!2060 (regOne!4632 (regOne!4633 r!27177)))) b!825789))

(declare-fun b!825792 () Bool)

(declare-fun e!544955 () Bool)

(declare-fun tp!258132 () Bool)

(assert (=> b!825792 (= e!544955 tp!258132)))

(declare-fun b!825793 () Bool)

(declare-fun tp!258131 () Bool)

(declare-fun tp!258134 () Bool)

(assert (=> b!825793 (= e!544955 (and tp!258131 tp!258134))))

(declare-fun b!825791 () Bool)

(declare-fun tp!258130 () Bool)

(declare-fun tp!258133 () Bool)

(assert (=> b!825791 (= e!544955 (and tp!258130 tp!258133))))

(declare-fun b!825790 () Bool)

(assert (=> b!825790 (= e!544955 tp_is_empty!3843)))

(assert (=> b!825444 (= tp!257978 e!544955)))

(assert (= (and b!825444 (is-ElementMatch!2060 (regTwo!4632 (regOne!4633 r!27177)))) b!825790))

(assert (= (and b!825444 (is-Concat!3791 (regTwo!4632 (regOne!4633 r!27177)))) b!825791))

(assert (= (and b!825444 (is-Star!2060 (regTwo!4632 (regOne!4633 r!27177)))) b!825792))

(assert (= (and b!825444 (is-Union!2060 (regTwo!4632 (regOne!4633 r!27177)))) b!825793))

(declare-fun b!825796 () Bool)

(declare-fun e!544956 () Bool)

(declare-fun tp!258137 () Bool)

(assert (=> b!825796 (= e!544956 tp!258137)))

(declare-fun b!825797 () Bool)

(declare-fun tp!258136 () Bool)

(declare-fun tp!258139 () Bool)

(assert (=> b!825797 (= e!544956 (and tp!258136 tp!258139))))

(declare-fun b!825795 () Bool)

(declare-fun tp!258135 () Bool)

(declare-fun tp!258138 () Bool)

(assert (=> b!825795 (= e!544956 (and tp!258135 tp!258138))))

(declare-fun b!825794 () Bool)

(assert (=> b!825794 (= e!544956 tp_is_empty!3843)))

(assert (=> b!825449 (= tp!257982 e!544956)))

(assert (= (and b!825449 (is-ElementMatch!2060 (reg!2389 (regTwo!4633 r!27177)))) b!825794))

(assert (= (and b!825449 (is-Concat!3791 (reg!2389 (regTwo!4633 r!27177)))) b!825795))

(assert (= (and b!825449 (is-Star!2060 (reg!2389 (regTwo!4633 r!27177)))) b!825796))

(assert (= (and b!825449 (is-Union!2060 (reg!2389 (regTwo!4633 r!27177)))) b!825797))

(declare-fun b!825800 () Bool)

(declare-fun e!544957 () Bool)

(declare-fun tp!258142 () Bool)

(assert (=> b!825800 (= e!544957 tp!258142)))

(declare-fun b!825801 () Bool)

(declare-fun tp!258141 () Bool)

(declare-fun tp!258144 () Bool)

(assert (=> b!825801 (= e!544957 (and tp!258141 tp!258144))))

(declare-fun b!825799 () Bool)

(declare-fun tp!258140 () Bool)

(declare-fun tp!258143 () Bool)

(assert (=> b!825799 (= e!544957 (and tp!258140 tp!258143))))

(declare-fun b!825798 () Bool)

(assert (=> b!825798 (= e!544957 tp_is_empty!3843)))

(assert (=> b!825452 (= tp!257985 e!544957)))

(assert (= (and b!825452 (is-ElementMatch!2060 (regOne!4632 (reg!2389 r!27177)))) b!825798))

(assert (= (and b!825452 (is-Concat!3791 (regOne!4632 (reg!2389 r!27177)))) b!825799))

(assert (= (and b!825452 (is-Star!2060 (regOne!4632 (reg!2389 r!27177)))) b!825800))

(assert (= (and b!825452 (is-Union!2060 (regOne!4632 (reg!2389 r!27177)))) b!825801))

(declare-fun b!825804 () Bool)

(declare-fun e!544958 () Bool)

(declare-fun tp!258147 () Bool)

(assert (=> b!825804 (= e!544958 tp!258147)))

(declare-fun b!825805 () Bool)

(declare-fun tp!258146 () Bool)

(declare-fun tp!258149 () Bool)

(assert (=> b!825805 (= e!544958 (and tp!258146 tp!258149))))

(declare-fun b!825803 () Bool)

(declare-fun tp!258145 () Bool)

(declare-fun tp!258148 () Bool)

(assert (=> b!825803 (= e!544958 (and tp!258145 tp!258148))))

(declare-fun b!825802 () Bool)

(assert (=> b!825802 (= e!544958 tp_is_empty!3843)))

(assert (=> b!825452 (= tp!257988 e!544958)))

(assert (= (and b!825452 (is-ElementMatch!2060 (regTwo!4632 (reg!2389 r!27177)))) b!825802))

(assert (= (and b!825452 (is-Concat!3791 (regTwo!4632 (reg!2389 r!27177)))) b!825803))

(assert (= (and b!825452 (is-Star!2060 (regTwo!4632 (reg!2389 r!27177)))) b!825804))

(assert (= (and b!825452 (is-Union!2060 (regTwo!4632 (reg!2389 r!27177)))) b!825805))

(declare-fun b!825808 () Bool)

(declare-fun e!544959 () Bool)

(declare-fun tp!258152 () Bool)

(assert (=> b!825808 (= e!544959 tp!258152)))

(declare-fun b!825809 () Bool)

(declare-fun tp!258151 () Bool)

(declare-fun tp!258154 () Bool)

(assert (=> b!825809 (= e!544959 (and tp!258151 tp!258154))))

(declare-fun b!825807 () Bool)

(declare-fun tp!258150 () Bool)

(declare-fun tp!258153 () Bool)

(assert (=> b!825807 (= e!544959 (and tp!258150 tp!258153))))

(declare-fun b!825806 () Bool)

(assert (=> b!825806 (= e!544959 tp_is_empty!3843)))

(assert (=> b!825448 (= tp!257980 e!544959)))

(assert (= (and b!825448 (is-ElementMatch!2060 (regOne!4632 (regTwo!4633 r!27177)))) b!825806))

(assert (= (and b!825448 (is-Concat!3791 (regOne!4632 (regTwo!4633 r!27177)))) b!825807))

(assert (= (and b!825448 (is-Star!2060 (regOne!4632 (regTwo!4633 r!27177)))) b!825808))

(assert (= (and b!825448 (is-Union!2060 (regOne!4632 (regTwo!4633 r!27177)))) b!825809))

(declare-fun b!825812 () Bool)

(declare-fun e!544960 () Bool)

(declare-fun tp!258157 () Bool)

(assert (=> b!825812 (= e!544960 tp!258157)))

(declare-fun b!825813 () Bool)

(declare-fun tp!258156 () Bool)

(declare-fun tp!258159 () Bool)

(assert (=> b!825813 (= e!544960 (and tp!258156 tp!258159))))

(declare-fun b!825811 () Bool)

(declare-fun tp!258155 () Bool)

(declare-fun tp!258158 () Bool)

(assert (=> b!825811 (= e!544960 (and tp!258155 tp!258158))))

(declare-fun b!825810 () Bool)

(assert (=> b!825810 (= e!544960 tp_is_empty!3843)))

(assert (=> b!825448 (= tp!257983 e!544960)))

(assert (= (and b!825448 (is-ElementMatch!2060 (regTwo!4632 (regTwo!4633 r!27177)))) b!825810))

(assert (= (and b!825448 (is-Concat!3791 (regTwo!4632 (regTwo!4633 r!27177)))) b!825811))

(assert (= (and b!825448 (is-Star!2060 (regTwo!4632 (regTwo!4633 r!27177)))) b!825812))

(assert (= (and b!825448 (is-Union!2060 (regTwo!4632 (regTwo!4633 r!27177)))) b!825813))

(push 1)

(assert (not b!825744))

(assert (not b!825731))

(assert (not b!825640))

(assert (not b!825800))

(assert (not b!825733))

(assert (not d!259272))

(assert (not b!825609))

(assert (not b!825745))

(assert (not b!825813))

(assert (not d!259276))

(assert (not b!825812))

(assert (not b!825773))

(assert (not b!825727))

(assert (not b!825795))

(assert (not b!825752))

(assert (not b!825789))

(assert (not b!825777))

(assert (not b!825784))

(assert (not b!825695))

(assert (not d!259284))

(assert (not bm!47836))

(assert (not b!825755))

(assert (not bm!47861))

(assert (not bm!47850))

(assert (not bm!47847))

(assert (not bm!47848))

(assert (not b!825771))

(assert (not b!825791))

(assert (not b!825792))

(assert (not b!825772))

(assert (not b!825783))

(assert (not bm!47824))

(assert (not b!825614))

(assert (not b!825775))

(assert (not b!825629))

(assert (not b!825713))

(assert (not b!825635))

(assert (not b!825673))

(assert (not b!825760))

(assert (not bm!47862))

(assert (not b!825710))

(assert (not b!825715))

(assert (not bm!47841))

(assert (not b!825757))

(assert (not b!825788))

(assert (not b!825709))

(assert (not b!825737))

(assert (not bm!47832))

(assert (not b!825805))

(assert (not d!259286))

(assert (not b!825796))

(assert (not b!825780))

(assert (not b!825717))

(assert (not bm!47860))

(assert (not bm!47852))

(assert (not b!825756))

(assert (not b!825809))

(assert (not bm!47858))

(assert (not b!825729))

(assert (not bm!47829))

(assert (not b!825719))

(assert (not b!825724))

(assert (not b!825749))

(assert (not b!825804))

(assert (not b!825649))

(assert (not b!825589))

(assert (not b!825736))

(assert (not b!825787))

(assert (not bm!47845))

(assert (not bm!47828))

(assert (not bm!47854))

(assert (not bm!47839))

(assert (not b!825739))

(assert (not bm!47825))

(assert (not b!825808))

(assert (not d!259306))

(assert (not b!825751))

(assert (not bm!47844))

(assert (not b!825721))

(assert (not b!825663))

(assert (not b!825716))

(assert (not b!825735))

(assert (not b!825747))

(assert (not b!825732))

(assert (not bm!47833))

(assert tp_is_empty!3843)

(assert (not d!259296))

(assert (not b!825728))

(assert (not b!825797))

(assert (not b!825781))

(assert (not d!259302))

(assert (not bm!47857))

(assert (not b!825720))

(assert (not bm!47837))

(assert (not d!259288))

(assert (not bm!47842))

(assert (not bm!47835))

(assert (not b!825764))

(assert (not b!825779))

(assert (not b!825753))

(assert (not b!825723))

(assert (not b!825801))

(assert (not b!825741))

(assert (not b!825799))

(assert (not bm!47827))

(assert (not b!825759))

(assert (not b!825769))

(assert (not b!825767))

(assert (not b!825674))

(assert (not b!825725))

(assert (not b!825761))

(assert (not b!825811))

(assert (not b!825803))

(assert (not bm!47865))

(assert (not b!825743))

(assert (not b!825624))

(assert (not b!825697))

(assert (not b!825807))

(assert (not bm!47866))

(assert (not b!825763))

(assert (not b!825740))

(assert (not b!825785))

(assert (not b!825793))

(assert (not b!825776))

(assert (not b!825765))

(assert (not b!825748))

(assert (not bm!47853))

(assert (not b!825768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

