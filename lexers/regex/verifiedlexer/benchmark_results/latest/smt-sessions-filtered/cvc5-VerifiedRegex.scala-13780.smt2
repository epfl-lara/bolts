; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734402 () Bool)

(assert start!734402)

(declare-fun b!7625780 () Bool)

(assert (=> b!7625780 true))

(assert (=> b!7625780 true))

(declare-fun e!4533954 () Bool)

(declare-fun e!4533958 () Bool)

(assert (=> b!7625780 (= e!4533954 (not e!4533958))))

(declare-fun res!3053575 () Bool)

(assert (=> b!7625780 (=> res!3053575 e!4533958)))

(declare-datatypes ((C!41034 0))(
  ( (C!41035 (val!30957 Int)) )
))
(declare-datatypes ((Regex!20354 0))(
  ( (ElementMatch!20354 (c!1405127 C!41034)) (Concat!29199 (regOne!41220 Regex!20354) (regTwo!41220 Regex!20354)) (EmptyExpr!20354) (Star!20354 (reg!20683 Regex!20354)) (EmptyLang!20354) (Union!20354 (regOne!41221 Regex!20354) (regTwo!41221 Regex!20354)) )
))
(declare-fun r!14126 () Regex!20354)

(declare-datatypes ((List!73205 0))(
  ( (Nil!73081) (Cons!73081 (h!79529 C!41034) (t!387940 List!73205)) )
))
(declare-fun s!9605 () List!73205)

(declare-fun matchR!9857 (Regex!20354 List!73205) Bool)

(assert (=> b!7625780 (= res!3053575 (not (matchR!9857 r!14126 s!9605)))))

(declare-fun lt!2657874 () Bool)

(declare-fun lambda!468766 () Int)

(declare-fun Exists!4508 (Int) Bool)

(assert (=> b!7625780 (= lt!2657874 (Exists!4508 lambda!468766))))

(declare-datatypes ((tuple2!69266 0))(
  ( (tuple2!69267 (_1!37936 List!73205) (_2!37936 List!73205)) )
))
(declare-datatypes ((Option!17427 0))(
  ( (None!17426) (Some!17426 (v!54561 tuple2!69266)) )
))
(declare-fun isDefined!14043 (Option!17427) Bool)

(declare-fun findConcatSeparation!3457 (Regex!20354 Regex!20354 List!73205 List!73205 List!73205) Option!17427)

(assert (=> b!7625780 (= lt!2657874 (isDefined!14043 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605)))))

(declare-datatypes ((Unit!167636 0))(
  ( (Unit!167637) )
))
(declare-fun lt!2657875 () Unit!167636)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3215 (Regex!20354 Regex!20354 List!73205) Unit!167636)

(assert (=> b!7625780 (= lt!2657875 (lemmaFindConcatSeparationEquivalentToExists!3215 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605))))

(declare-fun b!7625781 () Bool)

(declare-fun e!4533959 () Bool)

(declare-fun tp_is_empty!51063 () Bool)

(declare-fun tp!2226516 () Bool)

(assert (=> b!7625781 (= e!4533959 (and tp_is_empty!51063 tp!2226516))))

(declare-fun b!7625782 () Bool)

(declare-fun e!4533957 () Bool)

(assert (=> b!7625782 (= e!4533958 e!4533957)))

(declare-fun res!3053576 () Bool)

(assert (=> b!7625782 (=> res!3053576 e!4533957)))

(declare-fun cut!12 () tuple2!69266)

(declare-fun ++!17644 (List!73205 List!73205) List!73205)

(assert (=> b!7625782 (= res!3053576 (not (= (++!17644 (_1!37936 cut!12) (_2!37936 cut!12)) s!9605)))))

(assert (=> b!7625782 lt!2657874))

(declare-fun lt!2657873 () Unit!167636)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!261 (Regex!20354 Regex!20354 List!73205) Unit!167636)

(assert (=> b!7625782 (= lt!2657873 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!261 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605))))

(declare-fun b!7625783 () Bool)

(declare-fun validRegex!10772 (Regex!20354) Bool)

(assert (=> b!7625783 (= e!4533957 (validRegex!10772 (regTwo!41220 r!14126)))))

(declare-fun b!7625784 () Bool)

(declare-fun res!3053577 () Bool)

(assert (=> b!7625784 (=> (not res!3053577) (not e!4533954))))

(assert (=> b!7625784 (= res!3053577 (and (not (is-EmptyExpr!20354 r!14126)) (not (is-EmptyLang!20354 r!14126)) (not (is-ElementMatch!20354 r!14126)) (not (is-Union!20354 r!14126)) (not (is-Star!20354 r!14126))))))

(declare-fun b!7625785 () Bool)

(declare-fun e!4533960 () Bool)

(declare-fun tp!2226520 () Bool)

(assert (=> b!7625785 (= e!4533960 tp!2226520)))

(declare-fun b!7625786 () Bool)

(declare-fun tp!2226519 () Bool)

(declare-fun tp!2226515 () Bool)

(assert (=> b!7625786 (= e!4533960 (and tp!2226519 tp!2226515))))

(declare-fun res!3053579 () Bool)

(assert (=> start!734402 (=> (not res!3053579) (not e!4533954))))

(assert (=> start!734402 (= res!3053579 (validRegex!10772 r!14126))))

(assert (=> start!734402 e!4533954))

(assert (=> start!734402 e!4533960))

(assert (=> start!734402 e!4533959))

(declare-fun e!4533955 () Bool)

(declare-fun e!4533956 () Bool)

(assert (=> start!734402 (and e!4533955 e!4533956)))

(declare-fun b!7625787 () Bool)

(declare-fun tp!2226517 () Bool)

(assert (=> b!7625787 (= e!4533955 (and tp_is_empty!51063 tp!2226517))))

(declare-fun b!7625788 () Bool)

(assert (=> b!7625788 (= e!4533960 tp_is_empty!51063)))

(declare-fun b!7625789 () Bool)

(declare-fun res!3053578 () Bool)

(assert (=> b!7625789 (=> res!3053578 e!4533957)))

(assert (=> b!7625789 (= res!3053578 (not (matchR!9857 (regOne!41220 r!14126) (_1!37936 cut!12))))))

(declare-fun b!7625790 () Bool)

(declare-fun tp!2226521 () Bool)

(assert (=> b!7625790 (= e!4533956 (and tp_is_empty!51063 tp!2226521))))

(declare-fun b!7625791 () Bool)

(declare-fun tp!2226518 () Bool)

(declare-fun tp!2226514 () Bool)

(assert (=> b!7625791 (= e!4533960 (and tp!2226518 tp!2226514))))

(assert (= (and start!734402 res!3053579) b!7625784))

(assert (= (and b!7625784 res!3053577) b!7625780))

(assert (= (and b!7625780 (not res!3053575)) b!7625782))

(assert (= (and b!7625782 (not res!3053576)) b!7625789))

(assert (= (and b!7625789 (not res!3053578)) b!7625783))

(assert (= (and start!734402 (is-ElementMatch!20354 r!14126)) b!7625788))

(assert (= (and start!734402 (is-Concat!29199 r!14126)) b!7625791))

(assert (= (and start!734402 (is-Star!20354 r!14126)) b!7625785))

(assert (= (and start!734402 (is-Union!20354 r!14126)) b!7625786))

(assert (= (and start!734402 (is-Cons!73081 s!9605)) b!7625781))

(assert (= (and start!734402 (is-Cons!73081 (_1!37936 cut!12))) b!7625787))

(assert (= (and start!734402 (is-Cons!73081 (_2!37936 cut!12))) b!7625790))

(declare-fun m!8155302 () Bool)

(assert (=> b!7625782 m!8155302))

(declare-fun m!8155304 () Bool)

(assert (=> b!7625782 m!8155304))

(declare-fun m!8155306 () Bool)

(assert (=> b!7625780 m!8155306))

(declare-fun m!8155308 () Bool)

(assert (=> b!7625780 m!8155308))

(declare-fun m!8155310 () Bool)

(assert (=> b!7625780 m!8155310))

(assert (=> b!7625780 m!8155308))

(declare-fun m!8155312 () Bool)

(assert (=> b!7625780 m!8155312))

(declare-fun m!8155314 () Bool)

(assert (=> b!7625780 m!8155314))

(declare-fun m!8155316 () Bool)

(assert (=> start!734402 m!8155316))

(declare-fun m!8155318 () Bool)

(assert (=> b!7625783 m!8155318))

(declare-fun m!8155320 () Bool)

(assert (=> b!7625789 m!8155320))

(push 1)

(assert (not b!7625780))

(assert (not b!7625790))

(assert tp_is_empty!51063)

(assert (not b!7625786))

(assert (not b!7625785))

(assert (not b!7625781))

(assert (not start!734402))

(assert (not b!7625782))

(assert (not b!7625787))

(assert (not b!7625789))

(assert (not b!7625783))

(assert (not b!7625791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7625851 () Bool)

(declare-fun e!4533989 () Bool)

(declare-fun lt!2657887 () List!73205)

(assert (=> b!7625851 (= e!4533989 (or (not (= (_2!37936 cut!12) Nil!73081)) (= lt!2657887 (_1!37936 cut!12))))))

(declare-fun b!7625848 () Bool)

(declare-fun e!4533988 () List!73205)

(assert (=> b!7625848 (= e!4533988 (_2!37936 cut!12))))

(declare-fun b!7625850 () Bool)

(declare-fun res!3053603 () Bool)

(assert (=> b!7625850 (=> (not res!3053603) (not e!4533989))))

(declare-fun size!42547 (List!73205) Int)

(assert (=> b!7625850 (= res!3053603 (= (size!42547 lt!2657887) (+ (size!42547 (_1!37936 cut!12)) (size!42547 (_2!37936 cut!12)))))))

(declare-fun b!7625849 () Bool)

(assert (=> b!7625849 (= e!4533988 (Cons!73081 (h!79529 (_1!37936 cut!12)) (++!17644 (t!387940 (_1!37936 cut!12)) (_2!37936 cut!12))))))

(declare-fun d!2323633 () Bool)

(assert (=> d!2323633 e!4533989))

(declare-fun res!3053604 () Bool)

(assert (=> d!2323633 (=> (not res!3053604) (not e!4533989))))

(declare-fun content!15454 (List!73205) (Set C!41034))

(assert (=> d!2323633 (= res!3053604 (= (content!15454 lt!2657887) (set.union (content!15454 (_1!37936 cut!12)) (content!15454 (_2!37936 cut!12)))))))

(assert (=> d!2323633 (= lt!2657887 e!4533988)))

(declare-fun c!1405131 () Bool)

(assert (=> d!2323633 (= c!1405131 (is-Nil!73081 (_1!37936 cut!12)))))

(assert (=> d!2323633 (= (++!17644 (_1!37936 cut!12) (_2!37936 cut!12)) lt!2657887)))

(assert (= (and d!2323633 c!1405131) b!7625848))

(assert (= (and d!2323633 (not c!1405131)) b!7625849))

(assert (= (and d!2323633 res!3053604) b!7625850))

(assert (= (and b!7625850 res!3053603) b!7625851))

(declare-fun m!8155342 () Bool)

(assert (=> b!7625850 m!8155342))

(declare-fun m!8155344 () Bool)

(assert (=> b!7625850 m!8155344))

(declare-fun m!8155346 () Bool)

(assert (=> b!7625850 m!8155346))

(declare-fun m!8155348 () Bool)

(assert (=> b!7625849 m!8155348))

(declare-fun m!8155350 () Bool)

(assert (=> d!2323633 m!8155350))

(declare-fun m!8155352 () Bool)

(assert (=> d!2323633 m!8155352))

(declare-fun m!8155354 () Bool)

(assert (=> d!2323633 m!8155354))

(assert (=> b!7625782 d!2323633))

(declare-fun d!2323635 () Bool)

(assert (=> d!2323635 (isDefined!14043 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605))))

(declare-fun lt!2657890 () Unit!167636)

(declare-fun choose!58847 (Regex!20354 Regex!20354 List!73205) Unit!167636)

(assert (=> d!2323635 (= lt!2657890 (choose!58847 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605))))

(assert (=> d!2323635 (validRegex!10772 (regOne!41220 r!14126))))

(assert (=> d!2323635 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!261 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605) lt!2657890)))

(declare-fun bs!1943647 () Bool)

(assert (= bs!1943647 d!2323635))

(assert (=> bs!1943647 m!8155308))

(assert (=> bs!1943647 m!8155308))

(assert (=> bs!1943647 m!8155312))

(declare-fun m!8155356 () Bool)

(assert (=> bs!1943647 m!8155356))

(declare-fun m!8155358 () Bool)

(assert (=> bs!1943647 m!8155358))

(assert (=> b!7625782 d!2323635))

(declare-fun b!7625878 () Bool)

(declare-fun res!3053622 () Bool)

(declare-fun e!4534013 () Bool)

(assert (=> b!7625878 (=> (not res!3053622) (not e!4534013))))

(declare-fun call!700161 () Bool)

(assert (=> b!7625878 (= res!3053622 call!700161)))

(declare-fun e!4534012 () Bool)

(assert (=> b!7625878 (= e!4534012 e!4534013)))

(declare-fun b!7625879 () Bool)

(declare-fun e!4534011 () Bool)

(assert (=> b!7625879 (= e!4534011 e!4534012)))

(declare-fun c!1405139 () Bool)

(assert (=> b!7625879 (= c!1405139 (is-Union!20354 (regTwo!41220 r!14126)))))

(declare-fun d!2323639 () Bool)

(declare-fun res!3053620 () Bool)

(declare-fun e!4534008 () Bool)

(assert (=> d!2323639 (=> res!3053620 e!4534008)))

(assert (=> d!2323639 (= res!3053620 (is-ElementMatch!20354 (regTwo!41220 r!14126)))))

(assert (=> d!2323639 (= (validRegex!10772 (regTwo!41220 r!14126)) e!4534008)))

(declare-fun b!7625880 () Bool)

(declare-fun call!700159 () Bool)

(assert (=> b!7625880 (= e!4534013 call!700159)))

(declare-fun b!7625881 () Bool)

(declare-fun res!3053621 () Bool)

(declare-fun e!4534010 () Bool)

(assert (=> b!7625881 (=> res!3053621 e!4534010)))

(assert (=> b!7625881 (= res!3053621 (not (is-Concat!29199 (regTwo!41220 r!14126))))))

(assert (=> b!7625881 (= e!4534012 e!4534010)))

(declare-fun b!7625882 () Bool)

(declare-fun e!4534009 () Bool)

(declare-fun call!700160 () Bool)

(assert (=> b!7625882 (= e!4534009 call!700160)))

(declare-fun bm!700154 () Bool)

(assert (=> bm!700154 (= call!700159 (validRegex!10772 (ite c!1405139 (regTwo!41221 (regTwo!41220 r!14126)) (regTwo!41220 (regTwo!41220 r!14126)))))))

(declare-fun b!7625883 () Bool)

(declare-fun e!4534014 () Bool)

(assert (=> b!7625883 (= e!4534010 e!4534014)))

(declare-fun res!3053623 () Bool)

(assert (=> b!7625883 (=> (not res!3053623) (not e!4534014))))

(assert (=> b!7625883 (= res!3053623 call!700161)))

(declare-fun b!7625884 () Bool)

(assert (=> b!7625884 (= e!4534008 e!4534011)))

(declare-fun c!1405138 () Bool)

(assert (=> b!7625884 (= c!1405138 (is-Star!20354 (regTwo!41220 r!14126)))))

(declare-fun b!7625885 () Bool)

(assert (=> b!7625885 (= e!4534014 call!700159)))

(declare-fun b!7625886 () Bool)

(assert (=> b!7625886 (= e!4534011 e!4534009)))

(declare-fun res!3053619 () Bool)

(declare-fun nullable!8893 (Regex!20354) Bool)

(assert (=> b!7625886 (= res!3053619 (not (nullable!8893 (reg!20683 (regTwo!41220 r!14126)))))))

(assert (=> b!7625886 (=> (not res!3053619) (not e!4534009))))

(declare-fun bm!700155 () Bool)

(assert (=> bm!700155 (= call!700160 (validRegex!10772 (ite c!1405138 (reg!20683 (regTwo!41220 r!14126)) (ite c!1405139 (regOne!41221 (regTwo!41220 r!14126)) (regOne!41220 (regTwo!41220 r!14126))))))))

(declare-fun bm!700156 () Bool)

(assert (=> bm!700156 (= call!700161 call!700160)))

(assert (= (and d!2323639 (not res!3053620)) b!7625884))

(assert (= (and b!7625884 c!1405138) b!7625886))

(assert (= (and b!7625884 (not c!1405138)) b!7625879))

(assert (= (and b!7625886 res!3053619) b!7625882))

(assert (= (and b!7625879 c!1405139) b!7625878))

(assert (= (and b!7625879 (not c!1405139)) b!7625881))

(assert (= (and b!7625878 res!3053622) b!7625880))

(assert (= (and b!7625881 (not res!3053621)) b!7625883))

(assert (= (and b!7625883 res!3053623) b!7625885))

(assert (= (or b!7625878 b!7625883) bm!700156))

(assert (= (or b!7625880 b!7625885) bm!700154))

(assert (= (or b!7625882 bm!700156) bm!700155))

(declare-fun m!8155360 () Bool)

(assert (=> bm!700154 m!8155360))

(declare-fun m!8155362 () Bool)

(assert (=> b!7625886 m!8155362))

(declare-fun m!8155364 () Bool)

(assert (=> bm!700155 m!8155364))

(assert (=> b!7625783 d!2323639))

(declare-fun bm!700159 () Bool)

(declare-fun call!700164 () Bool)

(declare-fun isEmpty!41707 (List!73205) Bool)

(assert (=> bm!700159 (= call!700164 (isEmpty!41707 (_1!37936 cut!12)))))

(declare-fun b!7625919 () Bool)

(declare-fun e!4534035 () Bool)

(declare-fun head!15667 (List!73205) C!41034)

(assert (=> b!7625919 (= e!4534035 (= (head!15667 (_1!37936 cut!12)) (c!1405127 (regOne!41220 r!14126))))))

(declare-fun b!7625920 () Bool)

(declare-fun e!4534034 () Bool)

(assert (=> b!7625920 (= e!4534034 (nullable!8893 (regOne!41220 r!14126)))))

(declare-fun b!7625921 () Bool)

(declare-fun res!3053646 () Bool)

(declare-fun e!4534031 () Bool)

(assert (=> b!7625921 (=> res!3053646 e!4534031)))

(assert (=> b!7625921 (= res!3053646 (not (is-ElementMatch!20354 (regOne!41220 r!14126))))))

(declare-fun e!4534036 () Bool)

(assert (=> b!7625921 (= e!4534036 e!4534031)))

(declare-fun d!2323641 () Bool)

(declare-fun e!4534033 () Bool)

(assert (=> d!2323641 e!4534033))

(declare-fun c!1405147 () Bool)

(assert (=> d!2323641 (= c!1405147 (is-EmptyExpr!20354 (regOne!41220 r!14126)))))

(declare-fun lt!2657896 () Bool)

(assert (=> d!2323641 (= lt!2657896 e!4534034)))

(declare-fun c!1405148 () Bool)

(assert (=> d!2323641 (= c!1405148 (isEmpty!41707 (_1!37936 cut!12)))))

(assert (=> d!2323641 (validRegex!10772 (regOne!41220 r!14126))))

(assert (=> d!2323641 (= (matchR!9857 (regOne!41220 r!14126) (_1!37936 cut!12)) lt!2657896)))

(declare-fun b!7625922 () Bool)

(assert (=> b!7625922 (= e!4534033 (= lt!2657896 call!700164))))

(declare-fun b!7625923 () Bool)

(declare-fun res!3053645 () Bool)

(declare-fun e!4534037 () Bool)

(assert (=> b!7625923 (=> res!3053645 e!4534037)))

(declare-fun tail!15207 (List!73205) List!73205)

(assert (=> b!7625923 (= res!3053645 (not (isEmpty!41707 (tail!15207 (_1!37936 cut!12)))))))

(declare-fun b!7625924 () Bool)

(declare-fun derivativeStep!5867 (Regex!20354 C!41034) Regex!20354)

(assert (=> b!7625924 (= e!4534034 (matchR!9857 (derivativeStep!5867 (regOne!41220 r!14126) (head!15667 (_1!37936 cut!12))) (tail!15207 (_1!37936 cut!12))))))

(declare-fun b!7625925 () Bool)

(declare-fun res!3053647 () Bool)

(assert (=> b!7625925 (=> (not res!3053647) (not e!4534035))))

(assert (=> b!7625925 (= res!3053647 (isEmpty!41707 (tail!15207 (_1!37936 cut!12))))))

(declare-fun b!7625926 () Bool)

(declare-fun res!3053642 () Bool)

(assert (=> b!7625926 (=> (not res!3053642) (not e!4534035))))

(assert (=> b!7625926 (= res!3053642 (not call!700164))))

(declare-fun b!7625927 () Bool)

(assert (=> b!7625927 (= e!4534036 (not lt!2657896))))

(declare-fun b!7625928 () Bool)

(declare-fun e!4534032 () Bool)

(assert (=> b!7625928 (= e!4534031 e!4534032)))

(declare-fun res!3053648 () Bool)

(assert (=> b!7625928 (=> (not res!3053648) (not e!4534032))))

(assert (=> b!7625928 (= res!3053648 (not lt!2657896))))

(declare-fun b!7625929 () Bool)

(declare-fun res!3053649 () Bool)

(assert (=> b!7625929 (=> res!3053649 e!4534031)))

(assert (=> b!7625929 (= res!3053649 e!4534035)))

(declare-fun res!3053643 () Bool)

(assert (=> b!7625929 (=> (not res!3053643) (not e!4534035))))

(assert (=> b!7625929 (= res!3053643 lt!2657896)))

(declare-fun b!7625930 () Bool)

(assert (=> b!7625930 (= e!4534033 e!4534036)))

(declare-fun c!1405149 () Bool)

(assert (=> b!7625930 (= c!1405149 (is-EmptyLang!20354 (regOne!41220 r!14126)))))

(declare-fun b!7625931 () Bool)

(assert (=> b!7625931 (= e!4534032 e!4534037)))

(declare-fun res!3053644 () Bool)

(assert (=> b!7625931 (=> res!3053644 e!4534037)))

(assert (=> b!7625931 (= res!3053644 call!700164)))

(declare-fun b!7625932 () Bool)

(assert (=> b!7625932 (= e!4534037 (not (= (head!15667 (_1!37936 cut!12)) (c!1405127 (regOne!41220 r!14126)))))))

(assert (= (and d!2323641 c!1405148) b!7625920))

(assert (= (and d!2323641 (not c!1405148)) b!7625924))

(assert (= (and d!2323641 c!1405147) b!7625922))

(assert (= (and d!2323641 (not c!1405147)) b!7625930))

(assert (= (and b!7625930 c!1405149) b!7625927))

(assert (= (and b!7625930 (not c!1405149)) b!7625921))

(assert (= (and b!7625921 (not res!3053646)) b!7625929))

(assert (= (and b!7625929 res!3053643) b!7625926))

(assert (= (and b!7625926 res!3053642) b!7625925))

(assert (= (and b!7625925 res!3053647) b!7625919))

(assert (= (and b!7625929 (not res!3053649)) b!7625928))

(assert (= (and b!7625928 res!3053648) b!7625931))

(assert (= (and b!7625931 (not res!3053644)) b!7625923))

(assert (= (and b!7625923 (not res!3053645)) b!7625932))

(assert (= (or b!7625922 b!7625926 b!7625931) bm!700159))

(declare-fun m!8155380 () Bool)

(assert (=> b!7625923 m!8155380))

(assert (=> b!7625923 m!8155380))

(declare-fun m!8155382 () Bool)

(assert (=> b!7625923 m!8155382))

(declare-fun m!8155384 () Bool)

(assert (=> b!7625924 m!8155384))

(assert (=> b!7625924 m!8155384))

(declare-fun m!8155386 () Bool)

(assert (=> b!7625924 m!8155386))

(assert (=> b!7625924 m!8155380))

(assert (=> b!7625924 m!8155386))

(assert (=> b!7625924 m!8155380))

(declare-fun m!8155388 () Bool)

(assert (=> b!7625924 m!8155388))

(assert (=> b!7625932 m!8155384))

(declare-fun m!8155390 () Bool)

(assert (=> b!7625920 m!8155390))

(declare-fun m!8155392 () Bool)

(assert (=> d!2323641 m!8155392))

(assert (=> d!2323641 m!8155358))

(assert (=> bm!700159 m!8155392))

(assert (=> b!7625925 m!8155380))

(assert (=> b!7625925 m!8155380))

(assert (=> b!7625925 m!8155382))

(assert (=> b!7625919 m!8155384))

(assert (=> b!7625789 d!2323641))

(declare-fun b!7625933 () Bool)

(declare-fun res!3053653 () Bool)

(declare-fun e!4534043 () Bool)

(assert (=> b!7625933 (=> (not res!3053653) (not e!4534043))))

(declare-fun call!700167 () Bool)

(assert (=> b!7625933 (= res!3053653 call!700167)))

(declare-fun e!4534042 () Bool)

(assert (=> b!7625933 (= e!4534042 e!4534043)))

(declare-fun b!7625934 () Bool)

(declare-fun e!4534041 () Bool)

(assert (=> b!7625934 (= e!4534041 e!4534042)))

(declare-fun c!1405151 () Bool)

(assert (=> b!7625934 (= c!1405151 (is-Union!20354 r!14126))))

(declare-fun d!2323645 () Bool)

(declare-fun res!3053651 () Bool)

(declare-fun e!4534038 () Bool)

(assert (=> d!2323645 (=> res!3053651 e!4534038)))

(assert (=> d!2323645 (= res!3053651 (is-ElementMatch!20354 r!14126))))

(assert (=> d!2323645 (= (validRegex!10772 r!14126) e!4534038)))

(declare-fun b!7625935 () Bool)

(declare-fun call!700165 () Bool)

(assert (=> b!7625935 (= e!4534043 call!700165)))

(declare-fun b!7625936 () Bool)

(declare-fun res!3053652 () Bool)

(declare-fun e!4534040 () Bool)

(assert (=> b!7625936 (=> res!3053652 e!4534040)))

(assert (=> b!7625936 (= res!3053652 (not (is-Concat!29199 r!14126)))))

(assert (=> b!7625936 (= e!4534042 e!4534040)))

(declare-fun b!7625937 () Bool)

(declare-fun e!4534039 () Bool)

(declare-fun call!700166 () Bool)

(assert (=> b!7625937 (= e!4534039 call!700166)))

(declare-fun bm!700160 () Bool)

(assert (=> bm!700160 (= call!700165 (validRegex!10772 (ite c!1405151 (regTwo!41221 r!14126) (regTwo!41220 r!14126))))))

(declare-fun b!7625938 () Bool)

(declare-fun e!4534044 () Bool)

(assert (=> b!7625938 (= e!4534040 e!4534044)))

(declare-fun res!3053654 () Bool)

(assert (=> b!7625938 (=> (not res!3053654) (not e!4534044))))

(assert (=> b!7625938 (= res!3053654 call!700167)))

(declare-fun b!7625939 () Bool)

(assert (=> b!7625939 (= e!4534038 e!4534041)))

(declare-fun c!1405150 () Bool)

(assert (=> b!7625939 (= c!1405150 (is-Star!20354 r!14126))))

(declare-fun b!7625940 () Bool)

(assert (=> b!7625940 (= e!4534044 call!700165)))

(declare-fun b!7625941 () Bool)

(assert (=> b!7625941 (= e!4534041 e!4534039)))

(declare-fun res!3053650 () Bool)

(assert (=> b!7625941 (= res!3053650 (not (nullable!8893 (reg!20683 r!14126))))))

(assert (=> b!7625941 (=> (not res!3053650) (not e!4534039))))

(declare-fun bm!700161 () Bool)

(assert (=> bm!700161 (= call!700166 (validRegex!10772 (ite c!1405150 (reg!20683 r!14126) (ite c!1405151 (regOne!41221 r!14126) (regOne!41220 r!14126)))))))

(declare-fun bm!700162 () Bool)

(assert (=> bm!700162 (= call!700167 call!700166)))

(assert (= (and d!2323645 (not res!3053651)) b!7625939))

(assert (= (and b!7625939 c!1405150) b!7625941))

(assert (= (and b!7625939 (not c!1405150)) b!7625934))

(assert (= (and b!7625941 res!3053650) b!7625937))

(assert (= (and b!7625934 c!1405151) b!7625933))

(assert (= (and b!7625934 (not c!1405151)) b!7625936))

(assert (= (and b!7625933 res!3053653) b!7625935))

(assert (= (and b!7625936 (not res!3053652)) b!7625938))

(assert (= (and b!7625938 res!3053654) b!7625940))

(assert (= (or b!7625933 b!7625938) bm!700162))

(assert (= (or b!7625935 b!7625940) bm!700160))

(assert (= (or b!7625937 bm!700162) bm!700161))

(declare-fun m!8155394 () Bool)

(assert (=> bm!700160 m!8155394))

(declare-fun m!8155396 () Bool)

(assert (=> b!7625941 m!8155396))

(declare-fun m!8155398 () Bool)

(assert (=> bm!700161 m!8155398))

(assert (=> start!734402 d!2323645))

(declare-fun bm!700163 () Bool)

(declare-fun call!700168 () Bool)

(assert (=> bm!700163 (= call!700168 (isEmpty!41707 s!9605))))

(declare-fun b!7625942 () Bool)

(declare-fun e!4534049 () Bool)

(assert (=> b!7625942 (= e!4534049 (= (head!15667 s!9605) (c!1405127 r!14126)))))

(declare-fun b!7625943 () Bool)

(declare-fun e!4534048 () Bool)

(assert (=> b!7625943 (= e!4534048 (nullable!8893 r!14126))))

(declare-fun b!7625944 () Bool)

(declare-fun res!3053659 () Bool)

(declare-fun e!4534045 () Bool)

(assert (=> b!7625944 (=> res!3053659 e!4534045)))

(assert (=> b!7625944 (= res!3053659 (not (is-ElementMatch!20354 r!14126)))))

(declare-fun e!4534050 () Bool)

(assert (=> b!7625944 (= e!4534050 e!4534045)))

(declare-fun d!2323647 () Bool)

(declare-fun e!4534047 () Bool)

(assert (=> d!2323647 e!4534047))

(declare-fun c!1405152 () Bool)

(assert (=> d!2323647 (= c!1405152 (is-EmptyExpr!20354 r!14126))))

(declare-fun lt!2657900 () Bool)

(assert (=> d!2323647 (= lt!2657900 e!4534048)))

(declare-fun c!1405153 () Bool)

(assert (=> d!2323647 (= c!1405153 (isEmpty!41707 s!9605))))

(assert (=> d!2323647 (validRegex!10772 r!14126)))

(assert (=> d!2323647 (= (matchR!9857 r!14126 s!9605) lt!2657900)))

(declare-fun b!7625945 () Bool)

(assert (=> b!7625945 (= e!4534047 (= lt!2657900 call!700168))))

(declare-fun b!7625946 () Bool)

(declare-fun res!3053658 () Bool)

(declare-fun e!4534051 () Bool)

(assert (=> b!7625946 (=> res!3053658 e!4534051)))

(assert (=> b!7625946 (= res!3053658 (not (isEmpty!41707 (tail!15207 s!9605))))))

(declare-fun b!7625947 () Bool)

(assert (=> b!7625947 (= e!4534048 (matchR!9857 (derivativeStep!5867 r!14126 (head!15667 s!9605)) (tail!15207 s!9605)))))

(declare-fun b!7625948 () Bool)

(declare-fun res!3053660 () Bool)

(assert (=> b!7625948 (=> (not res!3053660) (not e!4534049))))

(assert (=> b!7625948 (= res!3053660 (isEmpty!41707 (tail!15207 s!9605)))))

(declare-fun b!7625949 () Bool)

(declare-fun res!3053655 () Bool)

(assert (=> b!7625949 (=> (not res!3053655) (not e!4534049))))

(assert (=> b!7625949 (= res!3053655 (not call!700168))))

(declare-fun b!7625950 () Bool)

(assert (=> b!7625950 (= e!4534050 (not lt!2657900))))

(declare-fun b!7625951 () Bool)

(declare-fun e!4534046 () Bool)

(assert (=> b!7625951 (= e!4534045 e!4534046)))

(declare-fun res!3053661 () Bool)

(assert (=> b!7625951 (=> (not res!3053661) (not e!4534046))))

(assert (=> b!7625951 (= res!3053661 (not lt!2657900))))

(declare-fun b!7625952 () Bool)

(declare-fun res!3053662 () Bool)

(assert (=> b!7625952 (=> res!3053662 e!4534045)))

(assert (=> b!7625952 (= res!3053662 e!4534049)))

(declare-fun res!3053656 () Bool)

(assert (=> b!7625952 (=> (not res!3053656) (not e!4534049))))

(assert (=> b!7625952 (= res!3053656 lt!2657900)))

(declare-fun b!7625953 () Bool)

(assert (=> b!7625953 (= e!4534047 e!4534050)))

(declare-fun c!1405154 () Bool)

(assert (=> b!7625953 (= c!1405154 (is-EmptyLang!20354 r!14126))))

(declare-fun b!7625954 () Bool)

(assert (=> b!7625954 (= e!4534046 e!4534051)))

(declare-fun res!3053657 () Bool)

(assert (=> b!7625954 (=> res!3053657 e!4534051)))

(assert (=> b!7625954 (= res!3053657 call!700168)))

(declare-fun b!7625955 () Bool)

(assert (=> b!7625955 (= e!4534051 (not (= (head!15667 s!9605) (c!1405127 r!14126))))))

(assert (= (and d!2323647 c!1405153) b!7625943))

(assert (= (and d!2323647 (not c!1405153)) b!7625947))

(assert (= (and d!2323647 c!1405152) b!7625945))

(assert (= (and d!2323647 (not c!1405152)) b!7625953))

(assert (= (and b!7625953 c!1405154) b!7625950))

(assert (= (and b!7625953 (not c!1405154)) b!7625944))

(assert (= (and b!7625944 (not res!3053659)) b!7625952))

(assert (= (and b!7625952 res!3053656) b!7625949))

(assert (= (and b!7625949 res!3053655) b!7625948))

(assert (= (and b!7625948 res!3053660) b!7625942))

(assert (= (and b!7625952 (not res!3053662)) b!7625951))

(assert (= (and b!7625951 res!3053661) b!7625954))

(assert (= (and b!7625954 (not res!3053657)) b!7625946))

(assert (= (and b!7625946 (not res!3053658)) b!7625955))

(assert (= (or b!7625945 b!7625949 b!7625954) bm!700163))

(declare-fun m!8155404 () Bool)

(assert (=> b!7625946 m!8155404))

(assert (=> b!7625946 m!8155404))

(declare-fun m!8155406 () Bool)

(assert (=> b!7625946 m!8155406))

(declare-fun m!8155408 () Bool)

(assert (=> b!7625947 m!8155408))

(assert (=> b!7625947 m!8155408))

(declare-fun m!8155410 () Bool)

(assert (=> b!7625947 m!8155410))

(assert (=> b!7625947 m!8155404))

(assert (=> b!7625947 m!8155410))

(assert (=> b!7625947 m!8155404))

(declare-fun m!8155412 () Bool)

(assert (=> b!7625947 m!8155412))

(assert (=> b!7625955 m!8155408))

(declare-fun m!8155414 () Bool)

(assert (=> b!7625943 m!8155414))

(declare-fun m!8155416 () Bool)

(assert (=> d!2323647 m!8155416))

(assert (=> d!2323647 m!8155316))

(assert (=> bm!700163 m!8155416))

(assert (=> b!7625948 m!8155404))

(assert (=> b!7625948 m!8155404))

(assert (=> b!7625948 m!8155406))

(assert (=> b!7625942 m!8155408))

(assert (=> b!7625780 d!2323647))

(declare-fun bs!1943649 () Bool)

(declare-fun d!2323651 () Bool)

(assert (= bs!1943649 (and d!2323651 b!7625780)))

(declare-fun lambda!468772 () Int)

(assert (=> bs!1943649 (= lambda!468772 lambda!468766)))

(assert (=> d!2323651 true))

(assert (=> d!2323651 true))

(assert (=> d!2323651 true))

(assert (=> d!2323651 (= (isDefined!14043 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605)) (Exists!4508 lambda!468772))))

(declare-fun lt!2657903 () Unit!167636)

(declare-fun choose!58848 (Regex!20354 Regex!20354 List!73205) Unit!167636)

(assert (=> d!2323651 (= lt!2657903 (choose!58848 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605))))

(assert (=> d!2323651 (validRegex!10772 (regOne!41220 r!14126))))

(assert (=> d!2323651 (= (lemmaFindConcatSeparationEquivalentToExists!3215 (regOne!41220 r!14126) (regTwo!41220 r!14126) s!9605) lt!2657903)))

(declare-fun bs!1943650 () Bool)

(assert (= bs!1943650 d!2323651))

(assert (=> bs!1943650 m!8155308))

(declare-fun m!8155418 () Bool)

(assert (=> bs!1943650 m!8155418))

(assert (=> bs!1943650 m!8155358))

(declare-fun m!8155420 () Bool)

(assert (=> bs!1943650 m!8155420))

(assert (=> bs!1943650 m!8155308))

(assert (=> bs!1943650 m!8155312))

(assert (=> b!7625780 d!2323651))

(declare-fun d!2323653 () Bool)

(declare-fun choose!58849 (Int) Bool)

(assert (=> d!2323653 (= (Exists!4508 lambda!468766) (choose!58849 lambda!468766))))

(declare-fun bs!1943651 () Bool)

(assert (= bs!1943651 d!2323653))

(declare-fun m!8155422 () Bool)

(assert (=> bs!1943651 m!8155422))

(assert (=> b!7625780 d!2323653))

(declare-fun d!2323655 () Bool)

(declare-fun isEmpty!41708 (Option!17427) Bool)

(assert (=> d!2323655 (= (isDefined!14043 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605)) (not (isEmpty!41708 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605))))))

(declare-fun bs!1943652 () Bool)

(assert (= bs!1943652 d!2323655))

(assert (=> bs!1943652 m!8155308))

(declare-fun m!8155424 () Bool)

(assert (=> bs!1943652 m!8155424))

(assert (=> b!7625780 d!2323655))

(declare-fun b!7626005 () Bool)

(declare-fun e!4534087 () Bool)

(assert (=> b!7626005 (= e!4534087 (matchR!9857 (regTwo!41220 r!14126) s!9605))))

(declare-fun b!7626006 () Bool)

(declare-fun res!3053694 () Bool)

(declare-fun e!4534089 () Bool)

(assert (=> b!7626006 (=> (not res!3053694) (not e!4534089))))

(declare-fun lt!2657910 () Option!17427)

(declare-fun get!25813 (Option!17427) tuple2!69266)

(assert (=> b!7626006 (= res!3053694 (matchR!9857 (regTwo!41220 r!14126) (_2!37936 (get!25813 lt!2657910))))))

(declare-fun b!7626007 () Bool)

(declare-fun e!4534088 () Bool)

(assert (=> b!7626007 (= e!4534088 (not (isDefined!14043 lt!2657910)))))

(declare-fun b!7626008 () Bool)

(declare-fun e!4534085 () Option!17427)

(assert (=> b!7626008 (= e!4534085 None!17426)))

(declare-fun b!7626009 () Bool)

(assert (=> b!7626009 (= e!4534089 (= (++!17644 (_1!37936 (get!25813 lt!2657910)) (_2!37936 (get!25813 lt!2657910))) s!9605))))

(declare-fun b!7626010 () Bool)

(declare-fun lt!2657911 () Unit!167636)

(declare-fun lt!2657912 () Unit!167636)

(assert (=> b!7626010 (= lt!2657911 lt!2657912)))

(assert (=> b!7626010 (= (++!17644 (++!17644 Nil!73081 (Cons!73081 (h!79529 s!9605) Nil!73081)) (t!387940 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3228 (List!73205 C!41034 List!73205 List!73205) Unit!167636)

(assert (=> b!7626010 (= lt!2657912 (lemmaMoveElementToOtherListKeepsConcatEq!3228 Nil!73081 (h!79529 s!9605) (t!387940 s!9605) s!9605))))

(assert (=> b!7626010 (= e!4534085 (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) (++!17644 Nil!73081 (Cons!73081 (h!79529 s!9605) Nil!73081)) (t!387940 s!9605) s!9605))))

(declare-fun b!7626011 () Bool)

(declare-fun res!3053696 () Bool)

(assert (=> b!7626011 (=> (not res!3053696) (not e!4534089))))

(assert (=> b!7626011 (= res!3053696 (matchR!9857 (regOne!41220 r!14126) (_1!37936 (get!25813 lt!2657910))))))

(declare-fun d!2323657 () Bool)

(assert (=> d!2323657 e!4534088))

(declare-fun res!3053693 () Bool)

(assert (=> d!2323657 (=> res!3053693 e!4534088)))

(assert (=> d!2323657 (= res!3053693 e!4534089)))

(declare-fun res!3053695 () Bool)

(assert (=> d!2323657 (=> (not res!3053695) (not e!4534089))))

(assert (=> d!2323657 (= res!3053695 (isDefined!14043 lt!2657910))))

(declare-fun e!4534086 () Option!17427)

(assert (=> d!2323657 (= lt!2657910 e!4534086)))

(declare-fun c!1405165 () Bool)

(assert (=> d!2323657 (= c!1405165 e!4534087)))

(declare-fun res!3053692 () Bool)

(assert (=> d!2323657 (=> (not res!3053692) (not e!4534087))))

(assert (=> d!2323657 (= res!3053692 (matchR!9857 (regOne!41220 r!14126) Nil!73081))))

(assert (=> d!2323657 (validRegex!10772 (regOne!41220 r!14126))))

(assert (=> d!2323657 (= (findConcatSeparation!3457 (regOne!41220 r!14126) (regTwo!41220 r!14126) Nil!73081 s!9605 s!9605) lt!2657910)))

(declare-fun b!7626012 () Bool)

(assert (=> b!7626012 (= e!4534086 e!4534085)))

(declare-fun c!1405166 () Bool)

(assert (=> b!7626012 (= c!1405166 (is-Nil!73081 s!9605))))

(declare-fun b!7626013 () Bool)

(assert (=> b!7626013 (= e!4534086 (Some!17426 (tuple2!69267 Nil!73081 s!9605)))))

(assert (= (and d!2323657 res!3053692) b!7626005))

(assert (= (and d!2323657 c!1405165) b!7626013))

(assert (= (and d!2323657 (not c!1405165)) b!7626012))

(assert (= (and b!7626012 c!1405166) b!7626008))

(assert (= (and b!7626012 (not c!1405166)) b!7626010))

(assert (= (and d!2323657 res!3053695) b!7626011))

(assert (= (and b!7626011 res!3053696) b!7626006))

(assert (= (and b!7626006 res!3053694) b!7626009))

(assert (= (and d!2323657 (not res!3053693)) b!7626007))

(declare-fun m!8155432 () Bool)

(assert (=> b!7626005 m!8155432))

(declare-fun m!8155434 () Bool)

(assert (=> b!7626010 m!8155434))

(assert (=> b!7626010 m!8155434))

(declare-fun m!8155436 () Bool)

(assert (=> b!7626010 m!8155436))

(declare-fun m!8155438 () Bool)

(assert (=> b!7626010 m!8155438))

(assert (=> b!7626010 m!8155434))

(declare-fun m!8155440 () Bool)

(assert (=> b!7626010 m!8155440))

(declare-fun m!8155442 () Bool)

(assert (=> b!7626007 m!8155442))

(declare-fun m!8155444 () Bool)

(assert (=> b!7626011 m!8155444))

(declare-fun m!8155446 () Bool)

(assert (=> b!7626011 m!8155446))

(assert (=> b!7626006 m!8155444))

(declare-fun m!8155448 () Bool)

(assert (=> b!7626006 m!8155448))

(assert (=> b!7626009 m!8155444))

(declare-fun m!8155450 () Bool)

(assert (=> b!7626009 m!8155450))

(assert (=> d!2323657 m!8155442))

(declare-fun m!8155452 () Bool)

(assert (=> d!2323657 m!8155452))

(assert (=> d!2323657 m!8155358))

(assert (=> b!7625780 d!2323657))

(declare-fun b!7626018 () Bool)

(declare-fun e!4534092 () Bool)

(declare-fun tp!2226548 () Bool)

(assert (=> b!7626018 (= e!4534092 (and tp_is_empty!51063 tp!2226548))))

(assert (=> b!7625781 (= tp!2226516 e!4534092)))

(assert (= (and b!7625781 (is-Cons!73081 (t!387940 s!9605))) b!7626018))

(declare-fun b!7626036 () Bool)

(declare-fun e!4534097 () Bool)

(declare-fun tp!2226562 () Bool)

(declare-fun tp!2226563 () Bool)

(assert (=> b!7626036 (= e!4534097 (and tp!2226562 tp!2226563))))

(declare-fun b!7626035 () Bool)

(assert (=> b!7626035 (= e!4534097 tp_is_empty!51063)))

(declare-fun b!7626038 () Bool)

(declare-fun tp!2226559 () Bool)

(declare-fun tp!2226561 () Bool)

(assert (=> b!7626038 (= e!4534097 (and tp!2226559 tp!2226561))))

(assert (=> b!7625786 (= tp!2226519 e!4534097)))

(declare-fun b!7626037 () Bool)

(declare-fun tp!2226560 () Bool)

(assert (=> b!7626037 (= e!4534097 tp!2226560)))

(assert (= (and b!7625786 (is-ElementMatch!20354 (regOne!41221 r!14126))) b!7626035))

(assert (= (and b!7625786 (is-Concat!29199 (regOne!41221 r!14126))) b!7626036))

(assert (= (and b!7625786 (is-Star!20354 (regOne!41221 r!14126))) b!7626037))

(assert (= (and b!7625786 (is-Union!20354 (regOne!41221 r!14126))) b!7626038))

(declare-fun b!7626042 () Bool)

(declare-fun e!4534100 () Bool)

(declare-fun tp!2226567 () Bool)

(declare-fun tp!2226568 () Bool)

(assert (=> b!7626042 (= e!4534100 (and tp!2226567 tp!2226568))))

(declare-fun b!7626041 () Bool)

(assert (=> b!7626041 (= e!4534100 tp_is_empty!51063)))

(declare-fun b!7626044 () Bool)

(declare-fun tp!2226564 () Bool)

(declare-fun tp!2226566 () Bool)

(assert (=> b!7626044 (= e!4534100 (and tp!2226564 tp!2226566))))

(assert (=> b!7625786 (= tp!2226515 e!4534100)))

(declare-fun b!7626043 () Bool)

(declare-fun tp!2226565 () Bool)

(assert (=> b!7626043 (= e!4534100 tp!2226565)))

(assert (= (and b!7625786 (is-ElementMatch!20354 (regTwo!41221 r!14126))) b!7626041))

(assert (= (and b!7625786 (is-Concat!29199 (regTwo!41221 r!14126))) b!7626042))

(assert (= (and b!7625786 (is-Star!20354 (regTwo!41221 r!14126))) b!7626043))

(assert (= (and b!7625786 (is-Union!20354 (regTwo!41221 r!14126))) b!7626044))

(declare-fun b!7626049 () Bool)

(declare-fun e!4534103 () Bool)

(declare-fun tp!2226569 () Bool)

(assert (=> b!7626049 (= e!4534103 (and tp_is_empty!51063 tp!2226569))))

(assert (=> b!7625787 (= tp!2226517 e!4534103)))

(assert (= (and b!7625787 (is-Cons!73081 (t!387940 (_1!37936 cut!12)))) b!7626049))

(declare-fun b!7626051 () Bool)

(declare-fun e!4534104 () Bool)

(declare-fun tp!2226573 () Bool)

(declare-fun tp!2226574 () Bool)

(assert (=> b!7626051 (= e!4534104 (and tp!2226573 tp!2226574))))

(declare-fun b!7626050 () Bool)

(assert (=> b!7626050 (= e!4534104 tp_is_empty!51063)))

(declare-fun b!7626053 () Bool)

(declare-fun tp!2226570 () Bool)

(declare-fun tp!2226572 () Bool)

(assert (=> b!7626053 (= e!4534104 (and tp!2226570 tp!2226572))))

(assert (=> b!7625785 (= tp!2226520 e!4534104)))

(declare-fun b!7626052 () Bool)

(declare-fun tp!2226571 () Bool)

(assert (=> b!7626052 (= e!4534104 tp!2226571)))

(assert (= (and b!7625785 (is-ElementMatch!20354 (reg!20683 r!14126))) b!7626050))

(assert (= (and b!7625785 (is-Concat!29199 (reg!20683 r!14126))) b!7626051))

(assert (= (and b!7625785 (is-Star!20354 (reg!20683 r!14126))) b!7626052))

(assert (= (and b!7625785 (is-Union!20354 (reg!20683 r!14126))) b!7626053))

(declare-fun b!7626056 () Bool)

(declare-fun e!4534107 () Bool)

(declare-fun tp!2226575 () Bool)

(assert (=> b!7626056 (= e!4534107 (and tp_is_empty!51063 tp!2226575))))

(assert (=> b!7625790 (= tp!2226521 e!4534107)))

(assert (= (and b!7625790 (is-Cons!73081 (t!387940 (_2!37936 cut!12)))) b!7626056))

(declare-fun b!7626060 () Bool)

(declare-fun e!4534110 () Bool)

(declare-fun tp!2226579 () Bool)

(declare-fun tp!2226580 () Bool)

(assert (=> b!7626060 (= e!4534110 (and tp!2226579 tp!2226580))))

(declare-fun b!7626059 () Bool)

(assert (=> b!7626059 (= e!4534110 tp_is_empty!51063)))

(declare-fun b!7626062 () Bool)

(declare-fun tp!2226576 () Bool)

(declare-fun tp!2226578 () Bool)

(assert (=> b!7626062 (= e!4534110 (and tp!2226576 tp!2226578))))

(assert (=> b!7625791 (= tp!2226518 e!4534110)))

(declare-fun b!7626061 () Bool)

(declare-fun tp!2226577 () Bool)

(assert (=> b!7626061 (= e!4534110 tp!2226577)))

(assert (= (and b!7625791 (is-ElementMatch!20354 (regOne!41220 r!14126))) b!7626059))

(assert (= (and b!7625791 (is-Concat!29199 (regOne!41220 r!14126))) b!7626060))

(assert (= (and b!7625791 (is-Star!20354 (regOne!41220 r!14126))) b!7626061))

(assert (= (and b!7625791 (is-Union!20354 (regOne!41220 r!14126))) b!7626062))

(declare-fun b!7626070 () Bool)

(declare-fun e!4534111 () Bool)

(declare-fun tp!2226584 () Bool)

(declare-fun tp!2226585 () Bool)

(assert (=> b!7626070 (= e!4534111 (and tp!2226584 tp!2226585))))

(declare-fun b!7626069 () Bool)

(assert (=> b!7626069 (= e!4534111 tp_is_empty!51063)))

(declare-fun b!7626072 () Bool)

(declare-fun tp!2226581 () Bool)

(declare-fun tp!2226583 () Bool)

(assert (=> b!7626072 (= e!4534111 (and tp!2226581 tp!2226583))))

(assert (=> b!7625791 (= tp!2226514 e!4534111)))

(declare-fun b!7626071 () Bool)

(declare-fun tp!2226582 () Bool)

(assert (=> b!7626071 (= e!4534111 tp!2226582)))

(assert (= (and b!7625791 (is-ElementMatch!20354 (regTwo!41220 r!14126))) b!7626069))

(assert (= (and b!7625791 (is-Concat!29199 (regTwo!41220 r!14126))) b!7626070))

(assert (= (and b!7625791 (is-Star!20354 (regTwo!41220 r!14126))) b!7626071))

(assert (= (and b!7625791 (is-Union!20354 (regTwo!41220 r!14126))) b!7626072))

(push 1)

(assert (not b!7626072))

(assert (not bm!700163))

(assert (not d!2323653))

(assert (not d!2323651))

(assert (not b!7625849))

(assert (not bm!700160))

(assert (not b!7626052))

(assert (not b!7625946))

(assert (not bm!700159))

(assert (not b!7626070))

(assert (not b!7626007))

(assert (not b!7626009))

(assert (not b!7625924))

(assert (not b!7626036))

(assert (not b!7625942))

(assert (not b!7625886))

(assert (not d!2323641))

(assert (not b!7625850))

(assert (not b!7625955))

(assert (not d!2323657))

(assert (not d!2323635))

(assert (not d!2323655))

(assert (not b!7626018))

(assert (not b!7625919))

(assert tp_is_empty!51063)

(assert (not b!7626043))

(assert (not b!7626044))

(assert (not b!7625923))

(assert (not b!7626051))

(assert (not b!7626049))

(assert (not b!7625925))

(assert (not b!7626005))

(assert (not b!7626038))

(assert (not b!7625920))

(assert (not b!7626010))

(assert (not b!7625947))

(assert (not bm!700161))

(assert (not d!2323647))

(assert (not b!7625948))

(assert (not b!7626053))

(assert (not b!7626042))

(assert (not b!7626060))

(assert (not b!7625941))

(assert (not d!2323633))

(assert (not bm!700154))

(assert (not b!7626006))

(assert (not bm!700155))

(assert (not b!7626011))

(assert (not b!7626037))

(assert (not b!7625943))

(assert (not b!7625932))

(assert (not b!7626062))

(assert (not b!7626071))

(assert (not b!7626061))

(assert (not b!7626056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

