; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727848 () Bool)

(assert start!727848)

(declare-fun b_free!134405 () Bool)

(declare-fun b_next!135195 () Bool)

(assert (=> start!727848 (= b_free!134405 (not b_next!135195))))

(declare-fun tp!2184137 () Bool)

(declare-fun b_and!352117 () Bool)

(assert (=> start!727848 (= tp!2184137 b_and!352117)))

(declare-fun b!7519813 () Bool)

(assert (=> b!7519813 true))

(declare-fun order!29739 () Int)

(declare-fun p!2214 () Int)

(declare-fun lambda!466295 () Int)

(declare-fun dynLambda!29856 (Int Int) Int)

(assert (=> b!7519813 (< (dynLambda!29856 order!29739 p!2214) (dynLambda!29856 order!29739 lambda!466295))))

(declare-fun e!4482651 () Bool)

(declare-datatypes ((B!3941 0))(
  ( (B!3942 (val!30346 Int)) )
))
(declare-datatypes ((List!72654 0))(
  ( (Nil!72530) (Cons!72530 (h!78978 B!3941) (t!387291 List!72654)) )
))
(declare-fun l!3843 () List!72654)

(declare-fun exists!4941 (List!72654 Int) Bool)

(assert (=> b!7519813 (= e!4482651 (not (not (exists!4941 l!3843 lambda!466295))))))

(assert (=> b!7519813 (not (exists!4941 (t!387291 l!3843) lambda!466295))))

(declare-datatypes ((Unit!166521 0))(
  ( (Unit!166522) )
))
(declare-fun lt!2638566 () Unit!166521)

(declare-fun lemmaForallThenNotExists!484 (List!72654 Int) Unit!166521)

(assert (=> b!7519813 (= lt!2638566 (lemmaForallThenNotExists!484 (t!387291 l!3843) p!2214))))

(declare-fun b!7519814 () Bool)

(declare-fun e!4482652 () Bool)

(declare-fun tp_is_empty!49851 () Bool)

(declare-fun tp!2184136 () Bool)

(assert (=> b!7519814 (= e!4482652 (and tp_is_empty!49851 tp!2184136))))

(declare-fun res!3014115 () Bool)

(assert (=> start!727848 (=> (not res!3014115) (not e!4482651))))

(declare-fun forall!18386 (List!72654 Int) Bool)

(assert (=> start!727848 (= res!3014115 (forall!18386 l!3843 p!2214))))

(assert (=> start!727848 e!4482651))

(assert (=> start!727848 e!4482652))

(assert (=> start!727848 tp!2184137))

(declare-fun b!7519811 () Bool)

(declare-fun res!3014117 () Bool)

(assert (=> b!7519811 (=> (not res!3014117) (not e!4482651))))

(get-info :version)

(assert (=> b!7519811 (= res!3014117 ((_ is Cons!72530) l!3843))))

(declare-fun b!7519812 () Bool)

(declare-fun res!3014116 () Bool)

(assert (=> b!7519812 (=> (not res!3014116) (not e!4482651))))

(assert (=> b!7519812 (= res!3014116 (forall!18386 (t!387291 l!3843) p!2214))))

(assert (= (and start!727848 res!3014115) b!7519811))

(assert (= (and b!7519811 res!3014117) b!7519812))

(assert (= (and b!7519812 res!3014116) b!7519813))

(assert (= (and start!727848 ((_ is Cons!72530) l!3843)) b!7519814))

(declare-fun m!8099682 () Bool)

(assert (=> b!7519813 m!8099682))

(declare-fun m!8099684 () Bool)

(assert (=> b!7519813 m!8099684))

(declare-fun m!8099686 () Bool)

(assert (=> b!7519813 m!8099686))

(declare-fun m!8099688 () Bool)

(assert (=> start!727848 m!8099688))

(declare-fun m!8099690 () Bool)

(assert (=> b!7519812 m!8099690))

(check-sat (not b!7519812) b_and!352117 (not b_next!135195) (not start!727848) (not b!7519814) tp_is_empty!49851 (not b!7519813))
(check-sat b_and!352117 (not b_next!135195))
(get-model)

(declare-fun bs!1939455 () Bool)

(declare-fun d!2308647 () Bool)

(assert (= bs!1939455 (and d!2308647 b!7519813)))

(declare-fun lambda!466298 () Int)

(assert (=> bs!1939455 (= (= lambda!466295 p!2214) (= lambda!466298 lambda!466295))))

(assert (=> d!2308647 true))

(assert (=> d!2308647 (< (dynLambda!29856 order!29739 lambda!466295) (dynLambda!29856 order!29739 lambda!466298))))

(assert (=> d!2308647 (= (exists!4941 l!3843 lambda!466295) (not (forall!18386 l!3843 lambda!466298)))))

(declare-fun bs!1939456 () Bool)

(assert (= bs!1939456 d!2308647))

(declare-fun m!8099698 () Bool)

(assert (=> bs!1939456 m!8099698))

(assert (=> b!7519813 d!2308647))

(declare-fun bs!1939457 () Bool)

(declare-fun d!2308653 () Bool)

(assert (= bs!1939457 (and d!2308653 b!7519813)))

(declare-fun lambda!466299 () Int)

(assert (=> bs!1939457 (= (= lambda!466295 p!2214) (= lambda!466299 lambda!466295))))

(declare-fun bs!1939458 () Bool)

(assert (= bs!1939458 (and d!2308653 d!2308647)))

(assert (=> bs!1939458 (= lambda!466299 lambda!466298)))

(assert (=> d!2308653 true))

(assert (=> d!2308653 (< (dynLambda!29856 order!29739 lambda!466295) (dynLambda!29856 order!29739 lambda!466299))))

(assert (=> d!2308653 (= (exists!4941 (t!387291 l!3843) lambda!466295) (not (forall!18386 (t!387291 l!3843) lambda!466299)))))

(declare-fun bs!1939459 () Bool)

(assert (= bs!1939459 d!2308653))

(declare-fun m!8099700 () Bool)

(assert (=> bs!1939459 m!8099700))

(assert (=> b!7519813 d!2308653))

(declare-fun bs!1939465 () Bool)

(declare-fun d!2308655 () Bool)

(assert (= bs!1939465 (and d!2308655 b!7519813)))

(declare-fun lambda!466306 () Int)

(assert (=> bs!1939465 (= lambda!466306 lambda!466295)))

(declare-fun bs!1939466 () Bool)

(assert (= bs!1939466 (and d!2308655 d!2308647)))

(assert (=> bs!1939466 (= (= p!2214 lambda!466295) (= lambda!466306 lambda!466298))))

(declare-fun bs!1939467 () Bool)

(assert (= bs!1939467 (and d!2308655 d!2308653)))

(assert (=> bs!1939467 (= (= p!2214 lambda!466295) (= lambda!466306 lambda!466299))))

(assert (=> d!2308655 true))

(assert (=> d!2308655 (< (dynLambda!29856 order!29739 p!2214) (dynLambda!29856 order!29739 lambda!466306))))

(assert (=> d!2308655 (not (exists!4941 (t!387291 l!3843) lambda!466306))))

(declare-fun lt!2638569 () Unit!166521)

(declare-fun choose!58255 (List!72654 Int) Unit!166521)

(assert (=> d!2308655 (= lt!2638569 (choose!58255 (t!387291 l!3843) p!2214))))

(assert (=> d!2308655 (forall!18386 (t!387291 l!3843) p!2214)))

(assert (=> d!2308655 (= (lemmaForallThenNotExists!484 (t!387291 l!3843) p!2214) lt!2638569)))

(declare-fun bs!1939468 () Bool)

(assert (= bs!1939468 d!2308655))

(declare-fun m!8099706 () Bool)

(assert (=> bs!1939468 m!8099706))

(declare-fun m!8099708 () Bool)

(assert (=> bs!1939468 m!8099708))

(assert (=> bs!1939468 m!8099690))

(assert (=> b!7519813 d!2308655))

(declare-fun d!2308661 () Bool)

(declare-fun res!3014130 () Bool)

(declare-fun e!4482669 () Bool)

(assert (=> d!2308661 (=> res!3014130 e!4482669)))

(assert (=> d!2308661 (= res!3014130 ((_ is Nil!72530) (t!387291 l!3843)))))

(assert (=> d!2308661 (= (forall!18386 (t!387291 l!3843) p!2214) e!4482669)))

(declare-fun b!7519829 () Bool)

(declare-fun e!4482670 () Bool)

(assert (=> b!7519829 (= e!4482669 e!4482670)))

(declare-fun res!3014131 () Bool)

(assert (=> b!7519829 (=> (not res!3014131) (not e!4482670))))

(declare-fun dynLambda!29858 (Int B!3941) Bool)

(assert (=> b!7519829 (= res!3014131 (dynLambda!29858 p!2214 (h!78978 (t!387291 l!3843))))))

(declare-fun b!7519830 () Bool)

(assert (=> b!7519830 (= e!4482670 (forall!18386 (t!387291 (t!387291 l!3843)) p!2214))))

(assert (= (and d!2308661 (not res!3014130)) b!7519829))

(assert (= (and b!7519829 res!3014131) b!7519830))

(declare-fun b_lambda!288443 () Bool)

(assert (=> (not b_lambda!288443) (not b!7519829)))

(declare-fun t!387297 () Bool)

(declare-fun tb!262523 () Bool)

(assert (=> (and start!727848 (= p!2214 p!2214) t!387297) tb!262523))

(declare-fun result!356356 () Bool)

(assert (=> tb!262523 (= result!356356 true)))

(assert (=> b!7519829 t!387297))

(declare-fun b_and!352123 () Bool)

(assert (= b_and!352117 (and (=> t!387297 result!356356) b_and!352123)))

(declare-fun m!8099710 () Bool)

(assert (=> b!7519829 m!8099710))

(declare-fun m!8099712 () Bool)

(assert (=> b!7519830 m!8099712))

(assert (=> b!7519812 d!2308661))

(declare-fun d!2308663 () Bool)

(declare-fun res!3014132 () Bool)

(declare-fun e!4482671 () Bool)

(assert (=> d!2308663 (=> res!3014132 e!4482671)))

(assert (=> d!2308663 (= res!3014132 ((_ is Nil!72530) l!3843))))

(assert (=> d!2308663 (= (forall!18386 l!3843 p!2214) e!4482671)))

(declare-fun b!7519831 () Bool)

(declare-fun e!4482672 () Bool)

(assert (=> b!7519831 (= e!4482671 e!4482672)))

(declare-fun res!3014133 () Bool)

(assert (=> b!7519831 (=> (not res!3014133) (not e!4482672))))

(assert (=> b!7519831 (= res!3014133 (dynLambda!29858 p!2214 (h!78978 l!3843)))))

(declare-fun b!7519832 () Bool)

(assert (=> b!7519832 (= e!4482672 (forall!18386 (t!387291 l!3843) p!2214))))

(assert (= (and d!2308663 (not res!3014132)) b!7519831))

(assert (= (and b!7519831 res!3014133) b!7519832))

(declare-fun b_lambda!288445 () Bool)

(assert (=> (not b_lambda!288445) (not b!7519831)))

(declare-fun t!387299 () Bool)

(declare-fun tb!262525 () Bool)

(assert (=> (and start!727848 (= p!2214 p!2214) t!387299) tb!262525))

(declare-fun result!356358 () Bool)

(assert (=> tb!262525 (= result!356358 true)))

(assert (=> b!7519831 t!387299))

(declare-fun b_and!352125 () Bool)

(assert (= b_and!352123 (and (=> t!387299 result!356358) b_and!352125)))

(declare-fun m!8099714 () Bool)

(assert (=> b!7519831 m!8099714))

(assert (=> b!7519832 m!8099690))

(assert (=> start!727848 d!2308663))

(declare-fun b!7519841 () Bool)

(declare-fun e!4482677 () Bool)

(declare-fun tp!2184142 () Bool)

(assert (=> b!7519841 (= e!4482677 (and tp_is_empty!49851 tp!2184142))))

(assert (=> b!7519814 (= tp!2184136 e!4482677)))

(assert (= (and b!7519814 ((_ is Cons!72530) (t!387291 l!3843))) b!7519841))

(declare-fun b_lambda!288447 () Bool)

(assert (= b_lambda!288443 (or (and start!727848 b_free!134405) b_lambda!288447)))

(declare-fun b_lambda!288449 () Bool)

(assert (= b_lambda!288445 (or (and start!727848 b_free!134405) b_lambda!288449)))

(check-sat b_and!352125 (not b!7519841) (not b!7519830) (not b_next!135195) (not d!2308647) (not b!7519832) (not d!2308653) (not d!2308655) tp_is_empty!49851 (not b_lambda!288447) (not b_lambda!288449))
(check-sat b_and!352125 (not b_next!135195))
(get-model)

(declare-fun d!2308677 () Bool)

(declare-fun res!3014134 () Bool)

(declare-fun e!4482679 () Bool)

(assert (=> d!2308677 (=> res!3014134 e!4482679)))

(assert (=> d!2308677 (= res!3014134 ((_ is Nil!72530) (t!387291 l!3843)))))

(assert (=> d!2308677 (= (forall!18386 (t!387291 l!3843) lambda!466299) e!4482679)))

(declare-fun b!7519843 () Bool)

(declare-fun e!4482680 () Bool)

(assert (=> b!7519843 (= e!4482679 e!4482680)))

(declare-fun res!3014135 () Bool)

(assert (=> b!7519843 (=> (not res!3014135) (not e!4482680))))

(assert (=> b!7519843 (= res!3014135 (dynLambda!29858 lambda!466299 (h!78978 (t!387291 l!3843))))))

(declare-fun b!7519844 () Bool)

(assert (=> b!7519844 (= e!4482680 (forall!18386 (t!387291 (t!387291 l!3843)) lambda!466299))))

(assert (= (and d!2308677 (not res!3014134)) b!7519843))

(assert (= (and b!7519843 res!3014135) b!7519844))

(declare-fun b_lambda!288467 () Bool)

(assert (=> (not b_lambda!288467) (not b!7519843)))

(declare-fun m!8099724 () Bool)

(assert (=> b!7519843 m!8099724))

(declare-fun m!8099726 () Bool)

(assert (=> b!7519844 m!8099726))

(assert (=> d!2308653 d!2308677))

(declare-fun bs!1939479 () Bool)

(declare-fun d!2308679 () Bool)

(assert (= bs!1939479 (and d!2308679 b!7519813)))

(declare-fun lambda!466310 () Int)

(assert (=> bs!1939479 (= (= lambda!466306 p!2214) (= lambda!466310 lambda!466295))))

(declare-fun bs!1939480 () Bool)

(assert (= bs!1939480 (and d!2308679 d!2308647)))

(assert (=> bs!1939480 (= (= lambda!466306 lambda!466295) (= lambda!466310 lambda!466298))))

(declare-fun bs!1939481 () Bool)

(assert (= bs!1939481 (and d!2308679 d!2308653)))

(assert (=> bs!1939481 (= (= lambda!466306 lambda!466295) (= lambda!466310 lambda!466299))))

(declare-fun bs!1939482 () Bool)

(assert (= bs!1939482 (and d!2308679 d!2308655)))

(assert (=> bs!1939482 (= (= lambda!466306 p!2214) (= lambda!466310 lambda!466306))))

(assert (=> d!2308679 true))

(assert (=> d!2308679 (< (dynLambda!29856 order!29739 lambda!466306) (dynLambda!29856 order!29739 lambda!466310))))

(assert (=> d!2308679 (= (exists!4941 (t!387291 l!3843) lambda!466306) (not (forall!18386 (t!387291 l!3843) lambda!466310)))))

(declare-fun bs!1939483 () Bool)

(assert (= bs!1939483 d!2308679))

(declare-fun m!8099728 () Bool)

(assert (=> bs!1939483 m!8099728))

(assert (=> d!2308655 d!2308679))

(declare-fun bs!1939484 () Bool)

(declare-fun d!2308681 () Bool)

(assert (= bs!1939484 (and d!2308681 d!2308647)))

(declare-fun lambda!466313 () Int)

(assert (=> bs!1939484 (= (= p!2214 lambda!466295) (= lambda!466313 lambda!466298))))

(declare-fun bs!1939485 () Bool)

(assert (= bs!1939485 (and d!2308681 d!2308655)))

(assert (=> bs!1939485 (= lambda!466313 lambda!466306)))

(declare-fun bs!1939486 () Bool)

(assert (= bs!1939486 (and d!2308681 b!7519813)))

(assert (=> bs!1939486 (= lambda!466313 lambda!466295)))

(declare-fun bs!1939487 () Bool)

(assert (= bs!1939487 (and d!2308681 d!2308653)))

(assert (=> bs!1939487 (= (= p!2214 lambda!466295) (= lambda!466313 lambda!466299))))

(declare-fun bs!1939488 () Bool)

(assert (= bs!1939488 (and d!2308681 d!2308679)))

(assert (=> bs!1939488 (= (= p!2214 lambda!466306) (= lambda!466313 lambda!466310))))

(assert (=> d!2308681 true))

(assert (=> d!2308681 (< (dynLambda!29856 order!29739 p!2214) (dynLambda!29856 order!29739 lambda!466313))))

(assert (=> d!2308681 (not (exists!4941 (t!387291 l!3843) lambda!466313))))

(assert (=> d!2308681 true))

(declare-fun _$98!297 () Unit!166521)

(assert (=> d!2308681 (= (choose!58255 (t!387291 l!3843) p!2214) _$98!297)))

(declare-fun bs!1939489 () Bool)

(assert (= bs!1939489 d!2308681))

(declare-fun m!8099730 () Bool)

(assert (=> bs!1939489 m!8099730))

(assert (=> d!2308655 d!2308681))

(assert (=> d!2308655 d!2308661))

(declare-fun d!2308683 () Bool)

(declare-fun res!3014136 () Bool)

(declare-fun e!4482683 () Bool)

(assert (=> d!2308683 (=> res!3014136 e!4482683)))

(assert (=> d!2308683 (= res!3014136 ((_ is Nil!72530) (t!387291 (t!387291 l!3843))))))

(assert (=> d!2308683 (= (forall!18386 (t!387291 (t!387291 l!3843)) p!2214) e!4482683)))

(declare-fun b!7519845 () Bool)

(declare-fun e!4482684 () Bool)

(assert (=> b!7519845 (= e!4482683 e!4482684)))

(declare-fun res!3014137 () Bool)

(assert (=> b!7519845 (=> (not res!3014137) (not e!4482684))))

(assert (=> b!7519845 (= res!3014137 (dynLambda!29858 p!2214 (h!78978 (t!387291 (t!387291 l!3843)))))))

(declare-fun b!7519846 () Bool)

(assert (=> b!7519846 (= e!4482684 (forall!18386 (t!387291 (t!387291 (t!387291 l!3843))) p!2214))))

(assert (= (and d!2308683 (not res!3014136)) b!7519845))

(assert (= (and b!7519845 res!3014137) b!7519846))

(declare-fun b_lambda!288469 () Bool)

(assert (=> (not b_lambda!288469) (not b!7519845)))

(declare-fun t!387301 () Bool)

(declare-fun tb!262527 () Bool)

(assert (=> (and start!727848 (= p!2214 p!2214) t!387301) tb!262527))

(declare-fun result!356364 () Bool)

(assert (=> tb!262527 (= result!356364 true)))

(assert (=> b!7519845 t!387301))

(declare-fun b_and!352131 () Bool)

(assert (= b_and!352125 (and (=> t!387301 result!356364) b_and!352131)))

(declare-fun m!8099732 () Bool)

(assert (=> b!7519845 m!8099732))

(declare-fun m!8099734 () Bool)

(assert (=> b!7519846 m!8099734))

(assert (=> b!7519830 d!2308683))

(assert (=> b!7519832 d!2308661))

(declare-fun d!2308685 () Bool)

(declare-fun res!3014138 () Bool)

(declare-fun e!4482685 () Bool)

(assert (=> d!2308685 (=> res!3014138 e!4482685)))

(assert (=> d!2308685 (= res!3014138 ((_ is Nil!72530) l!3843))))

(assert (=> d!2308685 (= (forall!18386 l!3843 lambda!466298) e!4482685)))

(declare-fun b!7519847 () Bool)

(declare-fun e!4482686 () Bool)

(assert (=> b!7519847 (= e!4482685 e!4482686)))

(declare-fun res!3014139 () Bool)

(assert (=> b!7519847 (=> (not res!3014139) (not e!4482686))))

(assert (=> b!7519847 (= res!3014139 (dynLambda!29858 lambda!466298 (h!78978 l!3843)))))

(declare-fun b!7519848 () Bool)

(assert (=> b!7519848 (= e!4482686 (forall!18386 (t!387291 l!3843) lambda!466298))))

(assert (= (and d!2308685 (not res!3014138)) b!7519847))

(assert (= (and b!7519847 res!3014139) b!7519848))

(declare-fun b_lambda!288471 () Bool)

(assert (=> (not b_lambda!288471) (not b!7519847)))

(declare-fun m!8099736 () Bool)

(assert (=> b!7519847 m!8099736))

(declare-fun m!8099738 () Bool)

(assert (=> b!7519848 m!8099738))

(assert (=> d!2308647 d!2308685))

(declare-fun b!7519849 () Bool)

(declare-fun e!4482687 () Bool)

(declare-fun tp!2184144 () Bool)

(assert (=> b!7519849 (= e!4482687 (and tp_is_empty!49851 tp!2184144))))

(assert (=> b!7519841 (= tp!2184142 e!4482687)))

(assert (= (and b!7519841 ((_ is Cons!72530) (t!387291 (t!387291 l!3843)))) b!7519849))

(declare-fun b_lambda!288473 () Bool)

(assert (= b_lambda!288471 (or d!2308647 b_lambda!288473)))

(declare-fun bs!1939490 () Bool)

(declare-fun d!2308687 () Bool)

(assert (= bs!1939490 (and d!2308687 d!2308647)))

(assert (=> bs!1939490 (= (dynLambda!29858 lambda!466298 (h!78978 l!3843)) (not (dynLambda!29858 lambda!466295 (h!78978 l!3843))))))

(declare-fun b_lambda!288479 () Bool)

(assert (=> (not b_lambda!288479) (not bs!1939490)))

(declare-fun m!8099740 () Bool)

(assert (=> bs!1939490 m!8099740))

(assert (=> b!7519847 d!2308687))

(declare-fun b_lambda!288475 () Bool)

(assert (= b_lambda!288467 (or d!2308653 b_lambda!288475)))

(declare-fun bs!1939491 () Bool)

(declare-fun d!2308689 () Bool)

(assert (= bs!1939491 (and d!2308689 d!2308653)))

(assert (=> bs!1939491 (= (dynLambda!29858 lambda!466299 (h!78978 (t!387291 l!3843))) (not (dynLambda!29858 lambda!466295 (h!78978 (t!387291 l!3843)))))))

(declare-fun b_lambda!288481 () Bool)

(assert (=> (not b_lambda!288481) (not bs!1939491)))

(declare-fun m!8099742 () Bool)

(assert (=> bs!1939491 m!8099742))

(assert (=> b!7519843 d!2308689))

(declare-fun b_lambda!288477 () Bool)

(assert (= b_lambda!288469 (or (and start!727848 b_free!134405) b_lambda!288477)))

(check-sat (not b_lambda!288477) (not d!2308681) (not b_next!135195) (not b_lambda!288479) tp_is_empty!49851 (not b_lambda!288473) (not b!7519848) b_and!352131 (not b!7519846) (not b_lambda!288475) (not b_lambda!288447) (not b_lambda!288449) (not b!7519849) (not b!7519844) (not b_lambda!288481) (not d!2308679))
(check-sat b_and!352131 (not b_next!135195))
(get-model)

(declare-fun b_lambda!288503 () Bool)

(assert (= b_lambda!288479 (or b!7519813 b_lambda!288503)))

(declare-fun bs!1939494 () Bool)

(declare-fun d!2308695 () Bool)

(assert (= bs!1939494 (and d!2308695 b!7519813)))

(assert (=> bs!1939494 (= (dynLambda!29858 lambda!466295 (h!78978 l!3843)) (not (dynLambda!29858 p!2214 (h!78978 l!3843))))))

(declare-fun b_lambda!288507 () Bool)

(assert (=> (not b_lambda!288507) (not bs!1939494)))

(assert (=> bs!1939494 t!387299))

(declare-fun b_and!352137 () Bool)

(assert (= b_and!352131 (and (=> t!387299 result!356358) b_and!352137)))

(assert (=> bs!1939494 m!8099714))

(assert (=> bs!1939490 d!2308695))

(declare-fun b_lambda!288505 () Bool)

(assert (= b_lambda!288481 (or b!7519813 b_lambda!288505)))

(declare-fun bs!1939495 () Bool)

(declare-fun d!2308697 () Bool)

(assert (= bs!1939495 (and d!2308697 b!7519813)))

(assert (=> bs!1939495 (= (dynLambda!29858 lambda!466295 (h!78978 (t!387291 l!3843))) (not (dynLambda!29858 p!2214 (h!78978 (t!387291 l!3843)))))))

(declare-fun b_lambda!288509 () Bool)

(assert (=> (not b_lambda!288509) (not bs!1939495)))

(assert (=> bs!1939495 t!387297))

(declare-fun b_and!352139 () Bool)

(assert (= b_and!352137 (and (=> t!387297 result!356356) b_and!352139)))

(assert (=> bs!1939495 m!8099710))

(assert (=> bs!1939491 d!2308697))

(check-sat (not b_lambda!288503) b_and!352139 (not b_lambda!288509) (not b_lambda!288477) (not d!2308681) (not b_next!135195) (not b_lambda!288505) tp_is_empty!49851 (not b_lambda!288473) (not b!7519848) (not b!7519846) (not b_lambda!288475) (not b_lambda!288447) (not b_lambda!288449) (not b!7519849) (not b!7519844) (not b_lambda!288507) (not d!2308679))
(check-sat b_and!352139 (not b_next!135195))
