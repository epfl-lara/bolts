; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667648 () Bool)

(assert start!667648)

(declare-fun b!6957702 () Bool)

(assert (=> b!6957702 true))

(assert (=> b!6957702 true))

(declare-fun bs!1858174 () Bool)

(declare-fun b!6957709 () Bool)

(assert (= bs!1858174 (and b!6957709 b!6957702)))

(declare-fun lambda!396928 () Int)

(declare-fun lambda!396927 () Int)

(assert (=> bs!1858174 (not (= lambda!396928 lambda!396927))))

(assert (=> b!6957709 true))

(assert (=> b!6957709 true))

(declare-fun bs!1858175 () Bool)

(declare-fun b!6957705 () Bool)

(assert (= bs!1858175 (and b!6957705 b!6957702)))

(declare-datatypes ((C!34394 0))(
  ( (C!34395 (val!26899 Int)) )
))
(declare-datatypes ((Regex!17062 0))(
  ( (ElementMatch!17062 (c!1290220 C!34394)) (Concat!25907 (regOne!34636 Regex!17062) (regTwo!34636 Regex!17062)) (EmptyExpr!17062) (Star!17062 (reg!17391 Regex!17062)) (EmptyLang!17062) (Union!17062 (regOne!34637 Regex!17062) (regTwo!34637 Regex!17062)) )
))
(declare-fun lt!2478666 () Regex!17062)

(declare-fun rInner!765 () Regex!17062)

(declare-fun lambda!396929 () Int)

(assert (=> bs!1858175 (= (= lt!2478666 (Star!17062 rInner!765)) (= lambda!396929 lambda!396927))))

(declare-fun bs!1858176 () Bool)

(assert (= bs!1858176 (and b!6957705 b!6957709)))

(assert (=> bs!1858176 (not (= lambda!396929 lambda!396928))))

(assert (=> b!6957705 true))

(assert (=> b!6957705 true))

(assert (=> b!6957705 true))

(declare-fun res!2839058 () Bool)

(declare-fun e!4183671 () Bool)

(assert (=> b!6957702 (=> (not res!2839058) (not e!4183671))))

(declare-fun Exists!4058 (Int) Bool)

(assert (=> b!6957702 (= res!2839058 (not (Exists!4058 lambda!396927)))))

(declare-fun b!6957703 () Bool)

(declare-fun e!4183670 () Bool)

(declare-fun tp!1918022 () Bool)

(declare-fun tp!1918020 () Bool)

(assert (=> b!6957703 (= e!4183670 (and tp!1918022 tp!1918020))))

(declare-fun b!6957704 () Bool)

(declare-fun tp!1918023 () Bool)

(assert (=> b!6957704 (= e!4183670 tp!1918023)))

(declare-fun e!4183672 () Bool)

(assert (=> b!6957705 (= e!4183672 false)))

(declare-datatypes ((Unit!160792 0))(
  ( (Unit!160793) )
))
(declare-fun lt!2478664 () Unit!160792)

(declare-datatypes ((List!66815 0))(
  ( (Nil!66691) (Cons!66691 (h!73139 C!34394) (t!380558 List!66815)) )
))
(declare-datatypes ((tuple2!67826 0))(
  ( (tuple2!67827 (_1!37216 List!66815) (_2!37216 List!66815)) )
))
(declare-fun lt!2478663 () tuple2!67826)

(declare-fun ExistsThe!27 (tuple2!67826 Int) Unit!160792)

(assert (=> b!6957705 (= lt!2478664 (ExistsThe!27 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)) lambda!396929))))

(declare-fun b!6957706 () Bool)

(declare-fun tp!1918021 () Bool)

(declare-fun tp!1918019 () Bool)

(assert (=> b!6957706 (= e!4183670 (and tp!1918021 tp!1918019))))

(declare-fun b!6957707 () Bool)

(declare-fun e!4183669 () Bool)

(declare-fun tp_is_empty!43349 () Bool)

(declare-fun tp!1918018 () Bool)

(assert (=> b!6957707 (= e!4183669 (and tp_is_empty!43349 tp!1918018))))

(declare-fun res!2839057 () Bool)

(assert (=> start!667648 (=> (not res!2839057) (not e!4183671))))

(declare-fun validRegex!8768 (Regex!17062) Bool)

(assert (=> start!667648 (= res!2839057 (validRegex!8768 rInner!765))))

(assert (=> start!667648 e!4183671))

(assert (=> start!667648 e!4183670))

(assert (=> start!667648 e!4183669))

(declare-fun b!6957708 () Bool)

(declare-fun res!2839060 () Bool)

(assert (=> b!6957708 (=> (not res!2839060) (not e!4183671))))

(declare-fun nullable!6875 (Regex!17062) Bool)

(assert (=> b!6957708 (= res!2839060 (not (nullable!6875 rInner!765)))))

(declare-fun res!2839059 () Bool)

(assert (=> b!6957709 (=> (not res!2839059) (not e!4183671))))

(assert (=> b!6957709 (= res!2839059 (Exists!4058 lambda!396928))))

(declare-fun b!6957710 () Bool)

(declare-fun res!2839063 () Bool)

(assert (=> b!6957710 (=> (not res!2839063) (not e!4183671))))

(assert (=> b!6957710 (= res!2839063 (not (Exists!4058 lambda!396927)))))

(declare-fun b!6957711 () Bool)

(assert (=> b!6957711 (= e!4183671 (not e!4183672))))

(declare-fun res!2839062 () Bool)

(assert (=> b!6957711 (=> res!2839062 e!4183672)))

(declare-fun s!10388 () List!66815)

(declare-fun ++!15090 (List!66815 List!66815) List!66815)

(assert (=> b!6957711 (= res!2839062 (not (= (++!15090 (_1!37216 lt!2478663) (_2!37216 lt!2478663)) s!10388)))))

(declare-fun lt!2478665 () Bool)

(declare-fun matchRSpec!4087 (Regex!17062 List!66815) Bool)

(assert (=> b!6957711 (= lt!2478665 (matchRSpec!4087 lt!2478666 (_2!37216 lt!2478663)))))

(declare-fun matchR!9172 (Regex!17062 List!66815) Bool)

(assert (=> b!6957711 (= lt!2478665 (matchR!9172 lt!2478666 (_2!37216 lt!2478663)))))

(declare-fun lt!2478667 () Unit!160792)

(declare-fun mainMatchTheorem!4081 (Regex!17062 List!66815) Unit!160792)

(assert (=> b!6957711 (= lt!2478667 (mainMatchTheorem!4081 lt!2478666 (_2!37216 lt!2478663)))))

(assert (=> b!6957711 (= lt!2478666 (Star!17062 rInner!765))))

(declare-fun lt!2478662 () Bool)

(assert (=> b!6957711 (= lt!2478662 (matchRSpec!4087 rInner!765 (_1!37216 lt!2478663)))))

(assert (=> b!6957711 (= lt!2478662 (matchR!9172 rInner!765 (_1!37216 lt!2478663)))))

(declare-fun lt!2478668 () Unit!160792)

(assert (=> b!6957711 (= lt!2478668 (mainMatchTheorem!4081 rInner!765 (_1!37216 lt!2478663)))))

(declare-fun pickWitness!385 (Int) tuple2!67826)

(assert (=> b!6957711 (= lt!2478663 (pickWitness!385 lambda!396928))))

(declare-fun b!6957712 () Bool)

(assert (=> b!6957712 (= e!4183670 tp_is_empty!43349)))

(declare-fun b!6957713 () Bool)

(declare-fun res!2839061 () Bool)

(assert (=> b!6957713 (=> res!2839061 e!4183672)))

(assert (=> b!6957713 (= res!2839061 (or (not lt!2478662) (not lt!2478665)))))

(assert (= (and start!667648 res!2839057) b!6957708))

(assert (= (and b!6957708 res!2839060) b!6957702))

(assert (= (and b!6957702 res!2839058) b!6957710))

(assert (= (and b!6957710 res!2839063) b!6957709))

(assert (= (and b!6957709 res!2839059) b!6957711))

(assert (= (and b!6957711 (not res!2839062)) b!6957713))

(assert (= (and b!6957713 (not res!2839061)) b!6957705))

(assert (= (and start!667648 (is-ElementMatch!17062 rInner!765)) b!6957712))

(assert (= (and start!667648 (is-Concat!25907 rInner!765)) b!6957703))

(assert (= (and start!667648 (is-Star!17062 rInner!765)) b!6957704))

(assert (= (and start!667648 (is-Union!17062 rInner!765)) b!6957706))

(assert (= (and start!667648 (is-Cons!66691 s!10388)) b!6957707))

(declare-fun m!7654972 () Bool)

(assert (=> b!6957709 m!7654972))

(declare-fun m!7654974 () Bool)

(assert (=> b!6957702 m!7654974))

(declare-fun m!7654976 () Bool)

(assert (=> b!6957708 m!7654976))

(declare-fun m!7654978 () Bool)

(assert (=> b!6957711 m!7654978))

(declare-fun m!7654980 () Bool)

(assert (=> b!6957711 m!7654980))

(declare-fun m!7654982 () Bool)

(assert (=> b!6957711 m!7654982))

(declare-fun m!7654984 () Bool)

(assert (=> b!6957711 m!7654984))

(declare-fun m!7654986 () Bool)

(assert (=> b!6957711 m!7654986))

(declare-fun m!7654988 () Bool)

(assert (=> b!6957711 m!7654988))

(declare-fun m!7654990 () Bool)

(assert (=> b!6957711 m!7654990))

(declare-fun m!7654992 () Bool)

(assert (=> b!6957711 m!7654992))

(declare-fun m!7654994 () Bool)

(assert (=> start!667648 m!7654994))

(assert (=> b!6957710 m!7654974))

(declare-fun m!7654996 () Bool)

(assert (=> b!6957705 m!7654996))

(push 1)

(assert (not b!6957703))

(assert (not b!6957705))

(assert (not b!6957704))

(assert tp_is_empty!43349)

(assert (not b!6957710))

(assert (not b!6957702))

(assert (not b!6957709))

(assert (not b!6957706))

(assert (not b!6957708))

(assert (not start!667648))

(assert (not b!6957707))

(assert (not b!6957711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169745 () Bool)

(declare-fun choose!51865 (Int) Bool)

(assert (=> d!2169745 (= (Exists!4058 lambda!396927) (choose!51865 lambda!396927))))

(declare-fun bs!1858180 () Bool)

(assert (= bs!1858180 d!2169745))

(declare-fun m!7655024 () Bool)

(assert (=> bs!1858180 m!7655024))

(assert (=> b!6957710 d!2169745))

(declare-fun d!2169747 () Bool)

(assert (=> d!2169747 (Exists!4058 lambda!396929)))

(declare-fun lt!2478692 () Unit!160792)

(declare-fun choose!51866 (tuple2!67826 Int) Unit!160792)

(assert (=> d!2169747 (= lt!2478692 (choose!51866 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)) lambda!396929))))

(declare-fun dynLambda!26602 (Int tuple2!67826) Bool)

(assert (=> d!2169747 (dynLambda!26602 lambda!396929 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)))))

(assert (=> d!2169747 (= (ExistsThe!27 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)) lambda!396929) lt!2478692)))

(declare-fun b_lambda!260497 () Bool)

(assert (=> (not b_lambda!260497) (not d!2169747)))

(declare-fun bs!1858183 () Bool)

(assert (= bs!1858183 d!2169747))

(declare-fun m!7655030 () Bool)

(assert (=> bs!1858183 m!7655030))

(declare-fun m!7655032 () Bool)

(assert (=> bs!1858183 m!7655032))

(declare-fun m!7655034 () Bool)

(assert (=> bs!1858183 m!7655034))

(assert (=> b!6957705 d!2169747))

(declare-fun b!6957818 () Bool)

(declare-fun e!4183729 () Bool)

(declare-fun call!631862 () Bool)

(assert (=> b!6957818 (= e!4183729 call!631862)))

(declare-fun c!1290231 () Bool)

(declare-fun c!1290230 () Bool)

(declare-fun bm!631853 () Bool)

(declare-fun call!631859 () Bool)

(assert (=> bm!631853 (= call!631859 (validRegex!8768 (ite c!1290231 (reg!17391 rInner!765) (ite c!1290230 (regTwo!34637 rInner!765) (regOne!34636 rInner!765)))))))

(declare-fun b!6957819 () Bool)

(declare-fun e!4183726 () Bool)

(declare-fun e!4183725 () Bool)

(assert (=> b!6957819 (= e!4183726 e!4183725)))

(assert (=> b!6957819 (= c!1290231 (is-Star!17062 rInner!765))))

(declare-fun b!6957820 () Bool)

(declare-fun e!4183724 () Bool)

(assert (=> b!6957820 (= e!4183725 e!4183724)))

(declare-fun res!2839131 () Bool)

(assert (=> b!6957820 (= res!2839131 (not (nullable!6875 (reg!17391 rInner!765))))))

(assert (=> b!6957820 (=> (not res!2839131) (not e!4183724))))

(declare-fun b!6957821 () Bool)

(declare-fun e!4183723 () Bool)

(assert (=> b!6957821 (= e!4183725 e!4183723)))

(assert (=> b!6957821 (= c!1290230 (is-Union!17062 rInner!765))))

(declare-fun b!6957823 () Bool)

(declare-fun e!4183727 () Bool)

(declare-fun call!631858 () Bool)

(assert (=> b!6957823 (= e!4183727 call!631858)))

(declare-fun b!6957824 () Bool)

(declare-fun res!2839129 () Bool)

(assert (=> b!6957824 (=> (not res!2839129) (not e!4183729))))

(assert (=> b!6957824 (= res!2839129 call!631858)))

(assert (=> b!6957824 (= e!4183723 e!4183729)))

(declare-fun b!6957825 () Bool)

(assert (=> b!6957825 (= e!4183724 call!631859)))

(declare-fun b!6957826 () Bool)

(declare-fun res!2839130 () Bool)

(declare-fun e!4183728 () Bool)

(assert (=> b!6957826 (=> res!2839130 e!4183728)))

(assert (=> b!6957826 (= res!2839130 (not (is-Concat!25907 rInner!765)))))

(assert (=> b!6957826 (= e!4183723 e!4183728)))

(declare-fun b!6957822 () Bool)

(assert (=> b!6957822 (= e!4183728 e!4183727)))

(declare-fun res!2839132 () Bool)

(assert (=> b!6957822 (=> (not res!2839132) (not e!4183727))))

(assert (=> b!6957822 (= res!2839132 call!631862)))

(declare-fun d!2169753 () Bool)

(declare-fun res!2839133 () Bool)

(assert (=> d!2169753 (=> res!2839133 e!4183726)))

(assert (=> d!2169753 (= res!2839133 (is-ElementMatch!17062 rInner!765))))

(assert (=> d!2169753 (= (validRegex!8768 rInner!765) e!4183726)))

(declare-fun bm!631854 () Bool)

(assert (=> bm!631854 (= call!631858 (validRegex!8768 (ite c!1290230 (regOne!34637 rInner!765) (regTwo!34636 rInner!765))))))

(declare-fun bm!631855 () Bool)

(assert (=> bm!631855 (= call!631862 call!631859)))

(assert (= (and d!2169753 (not res!2839133)) b!6957819))

(assert (= (and b!6957819 c!1290231) b!6957820))

(assert (= (and b!6957819 (not c!1290231)) b!6957821))

(assert (= (and b!6957820 res!2839131) b!6957825))

(assert (= (and b!6957821 c!1290230) b!6957824))

(assert (= (and b!6957821 (not c!1290230)) b!6957826))

(assert (= (and b!6957824 res!2839129) b!6957818))

(assert (= (and b!6957826 (not res!2839130)) b!6957822))

(assert (= (and b!6957822 res!2839132) b!6957823))

(assert (= (or b!6957824 b!6957823) bm!631854))

(assert (= (or b!6957818 b!6957822) bm!631855))

(assert (= (or b!6957825 bm!631855) bm!631853))

(declare-fun m!7655036 () Bool)

(assert (=> bm!631853 m!7655036))

(declare-fun m!7655038 () Bool)

(assert (=> b!6957820 m!7655038))

(declare-fun m!7655040 () Bool)

(assert (=> bm!631854 m!7655040))

(assert (=> start!667648 d!2169753))

(declare-fun d!2169755 () Bool)

(assert (=> d!2169755 (= (Exists!4058 lambda!396928) (choose!51865 lambda!396928))))

(declare-fun bs!1858184 () Bool)

(assert (= bs!1858184 d!2169755))

(declare-fun m!7655042 () Bool)

(assert (=> bs!1858184 m!7655042))

(assert (=> b!6957709 d!2169755))

(assert (=> b!6957702 d!2169745))

(declare-fun d!2169757 () Bool)

(declare-fun nullableFct!2585 (Regex!17062) Bool)

(assert (=> d!2169757 (= (nullable!6875 rInner!765) (nullableFct!2585 rInner!765))))

(declare-fun bs!1858185 () Bool)

(assert (= bs!1858185 d!2169757))

(declare-fun m!7655044 () Bool)

(assert (=> bs!1858185 m!7655044))

(assert (=> b!6957708 d!2169757))

(declare-fun b!6957835 () Bool)

(declare-fun e!4183735 () List!66815)

(assert (=> b!6957835 (= e!4183735 (_2!37216 lt!2478663))))

(declare-fun b!6957837 () Bool)

(declare-fun res!2839138 () Bool)

(declare-fun e!4183734 () Bool)

(assert (=> b!6957837 (=> (not res!2839138) (not e!4183734))))

(declare-fun lt!2478695 () List!66815)

(declare-fun size!40852 (List!66815) Int)

(assert (=> b!6957837 (= res!2839138 (= (size!40852 lt!2478695) (+ (size!40852 (_1!37216 lt!2478663)) (size!40852 (_2!37216 lt!2478663)))))))

(declare-fun d!2169759 () Bool)

(assert (=> d!2169759 e!4183734))

(declare-fun res!2839139 () Bool)

(assert (=> d!2169759 (=> (not res!2839139) (not e!4183734))))

(declare-fun content!13155 (List!66815) (Set C!34394))

(assert (=> d!2169759 (= res!2839139 (= (content!13155 lt!2478695) (set.union (content!13155 (_1!37216 lt!2478663)) (content!13155 (_2!37216 lt!2478663)))))))

(assert (=> d!2169759 (= lt!2478695 e!4183735)))

(declare-fun c!1290234 () Bool)

(assert (=> d!2169759 (= c!1290234 (is-Nil!66691 (_1!37216 lt!2478663)))))

(assert (=> d!2169759 (= (++!15090 (_1!37216 lt!2478663) (_2!37216 lt!2478663)) lt!2478695)))

(declare-fun b!6957838 () Bool)

(assert (=> b!6957838 (= e!4183734 (or (not (= (_2!37216 lt!2478663) Nil!66691)) (= lt!2478695 (_1!37216 lt!2478663))))))

(declare-fun b!6957836 () Bool)

(assert (=> b!6957836 (= e!4183735 (Cons!66691 (h!73139 (_1!37216 lt!2478663)) (++!15090 (t!380558 (_1!37216 lt!2478663)) (_2!37216 lt!2478663))))))

(assert (= (and d!2169759 c!1290234) b!6957835))

(assert (= (and d!2169759 (not c!1290234)) b!6957836))

(assert (= (and d!2169759 res!2839139) b!6957837))

(assert (= (and b!6957837 res!2839138) b!6957838))

(declare-fun m!7655046 () Bool)

(assert (=> b!6957837 m!7655046))

(declare-fun m!7655048 () Bool)

(assert (=> b!6957837 m!7655048))

(declare-fun m!7655050 () Bool)

(assert (=> b!6957837 m!7655050))

(declare-fun m!7655052 () Bool)

(assert (=> d!2169759 m!7655052))

(declare-fun m!7655054 () Bool)

(assert (=> d!2169759 m!7655054))

(declare-fun m!7655056 () Bool)

(assert (=> d!2169759 m!7655056))

(declare-fun m!7655058 () Bool)

(assert (=> b!6957836 m!7655058))

(assert (=> b!6957711 d!2169759))

(declare-fun b!6957876 () Bool)

(declare-fun e!4183761 () Bool)

(declare-fun e!4183762 () Bool)

(assert (=> b!6957876 (= e!4183761 e!4183762)))

(declare-fun res!2839167 () Bool)

(assert (=> b!6957876 (=> res!2839167 e!4183762)))

(declare-fun call!631870 () Bool)

(assert (=> b!6957876 (= res!2839167 call!631870)))

(declare-fun b!6957877 () Bool)

(declare-fun res!2839166 () Bool)

(declare-fun e!4183760 () Bool)

(assert (=> b!6957877 (=> (not res!2839166) (not e!4183760))))

(declare-fun isEmpty!38927 (List!66815) Bool)

(declare-fun tail!13008 (List!66815) List!66815)

(assert (=> b!6957877 (= res!2839166 (isEmpty!38927 (tail!13008 (_1!37216 lt!2478663))))))

(declare-fun b!6957878 () Bool)

(declare-fun head!13956 (List!66815) C!34394)

(assert (=> b!6957878 (= e!4183762 (not (= (head!13956 (_1!37216 lt!2478663)) (c!1290220 rInner!765))))))

(declare-fun b!6957879 () Bool)

(declare-fun res!2839161 () Bool)

(declare-fun e!4183759 () Bool)

(assert (=> b!6957879 (=> res!2839161 e!4183759)))

(assert (=> b!6957879 (= res!2839161 e!4183760)))

(declare-fun res!2839164 () Bool)

(assert (=> b!6957879 (=> (not res!2839164) (not e!4183760))))

(declare-fun lt!2478700 () Bool)

(assert (=> b!6957879 (= res!2839164 lt!2478700)))

(declare-fun bm!631865 () Bool)

(assert (=> bm!631865 (= call!631870 (isEmpty!38927 (_1!37216 lt!2478663)))))

(declare-fun b!6957880 () Bool)

(assert (=> b!6957880 (= e!4183759 e!4183761)))

(declare-fun res!2839163 () Bool)

(assert (=> b!6957880 (=> (not res!2839163) (not e!4183761))))

(assert (=> b!6957880 (= res!2839163 (not lt!2478700))))

(declare-fun b!6957881 () Bool)

(declare-fun e!4183758 () Bool)

(assert (=> b!6957881 (= e!4183758 (not lt!2478700))))

(declare-fun b!6957882 () Bool)

(declare-fun e!4183757 () Bool)

(declare-fun derivativeStep!5503 (Regex!17062 C!34394) Regex!17062)

(assert (=> b!6957882 (= e!4183757 (matchR!9172 (derivativeStep!5503 rInner!765 (head!13956 (_1!37216 lt!2478663))) (tail!13008 (_1!37216 lt!2478663))))))

(declare-fun d!2169761 () Bool)

(declare-fun e!4183763 () Bool)

(assert (=> d!2169761 e!4183763))

(declare-fun c!1290245 () Bool)

(assert (=> d!2169761 (= c!1290245 (is-EmptyExpr!17062 rInner!765))))

(assert (=> d!2169761 (= lt!2478700 e!4183757)))

(declare-fun c!1290243 () Bool)

(assert (=> d!2169761 (= c!1290243 (isEmpty!38927 (_1!37216 lt!2478663)))))

(assert (=> d!2169761 (validRegex!8768 rInner!765)))

(assert (=> d!2169761 (= (matchR!9172 rInner!765 (_1!37216 lt!2478663)) lt!2478700)))

(declare-fun b!6957883 () Bool)

(declare-fun res!2839168 () Bool)

(assert (=> b!6957883 (=> (not res!2839168) (not e!4183760))))

(assert (=> b!6957883 (= res!2839168 (not call!631870))))

(declare-fun b!6957884 () Bool)

(declare-fun res!2839165 () Bool)

(assert (=> b!6957884 (=> res!2839165 e!4183759)))

(assert (=> b!6957884 (= res!2839165 (not (is-ElementMatch!17062 rInner!765)))))

(assert (=> b!6957884 (= e!4183758 e!4183759)))

(declare-fun b!6957885 () Bool)

(assert (=> b!6957885 (= e!4183760 (= (head!13956 (_1!37216 lt!2478663)) (c!1290220 rInner!765)))))

(declare-fun b!6957886 () Bool)

(assert (=> b!6957886 (= e!4183757 (nullable!6875 rInner!765))))

(declare-fun b!6957887 () Bool)

(declare-fun res!2839162 () Bool)

(assert (=> b!6957887 (=> res!2839162 e!4183762)))

(assert (=> b!6957887 (= res!2839162 (not (isEmpty!38927 (tail!13008 (_1!37216 lt!2478663)))))))

(declare-fun b!6957888 () Bool)

(assert (=> b!6957888 (= e!4183763 (= lt!2478700 call!631870))))

(declare-fun b!6957889 () Bool)

(assert (=> b!6957889 (= e!4183763 e!4183758)))

(declare-fun c!1290244 () Bool)

(assert (=> b!6957889 (= c!1290244 (is-EmptyLang!17062 rInner!765))))

(assert (= (and d!2169761 c!1290243) b!6957886))

(assert (= (and d!2169761 (not c!1290243)) b!6957882))

(assert (= (and d!2169761 c!1290245) b!6957888))

(assert (= (and d!2169761 (not c!1290245)) b!6957889))

(assert (= (and b!6957889 c!1290244) b!6957881))

(assert (= (and b!6957889 (not c!1290244)) b!6957884))

(assert (= (and b!6957884 (not res!2839165)) b!6957879))

(assert (= (and b!6957879 res!2839164) b!6957883))

(assert (= (and b!6957883 res!2839168) b!6957877))

(assert (= (and b!6957877 res!2839166) b!6957885))

(assert (= (and b!6957879 (not res!2839161)) b!6957880))

(assert (= (and b!6957880 res!2839163) b!6957876))

(assert (= (and b!6957876 (not res!2839167)) b!6957887))

(assert (= (and b!6957887 (not res!2839162)) b!6957878))

(assert (= (or b!6957888 b!6957876 b!6957883) bm!631865))

(declare-fun m!7655070 () Bool)

(assert (=> b!6957885 m!7655070))

(assert (=> b!6957878 m!7655070))

(declare-fun m!7655072 () Bool)

(assert (=> b!6957877 m!7655072))

(assert (=> b!6957877 m!7655072))

(declare-fun m!7655074 () Bool)

(assert (=> b!6957877 m!7655074))

(assert (=> b!6957887 m!7655072))

(assert (=> b!6957887 m!7655072))

(assert (=> b!6957887 m!7655074))

(assert (=> b!6957882 m!7655070))

(assert (=> b!6957882 m!7655070))

(declare-fun m!7655076 () Bool)

(assert (=> b!6957882 m!7655076))

(assert (=> b!6957882 m!7655072))

(assert (=> b!6957882 m!7655076))

(assert (=> b!6957882 m!7655072))

(declare-fun m!7655078 () Bool)

(assert (=> b!6957882 m!7655078))

(declare-fun m!7655080 () Bool)

(assert (=> d!2169761 m!7655080))

(assert (=> d!2169761 m!7654994))

(assert (=> b!6957886 m!7654976))

(assert (=> bm!631865 m!7655080))

(assert (=> b!6957711 d!2169761))

(declare-fun bs!1858187 () Bool)

(declare-fun b!6957951 () Bool)

(assert (= bs!1858187 (and b!6957951 b!6957702)))

(declare-fun lambda!396947 () Int)

(assert (=> bs!1858187 (not (= lambda!396947 lambda!396927))))

(declare-fun bs!1858188 () Bool)

(assert (= bs!1858188 (and b!6957951 b!6957709)))

(assert (=> bs!1858188 (= (and (= (_2!37216 lt!2478663) s!10388) (= (reg!17391 lt!2478666) rInner!765) (= lt!2478666 (Star!17062 rInner!765))) (= lambda!396947 lambda!396928))))

(declare-fun bs!1858189 () Bool)

(assert (= bs!1858189 (and b!6957951 b!6957705)))

(assert (=> bs!1858189 (not (= lambda!396947 lambda!396929))))

(assert (=> b!6957951 true))

(assert (=> b!6957951 true))

(declare-fun bs!1858190 () Bool)

(declare-fun b!6957945 () Bool)

(assert (= bs!1858190 (and b!6957945 b!6957702)))

(declare-fun lambda!396950 () Int)

(assert (=> bs!1858190 (not (= lambda!396950 lambda!396927))))

(declare-fun bs!1858191 () Bool)

(assert (= bs!1858191 (and b!6957945 b!6957709)))

(assert (=> bs!1858191 (not (= lambda!396950 lambda!396928))))

(declare-fun bs!1858192 () Bool)

(assert (= bs!1858192 (and b!6957945 b!6957705)))

(assert (=> bs!1858192 (not (= lambda!396950 lambda!396929))))

(declare-fun bs!1858193 () Bool)

(assert (= bs!1858193 (and b!6957945 b!6957951)))

(assert (=> bs!1858193 (not (= lambda!396950 lambda!396947))))

(assert (=> b!6957945 true))

(assert (=> b!6957945 true))

(declare-fun bm!631870 () Bool)

(declare-fun c!1290262 () Bool)

(declare-fun call!631875 () Bool)

(assert (=> bm!631870 (= call!631875 (Exists!4058 (ite c!1290262 lambda!396947 lambda!396950)))))

(declare-fun b!6957944 () Bool)

(declare-fun c!1290263 () Bool)

(assert (=> b!6957944 (= c!1290263 (is-ElementMatch!17062 lt!2478666))))

(declare-fun e!4183800 () Bool)

(declare-fun e!4183802 () Bool)

(assert (=> b!6957944 (= e!4183800 e!4183802)))

(declare-fun e!4183796 () Bool)

(assert (=> b!6957945 (= e!4183796 call!631875)))

(declare-fun bm!631871 () Bool)

(declare-fun call!631876 () Bool)

(assert (=> bm!631871 (= call!631876 (isEmpty!38927 (_2!37216 lt!2478663)))))

(declare-fun b!6957946 () Bool)

(declare-fun e!4183801 () Bool)

(assert (=> b!6957946 (= e!4183801 (matchRSpec!4087 (regTwo!34637 lt!2478666) (_2!37216 lt!2478663)))))

(declare-fun d!2169767 () Bool)

(declare-fun c!1290264 () Bool)

(assert (=> d!2169767 (= c!1290264 (is-EmptyExpr!17062 lt!2478666))))

(declare-fun e!4183799 () Bool)

(assert (=> d!2169767 (= (matchRSpec!4087 lt!2478666 (_2!37216 lt!2478663)) e!4183799)))

(declare-fun b!6957947 () Bool)

(assert (=> b!6957947 (= e!4183799 call!631876)))

(declare-fun b!6957948 () Bool)

(assert (=> b!6957948 (= e!4183799 e!4183800)))

(declare-fun res!2839193 () Bool)

(assert (=> b!6957948 (= res!2839193 (not (is-EmptyLang!17062 lt!2478666)))))

(assert (=> b!6957948 (=> (not res!2839193) (not e!4183800))))

(declare-fun b!6957949 () Bool)

(declare-fun res!2839191 () Bool)

(declare-fun e!4183798 () Bool)

(assert (=> b!6957949 (=> res!2839191 e!4183798)))

(assert (=> b!6957949 (= res!2839191 call!631876)))

(assert (=> b!6957949 (= e!4183796 e!4183798)))

(declare-fun b!6957950 () Bool)

(assert (=> b!6957950 (= e!4183802 (= (_2!37216 lt!2478663) (Cons!66691 (c!1290220 lt!2478666) Nil!66691)))))

(assert (=> b!6957951 (= e!4183798 call!631875)))

(declare-fun b!6957952 () Bool)

(declare-fun e!4183797 () Bool)

(assert (=> b!6957952 (= e!4183797 e!4183801)))

(declare-fun res!2839192 () Bool)

(assert (=> b!6957952 (= res!2839192 (matchRSpec!4087 (regOne!34637 lt!2478666) (_2!37216 lt!2478663)))))

(assert (=> b!6957952 (=> res!2839192 e!4183801)))

(declare-fun b!6957953 () Bool)

(assert (=> b!6957953 (= e!4183797 e!4183796)))

(assert (=> b!6957953 (= c!1290262 (is-Star!17062 lt!2478666))))

(declare-fun b!6957954 () Bool)

(declare-fun c!1290265 () Bool)

(assert (=> b!6957954 (= c!1290265 (is-Union!17062 lt!2478666))))

(assert (=> b!6957954 (= e!4183802 e!4183797)))

(assert (= (and d!2169767 c!1290264) b!6957947))

(assert (= (and d!2169767 (not c!1290264)) b!6957948))

(assert (= (and b!6957948 res!2839193) b!6957944))

(assert (= (and b!6957944 c!1290263) b!6957950))

(assert (= (and b!6957944 (not c!1290263)) b!6957954))

(assert (= (and b!6957954 c!1290265) b!6957952))

(assert (= (and b!6957954 (not c!1290265)) b!6957953))

(assert (= (and b!6957952 (not res!2839192)) b!6957946))

(assert (= (and b!6957953 c!1290262) b!6957949))

(assert (= (and b!6957953 (not c!1290262)) b!6957945))

(assert (= (and b!6957949 (not res!2839191)) b!6957951))

(assert (= (or b!6957951 b!6957945) bm!631870))

(assert (= (or b!6957947 b!6957949) bm!631871))

(declare-fun m!7655082 () Bool)

(assert (=> bm!631870 m!7655082))

(declare-fun m!7655084 () Bool)

(assert (=> bm!631871 m!7655084))

(declare-fun m!7655086 () Bool)

(assert (=> b!6957946 m!7655086))

(declare-fun m!7655088 () Bool)

(assert (=> b!6957952 m!7655088))

(assert (=> b!6957711 d!2169767))

(declare-fun d!2169769 () Bool)

(assert (=> d!2169769 (= (matchR!9172 lt!2478666 (_2!37216 lt!2478663)) (matchRSpec!4087 lt!2478666 (_2!37216 lt!2478663)))))

(declare-fun lt!2478704 () Unit!160792)

(declare-fun choose!51867 (Regex!17062 List!66815) Unit!160792)

(assert (=> d!2169769 (= lt!2478704 (choose!51867 lt!2478666 (_2!37216 lt!2478663)))))

(assert (=> d!2169769 (validRegex!8768 lt!2478666)))

(assert (=> d!2169769 (= (mainMatchTheorem!4081 lt!2478666 (_2!37216 lt!2478663)) lt!2478704)))

(declare-fun bs!1858194 () Bool)

(assert (= bs!1858194 d!2169769))

(assert (=> bs!1858194 m!7654986))

(assert (=> bs!1858194 m!7654992))

(declare-fun m!7655090 () Bool)

(assert (=> bs!1858194 m!7655090))

(declare-fun m!7655092 () Bool)

(assert (=> bs!1858194 m!7655092))

(assert (=> b!6957711 d!2169769))

(declare-fun d!2169771 () Bool)

(assert (=> d!2169771 (= (matchR!9172 rInner!765 (_1!37216 lt!2478663)) (matchRSpec!4087 rInner!765 (_1!37216 lt!2478663)))))

(declare-fun lt!2478705 () Unit!160792)

(assert (=> d!2169771 (= lt!2478705 (choose!51867 rInner!765 (_1!37216 lt!2478663)))))

(assert (=> d!2169771 (validRegex!8768 rInner!765)))

(assert (=> d!2169771 (= (mainMatchTheorem!4081 rInner!765 (_1!37216 lt!2478663)) lt!2478705)))

(declare-fun bs!1858195 () Bool)

(assert (= bs!1858195 d!2169771))

(assert (=> bs!1858195 m!7654982))

(assert (=> bs!1858195 m!7654988))

(declare-fun m!7655094 () Bool)

(assert (=> bs!1858195 m!7655094))

(assert (=> bs!1858195 m!7654994))

(assert (=> b!6957711 d!2169771))

(declare-fun bs!1858196 () Bool)

(declare-fun b!6957972 () Bool)

(assert (= bs!1858196 (and b!6957972 b!6957705)))

(declare-fun lambda!396953 () Int)

(assert (=> bs!1858196 (not (= lambda!396953 lambda!396929))))

(declare-fun bs!1858197 () Bool)

(assert (= bs!1858197 (and b!6957972 b!6957709)))

(assert (=> bs!1858197 (= (and (= (_1!37216 lt!2478663) s!10388) (= (reg!17391 rInner!765) rInner!765) (= rInner!765 (Star!17062 rInner!765))) (= lambda!396953 lambda!396928))))

(declare-fun bs!1858198 () Bool)

(assert (= bs!1858198 (and b!6957972 b!6957951)))

(assert (=> bs!1858198 (= (and (= (_1!37216 lt!2478663) (_2!37216 lt!2478663)) (= (reg!17391 rInner!765) (reg!17391 lt!2478666)) (= rInner!765 lt!2478666)) (= lambda!396953 lambda!396947))))

(declare-fun bs!1858199 () Bool)

(assert (= bs!1858199 (and b!6957972 b!6957702)))

(assert (=> bs!1858199 (not (= lambda!396953 lambda!396927))))

(declare-fun bs!1858200 () Bool)

(assert (= bs!1858200 (and b!6957972 b!6957945)))

(assert (=> bs!1858200 (not (= lambda!396953 lambda!396950))))

(assert (=> b!6957972 true))

(assert (=> b!6957972 true))

(declare-fun bs!1858201 () Bool)

(declare-fun b!6957966 () Bool)

(assert (= bs!1858201 (and b!6957966 b!6957972)))

(declare-fun lambda!396954 () Int)

(assert (=> bs!1858201 (not (= lambda!396954 lambda!396953))))

(declare-fun bs!1858202 () Bool)

(assert (= bs!1858202 (and b!6957966 b!6957705)))

(assert (=> bs!1858202 (not (= lambda!396954 lambda!396929))))

(declare-fun bs!1858203 () Bool)

(assert (= bs!1858203 (and b!6957966 b!6957709)))

(assert (=> bs!1858203 (not (= lambda!396954 lambda!396928))))

(declare-fun bs!1858204 () Bool)

(assert (= bs!1858204 (and b!6957966 b!6957951)))

(assert (=> bs!1858204 (not (= lambda!396954 lambda!396947))))

(declare-fun bs!1858205 () Bool)

(assert (= bs!1858205 (and b!6957966 b!6957702)))

(assert (=> bs!1858205 (not (= lambda!396954 lambda!396927))))

(declare-fun bs!1858206 () Bool)

(assert (= bs!1858206 (and b!6957966 b!6957945)))

(assert (=> bs!1858206 (= (and (= (_1!37216 lt!2478663) (_2!37216 lt!2478663)) (= (regOne!34636 rInner!765) (regOne!34636 lt!2478666)) (= (regTwo!34636 rInner!765) (regTwo!34636 lt!2478666))) (= lambda!396954 lambda!396950))))

(assert (=> b!6957966 true))

(assert (=> b!6957966 true))

(declare-fun call!631877 () Bool)

(declare-fun bm!631872 () Bool)

(declare-fun c!1290266 () Bool)

(assert (=> bm!631872 (= call!631877 (Exists!4058 (ite c!1290266 lambda!396953 lambda!396954)))))

(declare-fun b!6957965 () Bool)

(declare-fun c!1290267 () Bool)

(assert (=> b!6957965 (= c!1290267 (is-ElementMatch!17062 rInner!765))))

(declare-fun e!4183811 () Bool)

(declare-fun e!4183813 () Bool)

(assert (=> b!6957965 (= e!4183811 e!4183813)))

(declare-fun e!4183807 () Bool)

(assert (=> b!6957966 (= e!4183807 call!631877)))

(declare-fun bm!631873 () Bool)

(declare-fun call!631878 () Bool)

(assert (=> bm!631873 (= call!631878 (isEmpty!38927 (_1!37216 lt!2478663)))))

(declare-fun b!6957967 () Bool)

(declare-fun e!4183812 () Bool)

(assert (=> b!6957967 (= e!4183812 (matchRSpec!4087 (regTwo!34637 rInner!765) (_1!37216 lt!2478663)))))

(declare-fun d!2169773 () Bool)

(declare-fun c!1290268 () Bool)

(assert (=> d!2169773 (= c!1290268 (is-EmptyExpr!17062 rInner!765))))

(declare-fun e!4183810 () Bool)

(assert (=> d!2169773 (= (matchRSpec!4087 rInner!765 (_1!37216 lt!2478663)) e!4183810)))

(declare-fun b!6957968 () Bool)

(assert (=> b!6957968 (= e!4183810 call!631878)))

(declare-fun b!6957969 () Bool)

(assert (=> b!6957969 (= e!4183810 e!4183811)))

(declare-fun res!2839206 () Bool)

(assert (=> b!6957969 (= res!2839206 (not (is-EmptyLang!17062 rInner!765)))))

(assert (=> b!6957969 (=> (not res!2839206) (not e!4183811))))

(declare-fun b!6957970 () Bool)

(declare-fun res!2839204 () Bool)

(declare-fun e!4183809 () Bool)

(assert (=> b!6957970 (=> res!2839204 e!4183809)))

(assert (=> b!6957970 (= res!2839204 call!631878)))

(assert (=> b!6957970 (= e!4183807 e!4183809)))

(declare-fun b!6957971 () Bool)

(assert (=> b!6957971 (= e!4183813 (= (_1!37216 lt!2478663) (Cons!66691 (c!1290220 rInner!765) Nil!66691)))))

(assert (=> b!6957972 (= e!4183809 call!631877)))

(declare-fun b!6957973 () Bool)

(declare-fun e!4183808 () Bool)

(assert (=> b!6957973 (= e!4183808 e!4183812)))

(declare-fun res!2839205 () Bool)

(assert (=> b!6957973 (= res!2839205 (matchRSpec!4087 (regOne!34637 rInner!765) (_1!37216 lt!2478663)))))

(assert (=> b!6957973 (=> res!2839205 e!4183812)))

(declare-fun b!6957974 () Bool)

(assert (=> b!6957974 (= e!4183808 e!4183807)))

(assert (=> b!6957974 (= c!1290266 (is-Star!17062 rInner!765))))

(declare-fun b!6957975 () Bool)

(declare-fun c!1290269 () Bool)

(assert (=> b!6957975 (= c!1290269 (is-Union!17062 rInner!765))))

(assert (=> b!6957975 (= e!4183813 e!4183808)))

(assert (= (and d!2169773 c!1290268) b!6957968))

(assert (= (and d!2169773 (not c!1290268)) b!6957969))

(assert (= (and b!6957969 res!2839206) b!6957965))

(assert (= (and b!6957965 c!1290267) b!6957971))

(assert (= (and b!6957965 (not c!1290267)) b!6957975))

(assert (= (and b!6957975 c!1290269) b!6957973))

(assert (= (and b!6957975 (not c!1290269)) b!6957974))

(assert (= (and b!6957973 (not res!2839205)) b!6957967))

(assert (= (and b!6957974 c!1290266) b!6957970))

(assert (= (and b!6957974 (not c!1290266)) b!6957966))

(assert (= (and b!6957970 (not res!2839204)) b!6957972))

(assert (= (or b!6957972 b!6957966) bm!631872))

(assert (= (or b!6957968 b!6957970) bm!631873))

(declare-fun m!7655096 () Bool)

(assert (=> bm!631872 m!7655096))

(assert (=> bm!631873 m!7655080))

(declare-fun m!7655098 () Bool)

(assert (=> b!6957967 m!7655098))

(declare-fun m!7655100 () Bool)

(assert (=> b!6957973 m!7655100))

(assert (=> b!6957711 d!2169773))

(declare-fun d!2169775 () Bool)

(declare-fun lt!2478708 () tuple2!67826)

(assert (=> d!2169775 (dynLambda!26602 lambda!396928 lt!2478708)))

(declare-fun choose!51868 (Int) tuple2!67826)

(assert (=> d!2169775 (= lt!2478708 (choose!51868 lambda!396928))))

(assert (=> d!2169775 (Exists!4058 lambda!396928)))

(assert (=> d!2169775 (= (pickWitness!385 lambda!396928) lt!2478708)))

(declare-fun b_lambda!260499 () Bool)

(assert (=> (not b_lambda!260499) (not d!2169775)))

(declare-fun bs!1858207 () Bool)

(assert (= bs!1858207 d!2169775))

(declare-fun m!7655102 () Bool)

(assert (=> bs!1858207 m!7655102))

(declare-fun m!7655104 () Bool)

(assert (=> bs!1858207 m!7655104))

(assert (=> bs!1858207 m!7654972))

(assert (=> b!6957711 d!2169775))

(declare-fun b!6957976 () Bool)

(declare-fun e!4183818 () Bool)

(declare-fun e!4183819 () Bool)

(assert (=> b!6957976 (= e!4183818 e!4183819)))

(declare-fun res!2839213 () Bool)

(assert (=> b!6957976 (=> res!2839213 e!4183819)))

(declare-fun call!631883 () Bool)

(assert (=> b!6957976 (= res!2839213 call!631883)))

(declare-fun b!6957977 () Bool)

(declare-fun res!2839212 () Bool)

(declare-fun e!4183817 () Bool)

(assert (=> b!6957977 (=> (not res!2839212) (not e!4183817))))

(assert (=> b!6957977 (= res!2839212 (isEmpty!38927 (tail!13008 (_2!37216 lt!2478663))))))

(declare-fun b!6957978 () Bool)

(assert (=> b!6957978 (= e!4183819 (not (= (head!13956 (_2!37216 lt!2478663)) (c!1290220 lt!2478666))))))

(declare-fun b!6957979 () Bool)

(declare-fun res!2839207 () Bool)

(declare-fun e!4183816 () Bool)

(assert (=> b!6957979 (=> res!2839207 e!4183816)))

(assert (=> b!6957979 (= res!2839207 e!4183817)))

(declare-fun res!2839210 () Bool)

(assert (=> b!6957979 (=> (not res!2839210) (not e!4183817))))

(declare-fun lt!2478709 () Bool)

(assert (=> b!6957979 (= res!2839210 lt!2478709)))

(declare-fun bm!631876 () Bool)

(assert (=> bm!631876 (= call!631883 (isEmpty!38927 (_2!37216 lt!2478663)))))

(declare-fun b!6957980 () Bool)

(assert (=> b!6957980 (= e!4183816 e!4183818)))

(declare-fun res!2839209 () Bool)

(assert (=> b!6957980 (=> (not res!2839209) (not e!4183818))))

(assert (=> b!6957980 (= res!2839209 (not lt!2478709))))

(declare-fun b!6957981 () Bool)

(declare-fun e!4183815 () Bool)

(assert (=> b!6957981 (= e!4183815 (not lt!2478709))))

(declare-fun b!6957982 () Bool)

(declare-fun e!4183814 () Bool)

(assert (=> b!6957982 (= e!4183814 (matchR!9172 (derivativeStep!5503 lt!2478666 (head!13956 (_2!37216 lt!2478663))) (tail!13008 (_2!37216 lt!2478663))))))

(declare-fun d!2169777 () Bool)

(declare-fun e!4183820 () Bool)

(assert (=> d!2169777 e!4183820))

(declare-fun c!1290272 () Bool)

(assert (=> d!2169777 (= c!1290272 (is-EmptyExpr!17062 lt!2478666))))

(assert (=> d!2169777 (= lt!2478709 e!4183814)))

(declare-fun c!1290270 () Bool)

(assert (=> d!2169777 (= c!1290270 (isEmpty!38927 (_2!37216 lt!2478663)))))

(assert (=> d!2169777 (validRegex!8768 lt!2478666)))

(assert (=> d!2169777 (= (matchR!9172 lt!2478666 (_2!37216 lt!2478663)) lt!2478709)))

(declare-fun b!6957983 () Bool)

(declare-fun res!2839214 () Bool)

(assert (=> b!6957983 (=> (not res!2839214) (not e!4183817))))

(assert (=> b!6957983 (= res!2839214 (not call!631883))))

(declare-fun b!6957984 () Bool)

(declare-fun res!2839211 () Bool)

(assert (=> b!6957984 (=> res!2839211 e!4183816)))

(assert (=> b!6957984 (= res!2839211 (not (is-ElementMatch!17062 lt!2478666)))))

(assert (=> b!6957984 (= e!4183815 e!4183816)))

(declare-fun b!6957985 () Bool)

(assert (=> b!6957985 (= e!4183817 (= (head!13956 (_2!37216 lt!2478663)) (c!1290220 lt!2478666)))))

(declare-fun b!6957986 () Bool)

(assert (=> b!6957986 (= e!4183814 (nullable!6875 lt!2478666))))

(declare-fun b!6957987 () Bool)

(declare-fun res!2839208 () Bool)

(assert (=> b!6957987 (=> res!2839208 e!4183819)))

(assert (=> b!6957987 (= res!2839208 (not (isEmpty!38927 (tail!13008 (_2!37216 lt!2478663)))))))

(declare-fun b!6957988 () Bool)

(assert (=> b!6957988 (= e!4183820 (= lt!2478709 call!631883))))

(declare-fun b!6957989 () Bool)

(assert (=> b!6957989 (= e!4183820 e!4183815)))

(declare-fun c!1290271 () Bool)

(assert (=> b!6957989 (= c!1290271 (is-EmptyLang!17062 lt!2478666))))

(assert (= (and d!2169777 c!1290270) b!6957986))

(assert (= (and d!2169777 (not c!1290270)) b!6957982))

(assert (= (and d!2169777 c!1290272) b!6957988))

(assert (= (and d!2169777 (not c!1290272)) b!6957989))

(assert (= (and b!6957989 c!1290271) b!6957981))

(assert (= (and b!6957989 (not c!1290271)) b!6957984))

(assert (= (and b!6957984 (not res!2839211)) b!6957979))

(assert (= (and b!6957979 res!2839210) b!6957983))

(assert (= (and b!6957983 res!2839214) b!6957977))

(assert (= (and b!6957977 res!2839212) b!6957985))

(assert (= (and b!6957979 (not res!2839207)) b!6957980))

(assert (= (and b!6957980 res!2839209) b!6957976))

(assert (= (and b!6957976 (not res!2839213)) b!6957987))

(assert (= (and b!6957987 (not res!2839208)) b!6957978))

(assert (= (or b!6957988 b!6957976 b!6957983) bm!631876))

(declare-fun m!7655106 () Bool)

(assert (=> b!6957985 m!7655106))

(assert (=> b!6957978 m!7655106))

(declare-fun m!7655108 () Bool)

(assert (=> b!6957977 m!7655108))

(assert (=> b!6957977 m!7655108))

(declare-fun m!7655110 () Bool)

(assert (=> b!6957977 m!7655110))

(assert (=> b!6957987 m!7655108))

(assert (=> b!6957987 m!7655108))

(assert (=> b!6957987 m!7655110))

(assert (=> b!6957982 m!7655106))

(assert (=> b!6957982 m!7655106))

(declare-fun m!7655112 () Bool)

(assert (=> b!6957982 m!7655112))

(assert (=> b!6957982 m!7655108))

(assert (=> b!6957982 m!7655112))

(assert (=> b!6957982 m!7655108))

(declare-fun m!7655114 () Bool)

(assert (=> b!6957982 m!7655114))

(assert (=> d!2169777 m!7655084))

(assert (=> d!2169777 m!7655092))

(declare-fun m!7655116 () Bool)

(assert (=> b!6957986 m!7655116))

(assert (=> bm!631876 m!7655084))

(assert (=> b!6957711 d!2169777))

(declare-fun b!6958003 () Bool)

(declare-fun e!4183823 () Bool)

(declare-fun tp!1918052 () Bool)

(declare-fun tp!1918055 () Bool)

(assert (=> b!6958003 (= e!4183823 (and tp!1918052 tp!1918055))))

(declare-fun b!6958001 () Bool)

(declare-fun tp!1918054 () Bool)

(declare-fun tp!1918053 () Bool)

(assert (=> b!6958001 (= e!4183823 (and tp!1918054 tp!1918053))))

(assert (=> b!6957703 (= tp!1918022 e!4183823)))

(declare-fun b!6958002 () Bool)

(declare-fun tp!1918056 () Bool)

(assert (=> b!6958002 (= e!4183823 tp!1918056)))

(declare-fun b!6958000 () Bool)

(assert (=> b!6958000 (= e!4183823 tp_is_empty!43349)))

(assert (= (and b!6957703 (is-ElementMatch!17062 (regOne!34636 rInner!765))) b!6958000))

(assert (= (and b!6957703 (is-Concat!25907 (regOne!34636 rInner!765))) b!6958001))

(assert (= (and b!6957703 (is-Star!17062 (regOne!34636 rInner!765))) b!6958002))

(assert (= (and b!6957703 (is-Union!17062 (regOne!34636 rInner!765))) b!6958003))

(declare-fun b!6958007 () Bool)

(declare-fun e!4183824 () Bool)

(declare-fun tp!1918057 () Bool)

(declare-fun tp!1918060 () Bool)

(assert (=> b!6958007 (= e!4183824 (and tp!1918057 tp!1918060))))

(declare-fun b!6958005 () Bool)

(declare-fun tp!1918059 () Bool)

(declare-fun tp!1918058 () Bool)

(assert (=> b!6958005 (= e!4183824 (and tp!1918059 tp!1918058))))

(assert (=> b!6957703 (= tp!1918020 e!4183824)))

(declare-fun b!6958006 () Bool)

(declare-fun tp!1918061 () Bool)

(assert (=> b!6958006 (= e!4183824 tp!1918061)))

(declare-fun b!6958004 () Bool)

(assert (=> b!6958004 (= e!4183824 tp_is_empty!43349)))

(assert (= (and b!6957703 (is-ElementMatch!17062 (regTwo!34636 rInner!765))) b!6958004))

(assert (= (and b!6957703 (is-Concat!25907 (regTwo!34636 rInner!765))) b!6958005))

(assert (= (and b!6957703 (is-Star!17062 (regTwo!34636 rInner!765))) b!6958006))

(assert (= (and b!6957703 (is-Union!17062 (regTwo!34636 rInner!765))) b!6958007))

(declare-fun b!6958011 () Bool)

(declare-fun e!4183825 () Bool)

(declare-fun tp!1918062 () Bool)

(declare-fun tp!1918065 () Bool)

(assert (=> b!6958011 (= e!4183825 (and tp!1918062 tp!1918065))))

(declare-fun b!6958009 () Bool)

(declare-fun tp!1918064 () Bool)

(declare-fun tp!1918063 () Bool)

(assert (=> b!6958009 (= e!4183825 (and tp!1918064 tp!1918063))))

(assert (=> b!6957704 (= tp!1918023 e!4183825)))

(declare-fun b!6958010 () Bool)

(declare-fun tp!1918066 () Bool)

(assert (=> b!6958010 (= e!4183825 tp!1918066)))

(declare-fun b!6958008 () Bool)

(assert (=> b!6958008 (= e!4183825 tp_is_empty!43349)))

(assert (= (and b!6957704 (is-ElementMatch!17062 (reg!17391 rInner!765))) b!6958008))

(assert (= (and b!6957704 (is-Concat!25907 (reg!17391 rInner!765))) b!6958009))

(assert (= (and b!6957704 (is-Star!17062 (reg!17391 rInner!765))) b!6958010))

(assert (= (and b!6957704 (is-Union!17062 (reg!17391 rInner!765))) b!6958011))

(declare-fun b!6958016 () Bool)

(declare-fun e!4183828 () Bool)

(declare-fun tp!1918069 () Bool)

(assert (=> b!6958016 (= e!4183828 (and tp_is_empty!43349 tp!1918069))))

(assert (=> b!6957707 (= tp!1918018 e!4183828)))

(assert (= (and b!6957707 (is-Cons!66691 (t!380558 s!10388))) b!6958016))

(declare-fun b!6958020 () Bool)

(declare-fun e!4183829 () Bool)

(declare-fun tp!1918070 () Bool)

(declare-fun tp!1918073 () Bool)

(assert (=> b!6958020 (= e!4183829 (and tp!1918070 tp!1918073))))

(declare-fun b!6958018 () Bool)

(declare-fun tp!1918072 () Bool)

(declare-fun tp!1918071 () Bool)

(assert (=> b!6958018 (= e!4183829 (and tp!1918072 tp!1918071))))

(assert (=> b!6957706 (= tp!1918021 e!4183829)))

(declare-fun b!6958019 () Bool)

(declare-fun tp!1918074 () Bool)

(assert (=> b!6958019 (= e!4183829 tp!1918074)))

(declare-fun b!6958017 () Bool)

(assert (=> b!6958017 (= e!4183829 tp_is_empty!43349)))

(assert (= (and b!6957706 (is-ElementMatch!17062 (regOne!34637 rInner!765))) b!6958017))

(assert (= (and b!6957706 (is-Concat!25907 (regOne!34637 rInner!765))) b!6958018))

(assert (= (and b!6957706 (is-Star!17062 (regOne!34637 rInner!765))) b!6958019))

(assert (= (and b!6957706 (is-Union!17062 (regOne!34637 rInner!765))) b!6958020))

(declare-fun b!6958024 () Bool)

(declare-fun e!4183830 () Bool)

(declare-fun tp!1918075 () Bool)

(declare-fun tp!1918078 () Bool)

(assert (=> b!6958024 (= e!4183830 (and tp!1918075 tp!1918078))))

(declare-fun b!6958022 () Bool)

(declare-fun tp!1918077 () Bool)

(declare-fun tp!1918076 () Bool)

(assert (=> b!6958022 (= e!4183830 (and tp!1918077 tp!1918076))))

(assert (=> b!6957706 (= tp!1918019 e!4183830)))

(declare-fun b!6958023 () Bool)

(declare-fun tp!1918079 () Bool)

(assert (=> b!6958023 (= e!4183830 tp!1918079)))

(declare-fun b!6958021 () Bool)

(assert (=> b!6958021 (= e!4183830 tp_is_empty!43349)))

(assert (= (and b!6957706 (is-ElementMatch!17062 (regTwo!34637 rInner!765))) b!6958021))

(assert (= (and b!6957706 (is-Concat!25907 (regTwo!34637 rInner!765))) b!6958022))

(assert (= (and b!6957706 (is-Star!17062 (regTwo!34637 rInner!765))) b!6958023))

(assert (= (and b!6957706 (is-Union!17062 (regTwo!34637 rInner!765))) b!6958024))

(declare-fun b_lambda!260501 () Bool)

(assert (= b_lambda!260499 (or b!6957709 b_lambda!260501)))

(declare-fun bs!1858208 () Bool)

(declare-fun d!2169779 () Bool)

(assert (= bs!1858208 (and d!2169779 b!6957709)))

(declare-fun res!2839215 () Bool)

(declare-fun e!4183831 () Bool)

(assert (=> bs!1858208 (=> (not res!2839215) (not e!4183831))))

(assert (=> bs!1858208 (= res!2839215 (= (++!15090 (_1!37216 lt!2478708) (_2!37216 lt!2478708)) s!10388))))

(assert (=> bs!1858208 (= (dynLambda!26602 lambda!396928 lt!2478708) e!4183831)))

(declare-fun b!6958025 () Bool)

(declare-fun res!2839216 () Bool)

(assert (=> b!6958025 (=> (not res!2839216) (not e!4183831))))

(assert (=> b!6958025 (= res!2839216 (not (isEmpty!38927 (_1!37216 lt!2478708))))))

(declare-fun b!6958026 () Bool)

(declare-fun res!2839217 () Bool)

(assert (=> b!6958026 (=> (not res!2839217) (not e!4183831))))

(assert (=> b!6958026 (= res!2839217 (matchRSpec!4087 rInner!765 (_1!37216 lt!2478708)))))

(declare-fun b!6958027 () Bool)

(assert (=> b!6958027 (= e!4183831 (matchRSpec!4087 (Star!17062 rInner!765) (_2!37216 lt!2478708)))))

(assert (= (and bs!1858208 res!2839215) b!6958025))

(assert (= (and b!6958025 res!2839216) b!6958026))

(assert (= (and b!6958026 res!2839217) b!6958027))

(declare-fun m!7655118 () Bool)

(assert (=> bs!1858208 m!7655118))

(declare-fun m!7655120 () Bool)

(assert (=> b!6958025 m!7655120))

(declare-fun m!7655122 () Bool)

(assert (=> b!6958026 m!7655122))

(declare-fun m!7655124 () Bool)

(assert (=> b!6958027 m!7655124))

(assert (=> d!2169775 d!2169779))

(declare-fun b_lambda!260503 () Bool)

(assert (= b_lambda!260497 (or b!6957705 b_lambda!260503)))

(declare-fun bs!1858209 () Bool)

(declare-fun d!2169781 () Bool)

(assert (= bs!1858209 (and d!2169781 b!6957705)))

(declare-fun res!2839218 () Bool)

(declare-fun e!4183832 () Bool)

(assert (=> bs!1858209 (=> (not res!2839218) (not e!4183832))))

(assert (=> bs!1858209 (= res!2839218 (= (++!15090 (_1!37216 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663))) (_2!37216 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)))) s!10388))))

(assert (=> bs!1858209 (= (dynLambda!26602 lambda!396929 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663))) e!4183832)))

(declare-fun b!6958028 () Bool)

(declare-fun res!2839219 () Bool)

(assert (=> b!6958028 (=> (not res!2839219) (not e!4183832))))

(assert (=> b!6958028 (= res!2839219 (matchR!9172 rInner!765 (_1!37216 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)))))))

(declare-fun b!6958029 () Bool)

(assert (=> b!6958029 (= e!4183832 (matchR!9172 lt!2478666 (_2!37216 (tuple2!67827 (_1!37216 lt!2478663) (_2!37216 lt!2478663)))))))

(assert (= (and bs!1858209 res!2839218) b!6958028))

(assert (= (and b!6958028 res!2839219) b!6958029))

(declare-fun m!7655126 () Bool)

(assert (=> bs!1858209 m!7655126))

(declare-fun m!7655128 () Bool)

(assert (=> b!6958028 m!7655128))

(declare-fun m!7655130 () Bool)

(assert (=> b!6958029 m!7655130))

(assert (=> d!2169747 d!2169781))

(push 1)

(assert (not d!2169769))

(assert (not b!6958019))

(assert (not d!2169757))

(assert (not b!6957885))

(assert (not d!2169747))

(assert (not b!6957982))

(assert (not b!6957837))

(assert (not b!6957967))

(assert (not b!6958028))

(assert (not d!2169761))

(assert (not b!6957887))

(assert (not bm!631872))

(assert (not b!6958002))

(assert (not b!6957952))

(assert tp_is_empty!43349)

(assert (not bm!631854))

(assert (not b!6958027))

(assert (not bm!631865))

(assert (not b!6957836))

(assert (not b!6957978))

(assert (not b!6958025))

(assert (not bm!631873))

(assert (not d!2169759))

(assert (not b!6958011))

(assert (not d!2169771))

(assert (not b!6958026))

(assert (not b!6957985))

(assert (not b!6958007))

(assert (not d!2169777))

(assert (not b!6957987))

(assert (not b!6958016))

(assert (not b!6957877))

(assert (not b!6957986))

(assert (not bs!1858209))

(assert (not bs!1858208))

(assert (not d!2169755))

(assert (not b_lambda!260501))

(assert (not bm!631876))

(assert (not b!6958029))

(assert (not b!6958024))

(assert (not bm!631870))

(assert (not b!6957977))

(assert (not b!6957878))

(assert (not b!6958006))

(assert (not b!6957886))

(assert (not bm!631853))

(assert (not b_lambda!260503))

(assert (not b!6958003))

(assert (not b!6957946))

(assert (not d!2169745))

(assert (not b!6958018))

(assert (not b!6958010))

(assert (not b!6958023))

(assert (not b!6958022))

(assert (not b!6957820))

(assert (not b!6958020))

(assert (not b!6958005))

(assert (not bm!631871))

(assert (not d!2169775))

(assert (not b!6958009))

(assert (not b!6957973))

(assert (not b!6958001))

(assert (not b!6957882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

