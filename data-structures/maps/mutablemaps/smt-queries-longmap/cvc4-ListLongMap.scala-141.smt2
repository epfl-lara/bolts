; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2552 () Bool)

(assert start!2552)

(declare-fun b_free!527 () Bool)

(declare-fun b_next!527 () Bool)

(assert (=> start!2552 (= b_free!527 (not b_next!527))))

(declare-fun tp!2689 () Bool)

(declare-fun b_and!985 () Bool)

(assert (=> start!2552 (= tp!2689 b_and!985)))

(declare-fun res!11790 () Bool)

(declare-fun e!9537 () Bool)

(assert (=> start!2552 (=> (not res!11790) (not e!9537))))

(declare-datatypes ((B!648 0))(
  ( (B!649 (val!422 Int)) )
))
(declare-datatypes ((tuple2!626 0))(
  ( (tuple2!627 (_1!313 (_ BitVec 64)) (_2!313 B!648)) )
))
(declare-datatypes ((List!498 0))(
  ( (Nil!495) (Cons!494 (h!1060 tuple2!626) (t!2948 List!498)) )
))
(declare-datatypes ((ListLongMap!457 0))(
  ( (ListLongMap!458 (toList!244 List!498)) )
))
(declare-fun lm!238 () ListLongMap!457)

(declare-fun p!262 () Int)

(declare-fun forall!127 (List!498 Int) Bool)

(assert (=> start!2552 (= res!11790 (forall!127 (toList!244 lm!238) p!262))))

(assert (=> start!2552 e!9537))

(declare-fun e!9538 () Bool)

(declare-fun inv!834 (ListLongMap!457) Bool)

(assert (=> start!2552 (and (inv!834 lm!238) e!9538)))

(assert (=> start!2552 tp!2689))

(assert (=> start!2552 true))

(declare-fun b!15654 () Bool)

(declare-fun res!11791 () Bool)

(assert (=> b!15654 (=> (not res!11791) (not e!9537))))

(declare-datatypes ((List!499 0))(
  ( (Nil!496) (Cons!495 (h!1061 (_ BitVec 64)) (t!2949 List!499)) )
))
(declare-fun l!1612 () List!499)

(declare-fun isEmpty!137 (List!499) Bool)

(assert (=> b!15654 (= res!11791 (not (isEmpty!137 l!1612)))))

(declare-fun b!15655 () Bool)

(declare-fun --!6 (ListLongMap!457 List!499) ListLongMap!457)

(assert (=> b!15655 (= e!9537 (not (forall!127 (toList!244 (--!6 lm!238 l!1612)) p!262)))))

(declare-fun lt!3886 () ListLongMap!457)

(declare-fun lt!3887 () List!499)

(assert (=> b!15655 (forall!127 (toList!244 (--!6 lt!3886 lt!3887)) p!262)))

(declare-datatypes ((Unit!318 0))(
  ( (Unit!319) )
))
(declare-fun lt!3884 () Unit!318)

(declare-fun removeAllValidProp!4 (ListLongMap!457 List!499 Int) Unit!318)

(assert (=> b!15655 (= lt!3884 (removeAllValidProp!4 lt!3886 lt!3887 p!262))))

(declare-fun tail!64 (List!499) List!499)

(assert (=> b!15655 (= lt!3887 (tail!64 l!1612))))

(assert (=> b!15655 (forall!127 (toList!244 lt!3886) p!262)))

(declare-fun lt!3888 () (_ BitVec 64))

(declare-fun -!26 (ListLongMap!457 (_ BitVec 64)) ListLongMap!457)

(assert (=> b!15655 (= lt!3886 (-!26 lm!238 lt!3888))))

(declare-fun lt!3885 () Unit!318)

(declare-fun removeValidProp!19 (ListLongMap!457 Int (_ BitVec 64)) Unit!318)

(assert (=> b!15655 (= lt!3885 (removeValidProp!19 lm!238 p!262 lt!3888))))

(declare-fun head!817 (List!499) (_ BitVec 64))

(assert (=> b!15655 (= lt!3888 (head!817 l!1612))))

(declare-fun b!15656 () Bool)

(declare-fun tp!2690 () Bool)

(assert (=> b!15656 (= e!9538 tp!2690)))

(assert (= (and start!2552 res!11790) b!15654))

(assert (= (and b!15654 res!11791) b!15655))

(assert (= start!2552 b!15656))

(declare-fun m!10643 () Bool)

(assert (=> start!2552 m!10643))

(declare-fun m!10645 () Bool)

(assert (=> start!2552 m!10645))

(declare-fun m!10647 () Bool)

(assert (=> b!15654 m!10647))

(declare-fun m!10649 () Bool)

(assert (=> b!15655 m!10649))

(declare-fun m!10651 () Bool)

(assert (=> b!15655 m!10651))

(declare-fun m!10653 () Bool)

(assert (=> b!15655 m!10653))

(declare-fun m!10655 () Bool)

(assert (=> b!15655 m!10655))

(declare-fun m!10657 () Bool)

(assert (=> b!15655 m!10657))

(declare-fun m!10659 () Bool)

(assert (=> b!15655 m!10659))

(declare-fun m!10661 () Bool)

(assert (=> b!15655 m!10661))

(declare-fun m!10663 () Bool)

(assert (=> b!15655 m!10663))

(declare-fun m!10665 () Bool)

(assert (=> b!15655 m!10665))

(declare-fun m!10667 () Bool)

(assert (=> b!15655 m!10667))

(push 1)

(assert (not start!2552))

(assert (not b_next!527))

(assert (not b!15655))

(assert (not b!15656))

(assert (not b!15654))

(assert b_and!985)

(check-sat)

(pop 1)

(push 1)

(assert b_and!985)

(assert (not b_next!527))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2747 () Bool)

(declare-fun res!11802 () Bool)

(declare-fun e!9549 () Bool)

(assert (=> d!2747 (=> res!11802 e!9549)))

(assert (=> d!2747 (= res!11802 (is-Nil!495 (toList!244 lm!238)))))

(assert (=> d!2747 (= (forall!127 (toList!244 lm!238) p!262) e!9549)))

(declare-fun b!15667 () Bool)

(declare-fun e!9550 () Bool)

(assert (=> b!15667 (= e!9549 e!9550)))

(declare-fun res!11803 () Bool)

(assert (=> b!15667 (=> (not res!11803) (not e!9550))))

(declare-fun dynLambda!113 (Int tuple2!626) Bool)

(assert (=> b!15667 (= res!11803 (dynLambda!113 p!262 (h!1060 (toList!244 lm!238))))))

(declare-fun b!15668 () Bool)

(assert (=> b!15668 (= e!9550 (forall!127 (t!2948 (toList!244 lm!238)) p!262))))

(assert (= (and d!2747 (not res!11802)) b!15667))

(assert (= (and b!15667 res!11803) b!15668))

(declare-fun b_lambda!1069 () Bool)

(assert (=> (not b_lambda!1069) (not b!15667)))

(declare-fun t!2953 () Bool)

(declare-fun tb!443 () Bool)

(assert (=> (and start!2552 (= p!262 p!262) t!2953) tb!443))

(declare-fun result!779 () Bool)

(assert (=> tb!443 (= result!779 true)))

(assert (=> b!15667 t!2953))

(declare-fun b_and!989 () Bool)

(assert (= b_and!985 (and (=> t!2953 result!779) b_and!989)))

(declare-fun m!10673 () Bool)

(assert (=> b!15667 m!10673))

(declare-fun m!10675 () Bool)

(assert (=> b!15668 m!10675))

(assert (=> start!2552 d!2747))

(declare-fun d!2753 () Bool)

(declare-fun isStrictlySorted!148 (List!498) Bool)

(assert (=> d!2753 (= (inv!834 lm!238) (isStrictlySorted!148 (toList!244 lm!238)))))

(declare-fun bs!702 () Bool)

(assert (= bs!702 d!2753))

(declare-fun m!10683 () Bool)

(assert (=> bs!702 m!10683))

(assert (=> start!2552 d!2753))

(declare-fun d!2761 () Bool)

(assert (=> d!2761 (= (isEmpty!137 l!1612) (is-Nil!496 l!1612))))

(assert (=> b!15654 d!2761))

(declare-fun d!2763 () Bool)

(assert (=> d!2763 (= (tail!64 l!1612) (t!2949 l!1612))))

(assert (=> b!15655 d!2763))

(declare-fun d!2769 () Bool)

(declare-fun c!1480 () Bool)

(assert (=> d!2769 (= c!1480 (is-Nil!496 l!1612))))

(declare-fun e!9564 () ListLongMap!457)

(assert (=> d!2769 (= (--!6 lm!238 l!1612) e!9564)))

(declare-fun b!15689 () Bool)

(assert (=> b!15689 (= e!9564 lm!238)))

(declare-fun b!15690 () Bool)

(assert (=> b!15690 (= e!9564 (--!6 (-!26 lm!238 (h!1061 l!1612)) (t!2949 l!1612)))))

(assert (= (and d!2769 c!1480) b!15689))

(assert (= (and d!2769 (not c!1480)) b!15690))

(declare-fun m!10691 () Bool)

(assert (=> b!15690 m!10691))

(assert (=> b!15690 m!10691))

(declare-fun m!10693 () Bool)

(assert (=> b!15690 m!10693))

(assert (=> b!15655 d!2769))

(declare-fun d!2773 () Bool)

(declare-fun lt!3896 () ListLongMap!457)

(declare-fun contains!191 (ListLongMap!457 (_ BitVec 64)) Bool)

(assert (=> d!2773 (not (contains!191 lt!3896 lt!3888))))

(declare-fun removeStrictlySorted!15 (List!498 (_ BitVec 64)) List!498)

(assert (=> d!2773 (= lt!3896 (ListLongMap!458 (removeStrictlySorted!15 (toList!244 lm!238) lt!3888)))))

(assert (=> d!2773 (= (-!26 lm!238 lt!3888) lt!3896)))

(declare-fun bs!705 () Bool)

(assert (= bs!705 d!2773))

(declare-fun m!10707 () Bool)

(assert (=> bs!705 m!10707))

(declare-fun m!10709 () Bool)

(assert (=> bs!705 m!10709))

(assert (=> b!15655 d!2773))

(declare-fun d!2781 () Bool)

(assert (=> d!2781 (= (head!817 l!1612) (h!1061 l!1612))))

(assert (=> b!15655 d!2781))

(declare-fun d!2785 () Bool)

(declare-fun c!1483 () Bool)

(assert (=> d!2785 (= c!1483 (is-Nil!496 lt!3887))))

(declare-fun e!9569 () ListLongMap!457)

(assert (=> d!2785 (= (--!6 lt!3886 lt!3887) e!9569)))

(declare-fun b!15697 () Bool)

(assert (=> b!15697 (= e!9569 lt!3886)))

(declare-fun b!15698 () Bool)

(assert (=> b!15698 (= e!9569 (--!6 (-!26 lt!3886 (h!1061 lt!3887)) (t!2949 lt!3887)))))

(assert (= (and d!2785 c!1483) b!15697))

(assert (= (and d!2785 (not c!1483)) b!15698))

(declare-fun m!10719 () Bool)

(assert (=> b!15698 m!10719))

(assert (=> b!15698 m!10719))

(declare-fun m!10721 () Bool)

(assert (=> b!15698 m!10721))

(assert (=> b!15655 d!2785))

(declare-fun d!2789 () Bool)

(declare-fun res!11814 () Bool)

(declare-fun e!9572 () Bool)

(assert (=> d!2789 (=> res!11814 e!9572)))

(assert (=> d!2789 (= res!11814 (is-Nil!495 (toList!244 lt!3886)))))

(assert (=> d!2789 (= (forall!127 (toList!244 lt!3886) p!262) e!9572)))

(declare-fun b!15701 () Bool)

(declare-fun e!9573 () Bool)

(assert (=> b!15701 (= e!9572 e!9573)))

(declare-fun res!11815 () Bool)

(assert (=> b!15701 (=> (not res!11815) (not e!9573))))

(assert (=> b!15701 (= res!11815 (dynLambda!113 p!262 (h!1060 (toList!244 lt!3886))))))

(declare-fun b!15702 () Bool)

(assert (=> b!15702 (= e!9573 (forall!127 (t!2948 (toList!244 lt!3886)) p!262))))

(assert (= (and d!2789 (not res!11814)) b!15701))

(assert (= (and b!15701 res!11815) b!15702))

(declare-fun b_lambda!1077 () Bool)

(assert (=> (not b_lambda!1077) (not b!15701)))

(declare-fun t!2961 () Bool)

(declare-fun tb!451 () Bool)

(assert (=> (and start!2552 (= p!262 p!262) t!2961) tb!451))

(declare-fun result!787 () Bool)

(assert (=> tb!451 (= result!787 true)))

(assert (=> b!15701 t!2961))

(declare-fun b_and!997 () Bool)

(assert (= b_and!989 (and (=> t!2961 result!787) b_and!997)))

(declare-fun m!10731 () Bool)

(assert (=> b!15701 m!10731))

(declare-fun m!10733 () Bool)

(assert (=> b!15702 m!10733))

(assert (=> b!15655 d!2789))

(declare-fun d!2797 () Bool)

(declare-fun res!11816 () Bool)

(declare-fun e!9574 () Bool)

(assert (=> d!2797 (=> res!11816 e!9574)))

(assert (=> d!2797 (= res!11816 (is-Nil!495 (toList!244 (--!6 lt!3886 lt!3887))))))

(assert (=> d!2797 (= (forall!127 (toList!244 (--!6 lt!3886 lt!3887)) p!262) e!9574)))

(declare-fun b!15703 () Bool)

(declare-fun e!9575 () Bool)

(assert (=> b!15703 (= e!9574 e!9575)))

(declare-fun res!11817 () Bool)

(assert (=> b!15703 (=> (not res!11817) (not e!9575))))

(assert (=> b!15703 (= res!11817 (dynLambda!113 p!262 (h!1060 (toList!244 (--!6 lt!3886 lt!3887)))))))

(declare-fun b!15704 () Bool)

(assert (=> b!15704 (= e!9575 (forall!127 (t!2948 (toList!244 (--!6 lt!3886 lt!3887))) p!262))))

(assert (= (and d!2797 (not res!11816)) b!15703))

(assert (= (and b!15703 res!11817) b!15704))

(declare-fun b_lambda!1079 () Bool)

(assert (=> (not b_lambda!1079) (not b!15703)))

(declare-fun t!2963 () Bool)

(declare-fun tb!453 () Bool)

(assert (=> (and start!2552 (= p!262 p!262) t!2963) tb!453))

(declare-fun result!789 () Bool)

(assert (=> tb!453 (= result!789 true)))

(assert (=> b!15703 t!2963))

(declare-fun b_and!999 () Bool)

(assert (= b_and!997 (and (=> t!2963 result!789) b_and!999)))

(declare-fun m!10735 () Bool)

(assert (=> b!15703 m!10735))

(declare-fun m!10737 () Bool)

(assert (=> b!15704 m!10737))

(assert (=> b!15655 d!2797))

(declare-fun d!2803 () Bool)

(assert (=> d!2803 (forall!127 (toList!244 (--!6 lt!3886 lt!3887)) p!262)))

(declare-fun lt!3905 () Unit!318)

(declare-fun choose!180 (ListLongMap!457 List!499 Int) Unit!318)

(assert (=> d!2803 (= lt!3905 (choose!180 lt!3886 lt!3887 p!262))))

(assert (=> d!2803 (forall!127 (toList!244 lt!3886) p!262)))

(assert (=> d!2803 (= (removeAllValidProp!4 lt!3886 lt!3887 p!262) lt!3905)))

(declare-fun bs!708 () Bool)

(assert (= bs!708 d!2803))

(assert (=> bs!708 m!10667))

(assert (=> bs!708 m!10659))

(declare-fun m!10755 () Bool)

(assert (=> bs!708 m!10755))

(assert (=> bs!708 m!10657))

(assert (=> b!15655 d!2803))

(declare-fun d!2815 () Bool)

(declare-fun res!11824 () Bool)

(declare-fun e!9583 () Bool)

(assert (=> d!2815 (=> res!11824 e!9583)))

(assert (=> d!2815 (= res!11824 (is-Nil!495 (toList!244 (--!6 lm!238 l!1612))))))

(assert (=> d!2815 (= (forall!127 (toList!244 (--!6 lm!238 l!1612)) p!262) e!9583)))

(declare-fun b!15713 () Bool)

(declare-fun e!9584 () Bool)

(assert (=> b!15713 (= e!9583 e!9584)))

(declare-fun res!11825 () Bool)

(assert (=> b!15713 (=> (not res!11825) (not e!9584))))

(assert (=> b!15713 (= res!11825 (dynLambda!113 p!262 (h!1060 (toList!244 (--!6 lm!238 l!1612)))))))

(declare-fun b!15714 () Bool)

(assert (=> b!15714 (= e!9584 (forall!127 (t!2948 (toList!244 (--!6 lm!238 l!1612))) p!262))))

(assert (= (and d!2815 (not res!11824)) b!15713))

(assert (= (and b!15713 res!11825) b!15714))

(declare-fun b_lambda!1087 () Bool)

(assert (=> (not b_lambda!1087) (not b!15713)))

(declare-fun t!2971 () Bool)

(declare-fun tb!461 () Bool)

(assert (=> (and start!2552 (= p!262 p!262) t!2971) tb!461))

(declare-fun result!797 () Bool)

(assert (=> tb!461 (= result!797 true)))

(assert (=> b!15713 t!2971))

(declare-fun b_and!1007 () Bool)

(assert (= b_and!999 (and (=> t!2971 result!797) b_and!1007)))

(declare-fun m!10761 () Bool)

(assert (=> b!15713 m!10761))

(declare-fun m!10763 () Bool)

(assert (=> b!15714 m!10763))

(assert (=> b!15655 d!2815))

(declare-fun d!2819 () Bool)

(assert (=> d!2819 (forall!127 (toList!244 (-!26 lm!238 lt!3888)) p!262)))

(declare-fun lt!3912 () Unit!318)

(declare-fun choose!183 (ListLongMap!457 Int (_ BitVec 64)) Unit!318)

(assert (=> d!2819 (= lt!3912 (choose!183 lm!238 p!262 lt!3888))))

(assert (=> d!2819 (forall!127 (toList!244 lm!238) p!262)))

(assert (=> d!2819 (= (removeValidProp!19 lm!238 p!262 lt!3888) lt!3912)))

