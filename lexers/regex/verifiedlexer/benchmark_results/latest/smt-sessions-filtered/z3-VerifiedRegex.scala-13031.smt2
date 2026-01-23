; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714410 () Bool)

(assert start!714410)

(declare-fun b_free!134301 () Bool)

(declare-fun b_next!135091 () Bool)

(assert (=> start!714410 (= b_free!134301 (not b_next!135091))))

(declare-fun tp!2079715 () Bool)

(declare-fun b_and!351843 () Bool)

(assert (=> start!714410 (= tp!2079715 b_and!351843)))

(declare-fun res!2959552 () Bool)

(declare-fun e!4383819 () Bool)

(assert (=> start!714410 (=> (not res!2959552) (not e!4383819))))

(declare-datatypes ((B!3833 0))(
  ( (B!3834 (val!29448 Int)) )
))
(declare-datatypes ((List!71447 0))(
  ( (Nil!71323) (Cons!71323 (h!77771 B!3833) (t!385818 List!71447)) )
))
(declare-fun l!3043 () List!71447)

(declare-fun e!9239 () B!3833)

(declare-fun contains!20830 (List!71447 B!3833) Bool)

(assert (=> start!714410 (= res!2959552 (contains!20830 l!3043 e!9239))))

(assert (=> start!714410 e!4383819))

(declare-fun e!4383818 () Bool)

(assert (=> start!714410 e!4383818))

(declare-fun tp_is_empty!48147 () Bool)

(assert (=> start!714410 tp_is_empty!48147))

(assert (=> start!714410 tp!2079715))

(declare-fun b!7321807 () Bool)

(declare-fun res!2959551 () Bool)

(assert (=> b!7321807 (=> (not res!2959551) (not e!4383819))))

(declare-fun p!1874 () Int)

(declare-fun dynLambda!29380 (Int B!3833) Bool)

(assert (=> b!7321807 (= res!2959551 (dynLambda!29380 p!1874 e!9239))))

(declare-fun b!7321808 () Bool)

(declare-fun res!2959553 () Bool)

(assert (=> b!7321808 (=> (not res!2959553) (not e!4383819))))

(get-info :version)

(assert (=> b!7321808 (= res!2959553 (and (or (not ((_ is Cons!71323) l!3043)) (not (= (h!77771 l!3043) e!9239))) ((_ is Cons!71323) l!3043)))))

(declare-fun b!7321809 () Bool)

(declare-fun res!2959554 () Bool)

(assert (=> b!7321809 (=> (not res!2959554) (not e!4383819))))

(assert (=> b!7321809 (= res!2959554 (contains!20830 (t!385818 l!3043) e!9239))))

(declare-fun b!7321810 () Bool)

(declare-fun exists!4717 (List!71447 Int) Bool)

(assert (=> b!7321810 (= e!4383819 (not (exists!4717 l!3043 p!1874)))))

(assert (=> b!7321810 (exists!4717 (t!385818 l!3043) p!1874)))

(declare-datatypes ((Unit!164887 0))(
  ( (Unit!164888) )
))
(declare-fun lt!2604796 () Unit!164887)

(declare-fun lemmaContainsThenExists!297 (List!71447 B!3833 Int) Unit!164887)

(assert (=> b!7321810 (= lt!2604796 (lemmaContainsThenExists!297 (t!385818 l!3043) e!9239 p!1874))))

(declare-fun b!7321811 () Bool)

(declare-fun tp!2079714 () Bool)

(assert (=> b!7321811 (= e!4383818 (and tp_is_empty!48147 tp!2079714))))

(assert (= (and start!714410 res!2959552) b!7321807))

(assert (= (and b!7321807 res!2959551) b!7321808))

(assert (= (and b!7321808 res!2959553) b!7321809))

(assert (= (and b!7321809 res!2959554) b!7321810))

(assert (= (and start!714410 ((_ is Cons!71323) l!3043)) b!7321811))

(declare-fun b_lambda!283085 () Bool)

(assert (=> (not b_lambda!283085) (not b!7321807)))

(declare-fun t!385817 () Bool)

(declare-fun tb!262381 () Bool)

(assert (=> (and start!714410 (= p!1874 p!1874) t!385817) tb!262381))

(declare-fun result!353592 () Bool)

(assert (=> tb!262381 (= result!353592 true)))

(assert (=> b!7321807 t!385817))

(declare-fun b_and!351845 () Bool)

(assert (= b_and!351843 (and (=> t!385817 result!353592) b_and!351845)))

(declare-fun m!7987486 () Bool)

(assert (=> start!714410 m!7987486))

(declare-fun m!7987488 () Bool)

(assert (=> b!7321807 m!7987488))

(declare-fun m!7987490 () Bool)

(assert (=> b!7321809 m!7987490))

(declare-fun m!7987492 () Bool)

(assert (=> b!7321810 m!7987492))

(declare-fun m!7987494 () Bool)

(assert (=> b!7321810 m!7987494))

(declare-fun m!7987496 () Bool)

(assert (=> b!7321810 m!7987496))

(check-sat (not b!7321810) (not b_lambda!283085) (not b!7321811) b_and!351845 tp_is_empty!48147 (not b_next!135091) (not start!714410) (not b!7321809))
(check-sat b_and!351845 (not b_next!135091))
(get-model)

(declare-fun b_lambda!283087 () Bool)

(assert (= b_lambda!283085 (or (and start!714410 b_free!134301) b_lambda!283087)))

(check-sat (not b_lambda!283087) (not b!7321810) (not b!7321811) b_and!351845 tp_is_empty!48147 (not b_next!135091) (not start!714410) (not b!7321809))
(check-sat b_and!351845 (not b_next!135091))
(get-model)

(declare-fun d!2273704 () Bool)

(declare-fun lt!2604799 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14915 (List!71447) (InoxSet B!3833))

(assert (=> d!2273704 (= lt!2604799 (select (content!14915 (t!385818 l!3043)) e!9239))))

(declare-fun e!4383824 () Bool)

(assert (=> d!2273704 (= lt!2604799 e!4383824)))

(declare-fun res!2959560 () Bool)

(assert (=> d!2273704 (=> (not res!2959560) (not e!4383824))))

(assert (=> d!2273704 (= res!2959560 ((_ is Cons!71323) (t!385818 l!3043)))))

(assert (=> d!2273704 (= (contains!20830 (t!385818 l!3043) e!9239) lt!2604799)))

(declare-fun b!7321816 () Bool)

(declare-fun e!4383825 () Bool)

(assert (=> b!7321816 (= e!4383824 e!4383825)))

(declare-fun res!2959559 () Bool)

(assert (=> b!7321816 (=> res!2959559 e!4383825)))

(assert (=> b!7321816 (= res!2959559 (= (h!77771 (t!385818 l!3043)) e!9239))))

(declare-fun b!7321817 () Bool)

(assert (=> b!7321817 (= e!4383825 (contains!20830 (t!385818 (t!385818 l!3043)) e!9239))))

(assert (= (and d!2273704 res!2959560) b!7321816))

(assert (= (and b!7321816 (not res!2959559)) b!7321817))

(declare-fun m!7987498 () Bool)

(assert (=> d!2273704 m!7987498))

(declare-fun m!7987500 () Bool)

(assert (=> d!2273704 m!7987500))

(declare-fun m!7987502 () Bool)

(assert (=> b!7321817 m!7987502))

(assert (=> b!7321809 d!2273704))

(declare-fun d!2273706 () Bool)

(declare-fun lt!2604800 () Bool)

(assert (=> d!2273706 (= lt!2604800 (select (content!14915 l!3043) e!9239))))

(declare-fun e!4383826 () Bool)

(assert (=> d!2273706 (= lt!2604800 e!4383826)))

(declare-fun res!2959562 () Bool)

(assert (=> d!2273706 (=> (not res!2959562) (not e!4383826))))

(assert (=> d!2273706 (= res!2959562 ((_ is Cons!71323) l!3043))))

(assert (=> d!2273706 (= (contains!20830 l!3043 e!9239) lt!2604800)))

(declare-fun b!7321818 () Bool)

(declare-fun e!4383827 () Bool)

(assert (=> b!7321818 (= e!4383826 e!4383827)))

(declare-fun res!2959561 () Bool)

(assert (=> b!7321818 (=> res!2959561 e!4383827)))

(assert (=> b!7321818 (= res!2959561 (= (h!77771 l!3043) e!9239))))

(declare-fun b!7321819 () Bool)

(assert (=> b!7321819 (= e!4383827 (contains!20830 (t!385818 l!3043) e!9239))))

(assert (= (and d!2273706 res!2959562) b!7321818))

(assert (= (and b!7321818 (not res!2959561)) b!7321819))

(declare-fun m!7987504 () Bool)

(assert (=> d!2273706 m!7987504))

(declare-fun m!7987506 () Bool)

(assert (=> d!2273706 m!7987506))

(assert (=> b!7321819 m!7987490))

(assert (=> start!714410 d!2273706))

(declare-fun d!2273708 () Bool)

(assert (=> d!2273708 true))

(declare-fun order!29413 () Int)

(declare-fun lambda!453553 () Int)

(declare-fun dynLambda!29381 (Int Int) Int)

(assert (=> d!2273708 (< (dynLambda!29381 order!29413 p!1874) (dynLambda!29381 order!29413 lambda!453553))))

(declare-fun forall!17816 (List!71447 Int) Bool)

(assert (=> d!2273708 (= (exists!4717 l!3043 p!1874) (not (forall!17816 l!3043 lambda!453553)))))

(declare-fun bs!1916109 () Bool)

(assert (= bs!1916109 d!2273708))

(declare-fun m!7987508 () Bool)

(assert (=> bs!1916109 m!7987508))

(assert (=> b!7321810 d!2273708))

(declare-fun bs!1916110 () Bool)

(declare-fun d!2273712 () Bool)

(assert (= bs!1916110 (and d!2273712 d!2273708)))

(declare-fun lambda!453554 () Int)

(assert (=> bs!1916110 (= lambda!453554 lambda!453553)))

(assert (=> d!2273712 true))

(assert (=> d!2273712 (< (dynLambda!29381 order!29413 p!1874) (dynLambda!29381 order!29413 lambda!453554))))

(assert (=> d!2273712 (= (exists!4717 (t!385818 l!3043) p!1874) (not (forall!17816 (t!385818 l!3043) lambda!453554)))))

(declare-fun bs!1916111 () Bool)

(assert (= bs!1916111 d!2273712))

(declare-fun m!7987510 () Bool)

(assert (=> bs!1916111 m!7987510))

(assert (=> b!7321810 d!2273712))

(declare-fun d!2273714 () Bool)

(assert (=> d!2273714 (exists!4717 (t!385818 l!3043) p!1874)))

(declare-fun lt!2604806 () Unit!164887)

(declare-fun choose!56933 (List!71447 B!3833 Int) Unit!164887)

(assert (=> d!2273714 (= lt!2604806 (choose!56933 (t!385818 l!3043) e!9239 p!1874))))

(assert (=> d!2273714 (contains!20830 (t!385818 l!3043) e!9239)))

(assert (=> d!2273714 (= (lemmaContainsThenExists!297 (t!385818 l!3043) e!9239 p!1874) lt!2604806)))

(declare-fun bs!1916112 () Bool)

(assert (= bs!1916112 d!2273714))

(assert (=> bs!1916112 m!7987494))

(declare-fun m!7987518 () Bool)

(assert (=> bs!1916112 m!7987518))

(assert (=> bs!1916112 m!7987490))

(assert (=> b!7321810 d!2273714))

(declare-fun b!7321832 () Bool)

(declare-fun e!4383837 () Bool)

(declare-fun tp!2079718 () Bool)

(assert (=> b!7321832 (= e!4383837 (and tp_is_empty!48147 tp!2079718))))

(assert (=> b!7321811 (= tp!2079714 e!4383837)))

(assert (= (and b!7321811 ((_ is Cons!71323) (t!385818 l!3043))) b!7321832))

(check-sat (not d!2273714) (not b!7321832) (not b!7321819) (not d!2273708) b_and!351845 (not d!2273706) (not d!2273704) (not d!2273712) (not b_lambda!283087) tp_is_empty!48147 (not b_next!135091) (not b!7321817))
(check-sat b_and!351845 (not b_next!135091))
(get-model)

(declare-fun d!2273724 () Bool)

(declare-fun res!2959575 () Bool)

(declare-fun e!4383848 () Bool)

(assert (=> d!2273724 (=> res!2959575 e!4383848)))

(assert (=> d!2273724 (= res!2959575 ((_ is Nil!71323) (t!385818 l!3043)))))

(assert (=> d!2273724 (= (forall!17816 (t!385818 l!3043) lambda!453554) e!4383848)))

(declare-fun b!7321846 () Bool)

(declare-fun e!4383849 () Bool)

(assert (=> b!7321846 (= e!4383848 e!4383849)))

(declare-fun res!2959576 () Bool)

(assert (=> b!7321846 (=> (not res!2959576) (not e!4383849))))

(assert (=> b!7321846 (= res!2959576 (dynLambda!29380 lambda!453554 (h!77771 (t!385818 l!3043))))))

(declare-fun b!7321847 () Bool)

(assert (=> b!7321847 (= e!4383849 (forall!17816 (t!385818 (t!385818 l!3043)) lambda!453554))))

(assert (= (and d!2273724 (not res!2959575)) b!7321846))

(assert (= (and b!7321846 res!2959576) b!7321847))

(declare-fun b_lambda!283091 () Bool)

(assert (=> (not b_lambda!283091) (not b!7321846)))

(declare-fun m!7987530 () Bool)

(assert (=> b!7321846 m!7987530))

(declare-fun m!7987532 () Bool)

(assert (=> b!7321847 m!7987532))

(assert (=> d!2273712 d!2273724))

(declare-fun d!2273726 () Bool)

(declare-fun c!1358793 () Bool)

(assert (=> d!2273726 (= c!1358793 ((_ is Nil!71323) l!3043))))

(declare-fun e!4383852 () (InoxSet B!3833))

(assert (=> d!2273726 (= (content!14915 l!3043) e!4383852)))

(declare-fun b!7321852 () Bool)

(assert (=> b!7321852 (= e!4383852 ((as const (Array B!3833 Bool)) false))))

(declare-fun b!7321853 () Bool)

(assert (=> b!7321853 (= e!4383852 ((_ map or) (store ((as const (Array B!3833 Bool)) false) (h!77771 l!3043) true) (content!14915 (t!385818 l!3043))))))

(assert (= (and d!2273726 c!1358793) b!7321852))

(assert (= (and d!2273726 (not c!1358793)) b!7321853))

(declare-fun m!7987534 () Bool)

(assert (=> b!7321853 m!7987534))

(assert (=> b!7321853 m!7987498))

(assert (=> d!2273706 d!2273726))

(assert (=> d!2273714 d!2273712))

(declare-fun d!2273728 () Bool)

(assert (=> d!2273728 (exists!4717 (t!385818 l!3043) p!1874)))

(assert (=> d!2273728 true))

(declare-fun _$35!573 () Unit!164887)

(assert (=> d!2273728 (= (choose!56933 (t!385818 l!3043) e!9239 p!1874) _$35!573)))

(declare-fun bs!1916117 () Bool)

(assert (= bs!1916117 d!2273728))

(assert (=> bs!1916117 m!7987494))

(assert (=> d!2273714 d!2273728))

(assert (=> d!2273714 d!2273704))

(assert (=> b!7321819 d!2273704))

(declare-fun d!2273730 () Bool)

(declare-fun res!2959577 () Bool)

(declare-fun e!4383854 () Bool)

(assert (=> d!2273730 (=> res!2959577 e!4383854)))

(assert (=> d!2273730 (= res!2959577 ((_ is Nil!71323) l!3043))))

(assert (=> d!2273730 (= (forall!17816 l!3043 lambda!453553) e!4383854)))

(declare-fun b!7321854 () Bool)

(declare-fun e!4383855 () Bool)

(assert (=> b!7321854 (= e!4383854 e!4383855)))

(declare-fun res!2959578 () Bool)

(assert (=> b!7321854 (=> (not res!2959578) (not e!4383855))))

(assert (=> b!7321854 (= res!2959578 (dynLambda!29380 lambda!453553 (h!77771 l!3043)))))

(declare-fun b!7321855 () Bool)

(assert (=> b!7321855 (= e!4383855 (forall!17816 (t!385818 l!3043) lambda!453553))))

(assert (= (and d!2273730 (not res!2959577)) b!7321854))

(assert (= (and b!7321854 res!2959578) b!7321855))

(declare-fun b_lambda!283093 () Bool)

(assert (=> (not b_lambda!283093) (not b!7321854)))

(declare-fun m!7987536 () Bool)

(assert (=> b!7321854 m!7987536))

(declare-fun m!7987538 () Bool)

(assert (=> b!7321855 m!7987538))

(assert (=> d!2273708 d!2273730))

(declare-fun d!2273732 () Bool)

(declare-fun lt!2604811 () Bool)

(assert (=> d!2273732 (= lt!2604811 (select (content!14915 (t!385818 (t!385818 l!3043))) e!9239))))

(declare-fun e!4383856 () Bool)

(assert (=> d!2273732 (= lt!2604811 e!4383856)))

(declare-fun res!2959580 () Bool)

(assert (=> d!2273732 (=> (not res!2959580) (not e!4383856))))

(assert (=> d!2273732 (= res!2959580 ((_ is Cons!71323) (t!385818 (t!385818 l!3043))))))

(assert (=> d!2273732 (= (contains!20830 (t!385818 (t!385818 l!3043)) e!9239) lt!2604811)))

(declare-fun b!7321856 () Bool)

(declare-fun e!4383857 () Bool)

(assert (=> b!7321856 (= e!4383856 e!4383857)))

(declare-fun res!2959579 () Bool)

(assert (=> b!7321856 (=> res!2959579 e!4383857)))

(assert (=> b!7321856 (= res!2959579 (= (h!77771 (t!385818 (t!385818 l!3043))) e!9239))))

(declare-fun b!7321857 () Bool)

(assert (=> b!7321857 (= e!4383857 (contains!20830 (t!385818 (t!385818 (t!385818 l!3043))) e!9239))))

(assert (= (and d!2273732 res!2959580) b!7321856))

(assert (= (and b!7321856 (not res!2959579)) b!7321857))

(declare-fun m!7987540 () Bool)

(assert (=> d!2273732 m!7987540))

(declare-fun m!7987542 () Bool)

(assert (=> d!2273732 m!7987542))

(declare-fun m!7987544 () Bool)

(assert (=> b!7321857 m!7987544))

(assert (=> b!7321817 d!2273732))

(declare-fun d!2273734 () Bool)

(declare-fun c!1358794 () Bool)

(assert (=> d!2273734 (= c!1358794 ((_ is Nil!71323) (t!385818 l!3043)))))

(declare-fun e!4383858 () (InoxSet B!3833))

(assert (=> d!2273734 (= (content!14915 (t!385818 l!3043)) e!4383858)))

(declare-fun b!7321858 () Bool)

(assert (=> b!7321858 (= e!4383858 ((as const (Array B!3833 Bool)) false))))

(declare-fun b!7321859 () Bool)

(assert (=> b!7321859 (= e!4383858 ((_ map or) (store ((as const (Array B!3833 Bool)) false) (h!77771 (t!385818 l!3043)) true) (content!14915 (t!385818 (t!385818 l!3043)))))))

(assert (= (and d!2273734 c!1358794) b!7321858))

(assert (= (and d!2273734 (not c!1358794)) b!7321859))

(declare-fun m!7987546 () Bool)

(assert (=> b!7321859 m!7987546))

(assert (=> b!7321859 m!7987540))

(assert (=> d!2273704 d!2273734))

(declare-fun b!7321860 () Bool)

(declare-fun e!4383859 () Bool)

(declare-fun tp!2079722 () Bool)

(assert (=> b!7321860 (= e!4383859 (and tp_is_empty!48147 tp!2079722))))

(assert (=> b!7321832 (= tp!2079718 e!4383859)))

(assert (= (and b!7321832 ((_ is Cons!71323) (t!385818 (t!385818 l!3043)))) b!7321860))

(declare-fun b_lambda!283095 () Bool)

(assert (= b_lambda!283093 (or d!2273708 b_lambda!283095)))

(declare-fun bs!1916118 () Bool)

(declare-fun d!2273736 () Bool)

(assert (= bs!1916118 (and d!2273736 d!2273708)))

(assert (=> bs!1916118 (= (dynLambda!29380 lambda!453553 (h!77771 l!3043)) (not (dynLambda!29380 p!1874 (h!77771 l!3043))))))

(declare-fun b_lambda!283101 () Bool)

(assert (=> (not b_lambda!283101) (not bs!1916118)))

(declare-fun t!385820 () Bool)

(declare-fun tb!262383 () Bool)

(assert (=> (and start!714410 (= p!1874 p!1874) t!385820) tb!262383))

(declare-fun result!353598 () Bool)

(assert (=> tb!262383 (= result!353598 true)))

(assert (=> bs!1916118 t!385820))

(declare-fun b_and!351847 () Bool)

(assert (= b_and!351845 (and (=> t!385820 result!353598) b_and!351847)))

(declare-fun m!7987548 () Bool)

(assert (=> bs!1916118 m!7987548))

(assert (=> b!7321854 d!2273736))

(declare-fun b_lambda!283097 () Bool)

(assert (= b_lambda!283087 (or (and d!2273708 (= lambda!453553 p!1874)) (and d!2273712 (= lambda!453554 p!1874)) b_lambda!283097)))

(declare-fun bs!1916119 () Bool)

(declare-fun d!2273738 () Bool)

(assert (= bs!1916119 (and d!2273738 d!2273708)))

(assert (=> bs!1916119 (= (dynLambda!29380 lambda!453553 e!9239) (not (dynLambda!29380 p!1874 e!9239)))))

(declare-fun b_lambda!283103 () Bool)

(assert (=> (not b_lambda!283103) (not bs!1916119)))

(assert (=> bs!1916119 t!385817))

(declare-fun b_and!351849 () Bool)

(assert (= b_and!351847 (and (=> t!385817 result!353592) b_and!351849)))

(assert (=> bs!1916119 m!7987488))

(assert (=> (and d!2273708 (= lambda!453553 p!1874) b!7321807) d!2273738))

(declare-fun bs!1916120 () Bool)

(declare-fun d!2273740 () Bool)

(assert (= bs!1916120 (and d!2273740 d!2273712)))

(assert (=> bs!1916120 (= (dynLambda!29380 lambda!453554 e!9239) (not (dynLambda!29380 p!1874 e!9239)))))

(declare-fun b_lambda!283105 () Bool)

(assert (=> (not b_lambda!283105) (not bs!1916120)))

(assert (=> bs!1916120 t!385817))

(declare-fun b_and!351851 () Bool)

(assert (= b_and!351849 (and (=> t!385817 result!353592) b_and!351851)))

(assert (=> bs!1916120 m!7987488))

(assert (=> (and d!2273712 (= lambda!453554 p!1874) b!7321807) d!2273740))

(declare-fun b_lambda!283099 () Bool)

(assert (= b_lambda!283091 (or d!2273712 b_lambda!283099)))

(declare-fun bs!1916121 () Bool)

(declare-fun d!2273742 () Bool)

(assert (= bs!1916121 (and d!2273742 d!2273712)))

(assert (=> bs!1916121 (= (dynLambda!29380 lambda!453554 (h!77771 (t!385818 l!3043))) (not (dynLambda!29380 p!1874 (h!77771 (t!385818 l!3043)))))))

(declare-fun b_lambda!283107 () Bool)

(assert (=> (not b_lambda!283107) (not bs!1916121)))

(declare-fun t!385822 () Bool)

(declare-fun tb!262385 () Bool)

(assert (=> (and start!714410 (= p!1874 p!1874) t!385822) tb!262385))

(declare-fun result!353600 () Bool)

(assert (=> tb!262385 (= result!353600 true)))

(assert (=> bs!1916121 t!385822))

(declare-fun b_and!351853 () Bool)

(assert (= b_and!351851 (and (=> t!385822 result!353600) b_and!351853)))

(declare-fun m!7987550 () Bool)

(assert (=> bs!1916121 m!7987550))

(assert (=> b!7321846 d!2273742))

(check-sat (not b!7321859) (not b!7321847) (not b_lambda!283097) (not b!7321855) (not b!7321853) (not b_lambda!283103) (not b_lambda!283095) b_and!351853 (not b!7321860) (not b_lambda!283099) (not d!2273732) (not d!2273728) tp_is_empty!48147 (not b_next!135091) (not b_lambda!283107) (not b_lambda!283105) (not b_lambda!283101) (not b!7321857))
(check-sat b_and!351853 (not b_next!135091))
