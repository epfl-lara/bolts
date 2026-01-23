; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755404 () Bool)

(assert start!755404)

(declare-fun b!8024375 () Bool)

(declare-fun e!4727110 () Bool)

(declare-fun tp_is_empty!54165 () Bool)

(declare-fun tp!2401446 () Bool)

(assert (=> b!8024375 (= e!4727110 (and tp_is_empty!54165 tp!2401446))))

(declare-fun b!8024376 () Bool)

(declare-fun e!4727109 () Bool)

(declare-datatypes ((B!4277 0))(
  ( (B!4278 (val!32528 Int)) )
))
(declare-datatypes ((List!75040 0))(
  ( (Nil!74916) (Cons!74916 (h!81364 B!4277) (t!390783 List!75040)) )
))
(declare-fun p!1838 () List!75040)

(declare-fun l!2932 () List!75040)

(declare-fun ++!18574 (List!75040 List!75040) List!75040)

(assert (=> b!8024376 (= e!4727109 (not (= (++!18574 p!1838 l!2932) l!2932)))))

(declare-fun res!3173337 () Bool)

(assert (=> start!755404 (=> (not res!3173337) (not e!4727109))))

(declare-fun size!43693 (List!75040) Int)

(assert (=> start!755404 (= res!3173337 (>= (size!43693 l!2932) (size!43693 p!1838)))))

(assert (=> start!755404 e!4727109))

(declare-fun e!4727111 () Bool)

(assert (=> start!755404 e!4727111))

(assert (=> start!755404 e!4727110))

(declare-fun b!8024377 () Bool)

(declare-fun tp!2401447 () Bool)

(assert (=> b!8024377 (= e!4727111 (and tp_is_empty!54165 tp!2401447))))

(declare-fun b!8024378 () Bool)

(declare-fun res!3173338 () Bool)

(assert (=> b!8024378 (=> (not res!3173338) (not e!4727109))))

(declare-fun isPrefix!6847 (List!75040 List!75040) Bool)

(assert (=> b!8024378 (= res!3173338 (isPrefix!6847 p!1838 l!2932))))

(declare-fun b!8024379 () Bool)

(declare-fun res!3173336 () Bool)

(assert (=> b!8024379 (=> (not res!3173336) (not e!4727109))))

(get-info :version)

(assert (=> b!8024379 (= res!3173336 (not ((_ is Cons!74916) p!1838)))))

(assert (= (and start!755404 res!3173337) b!8024378))

(assert (= (and b!8024378 res!3173338) b!8024379))

(assert (= (and b!8024379 res!3173336) b!8024376))

(assert (= (and start!755404 ((_ is Cons!74916) l!2932)) b!8024377))

(assert (= (and start!755404 ((_ is Cons!74916) p!1838)) b!8024375))

(declare-fun m!8386850 () Bool)

(assert (=> b!8024376 m!8386850))

(declare-fun m!8386852 () Bool)

(assert (=> start!755404 m!8386852))

(declare-fun m!8386854 () Bool)

(assert (=> start!755404 m!8386854))

(declare-fun m!8386856 () Bool)

(assert (=> b!8024378 m!8386856))

(check-sat tp_is_empty!54165 (not b!8024376) (not b!8024375) (not start!755404) (not b!8024377) (not b!8024378))
(check-sat)
(get-model)

(declare-fun d!2392752 () Bool)

(declare-fun e!4727121 () Bool)

(assert (=> d!2392752 e!4727121))

(declare-fun res!3173348 () Bool)

(assert (=> d!2392752 (=> (not res!3173348) (not e!4727121))))

(declare-fun lt!2720605 () List!75040)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15958 (List!75040) (InoxSet B!4277))

(assert (=> d!2392752 (= res!3173348 (= (content!15958 lt!2720605) ((_ map or) (content!15958 p!1838) (content!15958 l!2932))))))

(declare-fun e!4727120 () List!75040)

(assert (=> d!2392752 (= lt!2720605 e!4727120)))

(declare-fun c!1472428 () Bool)

(assert (=> d!2392752 (= c!1472428 ((_ is Nil!74916) p!1838))))

(assert (=> d!2392752 (= (++!18574 p!1838 l!2932) lt!2720605)))

(declare-fun b!8024397 () Bool)

(assert (=> b!8024397 (= e!4727120 (Cons!74916 (h!81364 p!1838) (++!18574 (t!390783 p!1838) l!2932)))))

(declare-fun b!8024398 () Bool)

(declare-fun res!3173347 () Bool)

(assert (=> b!8024398 (=> (not res!3173347) (not e!4727121))))

(assert (=> b!8024398 (= res!3173347 (= (size!43693 lt!2720605) (+ (size!43693 p!1838) (size!43693 l!2932))))))

(declare-fun b!8024396 () Bool)

(assert (=> b!8024396 (= e!4727120 l!2932)))

(declare-fun b!8024399 () Bool)

(assert (=> b!8024399 (= e!4727121 (or (not (= l!2932 Nil!74916)) (= lt!2720605 p!1838)))))

(assert (= (and d!2392752 c!1472428) b!8024396))

(assert (= (and d!2392752 (not c!1472428)) b!8024397))

(assert (= (and d!2392752 res!3173348) b!8024398))

(assert (= (and b!8024398 res!3173347) b!8024399))

(declare-fun m!8386860 () Bool)

(assert (=> d!2392752 m!8386860))

(declare-fun m!8386864 () Bool)

(assert (=> d!2392752 m!8386864))

(declare-fun m!8386868 () Bool)

(assert (=> d!2392752 m!8386868))

(declare-fun m!8386872 () Bool)

(assert (=> b!8024397 m!8386872))

(declare-fun m!8386876 () Bool)

(assert (=> b!8024398 m!8386876))

(assert (=> b!8024398 m!8386854))

(assert (=> b!8024398 m!8386852))

(assert (=> b!8024376 d!2392752))

(declare-fun d!2392758 () Bool)

(declare-fun lt!2720609 () Int)

(assert (=> d!2392758 (>= lt!2720609 0)))

(declare-fun e!4727126 () Int)

(assert (=> d!2392758 (= lt!2720609 e!4727126)))

(declare-fun c!1472432 () Bool)

(assert (=> d!2392758 (= c!1472432 ((_ is Nil!74916) l!2932))))

(assert (=> d!2392758 (= (size!43693 l!2932) lt!2720609)))

(declare-fun b!8024408 () Bool)

(assert (=> b!8024408 (= e!4727126 0)))

(declare-fun b!8024409 () Bool)

(assert (=> b!8024409 (= e!4727126 (+ 1 (size!43693 (t!390783 l!2932))))))

(assert (= (and d!2392758 c!1472432) b!8024408))

(assert (= (and d!2392758 (not c!1472432)) b!8024409))

(declare-fun m!8386878 () Bool)

(assert (=> b!8024409 m!8386878))

(assert (=> start!755404 d!2392758))

(declare-fun d!2392760 () Bool)

(declare-fun lt!2720610 () Int)

(assert (=> d!2392760 (>= lt!2720610 0)))

(declare-fun e!4727127 () Int)

(assert (=> d!2392760 (= lt!2720610 e!4727127)))

(declare-fun c!1472433 () Bool)

(assert (=> d!2392760 (= c!1472433 ((_ is Nil!74916) p!1838))))

(assert (=> d!2392760 (= (size!43693 p!1838) lt!2720610)))

(declare-fun b!8024410 () Bool)

(assert (=> b!8024410 (= e!4727127 0)))

(declare-fun b!8024411 () Bool)

(assert (=> b!8024411 (= e!4727127 (+ 1 (size!43693 (t!390783 p!1838))))))

(assert (= (and d!2392760 c!1472433) b!8024410))

(assert (= (and d!2392760 (not c!1472433)) b!8024411))

(declare-fun m!8386880 () Bool)

(assert (=> b!8024411 m!8386880))

(assert (=> start!755404 d!2392760))

(declare-fun b!8024437 () Bool)

(declare-fun res!3173372 () Bool)

(declare-fun e!4727147 () Bool)

(assert (=> b!8024437 (=> (not res!3173372) (not e!4727147))))

(declare-fun head!16443 (List!75040) B!4277)

(assert (=> b!8024437 (= res!3173372 (= (head!16443 p!1838) (head!16443 l!2932)))))

(declare-fun b!8024436 () Bool)

(declare-fun e!4727146 () Bool)

(assert (=> b!8024436 (= e!4727146 e!4727147)))

(declare-fun res!3173371 () Bool)

(assert (=> b!8024436 (=> (not res!3173371) (not e!4727147))))

(assert (=> b!8024436 (= res!3173371 (not ((_ is Nil!74916) l!2932)))))

(declare-fun b!8024438 () Bool)

(declare-fun tail!15983 (List!75040) List!75040)

(assert (=> b!8024438 (= e!4727147 (isPrefix!6847 (tail!15983 p!1838) (tail!15983 l!2932)))))

(declare-fun b!8024439 () Bool)

(declare-fun e!4727145 () Bool)

(assert (=> b!8024439 (= e!4727145 (>= (size!43693 l!2932) (size!43693 p!1838)))))

(declare-fun d!2392762 () Bool)

(assert (=> d!2392762 e!4727145))

(declare-fun res!3173373 () Bool)

(assert (=> d!2392762 (=> res!3173373 e!4727145)))

(declare-fun lt!2720618 () Bool)

(assert (=> d!2392762 (= res!3173373 (not lt!2720618))))

(assert (=> d!2392762 (= lt!2720618 e!4727146)))

(declare-fun res!3173374 () Bool)

(assert (=> d!2392762 (=> res!3173374 e!4727146)))

(assert (=> d!2392762 (= res!3173374 ((_ is Nil!74916) p!1838))))

(assert (=> d!2392762 (= (isPrefix!6847 p!1838 l!2932) lt!2720618)))

(assert (= (and d!2392762 (not res!3173374)) b!8024436))

(assert (= (and b!8024436 res!3173371) b!8024437))

(assert (= (and b!8024437 res!3173372) b!8024438))

(assert (= (and d!2392762 (not res!3173373)) b!8024439))

(declare-fun m!8386892 () Bool)

(assert (=> b!8024437 m!8386892))

(declare-fun m!8386894 () Bool)

(assert (=> b!8024437 m!8386894))

(declare-fun m!8386896 () Bool)

(assert (=> b!8024438 m!8386896))

(declare-fun m!8386898 () Bool)

(assert (=> b!8024438 m!8386898))

(assert (=> b!8024438 m!8386896))

(assert (=> b!8024438 m!8386898))

(declare-fun m!8386902 () Bool)

(assert (=> b!8024438 m!8386902))

(assert (=> b!8024439 m!8386852))

(assert (=> b!8024439 m!8386854))

(assert (=> b!8024378 d!2392762))

(declare-fun b!8024452 () Bool)

(declare-fun e!4727154 () Bool)

(declare-fun tp!2401452 () Bool)

(assert (=> b!8024452 (= e!4727154 (and tp_is_empty!54165 tp!2401452))))

(assert (=> b!8024375 (= tp!2401446 e!4727154)))

(assert (= (and b!8024375 ((_ is Cons!74916) (t!390783 p!1838))) b!8024452))

(declare-fun b!8024454 () Bool)

(declare-fun e!4727156 () Bool)

(declare-fun tp!2401454 () Bool)

(assert (=> b!8024454 (= e!4727156 (and tp_is_empty!54165 tp!2401454))))

(assert (=> b!8024377 (= tp!2401447 e!4727156)))

(assert (= (and b!8024377 ((_ is Cons!74916) (t!390783 l!2932))) b!8024454))

(check-sat tp_is_empty!54165 (not b!8024397) (not b!8024454) (not b!8024438) (not d!2392752) (not b!8024411) (not b!8024452) (not b!8024398) (not b!8024439) (not b!8024409) (not b!8024437))
(check-sat)
