; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248756 () Bool)

(assert start!248756)

(declare-fun b!2575523 () Bool)

(declare-fun res!1083294 () Bool)

(declare-fun e!1625056 () Bool)

(assert (=> b!2575523 (=> (not res!1083294) (not e!1625056))))

(declare-datatypes ((B!1913 0))(
  ( (B!1914 (val!9384 Int)) )
))
(declare-datatypes ((List!29718 0))(
  ( (Nil!29618) (Cons!29618 (h!35038 B!1913) (t!211417 List!29718)) )
))
(declare-fun l1!976 () List!29718)

(declare-fun l2!953 () List!29718)

(get-info :version)

(assert (=> b!2575523 (= res!1083294 (and ((_ is Cons!29618) l1!976) ((_ is Cons!29618) l2!953)))))

(declare-fun b!2575524 () Bool)

(declare-fun e!1625058 () Bool)

(declare-fun tp_is_empty!13161 () Bool)

(declare-fun tp!818757 () Bool)

(assert (=> b!2575524 (= e!1625058 (and tp_is_empty!13161 tp!818757))))

(declare-fun res!1083291 () Bool)

(assert (=> start!248756 (=> (not res!1083291) (not e!1625056))))

(declare-fun consecutiveSubseq!6 (List!29718 List!29718) Bool)

(assert (=> start!248756 (= res!1083291 (consecutiveSubseq!6 l1!976 l2!953))))

(assert (=> start!248756 e!1625056))

(declare-fun e!1625057 () Bool)

(assert (=> start!248756 e!1625057))

(assert (=> start!248756 e!1625058))

(declare-fun b!2575525 () Bool)

(declare-fun res!1083292 () Bool)

(assert (=> b!2575525 (=> (not res!1083292) (not e!1625056))))

(assert (=> b!2575525 (= res!1083292 (consecutiveSubseq!6 (t!211417 l1!976) (t!211417 l2!953)))))

(declare-fun b!2575526 () Bool)

(declare-fun tp!818758 () Bool)

(assert (=> b!2575526 (= e!1625057 (and tp_is_empty!13161 tp!818758))))

(declare-fun b!2575527 () Bool)

(declare-fun res!1083293 () Bool)

(assert (=> b!2575527 (=> (not res!1083293) (not e!1625056))))

(declare-fun consecutiveSubseqAtHead!5 (List!29718 List!29718) Bool)

(assert (=> b!2575527 (= res!1083293 (consecutiveSubseqAtHead!5 l1!976 l2!953))))

(declare-fun b!2575528 () Bool)

(declare-fun ListPrimitiveSize!169 (List!29718) Int)

(assert (=> b!2575528 (= e!1625056 (>= (ListPrimitiveSize!169 (t!211417 l2!953)) (ListPrimitiveSize!169 l2!953)))))

(assert (= (and start!248756 res!1083291) b!2575523))

(assert (= (and b!2575523 res!1083294) b!2575527))

(assert (= (and b!2575527 res!1083293) b!2575525))

(assert (= (and b!2575525 res!1083292) b!2575528))

(assert (= (and start!248756 ((_ is Cons!29618) l1!976)) b!2575526))

(assert (= (and start!248756 ((_ is Cons!29618) l2!953)) b!2575524))

(declare-fun m!2910541 () Bool)

(assert (=> start!248756 m!2910541))

(declare-fun m!2910543 () Bool)

(assert (=> b!2575525 m!2910543))

(declare-fun m!2910545 () Bool)

(assert (=> b!2575527 m!2910545))

(declare-fun m!2910547 () Bool)

(assert (=> b!2575528 m!2910547))

(declare-fun m!2910549 () Bool)

(assert (=> b!2575528 m!2910549))

(check-sat (not start!248756) (not b!2575526) (not b!2575527) (not b!2575525) (not b!2575528) (not b!2575524) tp_is_empty!13161)
(check-sat)
(get-model)

(declare-fun b!2575541 () Bool)

(declare-fun e!1625068 () Bool)

(assert (=> b!2575541 (= e!1625068 (consecutiveSubseq!6 (t!211417 l1!976) (t!211417 (t!211417 l2!953))))))

(declare-fun b!2575539 () Bool)

(declare-fun e!1625067 () Bool)

(assert (=> b!2575539 (= e!1625067 e!1625068)))

(declare-fun res!1083301 () Bool)

(declare-fun call!166618 () Bool)

(assert (=> b!2575539 (= res!1083301 call!166618)))

(assert (=> b!2575539 (=> res!1083301 e!1625068)))

(declare-fun d!728458 () Bool)

(declare-fun c!414842 () Bool)

(assert (=> d!728458 (= c!414842 ((_ is Cons!29618) (t!211417 l2!953)))))

(assert (=> d!728458 (= (consecutiveSubseq!6 (t!211417 l1!976) (t!211417 l2!953)) e!1625067)))

(declare-fun b!2575540 () Bool)

(assert (=> b!2575540 (= e!1625067 call!166618)))

(declare-fun bm!166613 () Bool)

(assert (=> bm!166613 (= call!166618 (consecutiveSubseqAtHead!5 (t!211417 l1!976) (t!211417 l2!953)))))

(assert (= (and d!728458 c!414842) b!2575539))

(assert (= (and d!728458 (not c!414842)) b!2575540))

(assert (= (and b!2575539 (not res!1083301)) b!2575541))

(assert (= (or b!2575539 b!2575540) bm!166613))

(declare-fun m!2910551 () Bool)

(assert (=> b!2575541 m!2910551))

(declare-fun m!2910553 () Bool)

(assert (=> bm!166613 m!2910553))

(assert (=> b!2575525 d!728458))

(declare-fun d!728462 () Bool)

(declare-fun lt!906565 () Int)

(assert (=> d!728462 (>= lt!906565 0)))

(declare-fun e!1625077 () Int)

(assert (=> d!728462 (= lt!906565 e!1625077)))

(declare-fun c!414847 () Bool)

(assert (=> d!728462 (= c!414847 ((_ is Nil!29618) (t!211417 l2!953)))))

(assert (=> d!728462 (= (ListPrimitiveSize!169 (t!211417 l2!953)) lt!906565)))

(declare-fun b!2575554 () Bool)

(assert (=> b!2575554 (= e!1625077 0)))

(declare-fun b!2575555 () Bool)

(assert (=> b!2575555 (= e!1625077 (+ 1 (ListPrimitiveSize!169 (t!211417 (t!211417 l2!953)))))))

(assert (= (and d!728462 c!414847) b!2575554))

(assert (= (and d!728462 (not c!414847)) b!2575555))

(declare-fun m!2910557 () Bool)

(assert (=> b!2575555 m!2910557))

(assert (=> b!2575528 d!728462))

(declare-fun d!728466 () Bool)

(declare-fun lt!906566 () Int)

(assert (=> d!728466 (>= lt!906566 0)))

(declare-fun e!1625078 () Int)

(assert (=> d!728466 (= lt!906566 e!1625078)))

(declare-fun c!414848 () Bool)

(assert (=> d!728466 (= c!414848 ((_ is Nil!29618) l2!953))))

(assert (=> d!728466 (= (ListPrimitiveSize!169 l2!953) lt!906566)))

(declare-fun b!2575556 () Bool)

(assert (=> b!2575556 (= e!1625078 0)))

(declare-fun b!2575557 () Bool)

(assert (=> b!2575557 (= e!1625078 (+ 1 (ListPrimitiveSize!169 (t!211417 l2!953))))))

(assert (= (and d!728466 c!414848) b!2575556))

(assert (= (and d!728466 (not c!414848)) b!2575557))

(assert (=> b!2575557 m!2910547))

(assert (=> b!2575528 d!728466))

(declare-fun b!2575560 () Bool)

(declare-fun e!1625080 () Bool)

(assert (=> b!2575560 (= e!1625080 (consecutiveSubseq!6 l1!976 (t!211417 l2!953)))))

(declare-fun b!2575558 () Bool)

(declare-fun e!1625079 () Bool)

(assert (=> b!2575558 (= e!1625079 e!1625080)))

(declare-fun res!1083306 () Bool)

(declare-fun call!166621 () Bool)

(assert (=> b!2575558 (= res!1083306 call!166621)))

(assert (=> b!2575558 (=> res!1083306 e!1625080)))

(declare-fun d!728468 () Bool)

(declare-fun c!414849 () Bool)

(assert (=> d!728468 (= c!414849 ((_ is Cons!29618) l2!953))))

(assert (=> d!728468 (= (consecutiveSubseq!6 l1!976 l2!953) e!1625079)))

(declare-fun b!2575559 () Bool)

(assert (=> b!2575559 (= e!1625079 call!166621)))

(declare-fun bm!166616 () Bool)

(assert (=> bm!166616 (= call!166621 (consecutiveSubseqAtHead!5 l1!976 l2!953))))

(assert (= (and d!728468 c!414849) b!2575558))

(assert (= (and d!728468 (not c!414849)) b!2575559))

(assert (= (and b!2575558 (not res!1083306)) b!2575560))

(assert (= (or b!2575558 b!2575559) bm!166616))

(declare-fun m!2910559 () Bool)

(assert (=> b!2575560 m!2910559))

(assert (=> bm!166616 m!2910545))

(assert (=> start!248756 d!728468))

(declare-fun d!728470 () Bool)

(declare-fun res!1083313 () Bool)

(declare-fun e!1625091 () Bool)

(assert (=> d!728470 (=> res!1083313 e!1625091)))

(assert (=> d!728470 (= res!1083313 ((_ is Nil!29618) l1!976))))

(assert (=> d!728470 (= (consecutiveSubseqAtHead!5 l1!976 l2!953) e!1625091)))

(declare-fun b!2575575 () Bool)

(declare-fun e!1625092 () Bool)

(assert (=> b!2575575 (= e!1625091 e!1625092)))

(declare-fun res!1083314 () Bool)

(assert (=> b!2575575 (=> (not res!1083314) (not e!1625092))))

(assert (=> b!2575575 (= res!1083314 (and ((_ is Cons!29618) l2!953) (= (h!35038 l1!976) (h!35038 l2!953))))))

(declare-fun b!2575576 () Bool)

(assert (=> b!2575576 (= e!1625092 (consecutiveSubseqAtHead!5 (t!211417 l1!976) (t!211417 l2!953)))))

(assert (= (and d!728470 (not res!1083313)) b!2575575))

(assert (= (and b!2575575 res!1083314) b!2575576))

(assert (=> b!2575576 m!2910553))

(assert (=> b!2575527 d!728470))

(declare-fun b!2575583 () Bool)

(declare-fun e!1625096 () Bool)

(declare-fun tp!818761 () Bool)

(assert (=> b!2575583 (= e!1625096 (and tp_is_empty!13161 tp!818761))))

(assert (=> b!2575524 (= tp!818757 e!1625096)))

(assert (= (and b!2575524 ((_ is Cons!29618) (t!211417 l2!953))) b!2575583))

(declare-fun b!2575586 () Bool)

(declare-fun e!1625098 () Bool)

(declare-fun tp!818762 () Bool)

(assert (=> b!2575586 (= e!1625098 (and tp_is_empty!13161 tp!818762))))

(assert (=> b!2575526 (= tp!818758 e!1625098)))

(assert (= (and b!2575526 ((_ is Cons!29618) (t!211417 l1!976))) b!2575586))

(check-sat (not b!2575560) tp_is_empty!13161 (not b!2575576) (not bm!166613) (not bm!166616) (not b!2575583) (not b!2575557) (not b!2575555) (not b!2575586) (not b!2575541))
(check-sat)
