; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248790 () Bool)

(assert start!248790)

(declare-fun b!2575721 () Bool)

(declare-fun e!1625198 () Bool)

(declare-datatypes ((B!1919 0))(
  ( (B!1920 (val!9387 Int)) )
))
(declare-datatypes ((List!29721 0))(
  ( (Nil!29621) (Cons!29621 (h!35041 B!1919) (t!211420 List!29721)) )
))
(declare-fun l1!976 () List!29721)

(declare-fun l2!953 () List!29721)

(declare-fun consecutiveSubseqAtHead!8 (List!29721 List!29721) Bool)

(assert (=> b!2575721 (= e!1625198 (not (consecutiveSubseqAtHead!8 l1!976 l2!953)))))

(declare-fun res!1083399 () Bool)

(declare-fun e!1625197 () Bool)

(assert (=> start!248790 (=> (not res!1083399) (not e!1625197))))

(declare-fun consecutiveSubseq!9 (List!29721 List!29721) Bool)

(assert (=> start!248790 (= res!1083399 (consecutiveSubseq!9 l1!976 l2!953))))

(assert (=> start!248790 e!1625197))

(declare-fun e!1625199 () Bool)

(assert (=> start!248790 e!1625199))

(declare-fun e!1625200 () Bool)

(assert (=> start!248790 e!1625200))

(declare-fun b!2575722 () Bool)

(declare-fun tp_is_empty!13167 () Bool)

(declare-fun tp!818792 () Bool)

(assert (=> b!2575722 (= e!1625200 (and tp_is_empty!13167 tp!818792))))

(declare-fun b!2575723 () Bool)

(declare-fun tp!818791 () Bool)

(assert (=> b!2575723 (= e!1625199 (and tp_is_empty!13167 tp!818791))))

(declare-fun b!2575724 () Bool)

(assert (=> b!2575724 (= e!1625197 (not (consecutiveSubseq!9 l1!976 (t!211420 l2!953))))))

(declare-fun b!2575725 () Bool)

(declare-fun res!1083400 () Bool)

(assert (=> b!2575725 (=> (not res!1083400) (not e!1625197))))

(assert (=> b!2575725 (= res!1083400 (and (is-Cons!29621 l1!976) (is-Cons!29621 l2!953)))))

(declare-fun b!2575726 () Bool)

(declare-fun res!1083401 () Bool)

(assert (=> b!2575726 (=> (not res!1083401) (not e!1625197))))

(assert (=> b!2575726 (= res!1083401 e!1625198)))

(declare-fun res!1083402 () Bool)

(assert (=> b!2575726 (=> res!1083402 e!1625198)))

(assert (=> b!2575726 (= res!1083402 (or (not (is-Cons!29621 l1!976)) (not (is-Cons!29621 l2!953))))))

(assert (= (and start!248790 res!1083399) b!2575726))

(assert (= (and b!2575726 (not res!1083402)) b!2575721))

(assert (= (and b!2575726 res!1083401) b!2575725))

(assert (= (and b!2575725 res!1083400) b!2575724))

(assert (= (and start!248790 (is-Cons!29621 l1!976)) b!2575723))

(assert (= (and start!248790 (is-Cons!29621 l2!953)) b!2575722))

(declare-fun m!2910619 () Bool)

(assert (=> b!2575721 m!2910619))

(declare-fun m!2910621 () Bool)

(assert (=> start!248790 m!2910621))

(declare-fun m!2910623 () Bool)

(assert (=> b!2575724 m!2910623))

(push 1)

(assert (not b!2575723))

(assert tp_is_empty!13167)

(assert (not b!2575724))

(assert (not b!2575722))

(assert (not b!2575721))

(assert (not start!248790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728504 () Bool)

(declare-fun res!1083419 () Bool)

(declare-fun e!1625219 () Bool)

(assert (=> d!728504 (=> res!1083419 e!1625219)))

(assert (=> d!728504 (= res!1083419 (is-Nil!29621 l1!976))))

(assert (=> d!728504 (= (consecutiveSubseqAtHead!8 l1!976 l2!953) e!1625219)))

(declare-fun b!2575753 () Bool)

(declare-fun e!1625220 () Bool)

(assert (=> b!2575753 (= e!1625219 e!1625220)))

(declare-fun res!1083420 () Bool)

(assert (=> b!2575753 (=> (not res!1083420) (not e!1625220))))

(assert (=> b!2575753 (= res!1083420 (and (is-Cons!29621 l2!953) (= (h!35041 l1!976) (h!35041 l2!953))))))

(declare-fun b!2575754 () Bool)

(assert (=> b!2575754 (= e!1625220 (consecutiveSubseqAtHead!8 (t!211420 l1!976) (t!211420 l2!953)))))

(assert (= (and d!728504 (not res!1083419)) b!2575753))

(assert (= (and b!2575753 res!1083420) b!2575754))

(declare-fun m!2910631 () Bool)

(assert (=> b!2575754 m!2910631))

(assert (=> b!2575721 d!728504))

(declare-fun b!2575763 () Bool)

(declare-fun e!1625227 () Bool)

(declare-fun e!1625228 () Bool)

(assert (=> b!2575763 (= e!1625227 e!1625228)))

(declare-fun res!1083425 () Bool)

(declare-fun call!166636 () Bool)

(assert (=> b!2575763 (= res!1083425 call!166636)))

(assert (=> b!2575763 (=> res!1083425 e!1625228)))

(declare-fun b!2575764 () Bool)

(assert (=> b!2575764 (= e!1625227 call!166636)))

(declare-fun b!2575765 () Bool)

(assert (=> b!2575765 (= e!1625228 (consecutiveSubseq!9 l1!976 (t!211420 l2!953)))))

(declare-fun d!728508 () Bool)

(declare-fun c!414868 () Bool)

(assert (=> d!728508 (= c!414868 (is-Cons!29621 l2!953))))

(assert (=> d!728508 (= (consecutiveSubseq!9 l1!976 l2!953) e!1625227)))

(declare-fun bm!166631 () Bool)

(assert (=> bm!166631 (= call!166636 (consecutiveSubseqAtHead!8 l1!976 l2!953))))

(assert (= (and d!728508 c!414868) b!2575763))

(assert (= (and d!728508 (not c!414868)) b!2575764))

(assert (= (and b!2575763 (not res!1083425)) b!2575765))

(assert (= (or b!2575763 b!2575764) bm!166631))

(assert (=> b!2575765 m!2910623))

(assert (=> bm!166631 m!2910619))

(assert (=> start!248790 d!728508))

(declare-fun b!2575769 () Bool)

(declare-fun e!1625231 () Bool)

(declare-fun e!1625232 () Bool)

(assert (=> b!2575769 (= e!1625231 e!1625232)))

(declare-fun res!1083427 () Bool)

(declare-fun call!166638 () Bool)

(assert (=> b!2575769 (= res!1083427 call!166638)))

(assert (=> b!2575769 (=> res!1083427 e!1625232)))

(declare-fun b!2575770 () Bool)

(assert (=> b!2575770 (= e!1625231 call!166638)))

(declare-fun b!2575771 () Bool)

(assert (=> b!2575771 (= e!1625232 (consecutiveSubseq!9 l1!976 (t!211420 (t!211420 l2!953))))))

(declare-fun d!728510 () Bool)

(declare-fun c!414870 () Bool)

(assert (=> d!728510 (= c!414870 (is-Cons!29621 (t!211420 l2!953)))))

(assert (=> d!728510 (= (consecutiveSubseq!9 l1!976 (t!211420 l2!953)) e!1625231)))

(declare-fun bm!166633 () Bool)

(assert (=> bm!166633 (= call!166638 (consecutiveSubseqAtHead!8 l1!976 (t!211420 l2!953)))))

(assert (= (and d!728510 c!414870) b!2575769))

(assert (= (and d!728510 (not c!414870)) b!2575770))

(assert (= (and b!2575769 (not res!1083427)) b!2575771))

(assert (= (or b!2575769 b!2575770) bm!166633))

(declare-fun m!2910637 () Bool)

(assert (=> b!2575771 m!2910637))

(declare-fun m!2910639 () Bool)

(assert (=> bm!166633 m!2910639))

(assert (=> b!2575724 d!728510))

(declare-fun b!2575779 () Bool)

(declare-fun e!1625237 () Bool)

(declare-fun tp!818801 () Bool)

(assert (=> b!2575779 (= e!1625237 (and tp_is_empty!13167 tp!818801))))

(assert (=> b!2575722 (= tp!818792 e!1625237)))

(assert (= (and b!2575722 (is-Cons!29621 (t!211420 l2!953))) b!2575779))

(declare-fun b!2575780 () Bool)

(declare-fun e!1625238 () Bool)

(declare-fun tp!818802 () Bool)

(assert (=> b!2575780 (= e!1625238 (and tp_is_empty!13167 tp!818802))))

(assert (=> b!2575723 (= tp!818791 e!1625238)))

(assert (= (and b!2575723 (is-Cons!29621 (t!211420 l1!976))) b!2575780))

(push 1)

(assert (not b!2575779))

(assert (not bm!166633))

(assert (not b!2575771))

(assert (not b!2575780))

(assert (not bm!166631))

(assert (not b!2575765))

(assert tp_is_empty!13167)

(assert (not b!2575754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

