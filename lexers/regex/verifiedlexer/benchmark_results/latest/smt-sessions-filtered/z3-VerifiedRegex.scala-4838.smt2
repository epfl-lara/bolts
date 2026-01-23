; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248748 () Bool)

(assert start!248748)

(declare-fun res!1083258 () Bool)

(declare-fun e!1625022 () Bool)

(assert (=> start!248748 (=> (not res!1083258) (not e!1625022))))

(declare-datatypes ((B!1909 0))(
  ( (B!1910 (val!9382 Int)) )
))
(declare-datatypes ((List!29716 0))(
  ( (Nil!29616) (Cons!29616 (h!35036 B!1909) (t!211415 List!29716)) )
))
(declare-fun l1!976 () List!29716)

(declare-fun l2!953 () List!29716)

(declare-fun consecutiveSubseq!4 (List!29716 List!29716) Bool)

(assert (=> start!248748 (= res!1083258 (consecutiveSubseq!4 l1!976 l2!953))))

(assert (=> start!248748 e!1625022))

(declare-fun e!1625021 () Bool)

(assert (=> start!248748 e!1625021))

(declare-fun e!1625020 () Bool)

(assert (=> start!248748 e!1625020))

(declare-fun b!2575464 () Bool)

(assert (=> b!2575464 (= e!1625022 (not (consecutiveSubseq!4 (t!211415 l1!976) (t!211415 l2!953))))))

(declare-fun b!2575465 () Bool)

(declare-fun res!1083259 () Bool)

(assert (=> b!2575465 (=> (not res!1083259) (not e!1625022))))

(declare-fun consecutiveSubseqAtHead!3 (List!29716 List!29716) Bool)

(assert (=> b!2575465 (= res!1083259 (consecutiveSubseqAtHead!3 l1!976 l2!953))))

(declare-fun b!2575466 () Bool)

(declare-fun tp_is_empty!13157 () Bool)

(declare-fun tp!818741 () Bool)

(assert (=> b!2575466 (= e!1625020 (and tp_is_empty!13157 tp!818741))))

(declare-fun b!2575467 () Bool)

(declare-fun res!1083260 () Bool)

(assert (=> b!2575467 (=> (not res!1083260) (not e!1625022))))

(get-info :version)

(assert (=> b!2575467 (= res!1083260 (and ((_ is Cons!29616) l1!976) ((_ is Cons!29616) l2!953)))))

(declare-fun b!2575468 () Bool)

(declare-fun tp!818742 () Bool)

(assert (=> b!2575468 (= e!1625021 (and tp_is_empty!13157 tp!818742))))

(assert (= (and start!248748 res!1083258) b!2575467))

(assert (= (and b!2575467 res!1083260) b!2575465))

(assert (= (and b!2575465 res!1083259) b!2575464))

(assert (= (and start!248748 ((_ is Cons!29616) l1!976)) b!2575468))

(assert (= (and start!248748 ((_ is Cons!29616) l2!953)) b!2575466))

(declare-fun m!2910519 () Bool)

(assert (=> start!248748 m!2910519))

(declare-fun m!2910521 () Bool)

(assert (=> b!2575464 m!2910521))

(declare-fun m!2910523 () Bool)

(assert (=> b!2575465 m!2910523))

(check-sat (not b!2575468) (not b!2575466) (not b!2575464) (not b!2575465) (not start!248748) tp_is_empty!13157)
(check-sat)
(get-model)

(declare-fun b!2575476 () Bool)

(declare-fun e!1625027 () Bool)

(declare-fun call!166614 () Bool)

(assert (=> b!2575476 (= e!1625027 call!166614)))

(declare-fun b!2575475 () Bool)

(declare-fun e!1625028 () Bool)

(assert (=> b!2575475 (= e!1625027 e!1625028)))

(declare-fun res!1083263 () Bool)

(assert (=> b!2575475 (= res!1083263 call!166614)))

(assert (=> b!2575475 (=> res!1083263 e!1625028)))

(declare-fun b!2575477 () Bool)

(assert (=> b!2575477 (= e!1625028 (consecutiveSubseq!4 l1!976 (t!211415 l2!953)))))

(declare-fun bm!166609 () Bool)

(assert (=> bm!166609 (= call!166614 (consecutiveSubseqAtHead!3 l1!976 l2!953))))

(declare-fun d!728451 () Bool)

(declare-fun c!414838 () Bool)

(assert (=> d!728451 (= c!414838 ((_ is Cons!29616) l2!953))))

(assert (=> d!728451 (= (consecutiveSubseq!4 l1!976 l2!953) e!1625027)))

(assert (= (and d!728451 c!414838) b!2575475))

(assert (= (and d!728451 (not c!414838)) b!2575476))

(assert (= (and b!2575475 (not res!1083263)) b!2575477))

(assert (= (or b!2575475 b!2575476) bm!166609))

(declare-fun m!2910525 () Bool)

(assert (=> b!2575477 m!2910525))

(assert (=> bm!166609 m!2910523))

(assert (=> start!248748 d!728451))

(declare-fun d!728453 () Bool)

(declare-fun res!1083268 () Bool)

(declare-fun e!1625033 () Bool)

(assert (=> d!728453 (=> res!1083268 e!1625033)))

(assert (=> d!728453 (= res!1083268 ((_ is Nil!29616) l1!976))))

(assert (=> d!728453 (= (consecutiveSubseqAtHead!3 l1!976 l2!953) e!1625033)))

(declare-fun b!2575482 () Bool)

(declare-fun e!1625034 () Bool)

(assert (=> b!2575482 (= e!1625033 e!1625034)))

(declare-fun res!1083269 () Bool)

(assert (=> b!2575482 (=> (not res!1083269) (not e!1625034))))

(assert (=> b!2575482 (= res!1083269 (and ((_ is Cons!29616) l2!953) (= (h!35036 l1!976) (h!35036 l2!953))))))

(declare-fun b!2575483 () Bool)

(assert (=> b!2575483 (= e!1625034 (consecutiveSubseqAtHead!3 (t!211415 l1!976) (t!211415 l2!953)))))

(assert (= (and d!728453 (not res!1083268)) b!2575482))

(assert (= (and b!2575482 res!1083269) b!2575483))

(declare-fun m!2910527 () Bool)

(assert (=> b!2575483 m!2910527))

(assert (=> b!2575465 d!728453))

(declare-fun b!2575485 () Bool)

(declare-fun e!1625035 () Bool)

(declare-fun call!166615 () Bool)

(assert (=> b!2575485 (= e!1625035 call!166615)))

(declare-fun b!2575484 () Bool)

(declare-fun e!1625036 () Bool)

(assert (=> b!2575484 (= e!1625035 e!1625036)))

(declare-fun res!1083270 () Bool)

(assert (=> b!2575484 (= res!1083270 call!166615)))

(assert (=> b!2575484 (=> res!1083270 e!1625036)))

(declare-fun b!2575486 () Bool)

(assert (=> b!2575486 (= e!1625036 (consecutiveSubseq!4 (t!211415 l1!976) (t!211415 (t!211415 l2!953))))))

(declare-fun bm!166610 () Bool)

(assert (=> bm!166610 (= call!166615 (consecutiveSubseqAtHead!3 (t!211415 l1!976) (t!211415 l2!953)))))

(declare-fun d!728455 () Bool)

(declare-fun c!414839 () Bool)

(assert (=> d!728455 (= c!414839 ((_ is Cons!29616) (t!211415 l2!953)))))

(assert (=> d!728455 (= (consecutiveSubseq!4 (t!211415 l1!976) (t!211415 l2!953)) e!1625035)))

(assert (= (and d!728455 c!414839) b!2575484))

(assert (= (and d!728455 (not c!414839)) b!2575485))

(assert (= (and b!2575484 (not res!1083270)) b!2575486))

(assert (= (or b!2575484 b!2575485) bm!166610))

(declare-fun m!2910529 () Bool)

(assert (=> b!2575486 m!2910529))

(assert (=> bm!166610 m!2910527))

(assert (=> b!2575464 d!728455))

(declare-fun b!2575491 () Bool)

(declare-fun e!1625039 () Bool)

(declare-fun tp!818745 () Bool)

(assert (=> b!2575491 (= e!1625039 (and tp_is_empty!13157 tp!818745))))

(assert (=> b!2575468 (= tp!818742 e!1625039)))

(assert (= (and b!2575468 ((_ is Cons!29616) (t!211415 l1!976))) b!2575491))

(declare-fun b!2575492 () Bool)

(declare-fun e!1625040 () Bool)

(declare-fun tp!818746 () Bool)

(assert (=> b!2575492 (= e!1625040 (and tp_is_empty!13157 tp!818746))))

(assert (=> b!2575466 (= tp!818741 e!1625040)))

(assert (= (and b!2575466 ((_ is Cons!29616) (t!211415 l2!953))) b!2575492))

(check-sat (not b!2575486) (not b!2575492) (not b!2575491) (not b!2575477) (not bm!166609) (not b!2575483) tp_is_empty!13157 (not bm!166610))
(check-sat)
