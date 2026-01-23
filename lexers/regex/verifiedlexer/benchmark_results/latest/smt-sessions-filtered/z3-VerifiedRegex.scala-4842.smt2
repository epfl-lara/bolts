; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248804 () Bool)

(assert start!248804)

(declare-fun b!2575828 () Bool)

(declare-fun e!1625271 () Bool)

(declare-fun tp_is_empty!13173 () Bool)

(declare-fun tp!818817 () Bool)

(assert (=> b!2575828 (= e!1625271 (and tp_is_empty!13173 tp!818817))))

(declare-fun b!2575829 () Bool)

(declare-fun res!1083463 () Bool)

(declare-fun e!1625270 () Bool)

(assert (=> b!2575829 (=> (not res!1083463) (not e!1625270))))

(declare-datatypes ((B!1925 0))(
  ( (B!1926 (val!9390 Int)) )
))
(declare-datatypes ((List!29724 0))(
  ( (Nil!29624) (Cons!29624 (h!35044 B!1925) (t!211423 List!29724)) )
))
(declare-fun l1!976 () List!29724)

(declare-fun l2!953 () List!29724)

(get-info :version)

(assert (=> b!2575829 (= res!1083463 (and ((_ is Cons!29624) l1!976) ((_ is Cons!29624) l2!953)))))

(declare-fun b!2575830 () Bool)

(declare-fun res!1083461 () Bool)

(assert (=> b!2575830 (=> (not res!1083461) (not e!1625270))))

(declare-fun consecutiveSubseq!12 (List!29724 List!29724) Bool)

(assert (=> b!2575830 (= res!1083461 (consecutiveSubseq!12 l1!976 (t!211423 l2!953)))))

(declare-fun b!2575831 () Bool)

(declare-fun res!1083462 () Bool)

(assert (=> b!2575831 (=> (not res!1083462) (not e!1625270))))

(declare-fun e!1625269 () Bool)

(assert (=> b!2575831 (= res!1083462 e!1625269)))

(declare-fun res!1083460 () Bool)

(assert (=> b!2575831 (=> res!1083460 e!1625269)))

(assert (=> b!2575831 (= res!1083460 (or (not ((_ is Cons!29624) l1!976)) (not ((_ is Cons!29624) l2!953))))))

(declare-fun b!2575832 () Bool)

(declare-fun consecutiveSubseqAtHead!11 (List!29724 List!29724) Bool)

(assert (=> b!2575832 (= e!1625269 (not (consecutiveSubseqAtHead!11 l1!976 l2!953)))))

(declare-fun res!1083464 () Bool)

(assert (=> start!248804 (=> (not res!1083464) (not e!1625270))))

(assert (=> start!248804 (= res!1083464 (consecutiveSubseq!12 l1!976 l2!953))))

(assert (=> start!248804 e!1625270))

(assert (=> start!248804 e!1625271))

(declare-fun e!1625272 () Bool)

(assert (=> start!248804 e!1625272))

(declare-fun b!2575833 () Bool)

(declare-fun tp!818818 () Bool)

(assert (=> b!2575833 (= e!1625272 (and tp_is_empty!13173 tp!818818))))

(declare-fun b!2575834 () Bool)

(declare-fun ListPrimitiveSize!171 (List!29724) Int)

(assert (=> b!2575834 (= e!1625270 (>= (ListPrimitiveSize!171 (t!211423 l2!953)) (ListPrimitiveSize!171 l2!953)))))

(assert (= (and start!248804 res!1083464) b!2575831))

(assert (= (and b!2575831 (not res!1083460)) b!2575832))

(assert (= (and b!2575831 res!1083462) b!2575829))

(assert (= (and b!2575829 res!1083463) b!2575830))

(assert (= (and b!2575830 res!1083461) b!2575834))

(assert (= (and start!248804 ((_ is Cons!29624) l1!976)) b!2575828))

(assert (= (and start!248804 ((_ is Cons!29624) l2!953)) b!2575833))

(declare-fun m!2910653 () Bool)

(assert (=> b!2575830 m!2910653))

(declare-fun m!2910655 () Bool)

(assert (=> b!2575832 m!2910655))

(declare-fun m!2910657 () Bool)

(assert (=> start!248804 m!2910657))

(declare-fun m!2910659 () Bool)

(assert (=> b!2575834 m!2910659))

(declare-fun m!2910661 () Bool)

(assert (=> b!2575834 m!2910661))

(check-sat (not b!2575828) (not b!2575834) (not b!2575830) (not b!2575832) tp_is_empty!13173 (not start!248804) (not b!2575833))
(check-sat)
(get-model)

(declare-fun d!728519 () Bool)

(declare-fun res!1083472 () Bool)

(declare-fun e!1625283 () Bool)

(assert (=> d!728519 (=> res!1083472 e!1625283)))

(assert (=> d!728519 (= res!1083472 ((_ is Nil!29624) l1!976))))

(assert (=> d!728519 (= (consecutiveSubseqAtHead!11 l1!976 l2!953) e!1625283)))

(declare-fun b!2575848 () Bool)

(declare-fun e!1625284 () Bool)

(assert (=> b!2575848 (= e!1625283 e!1625284)))

(declare-fun res!1083473 () Bool)

(assert (=> b!2575848 (=> (not res!1083473) (not e!1625284))))

(assert (=> b!2575848 (= res!1083473 (and ((_ is Cons!29624) l2!953) (= (h!35044 l1!976) (h!35044 l2!953))))))

(declare-fun b!2575849 () Bool)

(assert (=> b!2575849 (= e!1625284 (consecutiveSubseqAtHead!11 (t!211423 l1!976) (t!211423 l2!953)))))

(assert (= (and d!728519 (not res!1083472)) b!2575848))

(assert (= (and b!2575848 res!1083473) b!2575849))

(declare-fun m!2910663 () Bool)

(assert (=> b!2575849 m!2910663))

(assert (=> b!2575832 d!728519))

(declare-fun bm!166640 () Bool)

(declare-fun call!166645 () Bool)

(assert (=> bm!166640 (= call!166645 (consecutiveSubseqAtHead!11 l1!976 l2!953))))

(declare-fun d!728523 () Bool)

(declare-fun c!414877 () Bool)

(assert (=> d!728523 (= c!414877 ((_ is Cons!29624) l2!953))))

(declare-fun e!1625295 () Bool)

(assert (=> d!728523 (= (consecutiveSubseq!12 l1!976 l2!953) e!1625295)))

(declare-fun b!2575864 () Bool)

(declare-fun e!1625296 () Bool)

(assert (=> b!2575864 (= e!1625296 (consecutiveSubseq!12 l1!976 (t!211423 l2!953)))))

(declare-fun b!2575862 () Bool)

(assert (=> b!2575862 (= e!1625295 e!1625296)))

(declare-fun res!1083482 () Bool)

(assert (=> b!2575862 (= res!1083482 call!166645)))

(assert (=> b!2575862 (=> res!1083482 e!1625296)))

(declare-fun b!2575863 () Bool)

(assert (=> b!2575863 (= e!1625295 call!166645)))

(assert (= (and d!728523 c!414877) b!2575862))

(assert (= (and d!728523 (not c!414877)) b!2575863))

(assert (= (and b!2575862 (not res!1083482)) b!2575864))

(assert (= (or b!2575862 b!2575863) bm!166640))

(assert (=> bm!166640 m!2910655))

(assert (=> b!2575864 m!2910653))

(assert (=> start!248804 d!728523))

(declare-fun d!728527 () Bool)

(declare-fun lt!906589 () Int)

(assert (=> d!728527 (>= lt!906589 0)))

(declare-fun e!1625307 () Int)

(assert (=> d!728527 (= lt!906589 e!1625307)))

(declare-fun c!414885 () Bool)

(assert (=> d!728527 (= c!414885 ((_ is Nil!29624) (t!211423 l2!953)))))

(assert (=> d!728527 (= (ListPrimitiveSize!171 (t!211423 l2!953)) lt!906589)))

(declare-fun b!2575884 () Bool)

(assert (=> b!2575884 (= e!1625307 0)))

(declare-fun b!2575885 () Bool)

(assert (=> b!2575885 (= e!1625307 (+ 1 (ListPrimitiveSize!171 (t!211423 (t!211423 l2!953)))))))

(assert (= (and d!728527 c!414885) b!2575884))

(assert (= (and d!728527 (not c!414885)) b!2575885))

(declare-fun m!2910673 () Bool)

(assert (=> b!2575885 m!2910673))

(assert (=> b!2575834 d!728527))

(declare-fun d!728533 () Bool)

(declare-fun lt!906590 () Int)

(assert (=> d!728533 (>= lt!906590 0)))

(declare-fun e!1625310 () Int)

(assert (=> d!728533 (= lt!906590 e!1625310)))

(declare-fun c!414886 () Bool)

(assert (=> d!728533 (= c!414886 ((_ is Nil!29624) l2!953))))

(assert (=> d!728533 (= (ListPrimitiveSize!171 l2!953) lt!906590)))

(declare-fun b!2575888 () Bool)

(assert (=> b!2575888 (= e!1625310 0)))

(declare-fun b!2575889 () Bool)

(assert (=> b!2575889 (= e!1625310 (+ 1 (ListPrimitiveSize!171 (t!211423 l2!953))))))

(assert (= (and d!728533 c!414886) b!2575888))

(assert (= (and d!728533 (not c!414886)) b!2575889))

(assert (=> b!2575889 m!2910659))

(assert (=> b!2575834 d!728533))

(declare-fun bm!166642 () Bool)

(declare-fun call!166647 () Bool)

(assert (=> bm!166642 (= call!166647 (consecutiveSubseqAtHead!11 l1!976 (t!211423 l2!953)))))

(declare-fun d!728535 () Bool)

(declare-fun c!414887 () Bool)

(assert (=> d!728535 (= c!414887 ((_ is Cons!29624) (t!211423 l2!953)))))

(declare-fun e!1625311 () Bool)

(assert (=> d!728535 (= (consecutiveSubseq!12 l1!976 (t!211423 l2!953)) e!1625311)))

(declare-fun b!2575892 () Bool)

(declare-fun e!1625312 () Bool)

(assert (=> b!2575892 (= e!1625312 (consecutiveSubseq!12 l1!976 (t!211423 (t!211423 l2!953))))))

(declare-fun b!2575890 () Bool)

(assert (=> b!2575890 (= e!1625311 e!1625312)))

(declare-fun res!1083484 () Bool)

(assert (=> b!2575890 (= res!1083484 call!166647)))

(assert (=> b!2575890 (=> res!1083484 e!1625312)))

(declare-fun b!2575891 () Bool)

(assert (=> b!2575891 (= e!1625311 call!166647)))

(assert (= (and d!728535 c!414887) b!2575890))

(assert (= (and d!728535 (not c!414887)) b!2575891))

(assert (= (and b!2575890 (not res!1083484)) b!2575892))

(assert (= (or b!2575890 b!2575891) bm!166642))

(declare-fun m!2910675 () Bool)

(assert (=> bm!166642 m!2910675))

(declare-fun m!2910677 () Bool)

(assert (=> b!2575892 m!2910677))

(assert (=> b!2575830 d!728535))

(declare-fun b!2575897 () Bool)

(declare-fun e!1625315 () Bool)

(declare-fun tp!818825 () Bool)

(assert (=> b!2575897 (= e!1625315 (and tp_is_empty!13173 tp!818825))))

(assert (=> b!2575828 (= tp!818817 e!1625315)))

(assert (= (and b!2575828 ((_ is Cons!29624) (t!211423 l1!976))) b!2575897))

(declare-fun b!2575898 () Bool)

(declare-fun e!1625316 () Bool)

(declare-fun tp!818826 () Bool)

(assert (=> b!2575898 (= e!1625316 (and tp_is_empty!13173 tp!818826))))

(assert (=> b!2575833 (= tp!818818 e!1625316)))

(assert (= (and b!2575833 ((_ is Cons!29624) (t!211423 l2!953))) b!2575898))

(check-sat (not b!2575889) tp_is_empty!13173 (not b!2575885) (not bm!166642) (not b!2575892) (not b!2575864) (not b!2575898) (not b!2575849) (not bm!166640) (not b!2575897))
(check-sat)
