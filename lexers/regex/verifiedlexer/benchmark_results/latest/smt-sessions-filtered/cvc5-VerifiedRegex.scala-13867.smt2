; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737134 () Bool)

(assert start!737134)

(declare-fun b!7714778 () Bool)

(assert (=> b!7714778 true))

(assert (=> b!7714778 true))

(declare-fun bs!1962601 () Bool)

(declare-fun b!7714783 () Bool)

(assert (= bs!1962601 (and b!7714783 b!7714778)))

(declare-fun lambda!470779 () Int)

(declare-fun lambda!470778 () Int)

(assert (=> bs!1962601 (not (= lambda!470779 lambda!470778))))

(assert (=> b!7714783 true))

(assert (=> b!7714783 true))

(declare-fun b!7714772 () Bool)

(declare-fun e!4576594 () Bool)

(declare-fun tp!2263795 () Bool)

(assert (=> b!7714772 (= e!4576594 tp!2263795)))

(declare-fun b!7714773 () Bool)

(declare-fun tp!2263790 () Bool)

(declare-fun tp!2263794 () Bool)

(assert (=> b!7714773 (= e!4576594 (and tp!2263790 tp!2263794))))

(declare-fun b!7714774 () Bool)

(declare-fun e!4576597 () Bool)

(declare-datatypes ((C!41382 0))(
  ( (C!41383 (val!31131 Int)) )
))
(declare-datatypes ((Regex!20528 0))(
  ( (ElementMatch!20528 (c!1422150 C!41382)) (Concat!29373 (regOne!41568 Regex!20528) (regTwo!41568 Regex!20528)) (EmptyExpr!20528) (Star!20528 (reg!20857 Regex!20528)) (EmptyLang!20528) (Union!20528 (regOne!41569 Regex!20528) (regTwo!41569 Regex!20528)) )
))
(declare-fun r!14126 () Regex!20528)

(declare-fun validRegex!10946 (Regex!20528) Bool)

(assert (=> b!7714774 (= e!4576597 (validRegex!10946 (reg!20857 r!14126)))))

(declare-datatypes ((List!73379 0))(
  ( (Nil!73255) (Cons!73255 (h!79703 C!41382) (t!388114 List!73379)) )
))
(declare-datatypes ((tuple2!69518 0))(
  ( (tuple2!69519 (_1!38062 List!73379) (_2!38062 List!73379)) )
))
(declare-fun lt!2665354 () tuple2!69518)

(declare-fun matchR!10024 (Regex!20528 List!73379) Bool)

(declare-fun matchRSpec!4618 (Regex!20528 List!73379) Bool)

(assert (=> b!7714774 (= (matchR!10024 r!14126 (_2!38062 lt!2665354)) (matchRSpec!4618 r!14126 (_2!38062 lt!2665354)))))

(declare-datatypes ((Unit!168104 0))(
  ( (Unit!168105) )
))
(declare-fun lt!2665353 () Unit!168104)

(declare-fun mainMatchTheorem!4593 (Regex!20528 List!73379) Unit!168104)

(assert (=> b!7714774 (= lt!2665353 (mainMatchTheorem!4593 r!14126 (_2!38062 lt!2665354)))))

(assert (=> b!7714774 (= (matchR!10024 (reg!20857 r!14126) (_1!38062 lt!2665354)) (matchRSpec!4618 (reg!20857 r!14126) (_1!38062 lt!2665354)))))

(declare-fun lt!2665352 () Unit!168104)

(assert (=> b!7714774 (= lt!2665352 (mainMatchTheorem!4593 (reg!20857 r!14126) (_1!38062 lt!2665354)))))

(declare-fun pickWitness!507 (Int) tuple2!69518)

(assert (=> b!7714774 (= lt!2665354 (pickWitness!507 lambda!470779))))

(declare-fun b!7714775 () Bool)

(declare-fun e!4576595 () Unit!168104)

(declare-fun Unit!168106 () Unit!168104)

(assert (=> b!7714775 (= e!4576595 Unit!168106)))

(declare-fun lt!2665351 () Unit!168104)

(declare-fun s!9605 () List!73379)

(declare-fun lemmaStarAppConcat!43 (Regex!20528 List!73379) Unit!168104)

(assert (=> b!7714775 (= lt!2665351 (lemmaStarAppConcat!43 (reg!20857 r!14126) s!9605))))

(assert (=> b!7714775 (matchR!10024 (Concat!29373 (reg!20857 r!14126) r!14126) s!9605)))

(declare-fun lt!2665355 () Unit!168104)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!301 (Regex!20528 Regex!20528 List!73379) Unit!168104)

(assert (=> b!7714775 (= lt!2665355 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!301 (reg!20857 r!14126) r!14126 s!9605))))

(assert (=> b!7714775 false))

(declare-fun b!7714776 () Bool)

(declare-fun res!3077890 () Bool)

(declare-fun e!4576596 () Bool)

(assert (=> b!7714776 (=> (not res!3077890) (not e!4576596))))

(declare-fun isEmpty!41907 (List!73379) Bool)

(assert (=> b!7714776 (= res!3077890 (not (isEmpty!41907 s!9605)))))

(declare-fun b!7714777 () Bool)

(declare-fun e!4576593 () Bool)

(assert (=> b!7714777 (= e!4576593 e!4576597)))

(declare-fun res!3077891 () Bool)

(assert (=> b!7714777 (=> res!3077891 e!4576597)))

(declare-fun Exists!4653 (Int) Bool)

(assert (=> b!7714777 (= res!3077891 (Exists!4653 lambda!470778))))

(declare-fun lt!2665358 () Unit!168104)

(assert (=> b!7714777 (= lt!2665358 e!4576595)))

(declare-fun c!1422149 () Bool)

(assert (=> b!7714777 (= c!1422149 (matchR!10024 r!14126 s!9605))))

(assert (=> b!7714778 (= e!4576596 (not e!4576593))))

(declare-fun res!3077894 () Bool)

(assert (=> b!7714778 (=> res!3077894 e!4576593)))

(declare-fun lt!2665357 () Bool)

(assert (=> b!7714778 (= res!3077894 lt!2665357)))

(assert (=> b!7714778 (= lt!2665357 (Exists!4653 lambda!470778))))

(declare-datatypes ((Option!17553 0))(
  ( (None!17552) (Some!17552 (v!54687 tuple2!69518)) )
))
(declare-fun isDefined!14169 (Option!17553) Bool)

(declare-fun findConcatSeparation!3583 (Regex!20528 Regex!20528 List!73379 List!73379 List!73379) Option!17553)

(assert (=> b!7714778 (= lt!2665357 (isDefined!14169 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605)))))

(declare-fun lt!2665356 () Unit!168104)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3341 (Regex!20528 Regex!20528 List!73379) Unit!168104)

(assert (=> b!7714778 (= lt!2665356 (lemmaFindConcatSeparationEquivalentToExists!3341 (reg!20857 r!14126) r!14126 s!9605))))

(declare-fun b!7714779 () Bool)

(declare-fun tp!2263793 () Bool)

(declare-fun tp!2263792 () Bool)

(assert (=> b!7714779 (= e!4576594 (and tp!2263793 tp!2263792))))

(declare-fun res!3077889 () Bool)

(assert (=> start!737134 (=> (not res!3077889) (not e!4576596))))

(assert (=> start!737134 (= res!3077889 (validRegex!10946 r!14126))))

(assert (=> start!737134 e!4576596))

(assert (=> start!737134 e!4576594))

(declare-fun e!4576592 () Bool)

(assert (=> start!737134 e!4576592))

(declare-fun b!7714780 () Bool)

(declare-fun Unit!168107 () Unit!168104)

(assert (=> b!7714780 (= e!4576595 Unit!168107)))

(declare-fun b!7714781 () Bool)

(declare-fun tp_is_empty!51411 () Bool)

(assert (=> b!7714781 (= e!4576594 tp_is_empty!51411)))

(declare-fun b!7714782 () Bool)

(declare-fun tp!2263791 () Bool)

(assert (=> b!7714782 (= e!4576592 (and tp_is_empty!51411 tp!2263791))))

(declare-fun res!3077892 () Bool)

(assert (=> b!7714783 (=> res!3077892 e!4576597)))

(assert (=> b!7714783 (= res!3077892 (not (Exists!4653 lambda!470779)))))

(declare-fun b!7714784 () Bool)

(declare-fun res!3077893 () Bool)

(assert (=> b!7714784 (=> (not res!3077893) (not e!4576596))))

(assert (=> b!7714784 (= res!3077893 (and (not (is-EmptyExpr!20528 r!14126)) (not (is-EmptyLang!20528 r!14126)) (not (is-ElementMatch!20528 r!14126)) (not (is-Union!20528 r!14126)) (is-Star!20528 r!14126)))))

(assert (= (and start!737134 res!3077889) b!7714784))

(assert (= (and b!7714784 res!3077893) b!7714776))

(assert (= (and b!7714776 res!3077890) b!7714778))

(assert (= (and b!7714778 (not res!3077894)) b!7714777))

(assert (= (and b!7714777 c!1422149) b!7714775))

(assert (= (and b!7714777 (not c!1422149)) b!7714780))

(assert (= (and b!7714777 (not res!3077891)) b!7714783))

(assert (= (and b!7714783 (not res!3077892)) b!7714774))

(assert (= (and start!737134 (is-ElementMatch!20528 r!14126)) b!7714781))

(assert (= (and start!737134 (is-Concat!29373 r!14126)) b!7714773))

(assert (= (and start!737134 (is-Star!20528 r!14126)) b!7714772))

(assert (= (and start!737134 (is-Union!20528 r!14126)) b!7714779))

(assert (= (and start!737134 (is-Cons!73255 s!9605)) b!7714782))

(declare-fun m!8196978 () Bool)

(assert (=> b!7714783 m!8196978))

(declare-fun m!8196980 () Bool)

(assert (=> b!7714777 m!8196980))

(declare-fun m!8196982 () Bool)

(assert (=> b!7714777 m!8196982))

(declare-fun m!8196984 () Bool)

(assert (=> b!7714776 m!8196984))

(declare-fun m!8196986 () Bool)

(assert (=> start!737134 m!8196986))

(assert (=> b!7714778 m!8196980))

(declare-fun m!8196988 () Bool)

(assert (=> b!7714778 m!8196988))

(assert (=> b!7714778 m!8196988))

(declare-fun m!8196990 () Bool)

(assert (=> b!7714778 m!8196990))

(declare-fun m!8196992 () Bool)

(assert (=> b!7714778 m!8196992))

(declare-fun m!8196994 () Bool)

(assert (=> b!7714774 m!8196994))

(declare-fun m!8196996 () Bool)

(assert (=> b!7714774 m!8196996))

(declare-fun m!8196998 () Bool)

(assert (=> b!7714774 m!8196998))

(declare-fun m!8197000 () Bool)

(assert (=> b!7714774 m!8197000))

(declare-fun m!8197002 () Bool)

(assert (=> b!7714774 m!8197002))

(declare-fun m!8197004 () Bool)

(assert (=> b!7714774 m!8197004))

(declare-fun m!8197006 () Bool)

(assert (=> b!7714774 m!8197006))

(declare-fun m!8197008 () Bool)

(assert (=> b!7714774 m!8197008))

(declare-fun m!8197010 () Bool)

(assert (=> b!7714775 m!8197010))

(declare-fun m!8197012 () Bool)

(assert (=> b!7714775 m!8197012))

(declare-fun m!8197014 () Bool)

(assert (=> b!7714775 m!8197014))

(push 1)

(assert (not b!7714774))

(assert (not start!737134))

(assert tp_is_empty!51411)

(assert (not b!7714775))

(assert (not b!7714779))

(assert (not b!7714772))

(assert (not b!7714778))

(assert (not b!7714782))

(assert (not b!7714783))

(assert (not b!7714773))

(assert (not b!7714776))

(assert (not b!7714777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2336904 () Bool)

(declare-fun choose!59183 (Int) Bool)

(assert (=> d!2336904 (= (Exists!4653 lambda!470779) (choose!59183 lambda!470779))))

(declare-fun bs!1962603 () Bool)

(assert (= bs!1962603 d!2336904))

(declare-fun m!8197054 () Bool)

(assert (=> bs!1962603 m!8197054))

(assert (=> b!7714783 d!2336904))

(declare-fun d!2336906 () Bool)

(assert (=> d!2336906 (= (Exists!4653 lambda!470778) (choose!59183 lambda!470778))))

(declare-fun bs!1962604 () Bool)

(assert (= bs!1962604 d!2336906))

(declare-fun m!8197056 () Bool)

(assert (=> bs!1962604 m!8197056))

(assert (=> b!7714778 d!2336906))

(declare-fun d!2336908 () Bool)

(declare-fun isEmpty!41909 (Option!17553) Bool)

(assert (=> d!2336908 (= (isDefined!14169 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605)) (not (isEmpty!41909 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605))))))

(declare-fun bs!1962605 () Bool)

(assert (= bs!1962605 d!2336908))

(assert (=> bs!1962605 m!8196988))

(declare-fun m!8197058 () Bool)

(assert (=> bs!1962605 m!8197058))

(assert (=> b!7714778 d!2336908))

(declare-fun b!7714870 () Bool)

(declare-fun e!4576634 () Option!17553)

(assert (=> b!7714870 (= e!4576634 (Some!17552 (tuple2!69519 Nil!73255 s!9605)))))

(declare-fun b!7714871 () Bool)

(declare-fun res!3077947 () Bool)

(declare-fun e!4576636 () Bool)

(assert (=> b!7714871 (=> (not res!3077947) (not e!4576636))))

(declare-fun lt!2665390 () Option!17553)

(declare-fun get!25993 (Option!17553) tuple2!69518)

(assert (=> b!7714871 (= res!3077947 (matchR!10024 (reg!20857 r!14126) (_1!38062 (get!25993 lt!2665390))))))

(declare-fun b!7714872 () Bool)

(declare-fun e!4576635 () Bool)

(assert (=> b!7714872 (= e!4576635 (not (isDefined!14169 lt!2665390)))))

(declare-fun b!7714873 () Bool)

(declare-fun ++!17739 (List!73379 List!73379) List!73379)

(assert (=> b!7714873 (= e!4576636 (= (++!17739 (_1!38062 (get!25993 lt!2665390)) (_2!38062 (get!25993 lt!2665390))) s!9605))))

(declare-fun b!7714874 () Bool)

(declare-fun e!4576638 () Bool)

(assert (=> b!7714874 (= e!4576638 (matchR!10024 r!14126 s!9605))))

(declare-fun d!2336910 () Bool)

(assert (=> d!2336910 e!4576635))

(declare-fun res!3077945 () Bool)

(assert (=> d!2336910 (=> res!3077945 e!4576635)))

(assert (=> d!2336910 (= res!3077945 e!4576636)))

(declare-fun res!3077943 () Bool)

(assert (=> d!2336910 (=> (not res!3077943) (not e!4576636))))

(assert (=> d!2336910 (= res!3077943 (isDefined!14169 lt!2665390))))

(assert (=> d!2336910 (= lt!2665390 e!4576634)))

(declare-fun c!1422159 () Bool)

(assert (=> d!2336910 (= c!1422159 e!4576638)))

(declare-fun res!3077946 () Bool)

(assert (=> d!2336910 (=> (not res!3077946) (not e!4576638))))

(assert (=> d!2336910 (= res!3077946 (matchR!10024 (reg!20857 r!14126) Nil!73255))))

(assert (=> d!2336910 (validRegex!10946 (reg!20857 r!14126))))

(assert (=> d!2336910 (= (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605) lt!2665390)))

(declare-fun b!7714875 () Bool)

(declare-fun e!4576637 () Option!17553)

(assert (=> b!7714875 (= e!4576637 None!17552)))

(declare-fun b!7714876 () Bool)

(declare-fun res!3077944 () Bool)

(assert (=> b!7714876 (=> (not res!3077944) (not e!4576636))))

(assert (=> b!7714876 (= res!3077944 (matchR!10024 r!14126 (_2!38062 (get!25993 lt!2665390))))))

(declare-fun b!7714877 () Bool)

(declare-fun lt!2665391 () Unit!168104)

(declare-fun lt!2665389 () Unit!168104)

(assert (=> b!7714877 (= lt!2665391 lt!2665389)))

(assert (=> b!7714877 (= (++!17739 (++!17739 Nil!73255 (Cons!73255 (h!79703 s!9605) Nil!73255)) (t!388114 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3290 (List!73379 C!41382 List!73379 List!73379) Unit!168104)

(assert (=> b!7714877 (= lt!2665389 (lemmaMoveElementToOtherListKeepsConcatEq!3290 Nil!73255 (h!79703 s!9605) (t!388114 s!9605) s!9605))))

(assert (=> b!7714877 (= e!4576637 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 (++!17739 Nil!73255 (Cons!73255 (h!79703 s!9605) Nil!73255)) (t!388114 s!9605) s!9605))))

(declare-fun b!7714878 () Bool)

(assert (=> b!7714878 (= e!4576634 e!4576637)))

(declare-fun c!1422160 () Bool)

(assert (=> b!7714878 (= c!1422160 (is-Nil!73255 s!9605))))

(assert (= (and d!2336910 res!3077946) b!7714874))

(assert (= (and d!2336910 c!1422159) b!7714870))

(assert (= (and d!2336910 (not c!1422159)) b!7714878))

(assert (= (and b!7714878 c!1422160) b!7714875))

(assert (= (and b!7714878 (not c!1422160)) b!7714877))

(assert (= (and d!2336910 res!3077943) b!7714871))

(assert (= (and b!7714871 res!3077947) b!7714876))

(assert (= (and b!7714876 res!3077944) b!7714873))

(assert (= (and d!2336910 (not res!3077945)) b!7714872))

(declare-fun m!8197062 () Bool)

(assert (=> d!2336910 m!8197062))

(declare-fun m!8197064 () Bool)

(assert (=> d!2336910 m!8197064))

(assert (=> d!2336910 m!8197004))

(declare-fun m!8197066 () Bool)

(assert (=> b!7714876 m!8197066))

(declare-fun m!8197068 () Bool)

(assert (=> b!7714876 m!8197068))

(declare-fun m!8197070 () Bool)

(assert (=> b!7714877 m!8197070))

(assert (=> b!7714877 m!8197070))

(declare-fun m!8197072 () Bool)

(assert (=> b!7714877 m!8197072))

(declare-fun m!8197074 () Bool)

(assert (=> b!7714877 m!8197074))

(assert (=> b!7714877 m!8197070))

(declare-fun m!8197076 () Bool)

(assert (=> b!7714877 m!8197076))

(assert (=> b!7714874 m!8196982))

(assert (=> b!7714871 m!8197066))

(declare-fun m!8197078 () Bool)

(assert (=> b!7714871 m!8197078))

(assert (=> b!7714873 m!8197066))

(declare-fun m!8197080 () Bool)

(assert (=> b!7714873 m!8197080))

(assert (=> b!7714872 m!8197062))

(assert (=> b!7714778 d!2336910))

(declare-fun bs!1962607 () Bool)

(declare-fun d!2336916 () Bool)

(assert (= bs!1962607 (and d!2336916 b!7714778)))

(declare-fun lambda!470792 () Int)

(assert (=> bs!1962607 (= lambda!470792 lambda!470778)))

(declare-fun bs!1962608 () Bool)

(assert (= bs!1962608 (and d!2336916 b!7714783)))

(assert (=> bs!1962608 (not (= lambda!470792 lambda!470779))))

(assert (=> d!2336916 true))

(assert (=> d!2336916 true))

(assert (=> d!2336916 true))

(assert (=> d!2336916 (= (isDefined!14169 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605)) (Exists!4653 lambda!470792))))

(declare-fun lt!2665396 () Unit!168104)

(declare-fun choose!59184 (Regex!20528 Regex!20528 List!73379) Unit!168104)

(assert (=> d!2336916 (= lt!2665396 (choose!59184 (reg!20857 r!14126) r!14126 s!9605))))

(assert (=> d!2336916 (validRegex!10946 (reg!20857 r!14126))))

(assert (=> d!2336916 (= (lemmaFindConcatSeparationEquivalentToExists!3341 (reg!20857 r!14126) r!14126 s!9605) lt!2665396)))

(declare-fun bs!1962609 () Bool)

(assert (= bs!1962609 d!2336916))

(assert (=> bs!1962609 m!8196988))

(assert (=> bs!1962609 m!8196990))

(declare-fun m!8197082 () Bool)

(assert (=> bs!1962609 m!8197082))

(assert (=> bs!1962609 m!8196988))

(assert (=> bs!1962609 m!8197004))

(declare-fun m!8197084 () Bool)

(assert (=> bs!1962609 m!8197084))

(assert (=> b!7714778 d!2336916))

(assert (=> b!7714777 d!2336906))

(declare-fun b!7714953 () Bool)

(declare-fun res!3077993 () Bool)

(declare-fun e!4576676 () Bool)

(assert (=> b!7714953 (=> res!3077993 e!4576676)))

(declare-fun e!4576681 () Bool)

(assert (=> b!7714953 (= res!3077993 e!4576681)))

(declare-fun res!3077994 () Bool)

(assert (=> b!7714953 (=> (not res!3077994) (not e!4576681))))

(declare-fun lt!2665400 () Bool)

(assert (=> b!7714953 (= res!3077994 lt!2665400)))

(declare-fun b!7714954 () Bool)

(declare-fun e!4576680 () Bool)

(assert (=> b!7714954 (= e!4576676 e!4576680)))

(declare-fun res!3077997 () Bool)

(assert (=> b!7714954 (=> (not res!3077997) (not e!4576680))))

(assert (=> b!7714954 (= res!3077997 (not lt!2665400))))

(declare-fun b!7714955 () Bool)

(declare-fun res!3077999 () Bool)

(assert (=> b!7714955 (=> res!3077999 e!4576676)))

(assert (=> b!7714955 (= res!3077999 (not (is-ElementMatch!20528 r!14126)))))

(declare-fun e!4576678 () Bool)

(assert (=> b!7714955 (= e!4576678 e!4576676)))

(declare-fun b!7714956 () Bool)

(declare-fun e!4576682 () Bool)

(declare-fun nullable!9007 (Regex!20528) Bool)

(assert (=> b!7714956 (= e!4576682 (nullable!9007 r!14126))))

(declare-fun b!7714957 () Bool)

(assert (=> b!7714957 (= e!4576678 (not lt!2665400))))

(declare-fun b!7714958 () Bool)

(declare-fun e!4576679 () Bool)

(assert (=> b!7714958 (= e!4576680 e!4576679)))

(declare-fun res!3077995 () Bool)

(assert (=> b!7714958 (=> res!3077995 e!4576679)))

(declare-fun call!713094 () Bool)

(assert (=> b!7714958 (= res!3077995 call!713094)))

(declare-fun b!7714959 () Bool)

(declare-fun res!3077992 () Bool)

(assert (=> b!7714959 (=> (not res!3077992) (not e!4576681))))

(assert (=> b!7714959 (= res!3077992 (not call!713094))))

(declare-fun b!7714960 () Bool)

(declare-fun derivativeStep!5972 (Regex!20528 C!41382) Regex!20528)

(declare-fun head!15772 (List!73379) C!41382)

(declare-fun tail!15312 (List!73379) List!73379)

(assert (=> b!7714960 (= e!4576682 (matchR!10024 (derivativeStep!5972 r!14126 (head!15772 s!9605)) (tail!15312 s!9605)))))

(declare-fun b!7714961 () Bool)

(assert (=> b!7714961 (= e!4576679 (not (= (head!15772 s!9605) (c!1422150 r!14126))))))

(declare-fun b!7714962 () Bool)

(declare-fun e!4576677 () Bool)

(assert (=> b!7714962 (= e!4576677 (= lt!2665400 call!713094))))

(declare-fun b!7714963 () Bool)

(declare-fun res!3077998 () Bool)

(assert (=> b!7714963 (=> res!3077998 e!4576679)))

(assert (=> b!7714963 (= res!3077998 (not (isEmpty!41907 (tail!15312 s!9605))))))

(declare-fun d!2336918 () Bool)

(assert (=> d!2336918 e!4576677))

(declare-fun c!1422176 () Bool)

(assert (=> d!2336918 (= c!1422176 (is-EmptyExpr!20528 r!14126))))

(assert (=> d!2336918 (= lt!2665400 e!4576682)))

(declare-fun c!1422177 () Bool)

(assert (=> d!2336918 (= c!1422177 (isEmpty!41907 s!9605))))

(assert (=> d!2336918 (validRegex!10946 r!14126)))

(assert (=> d!2336918 (= (matchR!10024 r!14126 s!9605) lt!2665400)))

(declare-fun b!7714964 () Bool)

(assert (=> b!7714964 (= e!4576677 e!4576678)))

(declare-fun c!1422178 () Bool)

(assert (=> b!7714964 (= c!1422178 (is-EmptyLang!20528 r!14126))))

(declare-fun b!7714965 () Bool)

(assert (=> b!7714965 (= e!4576681 (= (head!15772 s!9605) (c!1422150 r!14126)))))

(declare-fun bm!713089 () Bool)

(assert (=> bm!713089 (= call!713094 (isEmpty!41907 s!9605))))

(declare-fun b!7714966 () Bool)

(declare-fun res!3077996 () Bool)

(assert (=> b!7714966 (=> (not res!3077996) (not e!4576681))))

(assert (=> b!7714966 (= res!3077996 (isEmpty!41907 (tail!15312 s!9605)))))

(assert (= (and d!2336918 c!1422177) b!7714956))

(assert (= (and d!2336918 (not c!1422177)) b!7714960))

(assert (= (and d!2336918 c!1422176) b!7714962))

(assert (= (and d!2336918 (not c!1422176)) b!7714964))

(assert (= (and b!7714964 c!1422178) b!7714957))

(assert (= (and b!7714964 (not c!1422178)) b!7714955))

(assert (= (and b!7714955 (not res!3077999)) b!7714953))

(assert (= (and b!7714953 res!3077994) b!7714959))

(assert (= (and b!7714959 res!3077992) b!7714966))

(assert (= (and b!7714966 res!3077996) b!7714965))

(assert (= (and b!7714953 (not res!3077993)) b!7714954))

(assert (= (and b!7714954 res!3077997) b!7714958))

(assert (= (and b!7714958 (not res!3077995)) b!7714963))

(assert (= (and b!7714963 (not res!3077998)) b!7714961))

(assert (= (or b!7714962 b!7714958 b!7714959) bm!713089))

(assert (=> bm!713089 m!8196984))

(assert (=> d!2336918 m!8196984))

(assert (=> d!2336918 m!8196986))

(declare-fun m!8197098 () Bool)

(assert (=> b!7714960 m!8197098))

(assert (=> b!7714960 m!8197098))

(declare-fun m!8197100 () Bool)

(assert (=> b!7714960 m!8197100))

(declare-fun m!8197102 () Bool)

(assert (=> b!7714960 m!8197102))

(assert (=> b!7714960 m!8197100))

(assert (=> b!7714960 m!8197102))

(declare-fun m!8197104 () Bool)

(assert (=> b!7714960 m!8197104))

(assert (=> b!7714966 m!8197102))

(assert (=> b!7714966 m!8197102))

(declare-fun m!8197106 () Bool)

(assert (=> b!7714966 m!8197106))

(assert (=> b!7714963 m!8197102))

(assert (=> b!7714963 m!8197102))

(assert (=> b!7714963 m!8197106))

(declare-fun m!8197108 () Bool)

(assert (=> b!7714956 m!8197108))

(assert (=> b!7714965 m!8197098))

(assert (=> b!7714961 m!8197098))

(assert (=> b!7714777 d!2336918))

(declare-fun d!2336922 () Bool)

(assert (=> d!2336922 (= (isEmpty!41907 s!9605) (is-Nil!73255 s!9605))))

(assert (=> b!7714776 d!2336922))

(declare-fun d!2336924 () Bool)

(declare-fun e!4576687 () Bool)

(assert (=> d!2336924 e!4576687))

(declare-fun res!3078004 () Bool)

(assert (=> d!2336924 (=> res!3078004 e!4576687)))

(assert (=> d!2336924 (= res!3078004 (isEmpty!41907 s!9605))))

(declare-fun lt!2665405 () Unit!168104)

(declare-fun choose!59185 (Regex!20528 List!73379) Unit!168104)

(assert (=> d!2336924 (= lt!2665405 (choose!59185 (reg!20857 r!14126) s!9605))))

(assert (=> d!2336924 (validRegex!10946 (Star!20528 (reg!20857 r!14126)))))

(assert (=> d!2336924 (= (lemmaStarAppConcat!43 (reg!20857 r!14126) s!9605) lt!2665405)))

(declare-fun b!7714971 () Bool)

(assert (=> b!7714971 (= e!4576687 (matchR!10024 (Concat!29373 (reg!20857 r!14126) (Star!20528 (reg!20857 r!14126))) s!9605))))

(assert (= (and d!2336924 (not res!3078004)) b!7714971))

(assert (=> d!2336924 m!8196984))

(declare-fun m!8197110 () Bool)

(assert (=> d!2336924 m!8197110))

(declare-fun m!8197112 () Bool)

(assert (=> d!2336924 m!8197112))

(declare-fun m!8197114 () Bool)

(assert (=> b!7714971 m!8197114))

(assert (=> b!7714775 d!2336924))

(declare-fun b!7714972 () Bool)

(declare-fun res!3078006 () Bool)

(declare-fun e!4576688 () Bool)

(assert (=> b!7714972 (=> res!3078006 e!4576688)))

(declare-fun e!4576693 () Bool)

(assert (=> b!7714972 (= res!3078006 e!4576693)))

(declare-fun res!3078007 () Bool)

(assert (=> b!7714972 (=> (not res!3078007) (not e!4576693))))

(declare-fun lt!2665406 () Bool)

(assert (=> b!7714972 (= res!3078007 lt!2665406)))

(declare-fun b!7714973 () Bool)

(declare-fun e!4576692 () Bool)

(assert (=> b!7714973 (= e!4576688 e!4576692)))

(declare-fun res!3078010 () Bool)

(assert (=> b!7714973 (=> (not res!3078010) (not e!4576692))))

(assert (=> b!7714973 (= res!3078010 (not lt!2665406))))

(declare-fun b!7714974 () Bool)

(declare-fun res!3078012 () Bool)

(assert (=> b!7714974 (=> res!3078012 e!4576688)))

(assert (=> b!7714974 (= res!3078012 (not (is-ElementMatch!20528 (Concat!29373 (reg!20857 r!14126) r!14126))))))

(declare-fun e!4576690 () Bool)

(assert (=> b!7714974 (= e!4576690 e!4576688)))

(declare-fun b!7714975 () Bool)

(declare-fun e!4576694 () Bool)

(assert (=> b!7714975 (= e!4576694 (nullable!9007 (Concat!29373 (reg!20857 r!14126) r!14126)))))

(declare-fun b!7714976 () Bool)

(assert (=> b!7714976 (= e!4576690 (not lt!2665406))))

(declare-fun b!7714977 () Bool)

(declare-fun e!4576691 () Bool)

(assert (=> b!7714977 (= e!4576692 e!4576691)))

(declare-fun res!3078008 () Bool)

(assert (=> b!7714977 (=> res!3078008 e!4576691)))

(declare-fun call!713095 () Bool)

(assert (=> b!7714977 (= res!3078008 call!713095)))

(declare-fun b!7714978 () Bool)

(declare-fun res!3078005 () Bool)

(assert (=> b!7714978 (=> (not res!3078005) (not e!4576693))))

(assert (=> b!7714978 (= res!3078005 (not call!713095))))

(declare-fun b!7714979 () Bool)

(assert (=> b!7714979 (= e!4576694 (matchR!10024 (derivativeStep!5972 (Concat!29373 (reg!20857 r!14126) r!14126) (head!15772 s!9605)) (tail!15312 s!9605)))))

(declare-fun b!7714980 () Bool)

(assert (=> b!7714980 (= e!4576691 (not (= (head!15772 s!9605) (c!1422150 (Concat!29373 (reg!20857 r!14126) r!14126)))))))

(declare-fun b!7714981 () Bool)

(declare-fun e!4576689 () Bool)

(assert (=> b!7714981 (= e!4576689 (= lt!2665406 call!713095))))

(declare-fun b!7714982 () Bool)

(declare-fun res!3078011 () Bool)

(assert (=> b!7714982 (=> res!3078011 e!4576691)))

(assert (=> b!7714982 (= res!3078011 (not (isEmpty!41907 (tail!15312 s!9605))))))

(declare-fun d!2336926 () Bool)

(assert (=> d!2336926 e!4576689))

(declare-fun c!1422179 () Bool)

(assert (=> d!2336926 (= c!1422179 (is-EmptyExpr!20528 (Concat!29373 (reg!20857 r!14126) r!14126)))))

(assert (=> d!2336926 (= lt!2665406 e!4576694)))

(declare-fun c!1422180 () Bool)

(assert (=> d!2336926 (= c!1422180 (isEmpty!41907 s!9605))))

(assert (=> d!2336926 (validRegex!10946 (Concat!29373 (reg!20857 r!14126) r!14126))))

(assert (=> d!2336926 (= (matchR!10024 (Concat!29373 (reg!20857 r!14126) r!14126) s!9605) lt!2665406)))

(declare-fun b!7714983 () Bool)

(assert (=> b!7714983 (= e!4576689 e!4576690)))

(declare-fun c!1422181 () Bool)

(assert (=> b!7714983 (= c!1422181 (is-EmptyLang!20528 (Concat!29373 (reg!20857 r!14126) r!14126)))))

(declare-fun b!7714984 () Bool)

(assert (=> b!7714984 (= e!4576693 (= (head!15772 s!9605) (c!1422150 (Concat!29373 (reg!20857 r!14126) r!14126))))))

(declare-fun bm!713090 () Bool)

(assert (=> bm!713090 (= call!713095 (isEmpty!41907 s!9605))))

(declare-fun b!7714985 () Bool)

(declare-fun res!3078009 () Bool)

(assert (=> b!7714985 (=> (not res!3078009) (not e!4576693))))

(assert (=> b!7714985 (= res!3078009 (isEmpty!41907 (tail!15312 s!9605)))))

(assert (= (and d!2336926 c!1422180) b!7714975))

(assert (= (and d!2336926 (not c!1422180)) b!7714979))

(assert (= (and d!2336926 c!1422179) b!7714981))

(assert (= (and d!2336926 (not c!1422179)) b!7714983))

(assert (= (and b!7714983 c!1422181) b!7714976))

(assert (= (and b!7714983 (not c!1422181)) b!7714974))

(assert (= (and b!7714974 (not res!3078012)) b!7714972))

(assert (= (and b!7714972 res!3078007) b!7714978))

(assert (= (and b!7714978 res!3078005) b!7714985))

(assert (= (and b!7714985 res!3078009) b!7714984))

(assert (= (and b!7714972 (not res!3078006)) b!7714973))

(assert (= (and b!7714973 res!3078010) b!7714977))

(assert (= (and b!7714977 (not res!3078008)) b!7714982))

(assert (= (and b!7714982 (not res!3078011)) b!7714980))

(assert (= (or b!7714981 b!7714977 b!7714978) bm!713090))

(assert (=> bm!713090 m!8196984))

(assert (=> d!2336926 m!8196984))

(declare-fun m!8197116 () Bool)

(assert (=> d!2336926 m!8197116))

(assert (=> b!7714979 m!8197098))

(assert (=> b!7714979 m!8197098))

(declare-fun m!8197118 () Bool)

(assert (=> b!7714979 m!8197118))

(assert (=> b!7714979 m!8197102))

(assert (=> b!7714979 m!8197118))

(assert (=> b!7714979 m!8197102))

(declare-fun m!8197120 () Bool)

(assert (=> b!7714979 m!8197120))

(assert (=> b!7714985 m!8197102))

(assert (=> b!7714985 m!8197102))

(assert (=> b!7714985 m!8197106))

(assert (=> b!7714982 m!8197102))

(assert (=> b!7714982 m!8197102))

(assert (=> b!7714982 m!8197106))

(declare-fun m!8197124 () Bool)

(assert (=> b!7714975 m!8197124))

(assert (=> b!7714984 m!8197098))

(assert (=> b!7714980 m!8197098))

(assert (=> b!7714775 d!2336926))

(declare-fun d!2336928 () Bool)

(assert (=> d!2336928 (isDefined!14169 (findConcatSeparation!3583 (reg!20857 r!14126) r!14126 Nil!73255 s!9605 s!9605))))

(declare-fun lt!2665411 () Unit!168104)

(declare-fun choose!59186 (Regex!20528 Regex!20528 List!73379) Unit!168104)

(assert (=> d!2336928 (= lt!2665411 (choose!59186 (reg!20857 r!14126) r!14126 s!9605))))

(assert (=> d!2336928 (validRegex!10946 (reg!20857 r!14126))))

(assert (=> d!2336928 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!301 (reg!20857 r!14126) r!14126 s!9605) lt!2665411)))

(declare-fun bs!1962610 () Bool)

(assert (= bs!1962610 d!2336928))

(assert (=> bs!1962610 m!8196988))

(assert (=> bs!1962610 m!8196988))

(assert (=> bs!1962610 m!8196990))

(declare-fun m!8197138 () Bool)

(assert (=> bs!1962610 m!8197138))

(assert (=> bs!1962610 m!8197004))

(assert (=> b!7714775 d!2336928))

(declare-fun b!7715019 () Bool)

(declare-fun e!4576718 () Bool)

(declare-fun e!4576719 () Bool)

(assert (=> b!7715019 (= e!4576718 e!4576719)))

(declare-fun res!3078033 () Bool)

(assert (=> b!7715019 (=> (not res!3078033) (not e!4576719))))

(declare-fun call!713105 () Bool)

(assert (=> b!7715019 (= res!3078033 call!713105)))

(declare-fun b!7715020 () Bool)

(declare-fun e!4576717 () Bool)

(declare-fun e!4576720 () Bool)

(assert (=> b!7715020 (= e!4576717 e!4576720)))

(declare-fun res!3078036 () Bool)

(assert (=> b!7715020 (= res!3078036 (not (nullable!9007 (reg!20857 (reg!20857 r!14126)))))))

(assert (=> b!7715020 (=> (not res!3078036) (not e!4576720))))

(declare-fun b!7715021 () Bool)

(declare-fun call!713103 () Bool)

(assert (=> b!7715021 (= e!4576720 call!713103)))

(declare-fun d!2336934 () Bool)

(declare-fun res!3078035 () Bool)

(declare-fun e!4576723 () Bool)

(assert (=> d!2336934 (=> res!3078035 e!4576723)))

(assert (=> d!2336934 (= res!3078035 (is-ElementMatch!20528 (reg!20857 r!14126)))))

(assert (=> d!2336934 (= (validRegex!10946 (reg!20857 r!14126)) e!4576723)))

(declare-fun b!7715022 () Bool)

(declare-fun call!713104 () Bool)

(assert (=> b!7715022 (= e!4576719 call!713104)))

(declare-fun bm!713098 () Bool)

(declare-fun c!1422189 () Bool)

(declare-fun c!1422190 () Bool)

(assert (=> bm!713098 (= call!713103 (validRegex!10946 (ite c!1422190 (reg!20857 (reg!20857 r!14126)) (ite c!1422189 (regOne!41569 (reg!20857 r!14126)) (regOne!41568 (reg!20857 r!14126))))))))

(declare-fun b!7715023 () Bool)

(assert (=> b!7715023 (= e!4576723 e!4576717)))

(assert (=> b!7715023 (= c!1422190 (is-Star!20528 (reg!20857 r!14126)))))

(declare-fun b!7715024 () Bool)

(declare-fun e!4576722 () Bool)

(assert (=> b!7715024 (= e!4576722 call!713104)))

(declare-fun bm!713099 () Bool)

(assert (=> bm!713099 (= call!713104 (validRegex!10946 (ite c!1422189 (regTwo!41569 (reg!20857 r!14126)) (regTwo!41568 (reg!20857 r!14126)))))))

(declare-fun bm!713100 () Bool)

(assert (=> bm!713100 (= call!713105 call!713103)))

(declare-fun b!7715025 () Bool)

(declare-fun e!4576721 () Bool)

(assert (=> b!7715025 (= e!4576717 e!4576721)))

(assert (=> b!7715025 (= c!1422189 (is-Union!20528 (reg!20857 r!14126)))))

(declare-fun b!7715026 () Bool)

(declare-fun res!3078032 () Bool)

(assert (=> b!7715026 (=> res!3078032 e!4576718)))

(assert (=> b!7715026 (= res!3078032 (not (is-Concat!29373 (reg!20857 r!14126))))))

(assert (=> b!7715026 (= e!4576721 e!4576718)))

(declare-fun b!7715027 () Bool)

(declare-fun res!3078034 () Bool)

(assert (=> b!7715027 (=> (not res!3078034) (not e!4576722))))

(assert (=> b!7715027 (= res!3078034 call!713105)))

(assert (=> b!7715027 (= e!4576721 e!4576722)))

(assert (= (and d!2336934 (not res!3078035)) b!7715023))

(assert (= (and b!7715023 c!1422190) b!7715020))

(assert (= (and b!7715023 (not c!1422190)) b!7715025))

(assert (= (and b!7715020 res!3078036) b!7715021))

(assert (= (and b!7715025 c!1422189) b!7715027))

(assert (= (and b!7715025 (not c!1422189)) b!7715026))

(assert (= (and b!7715027 res!3078034) b!7715024))

(assert (= (and b!7715026 (not res!3078032)) b!7715019))

(assert (= (and b!7715019 res!3078033) b!7715022))

(assert (= (or b!7715027 b!7715019) bm!713100))

(assert (= (or b!7715024 b!7715022) bm!713099))

(assert (= (or b!7715021 bm!713100) bm!713098))

(declare-fun m!8197140 () Bool)

(assert (=> b!7715020 m!8197140))

(declare-fun m!8197142 () Bool)

(assert (=> bm!713098 m!8197142))

(declare-fun m!8197144 () Bool)

(assert (=> bm!713099 m!8197144))

(assert (=> b!7714774 d!2336934))

(declare-fun bs!1962612 () Bool)

(declare-fun b!7715078 () Bool)

(assert (= bs!1962612 (and b!7715078 b!7714778)))

(declare-fun lambda!470797 () Int)

(assert (=> bs!1962612 (not (= lambda!470797 lambda!470778))))

(declare-fun bs!1962613 () Bool)

(assert (= bs!1962613 (and b!7715078 b!7714783)))

(assert (=> bs!1962613 (= (and (= (_1!38062 lt!2665354) s!9605) (= (reg!20857 (reg!20857 r!14126)) (reg!20857 r!14126)) (= (reg!20857 r!14126) r!14126)) (= lambda!470797 lambda!470779))))

(declare-fun bs!1962614 () Bool)

(assert (= bs!1962614 (and b!7715078 d!2336916)))

(assert (=> bs!1962614 (not (= lambda!470797 lambda!470792))))

(assert (=> b!7715078 true))

(assert (=> b!7715078 true))

(declare-fun bs!1962615 () Bool)

(declare-fun b!7715084 () Bool)

(assert (= bs!1962615 (and b!7715084 b!7714778)))

(declare-fun lambda!470798 () Int)

(assert (=> bs!1962615 (not (= lambda!470798 lambda!470778))))

(declare-fun bs!1962616 () Bool)

(assert (= bs!1962616 (and b!7715084 b!7714783)))

(assert (=> bs!1962616 (not (= lambda!470798 lambda!470779))))

(declare-fun bs!1962617 () Bool)

(assert (= bs!1962617 (and b!7715084 d!2336916)))

(assert (=> bs!1962617 (not (= lambda!470798 lambda!470792))))

(declare-fun bs!1962618 () Bool)

(assert (= bs!1962618 (and b!7715084 b!7715078)))

(assert (=> bs!1962618 (not (= lambda!470798 lambda!470797))))

(assert (=> b!7715084 true))

(assert (=> b!7715084 true))

(declare-fun e!4576757 () Bool)

(declare-fun call!713116 () Bool)

(assert (=> b!7715078 (= e!4576757 call!713116)))

(declare-fun b!7715079 () Bool)

(declare-fun e!4576760 () Bool)

(assert (=> b!7715079 (= e!4576760 (matchRSpec!4618 (regTwo!41569 (reg!20857 r!14126)) (_1!38062 lt!2665354)))))

(declare-fun b!7715080 () Bool)

(declare-fun e!4576756 () Bool)

(declare-fun e!4576758 () Bool)

(assert (=> b!7715080 (= e!4576756 e!4576758)))

(declare-fun res!3078064 () Bool)

(assert (=> b!7715080 (= res!3078064 (not (is-EmptyLang!20528 (reg!20857 r!14126))))))

(assert (=> b!7715080 (=> (not res!3078064) (not e!4576758))))

(declare-fun b!7715081 () Bool)

(declare-fun c!1422206 () Bool)

(assert (=> b!7715081 (= c!1422206 (is-ElementMatch!20528 (reg!20857 r!14126)))))

(declare-fun e!4576761 () Bool)

(assert (=> b!7715081 (= e!4576758 e!4576761)))

(declare-fun c!1422205 () Bool)

(declare-fun bm!713111 () Bool)

(assert (=> bm!713111 (= call!713116 (Exists!4653 (ite c!1422205 lambda!470797 lambda!470798)))))

(declare-fun d!2336936 () Bool)

(declare-fun c!1422203 () Bool)

(assert (=> d!2336936 (= c!1422203 (is-EmptyExpr!20528 (reg!20857 r!14126)))))

(assert (=> d!2336936 (= (matchRSpec!4618 (reg!20857 r!14126) (_1!38062 lt!2665354)) e!4576756)))

(declare-fun b!7715082 () Bool)

(declare-fun call!713117 () Bool)

(assert (=> b!7715082 (= e!4576756 call!713117)))

(declare-fun b!7715083 () Bool)

(declare-fun res!3078065 () Bool)

(assert (=> b!7715083 (=> res!3078065 e!4576757)))

(assert (=> b!7715083 (= res!3078065 call!713117)))

(declare-fun e!4576762 () Bool)

(assert (=> b!7715083 (= e!4576762 e!4576757)))

(assert (=> b!7715084 (= e!4576762 call!713116)))

(declare-fun b!7715085 () Bool)

(declare-fun e!4576759 () Bool)

(assert (=> b!7715085 (= e!4576759 e!4576760)))

(declare-fun res!3078063 () Bool)

(assert (=> b!7715085 (= res!3078063 (matchRSpec!4618 (regOne!41569 (reg!20857 r!14126)) (_1!38062 lt!2665354)))))

(assert (=> b!7715085 (=> res!3078063 e!4576760)))

(declare-fun b!7715086 () Bool)

(assert (=> b!7715086 (= e!4576761 (= (_1!38062 lt!2665354) (Cons!73255 (c!1422150 (reg!20857 r!14126)) Nil!73255)))))

(declare-fun bm!713112 () Bool)

(assert (=> bm!713112 (= call!713117 (isEmpty!41907 (_1!38062 lt!2665354)))))

(declare-fun b!7715087 () Bool)

(assert (=> b!7715087 (= e!4576759 e!4576762)))

(assert (=> b!7715087 (= c!1422205 (is-Star!20528 (reg!20857 r!14126)))))

(declare-fun b!7715088 () Bool)

(declare-fun c!1422204 () Bool)

(assert (=> b!7715088 (= c!1422204 (is-Union!20528 (reg!20857 r!14126)))))

(assert (=> b!7715088 (= e!4576761 e!4576759)))

(assert (= (and d!2336936 c!1422203) b!7715082))

(assert (= (and d!2336936 (not c!1422203)) b!7715080))

(assert (= (and b!7715080 res!3078064) b!7715081))

(assert (= (and b!7715081 c!1422206) b!7715086))

(assert (= (and b!7715081 (not c!1422206)) b!7715088))

(assert (= (and b!7715088 c!1422204) b!7715085))

(assert (= (and b!7715088 (not c!1422204)) b!7715087))

(assert (= (and b!7715085 (not res!3078063)) b!7715079))

(assert (= (and b!7715087 c!1422205) b!7715083))

(assert (= (and b!7715087 (not c!1422205)) b!7715084))

(assert (= (and b!7715083 (not res!3078065)) b!7715078))

(assert (= (or b!7715078 b!7715084) bm!713111))

(assert (= (or b!7715082 b!7715083) bm!713112))

(declare-fun m!8197154 () Bool)

(assert (=> b!7715079 m!8197154))

(declare-fun m!8197156 () Bool)

(assert (=> bm!713111 m!8197156))

(declare-fun m!8197158 () Bool)

(assert (=> b!7715085 m!8197158))

(declare-fun m!8197160 () Bool)

(assert (=> bm!713112 m!8197160))

(assert (=> b!7714774 d!2336936))

(declare-fun b!7715098 () Bool)

(declare-fun res!3078072 () Bool)

(declare-fun e!4576770 () Bool)

(assert (=> b!7715098 (=> res!3078072 e!4576770)))

(declare-fun e!4576775 () Bool)

(assert (=> b!7715098 (= res!3078072 e!4576775)))

(declare-fun res!3078073 () Bool)

(assert (=> b!7715098 (=> (not res!3078073) (not e!4576775))))

(declare-fun lt!2665415 () Bool)

(assert (=> b!7715098 (= res!3078073 lt!2665415)))

(declare-fun b!7715099 () Bool)

(declare-fun e!4576774 () Bool)

(assert (=> b!7715099 (= e!4576770 e!4576774)))

(declare-fun res!3078076 () Bool)

(assert (=> b!7715099 (=> (not res!3078076) (not e!4576774))))

(assert (=> b!7715099 (= res!3078076 (not lt!2665415))))

(declare-fun b!7715100 () Bool)

(declare-fun res!3078078 () Bool)

(assert (=> b!7715100 (=> res!3078078 e!4576770)))

(assert (=> b!7715100 (= res!3078078 (not (is-ElementMatch!20528 r!14126)))))

(declare-fun e!4576772 () Bool)

(assert (=> b!7715100 (= e!4576772 e!4576770)))

(declare-fun b!7715101 () Bool)

(declare-fun e!4576776 () Bool)

(assert (=> b!7715101 (= e!4576776 (nullable!9007 r!14126))))

(declare-fun b!7715102 () Bool)

(assert (=> b!7715102 (= e!4576772 (not lt!2665415))))

(declare-fun b!7715103 () Bool)

(declare-fun e!4576773 () Bool)

(assert (=> b!7715103 (= e!4576774 e!4576773)))

(declare-fun res!3078074 () Bool)

(assert (=> b!7715103 (=> res!3078074 e!4576773)))

(declare-fun call!713121 () Bool)

(assert (=> b!7715103 (= res!3078074 call!713121)))

(declare-fun b!7715104 () Bool)

(declare-fun res!3078071 () Bool)

(assert (=> b!7715104 (=> (not res!3078071) (not e!4576775))))

(assert (=> b!7715104 (= res!3078071 (not call!713121))))

(declare-fun b!7715105 () Bool)

(assert (=> b!7715105 (= e!4576776 (matchR!10024 (derivativeStep!5972 r!14126 (head!15772 (_2!38062 lt!2665354))) (tail!15312 (_2!38062 lt!2665354))))))

(declare-fun b!7715106 () Bool)

(assert (=> b!7715106 (= e!4576773 (not (= (head!15772 (_2!38062 lt!2665354)) (c!1422150 r!14126))))))

(declare-fun b!7715107 () Bool)

(declare-fun e!4576771 () Bool)

(assert (=> b!7715107 (= e!4576771 (= lt!2665415 call!713121))))

(declare-fun b!7715108 () Bool)

(declare-fun res!3078077 () Bool)

(assert (=> b!7715108 (=> res!3078077 e!4576773)))

(assert (=> b!7715108 (= res!3078077 (not (isEmpty!41907 (tail!15312 (_2!38062 lt!2665354)))))))

(declare-fun d!2336942 () Bool)

(assert (=> d!2336942 e!4576771))

(declare-fun c!1422209 () Bool)

(assert (=> d!2336942 (= c!1422209 (is-EmptyExpr!20528 r!14126))))

(assert (=> d!2336942 (= lt!2665415 e!4576776)))

(declare-fun c!1422210 () Bool)

(assert (=> d!2336942 (= c!1422210 (isEmpty!41907 (_2!38062 lt!2665354)))))

(assert (=> d!2336942 (validRegex!10946 r!14126)))

(assert (=> d!2336942 (= (matchR!10024 r!14126 (_2!38062 lt!2665354)) lt!2665415)))

(declare-fun b!7715109 () Bool)

(assert (=> b!7715109 (= e!4576771 e!4576772)))

(declare-fun c!1422211 () Bool)

(assert (=> b!7715109 (= c!1422211 (is-EmptyLang!20528 r!14126))))

(declare-fun b!7715110 () Bool)

(assert (=> b!7715110 (= e!4576775 (= (head!15772 (_2!38062 lt!2665354)) (c!1422150 r!14126)))))

(declare-fun bm!713116 () Bool)

(assert (=> bm!713116 (= call!713121 (isEmpty!41907 (_2!38062 lt!2665354)))))

(declare-fun b!7715111 () Bool)

(declare-fun res!3078075 () Bool)

(assert (=> b!7715111 (=> (not res!3078075) (not e!4576775))))

(assert (=> b!7715111 (= res!3078075 (isEmpty!41907 (tail!15312 (_2!38062 lt!2665354))))))

(assert (= (and d!2336942 c!1422210) b!7715101))

(assert (= (and d!2336942 (not c!1422210)) b!7715105))

(assert (= (and d!2336942 c!1422209) b!7715107))

(assert (= (and d!2336942 (not c!1422209)) b!7715109))

(assert (= (and b!7715109 c!1422211) b!7715102))

(assert (= (and b!7715109 (not c!1422211)) b!7715100))

(assert (= (and b!7715100 (not res!3078078)) b!7715098))

(assert (= (and b!7715098 res!3078073) b!7715104))

(assert (= (and b!7715104 res!3078071) b!7715111))

(assert (= (and b!7715111 res!3078075) b!7715110))

(assert (= (and b!7715098 (not res!3078072)) b!7715099))

(assert (= (and b!7715099 res!3078076) b!7715103))

(assert (= (and b!7715103 (not res!3078074)) b!7715108))

(assert (= (and b!7715108 (not res!3078077)) b!7715106))

(assert (= (or b!7715107 b!7715103 b!7715104) bm!713116))

(declare-fun m!8197164 () Bool)

(assert (=> bm!713116 m!8197164))

(assert (=> d!2336942 m!8197164))

(assert (=> d!2336942 m!8196986))

(declare-fun m!8197166 () Bool)

(assert (=> b!7715105 m!8197166))

(assert (=> b!7715105 m!8197166))

(declare-fun m!8197168 () Bool)

(assert (=> b!7715105 m!8197168))

(declare-fun m!8197170 () Bool)

(assert (=> b!7715105 m!8197170))

(assert (=> b!7715105 m!8197168))

(assert (=> b!7715105 m!8197170))

(declare-fun m!8197172 () Bool)

(assert (=> b!7715105 m!8197172))

(assert (=> b!7715111 m!8197170))

(assert (=> b!7715111 m!8197170))

(declare-fun m!8197174 () Bool)

(assert (=> b!7715111 m!8197174))

(assert (=> b!7715108 m!8197170))

(assert (=> b!7715108 m!8197170))

(assert (=> b!7715108 m!8197174))

(assert (=> b!7715101 m!8197108))

(assert (=> b!7715110 m!8197166))

(assert (=> b!7715106 m!8197166))

(assert (=> b!7714774 d!2336942))

(declare-fun d!2336948 () Bool)

(declare-fun lt!2665419 () tuple2!69518)

(declare-fun dynLambda!29949 (Int tuple2!69518) Bool)

(assert (=> d!2336948 (dynLambda!29949 lambda!470779 lt!2665419)))

(declare-fun choose!59187 (Int) tuple2!69518)

(assert (=> d!2336948 (= lt!2665419 (choose!59187 lambda!470779))))

(assert (=> d!2336948 (Exists!4653 lambda!470779)))

(assert (=> d!2336948 (= (pickWitness!507 lambda!470779) lt!2665419)))

(declare-fun b_lambda!289219 () Bool)

(assert (=> (not b_lambda!289219) (not d!2336948)))

(declare-fun bs!1962620 () Bool)

(assert (= bs!1962620 d!2336948))

(declare-fun m!8197182 () Bool)

(assert (=> bs!1962620 m!8197182))

(declare-fun m!8197184 () Bool)

(assert (=> bs!1962620 m!8197184))

(assert (=> bs!1962620 m!8196978))

(assert (=> b!7714774 d!2336948))

(declare-fun d!2336952 () Bool)

(assert (=> d!2336952 (= (matchR!10024 (reg!20857 r!14126) (_1!38062 lt!2665354)) (matchRSpec!4618 (reg!20857 r!14126) (_1!38062 lt!2665354)))))

(declare-fun lt!2665422 () Unit!168104)

(declare-fun choose!59188 (Regex!20528 List!73379) Unit!168104)

(assert (=> d!2336952 (= lt!2665422 (choose!59188 (reg!20857 r!14126) (_1!38062 lt!2665354)))))

(assert (=> d!2336952 (validRegex!10946 (reg!20857 r!14126))))

(assert (=> d!2336952 (= (mainMatchTheorem!4593 (reg!20857 r!14126) (_1!38062 lt!2665354)) lt!2665422)))

(declare-fun bs!1962621 () Bool)

(assert (= bs!1962621 d!2336952))

(assert (=> bs!1962621 m!8196994))

(assert (=> bs!1962621 m!8196998))

(declare-fun m!8197198 () Bool)

(assert (=> bs!1962621 m!8197198))

(assert (=> bs!1962621 m!8197004))

(assert (=> b!7714774 d!2336952))

(declare-fun b!7715135 () Bool)

(declare-fun res!3078093 () Bool)

(declare-fun e!4576791 () Bool)

(assert (=> b!7715135 (=> res!3078093 e!4576791)))

(declare-fun e!4576796 () Bool)

(assert (=> b!7715135 (= res!3078093 e!4576796)))

(declare-fun res!3078094 () Bool)

(assert (=> b!7715135 (=> (not res!3078094) (not e!4576796))))

(declare-fun lt!2665423 () Bool)

(assert (=> b!7715135 (= res!3078094 lt!2665423)))

(declare-fun b!7715136 () Bool)

(declare-fun e!4576795 () Bool)

(assert (=> b!7715136 (= e!4576791 e!4576795)))

(declare-fun res!3078097 () Bool)

(assert (=> b!7715136 (=> (not res!3078097) (not e!4576795))))

(assert (=> b!7715136 (= res!3078097 (not lt!2665423))))

(declare-fun b!7715137 () Bool)

(declare-fun res!3078099 () Bool)

(assert (=> b!7715137 (=> res!3078099 e!4576791)))

(assert (=> b!7715137 (= res!3078099 (not (is-ElementMatch!20528 (reg!20857 r!14126))))))

(declare-fun e!4576793 () Bool)

(assert (=> b!7715137 (= e!4576793 e!4576791)))

(declare-fun b!7715138 () Bool)

(declare-fun e!4576797 () Bool)

(assert (=> b!7715138 (= e!4576797 (nullable!9007 (reg!20857 r!14126)))))

(declare-fun b!7715139 () Bool)

(assert (=> b!7715139 (= e!4576793 (not lt!2665423))))

(declare-fun b!7715140 () Bool)

(declare-fun e!4576794 () Bool)

(assert (=> b!7715140 (= e!4576795 e!4576794)))

(declare-fun res!3078095 () Bool)

(assert (=> b!7715140 (=> res!3078095 e!4576794)))

(declare-fun call!713126 () Bool)

(assert (=> b!7715140 (= res!3078095 call!713126)))

(declare-fun b!7715141 () Bool)

(declare-fun res!3078092 () Bool)

(assert (=> b!7715141 (=> (not res!3078092) (not e!4576796))))

(assert (=> b!7715141 (= res!3078092 (not call!713126))))

(declare-fun b!7715142 () Bool)

(assert (=> b!7715142 (= e!4576797 (matchR!10024 (derivativeStep!5972 (reg!20857 r!14126) (head!15772 (_1!38062 lt!2665354))) (tail!15312 (_1!38062 lt!2665354))))))

(declare-fun b!7715143 () Bool)

(assert (=> b!7715143 (= e!4576794 (not (= (head!15772 (_1!38062 lt!2665354)) (c!1422150 (reg!20857 r!14126)))))))

(declare-fun b!7715144 () Bool)

(declare-fun e!4576792 () Bool)

(assert (=> b!7715144 (= e!4576792 (= lt!2665423 call!713126))))

(declare-fun b!7715145 () Bool)

(declare-fun res!3078098 () Bool)

(assert (=> b!7715145 (=> res!3078098 e!4576794)))

(assert (=> b!7715145 (= res!3078098 (not (isEmpty!41907 (tail!15312 (_1!38062 lt!2665354)))))))

(declare-fun d!2336956 () Bool)

(assert (=> d!2336956 e!4576792))

(declare-fun c!1422217 () Bool)

(assert (=> d!2336956 (= c!1422217 (is-EmptyExpr!20528 (reg!20857 r!14126)))))

(assert (=> d!2336956 (= lt!2665423 e!4576797)))

(declare-fun c!1422218 () Bool)

(assert (=> d!2336956 (= c!1422218 (isEmpty!41907 (_1!38062 lt!2665354)))))

(assert (=> d!2336956 (validRegex!10946 (reg!20857 r!14126))))

(assert (=> d!2336956 (= (matchR!10024 (reg!20857 r!14126) (_1!38062 lt!2665354)) lt!2665423)))

(declare-fun b!7715146 () Bool)

(assert (=> b!7715146 (= e!4576792 e!4576793)))

(declare-fun c!1422219 () Bool)

(assert (=> b!7715146 (= c!1422219 (is-EmptyLang!20528 (reg!20857 r!14126)))))

(declare-fun b!7715147 () Bool)

(assert (=> b!7715147 (= e!4576796 (= (head!15772 (_1!38062 lt!2665354)) (c!1422150 (reg!20857 r!14126))))))

(declare-fun bm!713121 () Bool)

(assert (=> bm!713121 (= call!713126 (isEmpty!41907 (_1!38062 lt!2665354)))))

(declare-fun b!7715148 () Bool)

(declare-fun res!3078096 () Bool)

(assert (=> b!7715148 (=> (not res!3078096) (not e!4576796))))

(assert (=> b!7715148 (= res!3078096 (isEmpty!41907 (tail!15312 (_1!38062 lt!2665354))))))

(assert (= (and d!2336956 c!1422218) b!7715138))

(assert (= (and d!2336956 (not c!1422218)) b!7715142))

(assert (= (and d!2336956 c!1422217) b!7715144))

(assert (= (and d!2336956 (not c!1422217)) b!7715146))

(assert (= (and b!7715146 c!1422219) b!7715139))

(assert (= (and b!7715146 (not c!1422219)) b!7715137))

(assert (= (and b!7715137 (not res!3078099)) b!7715135))

(assert (= (and b!7715135 res!3078094) b!7715141))

(assert (= (and b!7715141 res!3078092) b!7715148))

(assert (= (and b!7715148 res!3078096) b!7715147))

(assert (= (and b!7715135 (not res!3078093)) b!7715136))

(assert (= (and b!7715136 res!3078097) b!7715140))

(assert (= (and b!7715140 (not res!3078095)) b!7715145))

(assert (= (and b!7715145 (not res!3078098)) b!7715143))

(assert (= (or b!7715144 b!7715140 b!7715141) bm!713121))

(assert (=> bm!713121 m!8197160))

(assert (=> d!2336956 m!8197160))

(assert (=> d!2336956 m!8197004))

(declare-fun m!8197200 () Bool)

(assert (=> b!7715142 m!8197200))

(assert (=> b!7715142 m!8197200))

(declare-fun m!8197202 () Bool)

(assert (=> b!7715142 m!8197202))

(declare-fun m!8197204 () Bool)

(assert (=> b!7715142 m!8197204))

(assert (=> b!7715142 m!8197202))

(assert (=> b!7715142 m!8197204))

(declare-fun m!8197206 () Bool)

(assert (=> b!7715142 m!8197206))

(assert (=> b!7715148 m!8197204))

(assert (=> b!7715148 m!8197204))

(declare-fun m!8197208 () Bool)

(assert (=> b!7715148 m!8197208))

(assert (=> b!7715145 m!8197204))

(assert (=> b!7715145 m!8197204))

(assert (=> b!7715145 m!8197208))

(declare-fun m!8197210 () Bool)

(assert (=> b!7715138 m!8197210))

(assert (=> b!7715147 m!8197200))

(assert (=> b!7715143 m!8197200))

(assert (=> b!7714774 d!2336956))

(declare-fun bs!1962622 () Bool)

(declare-fun b!7715149 () Bool)

(assert (= bs!1962622 (and b!7715149 b!7715084)))

(declare-fun lambda!470799 () Int)

(assert (=> bs!1962622 (not (= lambda!470799 lambda!470798))))

(declare-fun bs!1962623 () Bool)

(assert (= bs!1962623 (and b!7715149 d!2336916)))

(assert (=> bs!1962623 (not (= lambda!470799 lambda!470792))))

(declare-fun bs!1962624 () Bool)

(assert (= bs!1962624 (and b!7715149 b!7714783)))

(assert (=> bs!1962624 (= (= (_2!38062 lt!2665354) s!9605) (= lambda!470799 lambda!470779))))

(declare-fun bs!1962625 () Bool)

(assert (= bs!1962625 (and b!7715149 b!7715078)))

(assert (=> bs!1962625 (= (and (= (_2!38062 lt!2665354) (_1!38062 lt!2665354)) (= (reg!20857 r!14126) (reg!20857 (reg!20857 r!14126))) (= r!14126 (reg!20857 r!14126))) (= lambda!470799 lambda!470797))))

(declare-fun bs!1962626 () Bool)

(assert (= bs!1962626 (and b!7715149 b!7714778)))

(assert (=> bs!1962626 (not (= lambda!470799 lambda!470778))))

(assert (=> b!7715149 true))

(assert (=> b!7715149 true))

(declare-fun bs!1962627 () Bool)

(declare-fun b!7715155 () Bool)

(assert (= bs!1962627 (and b!7715155 b!7715084)))

(declare-fun lambda!470800 () Int)

(assert (=> bs!1962627 (= (and (= (_2!38062 lt!2665354) (_1!38062 lt!2665354)) (= (regOne!41568 r!14126) (regOne!41568 (reg!20857 r!14126))) (= (regTwo!41568 r!14126) (regTwo!41568 (reg!20857 r!14126)))) (= lambda!470800 lambda!470798))))

(declare-fun bs!1962628 () Bool)

(assert (= bs!1962628 (and b!7715155 d!2336916)))

(assert (=> bs!1962628 (not (= lambda!470800 lambda!470792))))

(declare-fun bs!1962629 () Bool)

(assert (= bs!1962629 (and b!7715155 b!7714783)))

(assert (=> bs!1962629 (not (= lambda!470800 lambda!470779))))

(declare-fun bs!1962630 () Bool)

(assert (= bs!1962630 (and b!7715155 b!7715149)))

(assert (=> bs!1962630 (not (= lambda!470800 lambda!470799))))

(declare-fun bs!1962631 () Bool)

(assert (= bs!1962631 (and b!7715155 b!7715078)))

(assert (=> bs!1962631 (not (= lambda!470800 lambda!470797))))

(declare-fun bs!1962632 () Bool)

(assert (= bs!1962632 (and b!7715155 b!7714778)))

(assert (=> bs!1962632 (not (= lambda!470800 lambda!470778))))

(assert (=> b!7715155 true))

(assert (=> b!7715155 true))

(declare-fun e!4576799 () Bool)

(declare-fun call!713127 () Bool)

(assert (=> b!7715149 (= e!4576799 call!713127)))

(declare-fun b!7715150 () Bool)

(declare-fun e!4576802 () Bool)

(assert (=> b!7715150 (= e!4576802 (matchRSpec!4618 (regTwo!41569 r!14126) (_2!38062 lt!2665354)))))

(declare-fun b!7715151 () Bool)

(declare-fun e!4576798 () Bool)

(declare-fun e!4576800 () Bool)

(assert (=> b!7715151 (= e!4576798 e!4576800)))

(declare-fun res!3078101 () Bool)

(assert (=> b!7715151 (= res!3078101 (not (is-EmptyLang!20528 r!14126)))))

(assert (=> b!7715151 (=> (not res!3078101) (not e!4576800))))

(declare-fun b!7715152 () Bool)

(declare-fun c!1422223 () Bool)

(assert (=> b!7715152 (= c!1422223 (is-ElementMatch!20528 r!14126))))

(declare-fun e!4576803 () Bool)

(assert (=> b!7715152 (= e!4576800 e!4576803)))

(declare-fun bm!713122 () Bool)

(declare-fun c!1422222 () Bool)

(assert (=> bm!713122 (= call!713127 (Exists!4653 (ite c!1422222 lambda!470799 lambda!470800)))))

(declare-fun d!2336958 () Bool)

(declare-fun c!1422220 () Bool)

(assert (=> d!2336958 (= c!1422220 (is-EmptyExpr!20528 r!14126))))

(assert (=> d!2336958 (= (matchRSpec!4618 r!14126 (_2!38062 lt!2665354)) e!4576798)))

(declare-fun b!7715153 () Bool)

(declare-fun call!713128 () Bool)

(assert (=> b!7715153 (= e!4576798 call!713128)))

(declare-fun b!7715154 () Bool)

(declare-fun res!3078102 () Bool)

(assert (=> b!7715154 (=> res!3078102 e!4576799)))

(assert (=> b!7715154 (= res!3078102 call!713128)))

(declare-fun e!4576804 () Bool)

(assert (=> b!7715154 (= e!4576804 e!4576799)))

(assert (=> b!7715155 (= e!4576804 call!713127)))

(declare-fun b!7715156 () Bool)

(declare-fun e!4576801 () Bool)

(assert (=> b!7715156 (= e!4576801 e!4576802)))

(declare-fun res!3078100 () Bool)

(assert (=> b!7715156 (= res!3078100 (matchRSpec!4618 (regOne!41569 r!14126) (_2!38062 lt!2665354)))))

(assert (=> b!7715156 (=> res!3078100 e!4576802)))

(declare-fun b!7715157 () Bool)

(assert (=> b!7715157 (= e!4576803 (= (_2!38062 lt!2665354) (Cons!73255 (c!1422150 r!14126) Nil!73255)))))

(declare-fun bm!713123 () Bool)

(assert (=> bm!713123 (= call!713128 (isEmpty!41907 (_2!38062 lt!2665354)))))

(declare-fun b!7715158 () Bool)

(assert (=> b!7715158 (= e!4576801 e!4576804)))

(assert (=> b!7715158 (= c!1422222 (is-Star!20528 r!14126))))

(declare-fun b!7715159 () Bool)

(declare-fun c!1422221 () Bool)

(assert (=> b!7715159 (= c!1422221 (is-Union!20528 r!14126))))

(assert (=> b!7715159 (= e!4576803 e!4576801)))

(assert (= (and d!2336958 c!1422220) b!7715153))

(assert (= (and d!2336958 (not c!1422220)) b!7715151))

(assert (= (and b!7715151 res!3078101) b!7715152))

(assert (= (and b!7715152 c!1422223) b!7715157))

(assert (= (and b!7715152 (not c!1422223)) b!7715159))

(assert (= (and b!7715159 c!1422221) b!7715156))

(assert (= (and b!7715159 (not c!1422221)) b!7715158))

(assert (= (and b!7715156 (not res!3078100)) b!7715150))

(assert (= (and b!7715158 c!1422222) b!7715154))

(assert (= (and b!7715158 (not c!1422222)) b!7715155))

(assert (= (and b!7715154 (not res!3078102)) b!7715149))

(assert (= (or b!7715149 b!7715155) bm!713122))

(assert (= (or b!7715153 b!7715154) bm!713123))

(declare-fun m!8197212 () Bool)

(assert (=> b!7715150 m!8197212))

(declare-fun m!8197214 () Bool)

(assert (=> bm!713122 m!8197214))

(declare-fun m!8197216 () Bool)

(assert (=> b!7715156 m!8197216))

(assert (=> bm!713123 m!8197164))

(assert (=> b!7714774 d!2336958))

(declare-fun d!2336960 () Bool)

(assert (=> d!2336960 (= (matchR!10024 r!14126 (_2!38062 lt!2665354)) (matchRSpec!4618 r!14126 (_2!38062 lt!2665354)))))

(declare-fun lt!2665424 () Unit!168104)

(assert (=> d!2336960 (= lt!2665424 (choose!59188 r!14126 (_2!38062 lt!2665354)))))

(assert (=> d!2336960 (validRegex!10946 r!14126)))

(assert (=> d!2336960 (= (mainMatchTheorem!4593 r!14126 (_2!38062 lt!2665354)) lt!2665424)))

(declare-fun bs!1962633 () Bool)

(assert (= bs!1962633 d!2336960))

(assert (=> bs!1962633 m!8197008))

(assert (=> bs!1962633 m!8197006))

(declare-fun m!8197218 () Bool)

(assert (=> bs!1962633 m!8197218))

(assert (=> bs!1962633 m!8196986))

(assert (=> b!7714774 d!2336960))

(declare-fun b!7715160 () Bool)

(declare-fun e!4576806 () Bool)

(declare-fun e!4576807 () Bool)

(assert (=> b!7715160 (= e!4576806 e!4576807)))

(declare-fun res!3078104 () Bool)

(assert (=> b!7715160 (=> (not res!3078104) (not e!4576807))))

(declare-fun call!713131 () Bool)

(assert (=> b!7715160 (= res!3078104 call!713131)))

(declare-fun b!7715161 () Bool)

(declare-fun e!4576805 () Bool)

(declare-fun e!4576808 () Bool)

(assert (=> b!7715161 (= e!4576805 e!4576808)))

(declare-fun res!3078107 () Bool)

(assert (=> b!7715161 (= res!3078107 (not (nullable!9007 (reg!20857 r!14126))))))

(assert (=> b!7715161 (=> (not res!3078107) (not e!4576808))))

(declare-fun b!7715162 () Bool)

(declare-fun call!713129 () Bool)

(assert (=> b!7715162 (= e!4576808 call!713129)))

(declare-fun d!2336962 () Bool)

(declare-fun res!3078106 () Bool)

(declare-fun e!4576811 () Bool)

(assert (=> d!2336962 (=> res!3078106 e!4576811)))

(assert (=> d!2336962 (= res!3078106 (is-ElementMatch!20528 r!14126))))

(assert (=> d!2336962 (= (validRegex!10946 r!14126) e!4576811)))

(declare-fun b!7715163 () Bool)

(declare-fun call!713130 () Bool)

(assert (=> b!7715163 (= e!4576807 call!713130)))

(declare-fun bm!713124 () Bool)

(declare-fun c!1422225 () Bool)

(declare-fun c!1422224 () Bool)

(assert (=> bm!713124 (= call!713129 (validRegex!10946 (ite c!1422225 (reg!20857 r!14126) (ite c!1422224 (regOne!41569 r!14126) (regOne!41568 r!14126)))))))

(declare-fun b!7715164 () Bool)

(assert (=> b!7715164 (= e!4576811 e!4576805)))

(assert (=> b!7715164 (= c!1422225 (is-Star!20528 r!14126))))

(declare-fun b!7715165 () Bool)

(declare-fun e!4576810 () Bool)

(assert (=> b!7715165 (= e!4576810 call!713130)))

(declare-fun bm!713125 () Bool)

(assert (=> bm!713125 (= call!713130 (validRegex!10946 (ite c!1422224 (regTwo!41569 r!14126) (regTwo!41568 r!14126))))))

(declare-fun bm!713126 () Bool)

(assert (=> bm!713126 (= call!713131 call!713129)))

(declare-fun b!7715166 () Bool)

(declare-fun e!4576809 () Bool)

(assert (=> b!7715166 (= e!4576805 e!4576809)))

(assert (=> b!7715166 (= c!1422224 (is-Union!20528 r!14126))))

(declare-fun b!7715167 () Bool)

(declare-fun res!3078103 () Bool)

(assert (=> b!7715167 (=> res!3078103 e!4576806)))

(assert (=> b!7715167 (= res!3078103 (not (is-Concat!29373 r!14126)))))

(assert (=> b!7715167 (= e!4576809 e!4576806)))

(declare-fun b!7715168 () Bool)

(declare-fun res!3078105 () Bool)

(assert (=> b!7715168 (=> (not res!3078105) (not e!4576810))))

(assert (=> b!7715168 (= res!3078105 call!713131)))

(assert (=> b!7715168 (= e!4576809 e!4576810)))

(assert (= (and d!2336962 (not res!3078106)) b!7715164))

(assert (= (and b!7715164 c!1422225) b!7715161))

(assert (= (and b!7715164 (not c!1422225)) b!7715166))

(assert (= (and b!7715161 res!3078107) b!7715162))

(assert (= (and b!7715166 c!1422224) b!7715168))

(assert (= (and b!7715166 (not c!1422224)) b!7715167))

(assert (= (and b!7715168 res!3078105) b!7715165))

(assert (= (and b!7715167 (not res!3078103)) b!7715160))

(assert (= (and b!7715160 res!3078104) b!7715163))

(assert (= (or b!7715168 b!7715160) bm!713126))

(assert (= (or b!7715165 b!7715163) bm!713125))

(assert (= (or b!7715162 bm!713126) bm!713124))

(assert (=> b!7715161 m!8197210))

(declare-fun m!8197220 () Bool)

(assert (=> bm!713124 m!8197220))

(declare-fun m!8197222 () Bool)

(assert (=> bm!713125 m!8197222))

(assert (=> start!737134 d!2336962))

(declare-fun b!7715181 () Bool)

(declare-fun e!4576814 () Bool)

(declare-fun tp!2263825 () Bool)

(assert (=> b!7715181 (= e!4576814 tp!2263825)))

(declare-fun b!7715180 () Bool)

(declare-fun tp!2263824 () Bool)

(declare-fun tp!2263827 () Bool)

(assert (=> b!7715180 (= e!4576814 (and tp!2263824 tp!2263827))))

(assert (=> b!7714772 (= tp!2263795 e!4576814)))

(declare-fun b!7715182 () Bool)

(declare-fun tp!2263826 () Bool)

(declare-fun tp!2263828 () Bool)

(assert (=> b!7715182 (= e!4576814 (and tp!2263826 tp!2263828))))

(declare-fun b!7715179 () Bool)

(assert (=> b!7715179 (= e!4576814 tp_is_empty!51411)))

(assert (= (and b!7714772 (is-ElementMatch!20528 (reg!20857 r!14126))) b!7715179))

(assert (= (and b!7714772 (is-Concat!29373 (reg!20857 r!14126))) b!7715180))

(assert (= (and b!7714772 (is-Star!20528 (reg!20857 r!14126))) b!7715181))

(assert (= (and b!7714772 (is-Union!20528 (reg!20857 r!14126))) b!7715182))

(declare-fun b!7715187 () Bool)

(declare-fun e!4576817 () Bool)

(declare-fun tp!2263831 () Bool)

(assert (=> b!7715187 (= e!4576817 (and tp_is_empty!51411 tp!2263831))))

(assert (=> b!7714782 (= tp!2263791 e!4576817)))

(assert (= (and b!7714782 (is-Cons!73255 (t!388114 s!9605))) b!7715187))

(declare-fun b!7715190 () Bool)

(declare-fun e!4576818 () Bool)

(declare-fun tp!2263833 () Bool)

(assert (=> b!7715190 (= e!4576818 tp!2263833)))

(declare-fun b!7715189 () Bool)

(declare-fun tp!2263832 () Bool)

(declare-fun tp!2263835 () Bool)

(assert (=> b!7715189 (= e!4576818 (and tp!2263832 tp!2263835))))

(assert (=> b!7714779 (= tp!2263793 e!4576818)))

(declare-fun b!7715191 () Bool)

(declare-fun tp!2263834 () Bool)

(declare-fun tp!2263836 () Bool)

(assert (=> b!7715191 (= e!4576818 (and tp!2263834 tp!2263836))))

(declare-fun b!7715188 () Bool)

(assert (=> b!7715188 (= e!4576818 tp_is_empty!51411)))

(assert (= (and b!7714779 (is-ElementMatch!20528 (regOne!41569 r!14126))) b!7715188))

(assert (= (and b!7714779 (is-Concat!29373 (regOne!41569 r!14126))) b!7715189))

(assert (= (and b!7714779 (is-Star!20528 (regOne!41569 r!14126))) b!7715190))

(assert (= (and b!7714779 (is-Union!20528 (regOne!41569 r!14126))) b!7715191))

(declare-fun b!7715194 () Bool)

(declare-fun e!4576819 () Bool)

(declare-fun tp!2263838 () Bool)

(assert (=> b!7715194 (= e!4576819 tp!2263838)))

(declare-fun b!7715193 () Bool)

(declare-fun tp!2263837 () Bool)

(declare-fun tp!2263840 () Bool)

(assert (=> b!7715193 (= e!4576819 (and tp!2263837 tp!2263840))))

(assert (=> b!7714779 (= tp!2263792 e!4576819)))

(declare-fun b!7715195 () Bool)

(declare-fun tp!2263839 () Bool)

(declare-fun tp!2263841 () Bool)

(assert (=> b!7715195 (= e!4576819 (and tp!2263839 tp!2263841))))

(declare-fun b!7715192 () Bool)

(assert (=> b!7715192 (= e!4576819 tp_is_empty!51411)))

(assert (= (and b!7714779 (is-ElementMatch!20528 (regTwo!41569 r!14126))) b!7715192))

(assert (= (and b!7714779 (is-Concat!29373 (regTwo!41569 r!14126))) b!7715193))

(assert (= (and b!7714779 (is-Star!20528 (regTwo!41569 r!14126))) b!7715194))

(assert (= (and b!7714779 (is-Union!20528 (regTwo!41569 r!14126))) b!7715195))

(declare-fun b!7715198 () Bool)

(declare-fun e!4576820 () Bool)

(declare-fun tp!2263843 () Bool)

(assert (=> b!7715198 (= e!4576820 tp!2263843)))

(declare-fun b!7715197 () Bool)

(declare-fun tp!2263842 () Bool)

(declare-fun tp!2263845 () Bool)

(assert (=> b!7715197 (= e!4576820 (and tp!2263842 tp!2263845))))

(assert (=> b!7714773 (= tp!2263790 e!4576820)))

(declare-fun b!7715199 () Bool)

(declare-fun tp!2263844 () Bool)

(declare-fun tp!2263846 () Bool)

(assert (=> b!7715199 (= e!4576820 (and tp!2263844 tp!2263846))))

(declare-fun b!7715196 () Bool)

(assert (=> b!7715196 (= e!4576820 tp_is_empty!51411)))

(assert (= (and b!7714773 (is-ElementMatch!20528 (regOne!41568 r!14126))) b!7715196))

(assert (= (and b!7714773 (is-Concat!29373 (regOne!41568 r!14126))) b!7715197))

(assert (= (and b!7714773 (is-Star!20528 (regOne!41568 r!14126))) b!7715198))

(assert (= (and b!7714773 (is-Union!20528 (regOne!41568 r!14126))) b!7715199))

(declare-fun b!7715202 () Bool)

(declare-fun e!4576821 () Bool)

(declare-fun tp!2263848 () Bool)

(assert (=> b!7715202 (= e!4576821 tp!2263848)))

(declare-fun b!7715201 () Bool)

(declare-fun tp!2263847 () Bool)

(declare-fun tp!2263850 () Bool)

(assert (=> b!7715201 (= e!4576821 (and tp!2263847 tp!2263850))))

(assert (=> b!7714773 (= tp!2263794 e!4576821)))

(declare-fun b!7715203 () Bool)

(declare-fun tp!2263849 () Bool)

(declare-fun tp!2263851 () Bool)

(assert (=> b!7715203 (= e!4576821 (and tp!2263849 tp!2263851))))

(declare-fun b!7715200 () Bool)

(assert (=> b!7715200 (= e!4576821 tp_is_empty!51411)))

(assert (= (and b!7714773 (is-ElementMatch!20528 (regTwo!41568 r!14126))) b!7715200))

(assert (= (and b!7714773 (is-Concat!29373 (regTwo!41568 r!14126))) b!7715201))

(assert (= (and b!7714773 (is-Star!20528 (regTwo!41568 r!14126))) b!7715202))

(assert (= (and b!7714773 (is-Union!20528 (regTwo!41568 r!14126))) b!7715203))

(declare-fun b_lambda!289221 () Bool)

(assert (= b_lambda!289219 (or b!7714783 b_lambda!289221)))

(declare-fun bs!1962635 () Bool)

(declare-fun d!2336966 () Bool)

(assert (= bs!1962635 (and d!2336966 b!7714783)))

(declare-fun res!3078108 () Bool)

(declare-fun e!4576822 () Bool)

(assert (=> bs!1962635 (=> (not res!3078108) (not e!4576822))))

(assert (=> bs!1962635 (= res!3078108 (= (++!17739 (_1!38062 lt!2665419) (_2!38062 lt!2665419)) s!9605))))

(assert (=> bs!1962635 (= (dynLambda!29949 lambda!470779 lt!2665419) e!4576822)))

(declare-fun b!7715204 () Bool)

(declare-fun res!3078109 () Bool)

(assert (=> b!7715204 (=> (not res!3078109) (not e!4576822))))

(assert (=> b!7715204 (= res!3078109 (not (isEmpty!41907 (_1!38062 lt!2665419))))))

(declare-fun b!7715205 () Bool)

(declare-fun res!3078110 () Bool)

(assert (=> b!7715205 (=> (not res!3078110) (not e!4576822))))

(assert (=> b!7715205 (= res!3078110 (matchRSpec!4618 (reg!20857 r!14126) (_1!38062 lt!2665419)))))

(declare-fun b!7715206 () Bool)

(assert (=> b!7715206 (= e!4576822 (matchRSpec!4618 r!14126 (_2!38062 lt!2665419)))))

(assert (= (and bs!1962635 res!3078108) b!7715204))

(assert (= (and b!7715204 res!3078109) b!7715205))

(assert (= (and b!7715205 res!3078110) b!7715206))

(declare-fun m!8197226 () Bool)

(assert (=> bs!1962635 m!8197226))

(declare-fun m!8197228 () Bool)

(assert (=> b!7715204 m!8197228))

(declare-fun m!8197230 () Bool)

(assert (=> b!7715205 m!8197230))

(declare-fun m!8197232 () Bool)

(assert (=> b!7715206 m!8197232))

(assert (=> d!2336948 d!2336966))

(push 1)

(assert (not b!7715142))

(assert (not d!2336910))

(assert (not bm!713099))

(assert (not b!7714876))

(assert (not d!2336948))

(assert (not b!7715138))

(assert (not b!7715193))

(assert (not b!7715106))

(assert (not b!7714963))

(assert (not b!7715101))

(assert (not b!7714960))

(assert (not b!7715181))

(assert (not b!7715191))

(assert (not b!7715198))

(assert (not b!7715187))

(assert tp_is_empty!51411)

(assert (not d!2336916))

(assert (not d!2336956))

(assert (not d!2336908))

(assert (not b!7715156))

(assert (not bm!713125))

(assert (not b!7715204))

(assert (not b!7715085))

(assert (not b!7715079))

(assert (not b!7714872))

(assert (not d!2336924))

(assert (not b!7715180))

(assert (not b!7715110))

(assert (not d!2336942))

(assert (not bm!713122))

(assert (not b!7715203))

(assert (not d!2336926))

(assert (not d!2336928))

(assert (not b!7715161))

(assert (not b!7715145))

(assert (not b!7715111))

(assert (not b!7714979))

(assert (not b!7715194))

(assert (not bm!713121))

(assert (not bm!713090))

(assert (not bs!1962635))

(assert (not d!2336918))

(assert (not b!7714982))

(assert (not b!7714984))

(assert (not bm!713098))

(assert (not d!2336952))

(assert (not b!7714971))

(assert (not b!7714874))

(assert (not b!7715105))

(assert (not b!7714975))

(assert (not b!7715197))

(assert (not b!7715150))

(assert (not b!7715189))

(assert (not b!7715020))

(assert (not b!7714985))

(assert (not d!2336960))

(assert (not bm!713089))

(assert (not b!7715195))

(assert (not b!7715205))

(assert (not d!2336904))

(assert (not b!7714877))

(assert (not b!7715147))

(assert (not b!7715202))

(assert (not bm!713124))

(assert (not bm!713123))

(assert (not bm!713111))

(assert (not b!7715199))

(assert (not b!7715108))

(assert (not b!7714873))

(assert (not b_lambda!289221))

(assert (not b!7714966))

(assert (not b!7715143))

(assert (not b!7714956))

(assert (not b!7715201))

(assert (not b!7715206))

(assert (not b!7714961))

(assert (not b!7715148))

(assert (not b!7714965))

(assert (not bm!713116))

(assert (not bm!713112))

(assert (not b!7714871))

(assert (not b!7715190))

(assert (not b!7714980))

(assert (not b!7715182))

(assert (not d!2336906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

