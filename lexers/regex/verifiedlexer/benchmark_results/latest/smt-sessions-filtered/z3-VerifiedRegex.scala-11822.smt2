; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665250 () Bool)

(assert start!665250)

(declare-fun b!6911777 () Bool)

(assert (=> b!6911777 true))

(assert (=> b!6911777 true))

(assert (=> b!6911777 true))

(declare-fun lambda!392798 () Int)

(declare-fun lambda!392797 () Int)

(assert (=> b!6911777 (not (= lambda!392798 lambda!392797))))

(assert (=> b!6911777 true))

(assert (=> b!6911777 true))

(assert (=> b!6911777 true))

(declare-fun bs!1844947 () Bool)

(declare-fun b!6911757 () Bool)

(assert (= bs!1844947 (and b!6911757 b!6911777)))

(declare-datatypes ((C!34052 0))(
  ( (C!34053 (val!26728 Int)) )
))
(declare-datatypes ((Regex!16891 0))(
  ( (ElementMatch!16891 (c!1283789 C!34052)) (Concat!25736 (regOne!34294 Regex!16891) (regTwo!34294 Regex!16891)) (EmptyExpr!16891) (Star!16891 (reg!17220 Regex!16891)) (EmptyLang!16891) (Union!16891 (regOne!34295 Regex!16891) (regTwo!34295 Regex!16891)) )
))
(declare-fun r1!6342 () Regex!16891)

(declare-fun r3!135 () Regex!16891)

(declare-fun lt!2468746 () Regex!16891)

(declare-datatypes ((List!66648 0))(
  ( (Nil!66524) (Cons!66524 (h!72972 C!34052) (t!380391 List!66648)) )
))
(declare-fun s!14361 () List!66648)

(declare-datatypes ((tuple2!67516 0))(
  ( (tuple2!67517 (_1!37061 List!66648) (_2!37061 List!66648)) )
))
(declare-fun lt!2468732 () tuple2!67516)

(declare-fun r2!6280 () Regex!16891)

(declare-fun lambda!392799 () Int)

(assert (=> bs!1844947 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392799 lambda!392797))))

(assert (=> bs!1844947 (not (= lambda!392799 lambda!392798))))

(assert (=> b!6911757 true))

(assert (=> b!6911757 true))

(assert (=> b!6911757 true))

(declare-fun lambda!392800 () Int)

(assert (=> bs!1844947 (not (= lambda!392800 lambda!392797))))

(assert (=> bs!1844947 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392800 lambda!392798))))

(assert (=> b!6911757 (not (= lambda!392800 lambda!392799))))

(assert (=> b!6911757 true))

(assert (=> b!6911757 true))

(assert (=> b!6911757 true))

(declare-fun b!6911756 () Bool)

(declare-fun e!4161240 () Bool)

(declare-fun tp!1903391 () Bool)

(declare-fun tp!1903387 () Bool)

(assert (=> b!6911756 (= e!4161240 (and tp!1903391 tp!1903387))))

(declare-fun e!4161241 () Bool)

(declare-fun e!4161236 () Bool)

(assert (=> b!6911757 (= e!4161241 e!4161236)))

(declare-fun res!2818752 () Bool)

(assert (=> b!6911757 (=> res!2818752 e!4161236)))

(declare-fun lt!2468736 () tuple2!67516)

(declare-fun matchR!9036 (Regex!16891 List!66648) Bool)

(assert (=> b!6911757 (= res!2818752 (not (matchR!9036 r2!6280 (_1!37061 lt!2468736))))))

(declare-datatypes ((Option!16670 0))(
  ( (None!16669) (Some!16669 (v!52941 tuple2!67516)) )
))
(declare-fun lt!2468742 () Option!16670)

(declare-fun get!23287 (Option!16670) tuple2!67516)

(assert (=> b!6911757 (= lt!2468736 (get!23287 lt!2468742))))

(declare-fun Exists!3899 (Int) Bool)

(assert (=> b!6911757 (= (Exists!3899 lambda!392799) (Exists!3899 lambda!392800))))

(declare-datatypes ((Unit!160518 0))(
  ( (Unit!160519) )
))
(declare-fun lt!2468737 () Unit!160518)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2372 (Regex!16891 Regex!16891 List!66648) Unit!160518)

(assert (=> b!6911757 (= lt!2468737 (lemmaExistCutMatchRandMatchRSpecEquivalent!2372 r2!6280 r3!135 (_2!37061 lt!2468732)))))

(declare-fun isDefined!13373 (Option!16670) Bool)

(assert (=> b!6911757 (= (isDefined!13373 lt!2468742) (Exists!3899 lambda!392799))))

(declare-fun findConcatSeparation!3084 (Regex!16891 Regex!16891 List!66648 List!66648 List!66648) Option!16670)

(assert (=> b!6911757 (= lt!2468742 (findConcatSeparation!3084 r2!6280 r3!135 Nil!66524 (_2!37061 lt!2468732) (_2!37061 lt!2468732)))))

(declare-fun lt!2468744 () Unit!160518)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2846 (Regex!16891 Regex!16891 List!66648) Unit!160518)

(assert (=> b!6911757 (= lt!2468744 (lemmaFindConcatSeparationEquivalentToExists!2846 r2!6280 r3!135 (_2!37061 lt!2468732)))))

(declare-fun matchRSpec!3954 (Regex!16891 List!66648) Bool)

(assert (=> b!6911757 (matchRSpec!3954 lt!2468746 (_2!37061 lt!2468732))))

(declare-fun lt!2468745 () Unit!160518)

(declare-fun mainMatchTheorem!3954 (Regex!16891 List!66648) Unit!160518)

(assert (=> b!6911757 (= lt!2468745 (mainMatchTheorem!3954 lt!2468746 (_2!37061 lt!2468732)))))

(declare-fun b!6911758 () Bool)

(declare-fun e!4161235 () Bool)

(declare-fun tp!1903394 () Bool)

(assert (=> b!6911758 (= e!4161235 tp!1903394)))

(declare-fun b!6911759 () Bool)

(declare-fun res!2818753 () Bool)

(declare-fun e!4161239 () Bool)

(assert (=> b!6911759 (=> (not res!2818753) (not e!4161239))))

(declare-fun validRegex!8599 (Regex!16891) Bool)

(assert (=> b!6911759 (= res!2818753 (validRegex!8599 r3!135))))

(declare-fun b!6911760 () Bool)

(declare-fun e!4161234 () Bool)

(assert (=> b!6911760 (= e!4161239 (not e!4161234))))

(declare-fun res!2818755 () Bool)

(assert (=> b!6911760 (=> res!2818755 e!4161234)))

(declare-fun lt!2468747 () Bool)

(assert (=> b!6911760 (= res!2818755 lt!2468747)))

(declare-fun lt!2468731 () Regex!16891)

(assert (=> b!6911760 (= (matchR!9036 lt!2468731 s!14361) (matchRSpec!3954 lt!2468731 s!14361))))

(declare-fun lt!2468740 () Unit!160518)

(assert (=> b!6911760 (= lt!2468740 (mainMatchTheorem!3954 lt!2468731 s!14361))))

(declare-fun lt!2468741 () Regex!16891)

(assert (=> b!6911760 (= lt!2468747 (matchRSpec!3954 lt!2468741 s!14361))))

(assert (=> b!6911760 (= lt!2468747 (matchR!9036 lt!2468741 s!14361))))

(declare-fun lt!2468739 () Unit!160518)

(assert (=> b!6911760 (= lt!2468739 (mainMatchTheorem!3954 lt!2468741 s!14361))))

(assert (=> b!6911760 (= lt!2468731 (Concat!25736 r1!6342 lt!2468746))))

(assert (=> b!6911760 (= lt!2468746 (Concat!25736 r2!6280 r3!135))))

(assert (=> b!6911760 (= lt!2468741 (Concat!25736 (Concat!25736 r1!6342 r2!6280) r3!135))))

(declare-fun b!6911761 () Bool)

(declare-fun res!2818759 () Bool)

(assert (=> b!6911761 (=> res!2818759 e!4161241)))

(assert (=> b!6911761 (= res!2818759 (not (matchR!9036 lt!2468746 (_2!37061 lt!2468732))))))

(declare-fun b!6911762 () Bool)

(declare-fun tp_is_empty!43007 () Bool)

(assert (=> b!6911762 (= e!4161240 tp_is_empty!43007)))

(declare-fun b!6911763 () Bool)

(declare-fun e!4161238 () Bool)

(declare-fun tp!1903384 () Bool)

(assert (=> b!6911763 (= e!4161238 tp!1903384)))

(declare-fun b!6911764 () Bool)

(declare-fun tp!1903385 () Bool)

(declare-fun tp!1903392 () Bool)

(assert (=> b!6911764 (= e!4161238 (and tp!1903385 tp!1903392))))

(declare-fun b!6911765 () Bool)

(declare-fun tp!1903398 () Bool)

(declare-fun tp!1903395 () Bool)

(assert (=> b!6911765 (= e!4161235 (and tp!1903398 tp!1903395))))

(declare-fun b!6911766 () Bool)

(declare-fun e!4161242 () Bool)

(assert (=> b!6911766 (= e!4161234 e!4161242)))

(declare-fun res!2818754 () Bool)

(assert (=> b!6911766 (=> res!2818754 e!4161242)))

(declare-fun lt!2468735 () Option!16670)

(assert (=> b!6911766 (= res!2818754 (not (isDefined!13373 lt!2468735)))))

(assert (=> b!6911766 (= lt!2468735 (findConcatSeparation!3084 r1!6342 lt!2468746 Nil!66524 s!14361 s!14361))))

(declare-fun b!6911767 () Bool)

(assert (=> b!6911767 (= e!4161235 tp_is_empty!43007)))

(declare-fun b!6911768 () Bool)

(declare-fun tp!1903390 () Bool)

(assert (=> b!6911768 (= e!4161240 tp!1903390)))

(declare-fun b!6911769 () Bool)

(declare-fun res!2818758 () Bool)

(assert (=> b!6911769 (=> res!2818758 e!4161236)))

(assert (=> b!6911769 (= res!2818758 (not (matchR!9036 r3!135 (_2!37061 lt!2468736))))))

(declare-fun b!6911770 () Bool)

(declare-fun ++!14944 (List!66648 List!66648) List!66648)

(assert (=> b!6911770 (= e!4161236 (= (++!14944 (_1!37061 lt!2468732) (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736))) s!14361))))

(assert (=> b!6911770 (matchRSpec!3954 r3!135 (_2!37061 lt!2468736))))

(declare-fun lt!2468734 () Unit!160518)

(assert (=> b!6911770 (= lt!2468734 (mainMatchTheorem!3954 r3!135 (_2!37061 lt!2468736)))))

(assert (=> b!6911770 (matchRSpec!3954 r2!6280 (_1!37061 lt!2468736))))

(declare-fun lt!2468738 () Unit!160518)

(assert (=> b!6911770 (= lt!2468738 (mainMatchTheorem!3954 r2!6280 (_1!37061 lt!2468736)))))

(declare-fun b!6911771 () Bool)

(assert (=> b!6911771 (= e!4161238 tp_is_empty!43007)))

(declare-fun b!6911772 () Bool)

(declare-fun tp!1903386 () Bool)

(declare-fun tp!1903396 () Bool)

(assert (=> b!6911772 (= e!4161240 (and tp!1903386 tp!1903396))))

(declare-fun b!6911773 () Bool)

(declare-fun e!4161237 () Bool)

(declare-fun tp!1903393 () Bool)

(assert (=> b!6911773 (= e!4161237 (and tp_is_empty!43007 tp!1903393))))

(declare-fun res!2818756 () Bool)

(assert (=> start!665250 (=> (not res!2818756) (not e!4161239))))

(assert (=> start!665250 (= res!2818756 (validRegex!8599 r1!6342))))

(assert (=> start!665250 e!4161239))

(assert (=> start!665250 e!4161240))

(assert (=> start!665250 e!4161235))

(assert (=> start!665250 e!4161238))

(assert (=> start!665250 e!4161237))

(declare-fun b!6911774 () Bool)

(declare-fun res!2818760 () Bool)

(assert (=> b!6911774 (=> (not res!2818760) (not e!4161239))))

(assert (=> b!6911774 (= res!2818760 (validRegex!8599 r2!6280))))

(declare-fun b!6911775 () Bool)

(declare-fun tp!1903399 () Bool)

(declare-fun tp!1903397 () Bool)

(assert (=> b!6911775 (= e!4161238 (and tp!1903399 tp!1903397))))

(declare-fun b!6911776 () Bool)

(declare-fun tp!1903389 () Bool)

(declare-fun tp!1903388 () Bool)

(assert (=> b!6911776 (= e!4161235 (and tp!1903389 tp!1903388))))

(assert (=> b!6911777 (= e!4161242 e!4161241)))

(declare-fun res!2818757 () Bool)

(assert (=> b!6911777 (=> res!2818757 e!4161241)))

(declare-fun lt!2468748 () Bool)

(assert (=> b!6911777 (= res!2818757 (not lt!2468748))))

(assert (=> b!6911777 (= lt!2468748 (matchRSpec!3954 r1!6342 (_1!37061 lt!2468732)))))

(assert (=> b!6911777 (= lt!2468748 (matchR!9036 r1!6342 (_1!37061 lt!2468732)))))

(declare-fun lt!2468743 () Unit!160518)

(assert (=> b!6911777 (= lt!2468743 (mainMatchTheorem!3954 r1!6342 (_1!37061 lt!2468732)))))

(assert (=> b!6911777 (= lt!2468732 (get!23287 lt!2468735))))

(assert (=> b!6911777 (= (Exists!3899 lambda!392797) (Exists!3899 lambda!392798))))

(declare-fun lt!2468749 () Unit!160518)

(assert (=> b!6911777 (= lt!2468749 (lemmaExistCutMatchRandMatchRSpecEquivalent!2372 r1!6342 lt!2468746 s!14361))))

(assert (=> b!6911777 (Exists!3899 lambda!392797)))

(declare-fun lt!2468733 () Unit!160518)

(assert (=> b!6911777 (= lt!2468733 (lemmaFindConcatSeparationEquivalentToExists!2846 r1!6342 lt!2468746 s!14361))))

(assert (= (and start!665250 res!2818756) b!6911774))

(assert (= (and b!6911774 res!2818760) b!6911759))

(assert (= (and b!6911759 res!2818753) b!6911760))

(assert (= (and b!6911760 (not res!2818755)) b!6911766))

(assert (= (and b!6911766 (not res!2818754)) b!6911777))

(assert (= (and b!6911777 (not res!2818757)) b!6911761))

(assert (= (and b!6911761 (not res!2818759)) b!6911757))

(assert (= (and b!6911757 (not res!2818752)) b!6911769))

(assert (= (and b!6911769 (not res!2818758)) b!6911770))

(get-info :version)

(assert (= (and start!665250 ((_ is ElementMatch!16891) r1!6342)) b!6911762))

(assert (= (and start!665250 ((_ is Concat!25736) r1!6342)) b!6911772))

(assert (= (and start!665250 ((_ is Star!16891) r1!6342)) b!6911768))

(assert (= (and start!665250 ((_ is Union!16891) r1!6342)) b!6911756))

(assert (= (and start!665250 ((_ is ElementMatch!16891) r2!6280)) b!6911767))

(assert (= (and start!665250 ((_ is Concat!25736) r2!6280)) b!6911765))

(assert (= (and start!665250 ((_ is Star!16891) r2!6280)) b!6911758))

(assert (= (and start!665250 ((_ is Union!16891) r2!6280)) b!6911776))

(assert (= (and start!665250 ((_ is ElementMatch!16891) r3!135)) b!6911771))

(assert (= (and start!665250 ((_ is Concat!25736) r3!135)) b!6911775))

(assert (= (and start!665250 ((_ is Star!16891) r3!135)) b!6911763))

(assert (= (and start!665250 ((_ is Union!16891) r3!135)) b!6911764))

(assert (= (and start!665250 ((_ is Cons!66524) s!14361)) b!6911773))

(declare-fun m!7625986 () Bool)

(assert (=> b!6911769 m!7625986))

(declare-fun m!7625988 () Bool)

(assert (=> b!6911774 m!7625988))

(declare-fun m!7625990 () Bool)

(assert (=> b!6911761 m!7625990))

(declare-fun m!7625992 () Bool)

(assert (=> start!665250 m!7625992))

(declare-fun m!7625994 () Bool)

(assert (=> b!6911766 m!7625994))

(declare-fun m!7625996 () Bool)

(assert (=> b!6911766 m!7625996))

(declare-fun m!7625998 () Bool)

(assert (=> b!6911759 m!7625998))

(declare-fun m!7626000 () Bool)

(assert (=> b!6911757 m!7626000))

(declare-fun m!7626002 () Bool)

(assert (=> b!6911757 m!7626002))

(declare-fun m!7626004 () Bool)

(assert (=> b!6911757 m!7626004))

(declare-fun m!7626006 () Bool)

(assert (=> b!6911757 m!7626006))

(declare-fun m!7626008 () Bool)

(assert (=> b!6911757 m!7626008))

(assert (=> b!6911757 m!7626002))

(declare-fun m!7626010 () Bool)

(assert (=> b!6911757 m!7626010))

(declare-fun m!7626012 () Bool)

(assert (=> b!6911757 m!7626012))

(declare-fun m!7626014 () Bool)

(assert (=> b!6911757 m!7626014))

(declare-fun m!7626016 () Bool)

(assert (=> b!6911757 m!7626016))

(declare-fun m!7626018 () Bool)

(assert (=> b!6911757 m!7626018))

(declare-fun m!7626020 () Bool)

(assert (=> b!6911770 m!7626020))

(declare-fun m!7626022 () Bool)

(assert (=> b!6911770 m!7626022))

(declare-fun m!7626024 () Bool)

(assert (=> b!6911770 m!7626024))

(declare-fun m!7626026 () Bool)

(assert (=> b!6911770 m!7626026))

(declare-fun m!7626028 () Bool)

(assert (=> b!6911770 m!7626028))

(assert (=> b!6911770 m!7626024))

(declare-fun m!7626030 () Bool)

(assert (=> b!6911770 m!7626030))

(declare-fun m!7626032 () Bool)

(assert (=> b!6911760 m!7626032))

(declare-fun m!7626034 () Bool)

(assert (=> b!6911760 m!7626034))

(declare-fun m!7626036 () Bool)

(assert (=> b!6911760 m!7626036))

(declare-fun m!7626038 () Bool)

(assert (=> b!6911760 m!7626038))

(declare-fun m!7626040 () Bool)

(assert (=> b!6911760 m!7626040))

(declare-fun m!7626042 () Bool)

(assert (=> b!6911760 m!7626042))

(declare-fun m!7626044 () Bool)

(assert (=> b!6911777 m!7626044))

(declare-fun m!7626046 () Bool)

(assert (=> b!6911777 m!7626046))

(declare-fun m!7626048 () Bool)

(assert (=> b!6911777 m!7626048))

(declare-fun m!7626050 () Bool)

(assert (=> b!6911777 m!7626050))

(declare-fun m!7626052 () Bool)

(assert (=> b!6911777 m!7626052))

(assert (=> b!6911777 m!7626048))

(declare-fun m!7626054 () Bool)

(assert (=> b!6911777 m!7626054))

(declare-fun m!7626056 () Bool)

(assert (=> b!6911777 m!7626056))

(declare-fun m!7626058 () Bool)

(assert (=> b!6911777 m!7626058))

(check-sat (not b!6911757) (not start!665250) (not b!6911764) tp_is_empty!43007 (not b!6911774) (not b!6911759) (not b!6911765) (not b!6911758) (not b!6911776) (not b!6911777) (not b!6911756) (not b!6911761) (not b!6911773) (not b!6911769) (not b!6911770) (not b!6911768) (not b!6911772) (not b!6911775) (not b!6911763) (not b!6911760) (not b!6911766))
(check-sat)
(get-model)

(declare-fun d!2163463 () Bool)

(assert (=> d!2163463 (= (matchR!9036 r1!6342 (_1!37061 lt!2468732)) (matchRSpec!3954 r1!6342 (_1!37061 lt!2468732)))))

(declare-fun lt!2468754 () Unit!160518)

(declare-fun choose!51478 (Regex!16891 List!66648) Unit!160518)

(assert (=> d!2163463 (= lt!2468754 (choose!51478 r1!6342 (_1!37061 lt!2468732)))))

(assert (=> d!2163463 (validRegex!8599 r1!6342)))

(assert (=> d!2163463 (= (mainMatchTheorem!3954 r1!6342 (_1!37061 lt!2468732)) lt!2468754)))

(declare-fun bs!1844948 () Bool)

(assert (= bs!1844948 d!2163463))

(assert (=> bs!1844948 m!7626054))

(assert (=> bs!1844948 m!7626052))

(declare-fun m!7626060 () Bool)

(assert (=> bs!1844948 m!7626060))

(assert (=> bs!1844948 m!7625992))

(assert (=> b!6911777 d!2163463))

(declare-fun d!2163465 () Bool)

(assert (=> d!2163465 (= (get!23287 lt!2468735) (v!52941 lt!2468735))))

(assert (=> b!6911777 d!2163465))

(declare-fun d!2163467 () Bool)

(declare-fun choose!51479 (Int) Bool)

(assert (=> d!2163467 (= (Exists!3899 lambda!392798) (choose!51479 lambda!392798))))

(declare-fun bs!1844949 () Bool)

(assert (= bs!1844949 d!2163467))

(declare-fun m!7626062 () Bool)

(assert (=> bs!1844949 m!7626062))

(assert (=> b!6911777 d!2163467))

(declare-fun d!2163469 () Bool)

(assert (=> d!2163469 (= (Exists!3899 lambda!392797) (choose!51479 lambda!392797))))

(declare-fun bs!1844950 () Bool)

(assert (= bs!1844950 d!2163469))

(declare-fun m!7626064 () Bool)

(assert (=> bs!1844950 m!7626064))

(assert (=> b!6911777 d!2163469))

(declare-fun bs!1844951 () Bool)

(declare-fun d!2163471 () Bool)

(assert (= bs!1844951 (and d!2163471 b!6911777)))

(declare-fun lambda!392805 () Int)

(assert (=> bs!1844951 (= lambda!392805 lambda!392797)))

(assert (=> bs!1844951 (not (= lambda!392805 lambda!392798))))

(declare-fun bs!1844952 () Bool)

(assert (= bs!1844952 (and d!2163471 b!6911757)))

(assert (=> bs!1844952 (= (and (= s!14361 (_2!37061 lt!2468732)) (= r1!6342 r2!6280) (= lt!2468746 r3!135)) (= lambda!392805 lambda!392799))))

(assert (=> bs!1844952 (not (= lambda!392805 lambda!392800))))

(assert (=> d!2163471 true))

(assert (=> d!2163471 true))

(assert (=> d!2163471 true))

(declare-fun lambda!392806 () Int)

(assert (=> bs!1844951 (= lambda!392806 lambda!392798)))

(assert (=> bs!1844951 (not (= lambda!392806 lambda!392797))))

(declare-fun bs!1844953 () Bool)

(assert (= bs!1844953 d!2163471))

(assert (=> bs!1844953 (not (= lambda!392806 lambda!392805))))

(assert (=> bs!1844952 (= (and (= s!14361 (_2!37061 lt!2468732)) (= r1!6342 r2!6280) (= lt!2468746 r3!135)) (= lambda!392806 lambda!392800))))

(assert (=> bs!1844952 (not (= lambda!392806 lambda!392799))))

(assert (=> d!2163471 true))

(assert (=> d!2163471 true))

(assert (=> d!2163471 true))

(assert (=> d!2163471 (= (Exists!3899 lambda!392805) (Exists!3899 lambda!392806))))

(declare-fun lt!2468758 () Unit!160518)

(declare-fun choose!51480 (Regex!16891 Regex!16891 List!66648) Unit!160518)

(assert (=> d!2163471 (= lt!2468758 (choose!51480 r1!6342 lt!2468746 s!14361))))

(assert (=> d!2163471 (validRegex!8599 r1!6342)))

(assert (=> d!2163471 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2372 r1!6342 lt!2468746 s!14361) lt!2468758)))

(declare-fun m!7626080 () Bool)

(assert (=> bs!1844953 m!7626080))

(declare-fun m!7626082 () Bool)

(assert (=> bs!1844953 m!7626082))

(declare-fun m!7626084 () Bool)

(assert (=> bs!1844953 m!7626084))

(assert (=> bs!1844953 m!7625992))

(assert (=> b!6911777 d!2163471))

(declare-fun bs!1844957 () Bool)

(declare-fun b!6911900 () Bool)

(assert (= bs!1844957 (and b!6911900 b!6911777)))

(declare-fun lambda!392814 () Int)

(assert (=> bs!1844957 (not (= lambda!392814 lambda!392798))))

(assert (=> bs!1844957 (not (= lambda!392814 lambda!392797))))

(declare-fun bs!1844958 () Bool)

(assert (= bs!1844958 (and b!6911900 d!2163471)))

(assert (=> bs!1844958 (not (= lambda!392814 lambda!392806))))

(assert (=> bs!1844958 (not (= lambda!392814 lambda!392805))))

(declare-fun bs!1844960 () Bool)

(assert (= bs!1844960 (and b!6911900 b!6911757)))

(assert (=> bs!1844960 (not (= lambda!392814 lambda!392800))))

(assert (=> bs!1844960 (not (= lambda!392814 lambda!392799))))

(assert (=> b!6911900 true))

(assert (=> b!6911900 true))

(declare-fun bs!1844961 () Bool)

(declare-fun b!6911899 () Bool)

(assert (= bs!1844961 (and b!6911899 b!6911777)))

(declare-fun lambda!392815 () Int)

(assert (=> bs!1844961 (= (and (= (_1!37061 lt!2468732) s!14361) (= (regOne!34294 r1!6342) r1!6342) (= (regTwo!34294 r1!6342) lt!2468746)) (= lambda!392815 lambda!392798))))

(assert (=> bs!1844961 (not (= lambda!392815 lambda!392797))))

(declare-fun bs!1844962 () Bool)

(assert (= bs!1844962 (and b!6911899 d!2163471)))

(assert (=> bs!1844962 (= (and (= (_1!37061 lt!2468732) s!14361) (= (regOne!34294 r1!6342) r1!6342) (= (regTwo!34294 r1!6342) lt!2468746)) (= lambda!392815 lambda!392806))))

(declare-fun bs!1844963 () Bool)

(assert (= bs!1844963 (and b!6911899 b!6911900)))

(assert (=> bs!1844963 (not (= lambda!392815 lambda!392814))))

(assert (=> bs!1844962 (not (= lambda!392815 lambda!392805))))

(declare-fun bs!1844964 () Bool)

(assert (= bs!1844964 (and b!6911899 b!6911757)))

(assert (=> bs!1844964 (= (and (= (_1!37061 lt!2468732) (_2!37061 lt!2468732)) (= (regOne!34294 r1!6342) r2!6280) (= (regTwo!34294 r1!6342) r3!135)) (= lambda!392815 lambda!392800))))

(assert (=> bs!1844964 (not (= lambda!392815 lambda!392799))))

(assert (=> b!6911899 true))

(assert (=> b!6911899 true))

(declare-fun b!6911897 () Bool)

(declare-fun e!4161309 () Bool)

(declare-fun call!628396 () Bool)

(assert (=> b!6911897 (= e!4161309 call!628396)))

(declare-fun b!6911898 () Bool)

(declare-fun res!2818828 () Bool)

(declare-fun e!4161306 () Bool)

(assert (=> b!6911898 (=> res!2818828 e!4161306)))

(assert (=> b!6911898 (= res!2818828 call!628396)))

(declare-fun e!4161305 () Bool)

(assert (=> b!6911898 (= e!4161305 e!4161306)))

(declare-fun bm!628390 () Bool)

(declare-fun isEmpty!38773 (List!66648) Bool)

(assert (=> bm!628390 (= call!628396 (isEmpty!38773 (_1!37061 lt!2468732)))))

(declare-fun call!628395 () Bool)

(assert (=> b!6911899 (= e!4161305 call!628395)))

(assert (=> b!6911900 (= e!4161306 call!628395)))

(declare-fun b!6911901 () Bool)

(declare-fun c!1283813 () Bool)

(assert (=> b!6911901 (= c!1283813 ((_ is Union!16891) r1!6342))))

(declare-fun e!4161307 () Bool)

(declare-fun e!4161304 () Bool)

(assert (=> b!6911901 (= e!4161307 e!4161304)))

(declare-fun c!1283814 () Bool)

(declare-fun bm!628391 () Bool)

(assert (=> bm!628391 (= call!628395 (Exists!3899 (ite c!1283814 lambda!392814 lambda!392815)))))

(declare-fun b!6911902 () Bool)

(declare-fun c!1283816 () Bool)

(assert (=> b!6911902 (= c!1283816 ((_ is ElementMatch!16891) r1!6342))))

(declare-fun e!4161308 () Bool)

(assert (=> b!6911902 (= e!4161308 e!4161307)))

(declare-fun d!2163475 () Bool)

(declare-fun c!1283815 () Bool)

(assert (=> d!2163475 (= c!1283815 ((_ is EmptyExpr!16891) r1!6342))))

(assert (=> d!2163475 (= (matchRSpec!3954 r1!6342 (_1!37061 lt!2468732)) e!4161309)))

(declare-fun b!6911903 () Bool)

(assert (=> b!6911903 (= e!4161307 (= (_1!37061 lt!2468732) (Cons!66524 (c!1283789 r1!6342) Nil!66524)))))

(declare-fun b!6911904 () Bool)

(declare-fun e!4161303 () Bool)

(assert (=> b!6911904 (= e!4161304 e!4161303)))

(declare-fun res!2818829 () Bool)

(assert (=> b!6911904 (= res!2818829 (matchRSpec!3954 (regOne!34295 r1!6342) (_1!37061 lt!2468732)))))

(assert (=> b!6911904 (=> res!2818829 e!4161303)))

(declare-fun b!6911905 () Bool)

(assert (=> b!6911905 (= e!4161304 e!4161305)))

(assert (=> b!6911905 (= c!1283814 ((_ is Star!16891) r1!6342))))

(declare-fun b!6911906 () Bool)

(assert (=> b!6911906 (= e!4161303 (matchRSpec!3954 (regTwo!34295 r1!6342) (_1!37061 lt!2468732)))))

(declare-fun b!6911907 () Bool)

(assert (=> b!6911907 (= e!4161309 e!4161308)))

(declare-fun res!2818830 () Bool)

(assert (=> b!6911907 (= res!2818830 (not ((_ is EmptyLang!16891) r1!6342)))))

(assert (=> b!6911907 (=> (not res!2818830) (not e!4161308))))

(assert (= (and d!2163475 c!1283815) b!6911897))

(assert (= (and d!2163475 (not c!1283815)) b!6911907))

(assert (= (and b!6911907 res!2818830) b!6911902))

(assert (= (and b!6911902 c!1283816) b!6911903))

(assert (= (and b!6911902 (not c!1283816)) b!6911901))

(assert (= (and b!6911901 c!1283813) b!6911904))

(assert (= (and b!6911901 (not c!1283813)) b!6911905))

(assert (= (and b!6911904 (not res!2818829)) b!6911906))

(assert (= (and b!6911905 c!1283814) b!6911898))

(assert (= (and b!6911905 (not c!1283814)) b!6911899))

(assert (= (and b!6911898 (not res!2818828)) b!6911900))

(assert (= (or b!6911900 b!6911899) bm!628391))

(assert (= (or b!6911897 b!6911898) bm!628390))

(declare-fun m!7626116 () Bool)

(assert (=> bm!628390 m!7626116))

(declare-fun m!7626118 () Bool)

(assert (=> bm!628391 m!7626118))

(declare-fun m!7626120 () Bool)

(assert (=> b!6911904 m!7626120))

(declare-fun m!7626122 () Bool)

(assert (=> b!6911906 m!7626122))

(assert (=> b!6911777 d!2163475))

(declare-fun bs!1844965 () Bool)

(declare-fun d!2163483 () Bool)

(assert (= bs!1844965 (and d!2163483 b!6911777)))

(declare-fun lambda!392822 () Int)

(assert (=> bs!1844965 (not (= lambda!392822 lambda!392798))))

(assert (=> bs!1844965 (= lambda!392822 lambda!392797)))

(declare-fun bs!1844966 () Bool)

(assert (= bs!1844966 (and d!2163483 d!2163471)))

(assert (=> bs!1844966 (not (= lambda!392822 lambda!392806))))

(declare-fun bs!1844967 () Bool)

(assert (= bs!1844967 (and d!2163483 b!6911899)))

(assert (=> bs!1844967 (not (= lambda!392822 lambda!392815))))

(declare-fun bs!1844968 () Bool)

(assert (= bs!1844968 (and d!2163483 b!6911900)))

(assert (=> bs!1844968 (not (= lambda!392822 lambda!392814))))

(assert (=> bs!1844966 (= lambda!392822 lambda!392805)))

(declare-fun bs!1844969 () Bool)

(assert (= bs!1844969 (and d!2163483 b!6911757)))

(assert (=> bs!1844969 (not (= lambda!392822 lambda!392800))))

(assert (=> bs!1844969 (= (and (= s!14361 (_2!37061 lt!2468732)) (= r1!6342 r2!6280) (= lt!2468746 r3!135)) (= lambda!392822 lambda!392799))))

(assert (=> d!2163483 true))

(assert (=> d!2163483 true))

(assert (=> d!2163483 true))

(assert (=> d!2163483 (= (isDefined!13373 (findConcatSeparation!3084 r1!6342 lt!2468746 Nil!66524 s!14361 s!14361)) (Exists!3899 lambda!392822))))

(declare-fun lt!2468773 () Unit!160518)

(declare-fun choose!51483 (Regex!16891 Regex!16891 List!66648) Unit!160518)

(assert (=> d!2163483 (= lt!2468773 (choose!51483 r1!6342 lt!2468746 s!14361))))

(assert (=> d!2163483 (validRegex!8599 r1!6342)))

(assert (=> d!2163483 (= (lemmaFindConcatSeparationEquivalentToExists!2846 r1!6342 lt!2468746 s!14361) lt!2468773)))

(declare-fun bs!1844970 () Bool)

(assert (= bs!1844970 d!2163483))

(assert (=> bs!1844970 m!7625996))

(declare-fun m!7626124 () Bool)

(assert (=> bs!1844970 m!7626124))

(declare-fun m!7626126 () Bool)

(assert (=> bs!1844970 m!7626126))

(assert (=> bs!1844970 m!7625996))

(declare-fun m!7626128 () Bool)

(assert (=> bs!1844970 m!7626128))

(assert (=> bs!1844970 m!7625992))

(assert (=> b!6911777 d!2163483))

(declare-fun bm!628400 () Bool)

(declare-fun call!628405 () Bool)

(assert (=> bm!628400 (= call!628405 (isEmpty!38773 (_1!37061 lt!2468732)))))

(declare-fun b!6911983 () Bool)

(declare-fun res!2818874 () Bool)

(declare-fun e!4161354 () Bool)

(assert (=> b!6911983 (=> res!2818874 e!4161354)))

(declare-fun e!4161357 () Bool)

(assert (=> b!6911983 (= res!2818874 e!4161357)))

(declare-fun res!2818876 () Bool)

(assert (=> b!6911983 (=> (not res!2818876) (not e!4161357))))

(declare-fun lt!2468779 () Bool)

(assert (=> b!6911983 (= res!2818876 lt!2468779)))

(declare-fun b!6911984 () Bool)

(declare-fun res!2818877 () Bool)

(declare-fun e!4161353 () Bool)

(assert (=> b!6911984 (=> res!2818877 e!4161353)))

(declare-fun tail!12914 (List!66648) List!66648)

(assert (=> b!6911984 (= res!2818877 (not (isEmpty!38773 (tail!12914 (_1!37061 lt!2468732)))))))

(declare-fun d!2163485 () Bool)

(declare-fun e!4161351 () Bool)

(assert (=> d!2163485 e!4161351))

(declare-fun c!1283836 () Bool)

(assert (=> d!2163485 (= c!1283836 ((_ is EmptyExpr!16891) r1!6342))))

(declare-fun e!4161355 () Bool)

(assert (=> d!2163485 (= lt!2468779 e!4161355)))

(declare-fun c!1283837 () Bool)

(assert (=> d!2163485 (= c!1283837 (isEmpty!38773 (_1!37061 lt!2468732)))))

(assert (=> d!2163485 (validRegex!8599 r1!6342)))

(assert (=> d!2163485 (= (matchR!9036 r1!6342 (_1!37061 lt!2468732)) lt!2468779)))

(declare-fun b!6911985 () Bool)

(declare-fun res!2818871 () Bool)

(assert (=> b!6911985 (=> res!2818871 e!4161354)))

(assert (=> b!6911985 (= res!2818871 (not ((_ is ElementMatch!16891) r1!6342)))))

(declare-fun e!4161352 () Bool)

(assert (=> b!6911985 (= e!4161352 e!4161354)))

(declare-fun b!6911986 () Bool)

(declare-fun e!4161356 () Bool)

(assert (=> b!6911986 (= e!4161354 e!4161356)))

(declare-fun res!2818872 () Bool)

(assert (=> b!6911986 (=> (not res!2818872) (not e!4161356))))

(assert (=> b!6911986 (= res!2818872 (not lt!2468779))))

(declare-fun b!6911987 () Bool)

(declare-fun derivativeStep!5409 (Regex!16891 C!34052) Regex!16891)

(declare-fun head!13862 (List!66648) C!34052)

(assert (=> b!6911987 (= e!4161355 (matchR!9036 (derivativeStep!5409 r1!6342 (head!13862 (_1!37061 lt!2468732))) (tail!12914 (_1!37061 lt!2468732))))))

(declare-fun b!6911988 () Bool)

(declare-fun res!2818873 () Bool)

(assert (=> b!6911988 (=> (not res!2818873) (not e!4161357))))

(assert (=> b!6911988 (= res!2818873 (not call!628405))))

(declare-fun b!6911989 () Bool)

(assert (=> b!6911989 (= e!4161351 e!4161352)))

(declare-fun c!1283835 () Bool)

(assert (=> b!6911989 (= c!1283835 ((_ is EmptyLang!16891) r1!6342))))

(declare-fun b!6911990 () Bool)

(assert (=> b!6911990 (= e!4161352 (not lt!2468779))))

(declare-fun b!6911991 () Bool)

(assert (=> b!6911991 (= e!4161353 (not (= (head!13862 (_1!37061 lt!2468732)) (c!1283789 r1!6342))))))

(declare-fun b!6911992 () Bool)

(assert (=> b!6911992 (= e!4161356 e!4161353)))

(declare-fun res!2818870 () Bool)

(assert (=> b!6911992 (=> res!2818870 e!4161353)))

(assert (=> b!6911992 (= res!2818870 call!628405)))

(declare-fun b!6911993 () Bool)

(declare-fun nullable!6730 (Regex!16891) Bool)

(assert (=> b!6911993 (= e!4161355 (nullable!6730 r1!6342))))

(declare-fun b!6911994 () Bool)

(assert (=> b!6911994 (= e!4161357 (= (head!13862 (_1!37061 lt!2468732)) (c!1283789 r1!6342)))))

(declare-fun b!6911995 () Bool)

(declare-fun res!2818875 () Bool)

(assert (=> b!6911995 (=> (not res!2818875) (not e!4161357))))

(assert (=> b!6911995 (= res!2818875 (isEmpty!38773 (tail!12914 (_1!37061 lt!2468732))))))

(declare-fun b!6911996 () Bool)

(assert (=> b!6911996 (= e!4161351 (= lt!2468779 call!628405))))

(assert (= (and d!2163485 c!1283837) b!6911993))

(assert (= (and d!2163485 (not c!1283837)) b!6911987))

(assert (= (and d!2163485 c!1283836) b!6911996))

(assert (= (and d!2163485 (not c!1283836)) b!6911989))

(assert (= (and b!6911989 c!1283835) b!6911990))

(assert (= (and b!6911989 (not c!1283835)) b!6911985))

(assert (= (and b!6911985 (not res!2818871)) b!6911983))

(assert (= (and b!6911983 res!2818876) b!6911988))

(assert (= (and b!6911988 res!2818873) b!6911995))

(assert (= (and b!6911995 res!2818875) b!6911994))

(assert (= (and b!6911983 (not res!2818874)) b!6911986))

(assert (= (and b!6911986 res!2818872) b!6911992))

(assert (= (and b!6911992 (not res!2818870)) b!6911984))

(assert (= (and b!6911984 (not res!2818877)) b!6911991))

(assert (= (or b!6911996 b!6911988 b!6911992) bm!628400))

(declare-fun m!7626142 () Bool)

(assert (=> b!6911991 m!7626142))

(declare-fun m!7626144 () Bool)

(assert (=> b!6911993 m!7626144))

(assert (=> b!6911987 m!7626142))

(assert (=> b!6911987 m!7626142))

(declare-fun m!7626146 () Bool)

(assert (=> b!6911987 m!7626146))

(declare-fun m!7626148 () Bool)

(assert (=> b!6911987 m!7626148))

(assert (=> b!6911987 m!7626146))

(assert (=> b!6911987 m!7626148))

(declare-fun m!7626150 () Bool)

(assert (=> b!6911987 m!7626150))

(assert (=> bm!628400 m!7626116))

(assert (=> b!6911994 m!7626142))

(assert (=> b!6911995 m!7626148))

(assert (=> b!6911995 m!7626148))

(declare-fun m!7626152 () Bool)

(assert (=> b!6911995 m!7626152))

(assert (=> b!6911984 m!7626148))

(assert (=> b!6911984 m!7626148))

(assert (=> b!6911984 m!7626152))

(assert (=> d!2163485 m!7626116))

(assert (=> d!2163485 m!7625992))

(assert (=> b!6911777 d!2163485))

(declare-fun bm!628401 () Bool)

(declare-fun call!628406 () Bool)

(assert (=> bm!628401 (= call!628406 (isEmpty!38773 (_2!37061 lt!2468732)))))

(declare-fun b!6911997 () Bool)

(declare-fun res!2818882 () Bool)

(declare-fun e!4161361 () Bool)

(assert (=> b!6911997 (=> res!2818882 e!4161361)))

(declare-fun e!4161364 () Bool)

(assert (=> b!6911997 (= res!2818882 e!4161364)))

(declare-fun res!2818884 () Bool)

(assert (=> b!6911997 (=> (not res!2818884) (not e!4161364))))

(declare-fun lt!2468780 () Bool)

(assert (=> b!6911997 (= res!2818884 lt!2468780)))

(declare-fun b!6911998 () Bool)

(declare-fun res!2818885 () Bool)

(declare-fun e!4161360 () Bool)

(assert (=> b!6911998 (=> res!2818885 e!4161360)))

(assert (=> b!6911998 (= res!2818885 (not (isEmpty!38773 (tail!12914 (_2!37061 lt!2468732)))))))

(declare-fun d!2163491 () Bool)

(declare-fun e!4161358 () Bool)

(assert (=> d!2163491 e!4161358))

(declare-fun c!1283839 () Bool)

(assert (=> d!2163491 (= c!1283839 ((_ is EmptyExpr!16891) lt!2468746))))

(declare-fun e!4161362 () Bool)

(assert (=> d!2163491 (= lt!2468780 e!4161362)))

(declare-fun c!1283840 () Bool)

(assert (=> d!2163491 (= c!1283840 (isEmpty!38773 (_2!37061 lt!2468732)))))

(assert (=> d!2163491 (validRegex!8599 lt!2468746)))

(assert (=> d!2163491 (= (matchR!9036 lt!2468746 (_2!37061 lt!2468732)) lt!2468780)))

(declare-fun b!6911999 () Bool)

(declare-fun res!2818879 () Bool)

(assert (=> b!6911999 (=> res!2818879 e!4161361)))

(assert (=> b!6911999 (= res!2818879 (not ((_ is ElementMatch!16891) lt!2468746)))))

(declare-fun e!4161359 () Bool)

(assert (=> b!6911999 (= e!4161359 e!4161361)))

(declare-fun b!6912000 () Bool)

(declare-fun e!4161363 () Bool)

(assert (=> b!6912000 (= e!4161361 e!4161363)))

(declare-fun res!2818880 () Bool)

(assert (=> b!6912000 (=> (not res!2818880) (not e!4161363))))

(assert (=> b!6912000 (= res!2818880 (not lt!2468780))))

(declare-fun b!6912001 () Bool)

(assert (=> b!6912001 (= e!4161362 (matchR!9036 (derivativeStep!5409 lt!2468746 (head!13862 (_2!37061 lt!2468732))) (tail!12914 (_2!37061 lt!2468732))))))

(declare-fun b!6912002 () Bool)

(declare-fun res!2818881 () Bool)

(assert (=> b!6912002 (=> (not res!2818881) (not e!4161364))))

(assert (=> b!6912002 (= res!2818881 (not call!628406))))

(declare-fun b!6912003 () Bool)

(assert (=> b!6912003 (= e!4161358 e!4161359)))

(declare-fun c!1283838 () Bool)

(assert (=> b!6912003 (= c!1283838 ((_ is EmptyLang!16891) lt!2468746))))

(declare-fun b!6912004 () Bool)

(assert (=> b!6912004 (= e!4161359 (not lt!2468780))))

(declare-fun b!6912005 () Bool)

(assert (=> b!6912005 (= e!4161360 (not (= (head!13862 (_2!37061 lt!2468732)) (c!1283789 lt!2468746))))))

(declare-fun b!6912006 () Bool)

(assert (=> b!6912006 (= e!4161363 e!4161360)))

(declare-fun res!2818878 () Bool)

(assert (=> b!6912006 (=> res!2818878 e!4161360)))

(assert (=> b!6912006 (= res!2818878 call!628406)))

(declare-fun b!6912007 () Bool)

(assert (=> b!6912007 (= e!4161362 (nullable!6730 lt!2468746))))

(declare-fun b!6912008 () Bool)

(assert (=> b!6912008 (= e!4161364 (= (head!13862 (_2!37061 lt!2468732)) (c!1283789 lt!2468746)))))

(declare-fun b!6912009 () Bool)

(declare-fun res!2818883 () Bool)

(assert (=> b!6912009 (=> (not res!2818883) (not e!4161364))))

(assert (=> b!6912009 (= res!2818883 (isEmpty!38773 (tail!12914 (_2!37061 lt!2468732))))))

(declare-fun b!6912010 () Bool)

(assert (=> b!6912010 (= e!4161358 (= lt!2468780 call!628406))))

(assert (= (and d!2163491 c!1283840) b!6912007))

(assert (= (and d!2163491 (not c!1283840)) b!6912001))

(assert (= (and d!2163491 c!1283839) b!6912010))

(assert (= (and d!2163491 (not c!1283839)) b!6912003))

(assert (= (and b!6912003 c!1283838) b!6912004))

(assert (= (and b!6912003 (not c!1283838)) b!6911999))

(assert (= (and b!6911999 (not res!2818879)) b!6911997))

(assert (= (and b!6911997 res!2818884) b!6912002))

(assert (= (and b!6912002 res!2818881) b!6912009))

(assert (= (and b!6912009 res!2818883) b!6912008))

(assert (= (and b!6911997 (not res!2818882)) b!6912000))

(assert (= (and b!6912000 res!2818880) b!6912006))

(assert (= (and b!6912006 (not res!2818878)) b!6911998))

(assert (= (and b!6911998 (not res!2818885)) b!6912005))

(assert (= (or b!6912010 b!6912002 b!6912006) bm!628401))

(declare-fun m!7626154 () Bool)

(assert (=> b!6912005 m!7626154))

(declare-fun m!7626156 () Bool)

(assert (=> b!6912007 m!7626156))

(assert (=> b!6912001 m!7626154))

(assert (=> b!6912001 m!7626154))

(declare-fun m!7626158 () Bool)

(assert (=> b!6912001 m!7626158))

(declare-fun m!7626160 () Bool)

(assert (=> b!6912001 m!7626160))

(assert (=> b!6912001 m!7626158))

(assert (=> b!6912001 m!7626160))

(declare-fun m!7626162 () Bool)

(assert (=> b!6912001 m!7626162))

(declare-fun m!7626164 () Bool)

(assert (=> bm!628401 m!7626164))

(assert (=> b!6912008 m!7626154))

(assert (=> b!6912009 m!7626160))

(assert (=> b!6912009 m!7626160))

(declare-fun m!7626166 () Bool)

(assert (=> b!6912009 m!7626166))

(assert (=> b!6911998 m!7626160))

(assert (=> b!6911998 m!7626160))

(assert (=> b!6911998 m!7626166))

(assert (=> d!2163491 m!7626164))

(declare-fun m!7626168 () Bool)

(assert (=> d!2163491 m!7626168))

(assert (=> b!6911761 d!2163491))

(declare-fun d!2163493 () Bool)

(assert (=> d!2163493 (= (Exists!3899 lambda!392799) (choose!51479 lambda!392799))))

(declare-fun bs!1844979 () Bool)

(assert (= bs!1844979 d!2163493))

(declare-fun m!7626170 () Bool)

(assert (=> bs!1844979 m!7626170))

(assert (=> b!6911757 d!2163493))

(declare-fun bs!1844980 () Bool)

(declare-fun b!6912014 () Bool)

(assert (= bs!1844980 (and b!6912014 d!2163483)))

(declare-fun lambda!392825 () Int)

(assert (=> bs!1844980 (not (= lambda!392825 lambda!392822))))

(declare-fun bs!1844981 () Bool)

(assert (= bs!1844981 (and b!6912014 b!6911777)))

(assert (=> bs!1844981 (not (= lambda!392825 lambda!392798))))

(assert (=> bs!1844981 (not (= lambda!392825 lambda!392797))))

(declare-fun bs!1844982 () Bool)

(assert (= bs!1844982 (and b!6912014 d!2163471)))

(assert (=> bs!1844982 (not (= lambda!392825 lambda!392806))))

(declare-fun bs!1844983 () Bool)

(assert (= bs!1844983 (and b!6912014 b!6911899)))

(assert (=> bs!1844983 (not (= lambda!392825 lambda!392815))))

(declare-fun bs!1844984 () Bool)

(assert (= bs!1844984 (and b!6912014 b!6911900)))

(assert (=> bs!1844984 (= (and (= (_2!37061 lt!2468732) (_1!37061 lt!2468732)) (= (reg!17220 lt!2468746) (reg!17220 r1!6342)) (= lt!2468746 r1!6342)) (= lambda!392825 lambda!392814))))

(assert (=> bs!1844982 (not (= lambda!392825 lambda!392805))))

(declare-fun bs!1844985 () Bool)

(assert (= bs!1844985 (and b!6912014 b!6911757)))

(assert (=> bs!1844985 (not (= lambda!392825 lambda!392800))))

(assert (=> bs!1844985 (not (= lambda!392825 lambda!392799))))

(assert (=> b!6912014 true))

(assert (=> b!6912014 true))

(declare-fun bs!1844986 () Bool)

(declare-fun b!6912013 () Bool)

(assert (= bs!1844986 (and b!6912013 d!2163483)))

(declare-fun lambda!392828 () Int)

(assert (=> bs!1844986 (not (= lambda!392828 lambda!392822))))

(declare-fun bs!1844987 () Bool)

(assert (= bs!1844987 (and b!6912013 b!6911777)))

(assert (=> bs!1844987 (= (and (= (_2!37061 lt!2468732) s!14361) (= (regOne!34294 lt!2468746) r1!6342) (= (regTwo!34294 lt!2468746) lt!2468746)) (= lambda!392828 lambda!392798))))

(assert (=> bs!1844987 (not (= lambda!392828 lambda!392797))))

(declare-fun bs!1844988 () Bool)

(assert (= bs!1844988 (and b!6912013 b!6912014)))

(assert (=> bs!1844988 (not (= lambda!392828 lambda!392825))))

(declare-fun bs!1844989 () Bool)

(assert (= bs!1844989 (and b!6912013 d!2163471)))

(assert (=> bs!1844989 (= (and (= (_2!37061 lt!2468732) s!14361) (= (regOne!34294 lt!2468746) r1!6342) (= (regTwo!34294 lt!2468746) lt!2468746)) (= lambda!392828 lambda!392806))))

(declare-fun bs!1844990 () Bool)

(assert (= bs!1844990 (and b!6912013 b!6911899)))

(assert (=> bs!1844990 (= (and (= (_2!37061 lt!2468732) (_1!37061 lt!2468732)) (= (regOne!34294 lt!2468746) (regOne!34294 r1!6342)) (= (regTwo!34294 lt!2468746) (regTwo!34294 r1!6342))) (= lambda!392828 lambda!392815))))

(declare-fun bs!1844991 () Bool)

(assert (= bs!1844991 (and b!6912013 b!6911900)))

(assert (=> bs!1844991 (not (= lambda!392828 lambda!392814))))

(assert (=> bs!1844989 (not (= lambda!392828 lambda!392805))))

(declare-fun bs!1844992 () Bool)

(assert (= bs!1844992 (and b!6912013 b!6911757)))

(assert (=> bs!1844992 (= (and (= (regOne!34294 lt!2468746) r2!6280) (= (regTwo!34294 lt!2468746) r3!135)) (= lambda!392828 lambda!392800))))

(assert (=> bs!1844992 (not (= lambda!392828 lambda!392799))))

(assert (=> b!6912013 true))

(assert (=> b!6912013 true))

(declare-fun b!6912011 () Bool)

(declare-fun e!4161371 () Bool)

(declare-fun call!628408 () Bool)

(assert (=> b!6912011 (= e!4161371 call!628408)))

(declare-fun b!6912012 () Bool)

(declare-fun res!2818886 () Bool)

(declare-fun e!4161368 () Bool)

(assert (=> b!6912012 (=> res!2818886 e!4161368)))

(assert (=> b!6912012 (= res!2818886 call!628408)))

(declare-fun e!4161367 () Bool)

(assert (=> b!6912012 (= e!4161367 e!4161368)))

(declare-fun bm!628402 () Bool)

(assert (=> bm!628402 (= call!628408 (isEmpty!38773 (_2!37061 lt!2468732)))))

(declare-fun call!628407 () Bool)

(assert (=> b!6912013 (= e!4161367 call!628407)))

(assert (=> b!6912014 (= e!4161368 call!628407)))

(declare-fun b!6912015 () Bool)

(declare-fun c!1283841 () Bool)

(assert (=> b!6912015 (= c!1283841 ((_ is Union!16891) lt!2468746))))

(declare-fun e!4161369 () Bool)

(declare-fun e!4161366 () Bool)

(assert (=> b!6912015 (= e!4161369 e!4161366)))

(declare-fun c!1283842 () Bool)

(declare-fun bm!628403 () Bool)

(assert (=> bm!628403 (= call!628407 (Exists!3899 (ite c!1283842 lambda!392825 lambda!392828)))))

(declare-fun b!6912016 () Bool)

(declare-fun c!1283844 () Bool)

(assert (=> b!6912016 (= c!1283844 ((_ is ElementMatch!16891) lt!2468746))))

(declare-fun e!4161370 () Bool)

(assert (=> b!6912016 (= e!4161370 e!4161369)))

(declare-fun d!2163495 () Bool)

(declare-fun c!1283843 () Bool)

(assert (=> d!2163495 (= c!1283843 ((_ is EmptyExpr!16891) lt!2468746))))

(assert (=> d!2163495 (= (matchRSpec!3954 lt!2468746 (_2!37061 lt!2468732)) e!4161371)))

(declare-fun b!6912017 () Bool)

(assert (=> b!6912017 (= e!4161369 (= (_2!37061 lt!2468732) (Cons!66524 (c!1283789 lt!2468746) Nil!66524)))))

(declare-fun b!6912018 () Bool)

(declare-fun e!4161365 () Bool)

(assert (=> b!6912018 (= e!4161366 e!4161365)))

(declare-fun res!2818887 () Bool)

(assert (=> b!6912018 (= res!2818887 (matchRSpec!3954 (regOne!34295 lt!2468746) (_2!37061 lt!2468732)))))

(assert (=> b!6912018 (=> res!2818887 e!4161365)))

(declare-fun b!6912019 () Bool)

(assert (=> b!6912019 (= e!4161366 e!4161367)))

(assert (=> b!6912019 (= c!1283842 ((_ is Star!16891) lt!2468746))))

(declare-fun b!6912020 () Bool)

(assert (=> b!6912020 (= e!4161365 (matchRSpec!3954 (regTwo!34295 lt!2468746) (_2!37061 lt!2468732)))))

(declare-fun b!6912021 () Bool)

(assert (=> b!6912021 (= e!4161371 e!4161370)))

(declare-fun res!2818888 () Bool)

(assert (=> b!6912021 (= res!2818888 (not ((_ is EmptyLang!16891) lt!2468746)))))

(assert (=> b!6912021 (=> (not res!2818888) (not e!4161370))))

(assert (= (and d!2163495 c!1283843) b!6912011))

(assert (= (and d!2163495 (not c!1283843)) b!6912021))

(assert (= (and b!6912021 res!2818888) b!6912016))

(assert (= (and b!6912016 c!1283844) b!6912017))

(assert (= (and b!6912016 (not c!1283844)) b!6912015))

(assert (= (and b!6912015 c!1283841) b!6912018))

(assert (= (and b!6912015 (not c!1283841)) b!6912019))

(assert (= (and b!6912018 (not res!2818887)) b!6912020))

(assert (= (and b!6912019 c!1283842) b!6912012))

(assert (= (and b!6912019 (not c!1283842)) b!6912013))

(assert (= (and b!6912012 (not res!2818886)) b!6912014))

(assert (= (or b!6912014 b!6912013) bm!628403))

(assert (= (or b!6912011 b!6912012) bm!628402))

(assert (=> bm!628402 m!7626164))

(declare-fun m!7626172 () Bool)

(assert (=> bm!628403 m!7626172))

(declare-fun m!7626174 () Bool)

(assert (=> b!6912018 m!7626174))

(declare-fun m!7626176 () Bool)

(assert (=> b!6912020 m!7626176))

(assert (=> b!6911757 d!2163495))

(declare-fun bs!1844993 () Bool)

(declare-fun d!2163497 () Bool)

(assert (= bs!1844993 (and d!2163497 d!2163483)))

(declare-fun lambda!392831 () Int)

(assert (=> bs!1844993 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392831 lambda!392822))))

(declare-fun bs!1844994 () Bool)

(assert (= bs!1844994 (and d!2163497 b!6911777)))

(assert (=> bs!1844994 (not (= lambda!392831 lambda!392798))))

(assert (=> bs!1844994 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392831 lambda!392797))))

(declare-fun bs!1844996 () Bool)

(assert (= bs!1844996 (and d!2163497 b!6912014)))

(assert (=> bs!1844996 (not (= lambda!392831 lambda!392825))))

(declare-fun bs!1844998 () Bool)

(assert (= bs!1844998 (and d!2163497 d!2163471)))

(assert (=> bs!1844998 (not (= lambda!392831 lambda!392806))))

(declare-fun bs!1845000 () Bool)

(assert (= bs!1845000 (and d!2163497 b!6912013)))

(assert (=> bs!1845000 (not (= lambda!392831 lambda!392828))))

(declare-fun bs!1845002 () Bool)

(assert (= bs!1845002 (and d!2163497 b!6911899)))

(assert (=> bs!1845002 (not (= lambda!392831 lambda!392815))))

(declare-fun bs!1845004 () Bool)

(assert (= bs!1845004 (and d!2163497 b!6911900)))

(assert (=> bs!1845004 (not (= lambda!392831 lambda!392814))))

(assert (=> bs!1844998 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392831 lambda!392805))))

(declare-fun bs!1845005 () Bool)

(assert (= bs!1845005 (and d!2163497 b!6911757)))

(assert (=> bs!1845005 (not (= lambda!392831 lambda!392800))))

(assert (=> bs!1845005 (= lambda!392831 lambda!392799)))

(assert (=> d!2163497 true))

(assert (=> d!2163497 true))

(assert (=> d!2163497 true))

(assert (=> d!2163497 (= (isDefined!13373 (findConcatSeparation!3084 r2!6280 r3!135 Nil!66524 (_2!37061 lt!2468732) (_2!37061 lt!2468732))) (Exists!3899 lambda!392831))))

(declare-fun lt!2468783 () Unit!160518)

(assert (=> d!2163497 (= lt!2468783 (choose!51483 r2!6280 r3!135 (_2!37061 lt!2468732)))))

(assert (=> d!2163497 (validRegex!8599 r2!6280)))

(assert (=> d!2163497 (= (lemmaFindConcatSeparationEquivalentToExists!2846 r2!6280 r3!135 (_2!37061 lt!2468732)) lt!2468783)))

(declare-fun bs!1845006 () Bool)

(assert (= bs!1845006 d!2163497))

(assert (=> bs!1845006 m!7626010))

(declare-fun m!7626178 () Bool)

(assert (=> bs!1845006 m!7626178))

(declare-fun m!7626180 () Bool)

(assert (=> bs!1845006 m!7626180))

(assert (=> bs!1845006 m!7626010))

(declare-fun m!7626182 () Bool)

(assert (=> bs!1845006 m!7626182))

(assert (=> bs!1845006 m!7625988))

(assert (=> b!6911757 d!2163497))

(declare-fun b!6912112 () Bool)

(declare-fun e!4161424 () Option!16670)

(assert (=> b!6912112 (= e!4161424 (Some!16669 (tuple2!67517 Nil!66524 (_2!37061 lt!2468732))))))

(declare-fun b!6912113 () Bool)

(declare-fun e!4161421 () Bool)

(declare-fun lt!2468796 () Option!16670)

(assert (=> b!6912113 (= e!4161421 (= (++!14944 (_1!37061 (get!23287 lt!2468796)) (_2!37061 (get!23287 lt!2468796))) (_2!37061 lt!2468732)))))

(declare-fun b!6912114 () Bool)

(declare-fun res!2818937 () Bool)

(assert (=> b!6912114 (=> (not res!2818937) (not e!4161421))))

(assert (=> b!6912114 (= res!2818937 (matchR!9036 r2!6280 (_1!37061 (get!23287 lt!2468796))))))

(declare-fun b!6912115 () Bool)

(declare-fun lt!2468795 () Unit!160518)

(declare-fun lt!2468797 () Unit!160518)

(assert (=> b!6912115 (= lt!2468795 lt!2468797)))

(assert (=> b!6912115 (= (++!14944 (++!14944 Nil!66524 (Cons!66524 (h!72972 (_2!37061 lt!2468732)) Nil!66524)) (t!380391 (_2!37061 lt!2468732))) (_2!37061 lt!2468732))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2817 (List!66648 C!34052 List!66648 List!66648) Unit!160518)

(assert (=> b!6912115 (= lt!2468797 (lemmaMoveElementToOtherListKeepsConcatEq!2817 Nil!66524 (h!72972 (_2!37061 lt!2468732)) (t!380391 (_2!37061 lt!2468732)) (_2!37061 lt!2468732)))))

(declare-fun e!4161422 () Option!16670)

(assert (=> b!6912115 (= e!4161422 (findConcatSeparation!3084 r2!6280 r3!135 (++!14944 Nil!66524 (Cons!66524 (h!72972 (_2!37061 lt!2468732)) Nil!66524)) (t!380391 (_2!37061 lt!2468732)) (_2!37061 lt!2468732)))))

(declare-fun b!6912117 () Bool)

(assert (=> b!6912117 (= e!4161422 None!16669)))

(declare-fun b!6912118 () Bool)

(declare-fun e!4161425 () Bool)

(assert (=> b!6912118 (= e!4161425 (matchR!9036 r3!135 (_2!37061 lt!2468732)))))

(declare-fun b!6912119 () Bool)

(declare-fun e!4161423 () Bool)

(assert (=> b!6912119 (= e!4161423 (not (isDefined!13373 lt!2468796)))))

(declare-fun b!6912120 () Bool)

(assert (=> b!6912120 (= e!4161424 e!4161422)))

(declare-fun c!1283867 () Bool)

(assert (=> b!6912120 (= c!1283867 ((_ is Nil!66524) (_2!37061 lt!2468732)))))

(declare-fun b!6912116 () Bool)

(declare-fun res!2818938 () Bool)

(assert (=> b!6912116 (=> (not res!2818938) (not e!4161421))))

(assert (=> b!6912116 (= res!2818938 (matchR!9036 r3!135 (_2!37061 (get!23287 lt!2468796))))))

(declare-fun d!2163499 () Bool)

(assert (=> d!2163499 e!4161423))

(declare-fun res!2818941 () Bool)

(assert (=> d!2163499 (=> res!2818941 e!4161423)))

(assert (=> d!2163499 (= res!2818941 e!4161421)))

(declare-fun res!2818939 () Bool)

(assert (=> d!2163499 (=> (not res!2818939) (not e!4161421))))

(assert (=> d!2163499 (= res!2818939 (isDefined!13373 lt!2468796))))

(assert (=> d!2163499 (= lt!2468796 e!4161424)))

(declare-fun c!1283866 () Bool)

(assert (=> d!2163499 (= c!1283866 e!4161425)))

(declare-fun res!2818940 () Bool)

(assert (=> d!2163499 (=> (not res!2818940) (not e!4161425))))

(assert (=> d!2163499 (= res!2818940 (matchR!9036 r2!6280 Nil!66524))))

(assert (=> d!2163499 (validRegex!8599 r2!6280)))

(assert (=> d!2163499 (= (findConcatSeparation!3084 r2!6280 r3!135 Nil!66524 (_2!37061 lt!2468732) (_2!37061 lt!2468732)) lt!2468796)))

(assert (= (and d!2163499 res!2818940) b!6912118))

(assert (= (and d!2163499 c!1283866) b!6912112))

(assert (= (and d!2163499 (not c!1283866)) b!6912120))

(assert (= (and b!6912120 c!1283867) b!6912117))

(assert (= (and b!6912120 (not c!1283867)) b!6912115))

(assert (= (and d!2163499 res!2818939) b!6912114))

(assert (= (and b!6912114 res!2818937) b!6912116))

(assert (= (and b!6912116 res!2818938) b!6912113))

(assert (= (and d!2163499 (not res!2818941)) b!6912119))

(declare-fun m!7626244 () Bool)

(assert (=> b!6912115 m!7626244))

(assert (=> b!6912115 m!7626244))

(declare-fun m!7626246 () Bool)

(assert (=> b!6912115 m!7626246))

(declare-fun m!7626248 () Bool)

(assert (=> b!6912115 m!7626248))

(assert (=> b!6912115 m!7626244))

(declare-fun m!7626250 () Bool)

(assert (=> b!6912115 m!7626250))

(declare-fun m!7626252 () Bool)

(assert (=> b!6912114 m!7626252))

(declare-fun m!7626254 () Bool)

(assert (=> b!6912114 m!7626254))

(declare-fun m!7626256 () Bool)

(assert (=> d!2163499 m!7626256))

(declare-fun m!7626258 () Bool)

(assert (=> d!2163499 m!7626258))

(assert (=> d!2163499 m!7625988))

(declare-fun m!7626260 () Bool)

(assert (=> b!6912118 m!7626260))

(assert (=> b!6912119 m!7626256))

(assert (=> b!6912113 m!7626252))

(declare-fun m!7626264 () Bool)

(assert (=> b!6912113 m!7626264))

(assert (=> b!6912116 m!7626252))

(declare-fun m!7626270 () Bool)

(assert (=> b!6912116 m!7626270))

(assert (=> b!6911757 d!2163499))

(declare-fun d!2163519 () Bool)

(assert (=> d!2163519 (= (Exists!3899 lambda!392800) (choose!51479 lambda!392800))))

(declare-fun bs!1845041 () Bool)

(assert (= bs!1845041 d!2163519))

(declare-fun m!7626272 () Bool)

(assert (=> bs!1845041 m!7626272))

(assert (=> b!6911757 d!2163519))

(declare-fun d!2163523 () Bool)

(declare-fun isEmpty!38775 (Option!16670) Bool)

(assert (=> d!2163523 (= (isDefined!13373 lt!2468742) (not (isEmpty!38775 lt!2468742)))))

(declare-fun bs!1845043 () Bool)

(assert (= bs!1845043 d!2163523))

(declare-fun m!7626278 () Bool)

(assert (=> bs!1845043 m!7626278))

(assert (=> b!6911757 d!2163523))

(declare-fun bm!628412 () Bool)

(declare-fun call!628417 () Bool)

(assert (=> bm!628412 (= call!628417 (isEmpty!38773 (_1!37061 lt!2468736)))))

(declare-fun b!6912135 () Bool)

(declare-fun res!2818954 () Bool)

(declare-fun e!4161436 () Bool)

(assert (=> b!6912135 (=> res!2818954 e!4161436)))

(declare-fun e!4161439 () Bool)

(assert (=> b!6912135 (= res!2818954 e!4161439)))

(declare-fun res!2818956 () Bool)

(assert (=> b!6912135 (=> (not res!2818956) (not e!4161439))))

(declare-fun lt!2468800 () Bool)

(assert (=> b!6912135 (= res!2818956 lt!2468800)))

(declare-fun b!6912136 () Bool)

(declare-fun res!2818957 () Bool)

(declare-fun e!4161435 () Bool)

(assert (=> b!6912136 (=> res!2818957 e!4161435)))

(assert (=> b!6912136 (= res!2818957 (not (isEmpty!38773 (tail!12914 (_1!37061 lt!2468736)))))))

(declare-fun d!2163527 () Bool)

(declare-fun e!4161433 () Bool)

(assert (=> d!2163527 e!4161433))

(declare-fun c!1283872 () Bool)

(assert (=> d!2163527 (= c!1283872 ((_ is EmptyExpr!16891) r2!6280))))

(declare-fun e!4161437 () Bool)

(assert (=> d!2163527 (= lt!2468800 e!4161437)))

(declare-fun c!1283873 () Bool)

(assert (=> d!2163527 (= c!1283873 (isEmpty!38773 (_1!37061 lt!2468736)))))

(assert (=> d!2163527 (validRegex!8599 r2!6280)))

(assert (=> d!2163527 (= (matchR!9036 r2!6280 (_1!37061 lt!2468736)) lt!2468800)))

(declare-fun b!6912137 () Bool)

(declare-fun res!2818951 () Bool)

(assert (=> b!6912137 (=> res!2818951 e!4161436)))

(assert (=> b!6912137 (= res!2818951 (not ((_ is ElementMatch!16891) r2!6280)))))

(declare-fun e!4161434 () Bool)

(assert (=> b!6912137 (= e!4161434 e!4161436)))

(declare-fun b!6912138 () Bool)

(declare-fun e!4161438 () Bool)

(assert (=> b!6912138 (= e!4161436 e!4161438)))

(declare-fun res!2818952 () Bool)

(assert (=> b!6912138 (=> (not res!2818952) (not e!4161438))))

(assert (=> b!6912138 (= res!2818952 (not lt!2468800))))

(declare-fun b!6912139 () Bool)

(assert (=> b!6912139 (= e!4161437 (matchR!9036 (derivativeStep!5409 r2!6280 (head!13862 (_1!37061 lt!2468736))) (tail!12914 (_1!37061 lt!2468736))))))

(declare-fun b!6912140 () Bool)

(declare-fun res!2818953 () Bool)

(assert (=> b!6912140 (=> (not res!2818953) (not e!4161439))))

(assert (=> b!6912140 (= res!2818953 (not call!628417))))

(declare-fun b!6912141 () Bool)

(assert (=> b!6912141 (= e!4161433 e!4161434)))

(declare-fun c!1283871 () Bool)

(assert (=> b!6912141 (= c!1283871 ((_ is EmptyLang!16891) r2!6280))))

(declare-fun b!6912142 () Bool)

(assert (=> b!6912142 (= e!4161434 (not lt!2468800))))

(declare-fun b!6912143 () Bool)

(assert (=> b!6912143 (= e!4161435 (not (= (head!13862 (_1!37061 lt!2468736)) (c!1283789 r2!6280))))))

(declare-fun b!6912144 () Bool)

(assert (=> b!6912144 (= e!4161438 e!4161435)))

(declare-fun res!2818950 () Bool)

(assert (=> b!6912144 (=> res!2818950 e!4161435)))

(assert (=> b!6912144 (= res!2818950 call!628417)))

(declare-fun b!6912145 () Bool)

(assert (=> b!6912145 (= e!4161437 (nullable!6730 r2!6280))))

(declare-fun b!6912146 () Bool)

(assert (=> b!6912146 (= e!4161439 (= (head!13862 (_1!37061 lt!2468736)) (c!1283789 r2!6280)))))

(declare-fun b!6912147 () Bool)

(declare-fun res!2818955 () Bool)

(assert (=> b!6912147 (=> (not res!2818955) (not e!4161439))))

(assert (=> b!6912147 (= res!2818955 (isEmpty!38773 (tail!12914 (_1!37061 lt!2468736))))))

(declare-fun b!6912148 () Bool)

(assert (=> b!6912148 (= e!4161433 (= lt!2468800 call!628417))))

(assert (= (and d!2163527 c!1283873) b!6912145))

(assert (= (and d!2163527 (not c!1283873)) b!6912139))

(assert (= (and d!2163527 c!1283872) b!6912148))

(assert (= (and d!2163527 (not c!1283872)) b!6912141))

(assert (= (and b!6912141 c!1283871) b!6912142))

(assert (= (and b!6912141 (not c!1283871)) b!6912137))

(assert (= (and b!6912137 (not res!2818951)) b!6912135))

(assert (= (and b!6912135 res!2818956) b!6912140))

(assert (= (and b!6912140 res!2818953) b!6912147))

(assert (= (and b!6912147 res!2818955) b!6912146))

(assert (= (and b!6912135 (not res!2818954)) b!6912138))

(assert (= (and b!6912138 res!2818952) b!6912144))

(assert (= (and b!6912144 (not res!2818950)) b!6912136))

(assert (= (and b!6912136 (not res!2818957)) b!6912143))

(assert (= (or b!6912148 b!6912140 b!6912144) bm!628412))

(declare-fun m!7626286 () Bool)

(assert (=> b!6912143 m!7626286))

(declare-fun m!7626288 () Bool)

(assert (=> b!6912145 m!7626288))

(assert (=> b!6912139 m!7626286))

(assert (=> b!6912139 m!7626286))

(declare-fun m!7626290 () Bool)

(assert (=> b!6912139 m!7626290))

(declare-fun m!7626292 () Bool)

(assert (=> b!6912139 m!7626292))

(assert (=> b!6912139 m!7626290))

(assert (=> b!6912139 m!7626292))

(declare-fun m!7626294 () Bool)

(assert (=> b!6912139 m!7626294))

(declare-fun m!7626296 () Bool)

(assert (=> bm!628412 m!7626296))

(assert (=> b!6912146 m!7626286))

(assert (=> b!6912147 m!7626292))

(assert (=> b!6912147 m!7626292))

(declare-fun m!7626298 () Bool)

(assert (=> b!6912147 m!7626298))

(assert (=> b!6912136 m!7626292))

(assert (=> b!6912136 m!7626292))

(assert (=> b!6912136 m!7626298))

(assert (=> d!2163527 m!7626296))

(assert (=> d!2163527 m!7625988))

(assert (=> b!6911757 d!2163527))

(declare-fun d!2163531 () Bool)

(assert (=> d!2163531 (= (matchR!9036 lt!2468746 (_2!37061 lt!2468732)) (matchRSpec!3954 lt!2468746 (_2!37061 lt!2468732)))))

(declare-fun lt!2468801 () Unit!160518)

(assert (=> d!2163531 (= lt!2468801 (choose!51478 lt!2468746 (_2!37061 lt!2468732)))))

(assert (=> d!2163531 (validRegex!8599 lt!2468746)))

(assert (=> d!2163531 (= (mainMatchTheorem!3954 lt!2468746 (_2!37061 lt!2468732)) lt!2468801)))

(declare-fun bs!1845045 () Bool)

(assert (= bs!1845045 d!2163531))

(assert (=> bs!1845045 m!7625990))

(assert (=> bs!1845045 m!7626004))

(declare-fun m!7626300 () Bool)

(assert (=> bs!1845045 m!7626300))

(assert (=> bs!1845045 m!7626168))

(assert (=> b!6911757 d!2163531))

(declare-fun d!2163533 () Bool)

(assert (=> d!2163533 (= (get!23287 lt!2468742) (v!52941 lt!2468742))))

(assert (=> b!6911757 d!2163533))

(declare-fun bs!1845052 () Bool)

(declare-fun d!2163535 () Bool)

(assert (= bs!1845052 (and d!2163535 d!2163483)))

(declare-fun lambda!392839 () Int)

(assert (=> bs!1845052 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392839 lambda!392822))))

(declare-fun bs!1845054 () Bool)

(assert (= bs!1845054 (and d!2163535 b!6911777)))

(assert (=> bs!1845054 (not (= lambda!392839 lambda!392798))))

(assert (=> bs!1845054 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392839 lambda!392797))))

(declare-fun bs!1845057 () Bool)

(assert (= bs!1845057 (and d!2163535 b!6912014)))

(assert (=> bs!1845057 (not (= lambda!392839 lambda!392825))))

(declare-fun bs!1845058 () Bool)

(assert (= bs!1845058 (and d!2163535 d!2163471)))

(assert (=> bs!1845058 (not (= lambda!392839 lambda!392806))))

(declare-fun bs!1845059 () Bool)

(assert (= bs!1845059 (and d!2163535 b!6912013)))

(assert (=> bs!1845059 (not (= lambda!392839 lambda!392828))))

(declare-fun bs!1845060 () Bool)

(assert (= bs!1845060 (and d!2163535 b!6911899)))

(assert (=> bs!1845060 (not (= lambda!392839 lambda!392815))))

(declare-fun bs!1845061 () Bool)

(assert (= bs!1845061 (and d!2163535 d!2163497)))

(assert (=> bs!1845061 (= lambda!392839 lambda!392831)))

(declare-fun bs!1845062 () Bool)

(assert (= bs!1845062 (and d!2163535 b!6911900)))

(assert (=> bs!1845062 (not (= lambda!392839 lambda!392814))))

(assert (=> bs!1845058 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392839 lambda!392805))))

(declare-fun bs!1845063 () Bool)

(assert (= bs!1845063 (and d!2163535 b!6911757)))

(assert (=> bs!1845063 (not (= lambda!392839 lambda!392800))))

(assert (=> bs!1845063 (= lambda!392839 lambda!392799)))

(assert (=> d!2163535 true))

(assert (=> d!2163535 true))

(assert (=> d!2163535 true))

(declare-fun lambda!392841 () Int)

(assert (=> bs!1845052 (not (= lambda!392841 lambda!392822))))

(assert (=> bs!1845054 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392841 lambda!392798))))

(assert (=> bs!1845054 (not (= lambda!392841 lambda!392797))))

(assert (=> bs!1845057 (not (= lambda!392841 lambda!392825))))

(assert (=> bs!1845058 (= (and (= (_2!37061 lt!2468732) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468746)) (= lambda!392841 lambda!392806))))

(assert (=> bs!1845059 (= (and (= r2!6280 (regOne!34294 lt!2468746)) (= r3!135 (regTwo!34294 lt!2468746))) (= lambda!392841 lambda!392828))))

(assert (=> bs!1845060 (= (and (= (_2!37061 lt!2468732) (_1!37061 lt!2468732)) (= r2!6280 (regOne!34294 r1!6342)) (= r3!135 (regTwo!34294 r1!6342))) (= lambda!392841 lambda!392815))))

(declare-fun bs!1845075 () Bool)

(assert (= bs!1845075 d!2163535))

(assert (=> bs!1845075 (not (= lambda!392841 lambda!392839))))

(assert (=> bs!1845061 (not (= lambda!392841 lambda!392831))))

(assert (=> bs!1845062 (not (= lambda!392841 lambda!392814))))

(assert (=> bs!1845058 (not (= lambda!392841 lambda!392805))))

(assert (=> bs!1845063 (= lambda!392841 lambda!392800)))

(assert (=> bs!1845063 (not (= lambda!392841 lambda!392799))))

(assert (=> d!2163535 true))

(assert (=> d!2163535 true))

(assert (=> d!2163535 true))

(assert (=> d!2163535 (= (Exists!3899 lambda!392839) (Exists!3899 lambda!392841))))

(declare-fun lt!2468802 () Unit!160518)

(assert (=> d!2163535 (= lt!2468802 (choose!51480 r2!6280 r3!135 (_2!37061 lt!2468732)))))

(assert (=> d!2163535 (validRegex!8599 r2!6280)))

(assert (=> d!2163535 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2372 r2!6280 r3!135 (_2!37061 lt!2468732)) lt!2468802)))

(declare-fun m!7626304 () Bool)

(assert (=> bs!1845075 m!7626304))

(declare-fun m!7626308 () Bool)

(assert (=> bs!1845075 m!7626308))

(declare-fun m!7626312 () Bool)

(assert (=> bs!1845075 m!7626312))

(assert (=> bs!1845075 m!7625988))

(assert (=> b!6911757 d!2163535))

(declare-fun b!6912201 () Bool)

(declare-fun e!4161477 () Bool)

(declare-fun e!4161480 () Bool)

(assert (=> b!6912201 (= e!4161477 e!4161480)))

(declare-fun res!2818981 () Bool)

(assert (=> b!6912201 (= res!2818981 (not (nullable!6730 (reg!17220 r2!6280))))))

(assert (=> b!6912201 (=> (not res!2818981) (not e!4161480))))

(declare-fun b!6912202 () Bool)

(declare-fun e!4161478 () Bool)

(declare-fun e!4161476 () Bool)

(assert (=> b!6912202 (= e!4161478 e!4161476)))

(declare-fun res!2818984 () Bool)

(assert (=> b!6912202 (=> (not res!2818984) (not e!4161476))))

(declare-fun call!628430 () Bool)

(assert (=> b!6912202 (= res!2818984 call!628430)))

(declare-fun b!6912203 () Bool)

(declare-fun res!2818983 () Bool)

(declare-fun e!4161474 () Bool)

(assert (=> b!6912203 (=> (not res!2818983) (not e!4161474))))

(declare-fun call!628429 () Bool)

(assert (=> b!6912203 (= res!2818983 call!628429)))

(declare-fun e!4161475 () Bool)

(assert (=> b!6912203 (= e!4161475 e!4161474)))

(declare-fun bm!628424 () Bool)

(declare-fun c!1283890 () Bool)

(assert (=> bm!628424 (= call!628429 (validRegex!8599 (ite c!1283890 (regOne!34295 r2!6280) (regTwo!34294 r2!6280))))))

(declare-fun b!6912204 () Bool)

(assert (=> b!6912204 (= e!4161476 call!628429)))

(declare-fun b!6912205 () Bool)

(declare-fun call!628428 () Bool)

(assert (=> b!6912205 (= e!4161480 call!628428)))

(declare-fun b!6912206 () Bool)

(declare-fun res!2818980 () Bool)

(assert (=> b!6912206 (=> res!2818980 e!4161478)))

(assert (=> b!6912206 (= res!2818980 (not ((_ is Concat!25736) r2!6280)))))

(assert (=> b!6912206 (= e!4161475 e!4161478)))

(declare-fun b!6912207 () Bool)

(declare-fun e!4161479 () Bool)

(assert (=> b!6912207 (= e!4161479 e!4161477)))

(declare-fun c!1283889 () Bool)

(assert (=> b!6912207 (= c!1283889 ((_ is Star!16891) r2!6280))))

(declare-fun b!6912208 () Bool)

(assert (=> b!6912208 (= e!4161477 e!4161475)))

(assert (=> b!6912208 (= c!1283890 ((_ is Union!16891) r2!6280))))

(declare-fun bm!628425 () Bool)

(assert (=> bm!628425 (= call!628430 call!628428)))

(declare-fun b!6912209 () Bool)

(assert (=> b!6912209 (= e!4161474 call!628430)))

(declare-fun bm!628423 () Bool)

(assert (=> bm!628423 (= call!628428 (validRegex!8599 (ite c!1283889 (reg!17220 r2!6280) (ite c!1283890 (regTwo!34295 r2!6280) (regOne!34294 r2!6280)))))))

(declare-fun d!2163537 () Bool)

(declare-fun res!2818982 () Bool)

(assert (=> d!2163537 (=> res!2818982 e!4161479)))

(assert (=> d!2163537 (= res!2818982 ((_ is ElementMatch!16891) r2!6280))))

(assert (=> d!2163537 (= (validRegex!8599 r2!6280) e!4161479)))

(assert (= (and d!2163537 (not res!2818982)) b!6912207))

(assert (= (and b!6912207 c!1283889) b!6912201))

(assert (= (and b!6912207 (not c!1283889)) b!6912208))

(assert (= (and b!6912201 res!2818981) b!6912205))

(assert (= (and b!6912208 c!1283890) b!6912203))

(assert (= (and b!6912208 (not c!1283890)) b!6912206))

(assert (= (and b!6912203 res!2818983) b!6912209))

(assert (= (and b!6912206 (not res!2818980)) b!6912202))

(assert (= (and b!6912202 res!2818984) b!6912204))

(assert (= (or b!6912203 b!6912204) bm!628424))

(assert (= (or b!6912209 b!6912202) bm!628425))

(assert (= (or b!6912205 bm!628425) bm!628423))

(declare-fun m!7626330 () Bool)

(assert (=> b!6912201 m!7626330))

(declare-fun m!7626332 () Bool)

(assert (=> bm!628424 m!7626332))

(declare-fun m!7626334 () Bool)

(assert (=> bm!628423 m!7626334))

(assert (=> b!6911774 d!2163537))

(declare-fun bm!628426 () Bool)

(declare-fun call!628431 () Bool)

(assert (=> bm!628426 (= call!628431 (isEmpty!38773 (_2!37061 lt!2468736)))))

(declare-fun b!6912210 () Bool)

(declare-fun res!2818989 () Bool)

(declare-fun e!4161484 () Bool)

(assert (=> b!6912210 (=> res!2818989 e!4161484)))

(declare-fun e!4161487 () Bool)

(assert (=> b!6912210 (= res!2818989 e!4161487)))

(declare-fun res!2818991 () Bool)

(assert (=> b!6912210 (=> (not res!2818991) (not e!4161487))))

(declare-fun lt!2468807 () Bool)

(assert (=> b!6912210 (= res!2818991 lt!2468807)))

(declare-fun b!6912211 () Bool)

(declare-fun res!2818992 () Bool)

(declare-fun e!4161483 () Bool)

(assert (=> b!6912211 (=> res!2818992 e!4161483)))

(assert (=> b!6912211 (= res!2818992 (not (isEmpty!38773 (tail!12914 (_2!37061 lt!2468736)))))))

(declare-fun d!2163545 () Bool)

(declare-fun e!4161481 () Bool)

(assert (=> d!2163545 e!4161481))

(declare-fun c!1283892 () Bool)

(assert (=> d!2163545 (= c!1283892 ((_ is EmptyExpr!16891) r3!135))))

(declare-fun e!4161485 () Bool)

(assert (=> d!2163545 (= lt!2468807 e!4161485)))

(declare-fun c!1283893 () Bool)

(assert (=> d!2163545 (= c!1283893 (isEmpty!38773 (_2!37061 lt!2468736)))))

(assert (=> d!2163545 (validRegex!8599 r3!135)))

(assert (=> d!2163545 (= (matchR!9036 r3!135 (_2!37061 lt!2468736)) lt!2468807)))

(declare-fun b!6912212 () Bool)

(declare-fun res!2818986 () Bool)

(assert (=> b!6912212 (=> res!2818986 e!4161484)))

(assert (=> b!6912212 (= res!2818986 (not ((_ is ElementMatch!16891) r3!135)))))

(declare-fun e!4161482 () Bool)

(assert (=> b!6912212 (= e!4161482 e!4161484)))

(declare-fun b!6912213 () Bool)

(declare-fun e!4161486 () Bool)

(assert (=> b!6912213 (= e!4161484 e!4161486)))

(declare-fun res!2818987 () Bool)

(assert (=> b!6912213 (=> (not res!2818987) (not e!4161486))))

(assert (=> b!6912213 (= res!2818987 (not lt!2468807))))

(declare-fun b!6912214 () Bool)

(assert (=> b!6912214 (= e!4161485 (matchR!9036 (derivativeStep!5409 r3!135 (head!13862 (_2!37061 lt!2468736))) (tail!12914 (_2!37061 lt!2468736))))))

(declare-fun b!6912215 () Bool)

(declare-fun res!2818988 () Bool)

(assert (=> b!6912215 (=> (not res!2818988) (not e!4161487))))

(assert (=> b!6912215 (= res!2818988 (not call!628431))))

(declare-fun b!6912216 () Bool)

(assert (=> b!6912216 (= e!4161481 e!4161482)))

(declare-fun c!1283891 () Bool)

(assert (=> b!6912216 (= c!1283891 ((_ is EmptyLang!16891) r3!135))))

(declare-fun b!6912217 () Bool)

(assert (=> b!6912217 (= e!4161482 (not lt!2468807))))

(declare-fun b!6912218 () Bool)

(assert (=> b!6912218 (= e!4161483 (not (= (head!13862 (_2!37061 lt!2468736)) (c!1283789 r3!135))))))

(declare-fun b!6912219 () Bool)

(assert (=> b!6912219 (= e!4161486 e!4161483)))

(declare-fun res!2818985 () Bool)

(assert (=> b!6912219 (=> res!2818985 e!4161483)))

(assert (=> b!6912219 (= res!2818985 call!628431)))

(declare-fun b!6912220 () Bool)

(assert (=> b!6912220 (= e!4161485 (nullable!6730 r3!135))))

(declare-fun b!6912221 () Bool)

(assert (=> b!6912221 (= e!4161487 (= (head!13862 (_2!37061 lt!2468736)) (c!1283789 r3!135)))))

(declare-fun b!6912222 () Bool)

(declare-fun res!2818990 () Bool)

(assert (=> b!6912222 (=> (not res!2818990) (not e!4161487))))

(assert (=> b!6912222 (= res!2818990 (isEmpty!38773 (tail!12914 (_2!37061 lt!2468736))))))

(declare-fun b!6912223 () Bool)

(assert (=> b!6912223 (= e!4161481 (= lt!2468807 call!628431))))

(assert (= (and d!2163545 c!1283893) b!6912220))

(assert (= (and d!2163545 (not c!1283893)) b!6912214))

(assert (= (and d!2163545 c!1283892) b!6912223))

(assert (= (and d!2163545 (not c!1283892)) b!6912216))

(assert (= (and b!6912216 c!1283891) b!6912217))

(assert (= (and b!6912216 (not c!1283891)) b!6912212))

(assert (= (and b!6912212 (not res!2818986)) b!6912210))

(assert (= (and b!6912210 res!2818991) b!6912215))

(assert (= (and b!6912215 res!2818988) b!6912222))

(assert (= (and b!6912222 res!2818990) b!6912221))

(assert (= (and b!6912210 (not res!2818989)) b!6912213))

(assert (= (and b!6912213 res!2818987) b!6912219))

(assert (= (and b!6912219 (not res!2818985)) b!6912211))

(assert (= (and b!6912211 (not res!2818992)) b!6912218))

(assert (= (or b!6912223 b!6912215 b!6912219) bm!628426))

(declare-fun m!7626336 () Bool)

(assert (=> b!6912218 m!7626336))

(declare-fun m!7626338 () Bool)

(assert (=> b!6912220 m!7626338))

(assert (=> b!6912214 m!7626336))

(assert (=> b!6912214 m!7626336))

(declare-fun m!7626340 () Bool)

(assert (=> b!6912214 m!7626340))

(declare-fun m!7626342 () Bool)

(assert (=> b!6912214 m!7626342))

(assert (=> b!6912214 m!7626340))

(assert (=> b!6912214 m!7626342))

(declare-fun m!7626344 () Bool)

(assert (=> b!6912214 m!7626344))

(declare-fun m!7626346 () Bool)

(assert (=> bm!628426 m!7626346))

(assert (=> b!6912221 m!7626336))

(assert (=> b!6912222 m!7626342))

(assert (=> b!6912222 m!7626342))

(declare-fun m!7626348 () Bool)

(assert (=> b!6912222 m!7626348))

(assert (=> b!6912211 m!7626342))

(assert (=> b!6912211 m!7626342))

(assert (=> b!6912211 m!7626348))

(assert (=> d!2163545 m!7626346))

(assert (=> d!2163545 m!7625998))

(assert (=> b!6911769 d!2163545))

(declare-fun bs!1845089 () Bool)

(declare-fun b!6912227 () Bool)

(assert (= bs!1845089 (and b!6912227 d!2163483)))

(declare-fun lambda!392843 () Int)

(assert (=> bs!1845089 (not (= lambda!392843 lambda!392822))))

(declare-fun bs!1845090 () Bool)

(assert (= bs!1845090 (and b!6912227 b!6911777)))

(assert (=> bs!1845090 (not (= lambda!392843 lambda!392798))))

(assert (=> bs!1845090 (not (= lambda!392843 lambda!392797))))

(declare-fun bs!1845093 () Bool)

(assert (= bs!1845093 (and b!6912227 b!6912014)))

(assert (=> bs!1845093 (= (and (= (_1!37061 lt!2468736) (_2!37061 lt!2468732)) (= (reg!17220 r2!6280) (reg!17220 lt!2468746)) (= r2!6280 lt!2468746)) (= lambda!392843 lambda!392825))))

(declare-fun bs!1845095 () Bool)

(assert (= bs!1845095 (and b!6912227 d!2163471)))

(assert (=> bs!1845095 (not (= lambda!392843 lambda!392806))))

(declare-fun bs!1845097 () Bool)

(assert (= bs!1845097 (and b!6912227 b!6912013)))

(assert (=> bs!1845097 (not (= lambda!392843 lambda!392828))))

(declare-fun bs!1845099 () Bool)

(assert (= bs!1845099 (and b!6912227 b!6911899)))

(assert (=> bs!1845099 (not (= lambda!392843 lambda!392815))))

(declare-fun bs!1845101 () Bool)

(assert (= bs!1845101 (and b!6912227 d!2163535)))

(assert (=> bs!1845101 (not (= lambda!392843 lambda!392839))))

(declare-fun bs!1845103 () Bool)

(assert (= bs!1845103 (and b!6912227 d!2163497)))

(assert (=> bs!1845103 (not (= lambda!392843 lambda!392831))))

(assert (=> bs!1845101 (not (= lambda!392843 lambda!392841))))

(declare-fun bs!1845106 () Bool)

(assert (= bs!1845106 (and b!6912227 b!6911900)))

(assert (=> bs!1845106 (= (and (= (_1!37061 lt!2468736) (_1!37061 lt!2468732)) (= (reg!17220 r2!6280) (reg!17220 r1!6342)) (= r2!6280 r1!6342)) (= lambda!392843 lambda!392814))))

(assert (=> bs!1845095 (not (= lambda!392843 lambda!392805))))

(declare-fun bs!1845109 () Bool)

(assert (= bs!1845109 (and b!6912227 b!6911757)))

(assert (=> bs!1845109 (not (= lambda!392843 lambda!392800))))

(assert (=> bs!1845109 (not (= lambda!392843 lambda!392799))))

(assert (=> b!6912227 true))

(assert (=> b!6912227 true))

(declare-fun bs!1845112 () Bool)

(declare-fun b!6912226 () Bool)

(assert (= bs!1845112 (and b!6912226 d!2163483)))

(declare-fun lambda!392845 () Int)

(assert (=> bs!1845112 (not (= lambda!392845 lambda!392822))))

(declare-fun bs!1845113 () Bool)

(assert (= bs!1845113 (and b!6912226 b!6911777)))

(assert (=> bs!1845113 (= (and (= (_1!37061 lt!2468736) s!14361) (= (regOne!34294 r2!6280) r1!6342) (= (regTwo!34294 r2!6280) lt!2468746)) (= lambda!392845 lambda!392798))))

(assert (=> bs!1845113 (not (= lambda!392845 lambda!392797))))

(declare-fun bs!1845114 () Bool)

(assert (= bs!1845114 (and b!6912226 b!6912014)))

(assert (=> bs!1845114 (not (= lambda!392845 lambda!392825))))

(declare-fun bs!1845115 () Bool)

(assert (= bs!1845115 (and b!6912226 b!6912227)))

(assert (=> bs!1845115 (not (= lambda!392845 lambda!392843))))

(declare-fun bs!1845116 () Bool)

(assert (= bs!1845116 (and b!6912226 d!2163471)))

(assert (=> bs!1845116 (= (and (= (_1!37061 lt!2468736) s!14361) (= (regOne!34294 r2!6280) r1!6342) (= (regTwo!34294 r2!6280) lt!2468746)) (= lambda!392845 lambda!392806))))

(declare-fun bs!1845118 () Bool)

(assert (= bs!1845118 (and b!6912226 b!6912013)))

(assert (=> bs!1845118 (= (and (= (_1!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r2!6280) (regOne!34294 lt!2468746)) (= (regTwo!34294 r2!6280) (regTwo!34294 lt!2468746))) (= lambda!392845 lambda!392828))))

(declare-fun bs!1845119 () Bool)

(assert (= bs!1845119 (and b!6912226 b!6911899)))

(assert (=> bs!1845119 (= (and (= (_1!37061 lt!2468736) (_1!37061 lt!2468732)) (= (regOne!34294 r2!6280) (regOne!34294 r1!6342)) (= (regTwo!34294 r2!6280) (regTwo!34294 r1!6342))) (= lambda!392845 lambda!392815))))

(declare-fun bs!1845120 () Bool)

(assert (= bs!1845120 (and b!6912226 d!2163535)))

(assert (=> bs!1845120 (not (= lambda!392845 lambda!392839))))

(declare-fun bs!1845121 () Bool)

(assert (= bs!1845121 (and b!6912226 d!2163497)))

(assert (=> bs!1845121 (not (= lambda!392845 lambda!392831))))

(assert (=> bs!1845120 (= (and (= (_1!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r2!6280) r2!6280) (= (regTwo!34294 r2!6280) r3!135)) (= lambda!392845 lambda!392841))))

(declare-fun bs!1845122 () Bool)

(assert (= bs!1845122 (and b!6912226 b!6911900)))

(assert (=> bs!1845122 (not (= lambda!392845 lambda!392814))))

(assert (=> bs!1845116 (not (= lambda!392845 lambda!392805))))

(declare-fun bs!1845123 () Bool)

(assert (= bs!1845123 (and b!6912226 b!6911757)))

(assert (=> bs!1845123 (= (and (= (_1!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r2!6280) r2!6280) (= (regTwo!34294 r2!6280) r3!135)) (= lambda!392845 lambda!392800))))

(assert (=> bs!1845123 (not (= lambda!392845 lambda!392799))))

(assert (=> b!6912226 true))

(assert (=> b!6912226 true))

(declare-fun b!6912224 () Bool)

(declare-fun e!4161494 () Bool)

(declare-fun call!628433 () Bool)

(assert (=> b!6912224 (= e!4161494 call!628433)))

(declare-fun b!6912225 () Bool)

(declare-fun res!2818993 () Bool)

(declare-fun e!4161491 () Bool)

(assert (=> b!6912225 (=> res!2818993 e!4161491)))

(assert (=> b!6912225 (= res!2818993 call!628433)))

(declare-fun e!4161490 () Bool)

(assert (=> b!6912225 (= e!4161490 e!4161491)))

(declare-fun bm!628427 () Bool)

(assert (=> bm!628427 (= call!628433 (isEmpty!38773 (_1!37061 lt!2468736)))))

(declare-fun call!628432 () Bool)

(assert (=> b!6912226 (= e!4161490 call!628432)))

(assert (=> b!6912227 (= e!4161491 call!628432)))

(declare-fun b!6912228 () Bool)

(declare-fun c!1283894 () Bool)

(assert (=> b!6912228 (= c!1283894 ((_ is Union!16891) r2!6280))))

(declare-fun e!4161492 () Bool)

(declare-fun e!4161489 () Bool)

(assert (=> b!6912228 (= e!4161492 e!4161489)))

(declare-fun c!1283895 () Bool)

(declare-fun bm!628428 () Bool)

(assert (=> bm!628428 (= call!628432 (Exists!3899 (ite c!1283895 lambda!392843 lambda!392845)))))

(declare-fun b!6912229 () Bool)

(declare-fun c!1283897 () Bool)

(assert (=> b!6912229 (= c!1283897 ((_ is ElementMatch!16891) r2!6280))))

(declare-fun e!4161493 () Bool)

(assert (=> b!6912229 (= e!4161493 e!4161492)))

(declare-fun d!2163547 () Bool)

(declare-fun c!1283896 () Bool)

(assert (=> d!2163547 (= c!1283896 ((_ is EmptyExpr!16891) r2!6280))))

(assert (=> d!2163547 (= (matchRSpec!3954 r2!6280 (_1!37061 lt!2468736)) e!4161494)))

(declare-fun b!6912230 () Bool)

(assert (=> b!6912230 (= e!4161492 (= (_1!37061 lt!2468736) (Cons!66524 (c!1283789 r2!6280) Nil!66524)))))

(declare-fun b!6912231 () Bool)

(declare-fun e!4161488 () Bool)

(assert (=> b!6912231 (= e!4161489 e!4161488)))

(declare-fun res!2818994 () Bool)

(assert (=> b!6912231 (= res!2818994 (matchRSpec!3954 (regOne!34295 r2!6280) (_1!37061 lt!2468736)))))

(assert (=> b!6912231 (=> res!2818994 e!4161488)))

(declare-fun b!6912232 () Bool)

(assert (=> b!6912232 (= e!4161489 e!4161490)))

(assert (=> b!6912232 (= c!1283895 ((_ is Star!16891) r2!6280))))

(declare-fun b!6912233 () Bool)

(assert (=> b!6912233 (= e!4161488 (matchRSpec!3954 (regTwo!34295 r2!6280) (_1!37061 lt!2468736)))))

(declare-fun b!6912234 () Bool)

(assert (=> b!6912234 (= e!4161494 e!4161493)))

(declare-fun res!2818995 () Bool)

(assert (=> b!6912234 (= res!2818995 (not ((_ is EmptyLang!16891) r2!6280)))))

(assert (=> b!6912234 (=> (not res!2818995) (not e!4161493))))

(assert (= (and d!2163547 c!1283896) b!6912224))

(assert (= (and d!2163547 (not c!1283896)) b!6912234))

(assert (= (and b!6912234 res!2818995) b!6912229))

(assert (= (and b!6912229 c!1283897) b!6912230))

(assert (= (and b!6912229 (not c!1283897)) b!6912228))

(assert (= (and b!6912228 c!1283894) b!6912231))

(assert (= (and b!6912228 (not c!1283894)) b!6912232))

(assert (= (and b!6912231 (not res!2818994)) b!6912233))

(assert (= (and b!6912232 c!1283895) b!6912225))

(assert (= (and b!6912232 (not c!1283895)) b!6912226))

(assert (= (and b!6912225 (not res!2818993)) b!6912227))

(assert (= (or b!6912227 b!6912226) bm!628428))

(assert (= (or b!6912224 b!6912225) bm!628427))

(assert (=> bm!628427 m!7626296))

(declare-fun m!7626372 () Bool)

(assert (=> bm!628428 m!7626372))

(declare-fun m!7626374 () Bool)

(assert (=> b!6912231 m!7626374))

(declare-fun m!7626376 () Bool)

(assert (=> b!6912233 m!7626376))

(assert (=> b!6911770 d!2163547))

(declare-fun d!2163555 () Bool)

(assert (=> d!2163555 (= (matchR!9036 r2!6280 (_1!37061 lt!2468736)) (matchRSpec!3954 r2!6280 (_1!37061 lt!2468736)))))

(declare-fun lt!2468810 () Unit!160518)

(assert (=> d!2163555 (= lt!2468810 (choose!51478 r2!6280 (_1!37061 lt!2468736)))))

(assert (=> d!2163555 (validRegex!8599 r2!6280)))

(assert (=> d!2163555 (= (mainMatchTheorem!3954 r2!6280 (_1!37061 lt!2468736)) lt!2468810)))

(declare-fun bs!1845124 () Bool)

(assert (= bs!1845124 d!2163555))

(assert (=> bs!1845124 m!7626012))

(assert (=> bs!1845124 m!7626030))

(declare-fun m!7626378 () Bool)

(assert (=> bs!1845124 m!7626378))

(assert (=> bs!1845124 m!7625988))

(assert (=> b!6911770 d!2163555))

(declare-fun d!2163557 () Bool)

(assert (=> d!2163557 (= (matchR!9036 r3!135 (_2!37061 lt!2468736)) (matchRSpec!3954 r3!135 (_2!37061 lt!2468736)))))

(declare-fun lt!2468811 () Unit!160518)

(assert (=> d!2163557 (= lt!2468811 (choose!51478 r3!135 (_2!37061 lt!2468736)))))

(assert (=> d!2163557 (validRegex!8599 r3!135)))

(assert (=> d!2163557 (= (mainMatchTheorem!3954 r3!135 (_2!37061 lt!2468736)) lt!2468811)))

(declare-fun bs!1845125 () Bool)

(assert (= bs!1845125 d!2163557))

(assert (=> bs!1845125 m!7625986))

(assert (=> bs!1845125 m!7626022))

(declare-fun m!7626380 () Bool)

(assert (=> bs!1845125 m!7626380))

(assert (=> bs!1845125 m!7625998))

(assert (=> b!6911770 d!2163557))

(declare-fun d!2163559 () Bool)

(declare-fun e!4161516 () Bool)

(assert (=> d!2163559 e!4161516))

(declare-fun res!2819015 () Bool)

(assert (=> d!2163559 (=> (not res!2819015) (not e!4161516))))

(declare-fun lt!2468814 () List!66648)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13068 (List!66648) (InoxSet C!34052))

(assert (=> d!2163559 (= res!2819015 (= (content!13068 lt!2468814) ((_ map or) (content!13068 (_1!37061 lt!2468736)) (content!13068 (_2!37061 lt!2468736)))))))

(declare-fun e!4161515 () List!66648)

(assert (=> d!2163559 (= lt!2468814 e!4161515)))

(declare-fun c!1283905 () Bool)

(assert (=> d!2163559 (= c!1283905 ((_ is Nil!66524) (_1!37061 lt!2468736)))))

(assert (=> d!2163559 (= (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736)) lt!2468814)))

(declare-fun b!6912268 () Bool)

(assert (=> b!6912268 (= e!4161516 (or (not (= (_2!37061 lt!2468736) Nil!66524)) (= lt!2468814 (_1!37061 lt!2468736))))))

(declare-fun b!6912267 () Bool)

(declare-fun res!2819012 () Bool)

(assert (=> b!6912267 (=> (not res!2819012) (not e!4161516))))

(declare-fun size!40765 (List!66648) Int)

(assert (=> b!6912267 (= res!2819012 (= (size!40765 lt!2468814) (+ (size!40765 (_1!37061 lt!2468736)) (size!40765 (_2!37061 lt!2468736)))))))

(declare-fun b!6912266 () Bool)

(assert (=> b!6912266 (= e!4161515 (Cons!66524 (h!72972 (_1!37061 lt!2468736)) (++!14944 (t!380391 (_1!37061 lt!2468736)) (_2!37061 lt!2468736))))))

(declare-fun b!6912265 () Bool)

(assert (=> b!6912265 (= e!4161515 (_2!37061 lt!2468736))))

(assert (= (and d!2163559 c!1283905) b!6912265))

(assert (= (and d!2163559 (not c!1283905)) b!6912266))

(assert (= (and d!2163559 res!2819015) b!6912267))

(assert (= (and b!6912267 res!2819012) b!6912268))

(declare-fun m!7626382 () Bool)

(assert (=> d!2163559 m!7626382))

(declare-fun m!7626384 () Bool)

(assert (=> d!2163559 m!7626384))

(declare-fun m!7626386 () Bool)

(assert (=> d!2163559 m!7626386))

(declare-fun m!7626388 () Bool)

(assert (=> b!6912267 m!7626388))

(declare-fun m!7626390 () Bool)

(assert (=> b!6912267 m!7626390))

(declare-fun m!7626392 () Bool)

(assert (=> b!6912267 m!7626392))

(declare-fun m!7626394 () Bool)

(assert (=> b!6912266 m!7626394))

(assert (=> b!6911770 d!2163559))

(declare-fun bs!1845126 () Bool)

(declare-fun b!6912281 () Bool)

(assert (= bs!1845126 (and b!6912281 d!2163483)))

(declare-fun lambda!392846 () Int)

(assert (=> bs!1845126 (not (= lambda!392846 lambda!392822))))

(declare-fun bs!1845128 () Bool)

(assert (= bs!1845128 (and b!6912281 b!6911777)))

(assert (=> bs!1845128 (not (= lambda!392846 lambda!392797))))

(declare-fun bs!1845129 () Bool)

(assert (= bs!1845129 (and b!6912281 b!6912014)))

(assert (=> bs!1845129 (= (and (= (_2!37061 lt!2468736) (_2!37061 lt!2468732)) (= (reg!17220 r3!135) (reg!17220 lt!2468746)) (= r3!135 lt!2468746)) (= lambda!392846 lambda!392825))))

(declare-fun bs!1845130 () Bool)

(assert (= bs!1845130 (and b!6912281 b!6912227)))

(assert (=> bs!1845130 (= (and (= (_2!37061 lt!2468736) (_1!37061 lt!2468736)) (= (reg!17220 r3!135) (reg!17220 r2!6280)) (= r3!135 r2!6280)) (= lambda!392846 lambda!392843))))

(declare-fun bs!1845131 () Bool)

(assert (= bs!1845131 (and b!6912281 d!2163471)))

(assert (=> bs!1845131 (not (= lambda!392846 lambda!392806))))

(declare-fun bs!1845132 () Bool)

(assert (= bs!1845132 (and b!6912281 b!6912013)))

(assert (=> bs!1845132 (not (= lambda!392846 lambda!392828))))

(declare-fun bs!1845133 () Bool)

(assert (= bs!1845133 (and b!6912281 b!6911899)))

(assert (=> bs!1845133 (not (= lambda!392846 lambda!392815))))

(declare-fun bs!1845134 () Bool)

(assert (= bs!1845134 (and b!6912281 d!2163535)))

(assert (=> bs!1845134 (not (= lambda!392846 lambda!392839))))

(declare-fun bs!1845135 () Bool)

(assert (= bs!1845135 (and b!6912281 d!2163497)))

(assert (=> bs!1845135 (not (= lambda!392846 lambda!392831))))

(assert (=> bs!1845128 (not (= lambda!392846 lambda!392798))))

(declare-fun bs!1845136 () Bool)

(assert (= bs!1845136 (and b!6912281 b!6912226)))

(assert (=> bs!1845136 (not (= lambda!392846 lambda!392845))))

(assert (=> bs!1845134 (not (= lambda!392846 lambda!392841))))

(declare-fun bs!1845137 () Bool)

(assert (= bs!1845137 (and b!6912281 b!6911900)))

(assert (=> bs!1845137 (= (and (= (_2!37061 lt!2468736) (_1!37061 lt!2468732)) (= (reg!17220 r3!135) (reg!17220 r1!6342)) (= r3!135 r1!6342)) (= lambda!392846 lambda!392814))))

(assert (=> bs!1845131 (not (= lambda!392846 lambda!392805))))

(declare-fun bs!1845138 () Bool)

(assert (= bs!1845138 (and b!6912281 b!6911757)))

(assert (=> bs!1845138 (not (= lambda!392846 lambda!392800))))

(assert (=> bs!1845138 (not (= lambda!392846 lambda!392799))))

(assert (=> b!6912281 true))

(assert (=> b!6912281 true))

(declare-fun bs!1845140 () Bool)

(declare-fun b!6912280 () Bool)

(assert (= bs!1845140 (and b!6912280 b!6912281)))

(declare-fun lambda!392848 () Int)

(assert (=> bs!1845140 (not (= lambda!392848 lambda!392846))))

(declare-fun bs!1845142 () Bool)

(assert (= bs!1845142 (and b!6912280 d!2163483)))

(assert (=> bs!1845142 (not (= lambda!392848 lambda!392822))))

(declare-fun bs!1845144 () Bool)

(assert (= bs!1845144 (and b!6912280 b!6911777)))

(assert (=> bs!1845144 (not (= lambda!392848 lambda!392797))))

(declare-fun bs!1845146 () Bool)

(assert (= bs!1845146 (and b!6912280 b!6912014)))

(assert (=> bs!1845146 (not (= lambda!392848 lambda!392825))))

(declare-fun bs!1845148 () Bool)

(assert (= bs!1845148 (and b!6912280 b!6912227)))

(assert (=> bs!1845148 (not (= lambda!392848 lambda!392843))))

(declare-fun bs!1845150 () Bool)

(assert (= bs!1845150 (and b!6912280 d!2163471)))

(assert (=> bs!1845150 (= (and (= (_2!37061 lt!2468736) s!14361) (= (regOne!34294 r3!135) r1!6342) (= (regTwo!34294 r3!135) lt!2468746)) (= lambda!392848 lambda!392806))))

(declare-fun bs!1845152 () Bool)

(assert (= bs!1845152 (and b!6912280 b!6912013)))

(assert (=> bs!1845152 (= (and (= (_2!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r3!135) (regOne!34294 lt!2468746)) (= (regTwo!34294 r3!135) (regTwo!34294 lt!2468746))) (= lambda!392848 lambda!392828))))

(declare-fun bs!1845154 () Bool)

(assert (= bs!1845154 (and b!6912280 b!6911899)))

(assert (=> bs!1845154 (= (and (= (_2!37061 lt!2468736) (_1!37061 lt!2468732)) (= (regOne!34294 r3!135) (regOne!34294 r1!6342)) (= (regTwo!34294 r3!135) (regTwo!34294 r1!6342))) (= lambda!392848 lambda!392815))))

(declare-fun bs!1845156 () Bool)

(assert (= bs!1845156 (and b!6912280 d!2163535)))

(assert (=> bs!1845156 (not (= lambda!392848 lambda!392839))))

(declare-fun bs!1845158 () Bool)

(assert (= bs!1845158 (and b!6912280 d!2163497)))

(assert (=> bs!1845158 (not (= lambda!392848 lambda!392831))))

(assert (=> bs!1845144 (= (and (= (_2!37061 lt!2468736) s!14361) (= (regOne!34294 r3!135) r1!6342) (= (regTwo!34294 r3!135) lt!2468746)) (= lambda!392848 lambda!392798))))

(declare-fun bs!1845162 () Bool)

(assert (= bs!1845162 (and b!6912280 b!6912226)))

(assert (=> bs!1845162 (= (and (= (_2!37061 lt!2468736) (_1!37061 lt!2468736)) (= (regOne!34294 r3!135) (regOne!34294 r2!6280)) (= (regTwo!34294 r3!135) (regTwo!34294 r2!6280))) (= lambda!392848 lambda!392845))))

(assert (=> bs!1845156 (= (and (= (_2!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r3!135) r2!6280) (= (regTwo!34294 r3!135) r3!135)) (= lambda!392848 lambda!392841))))

(declare-fun bs!1845164 () Bool)

(assert (= bs!1845164 (and b!6912280 b!6911900)))

(assert (=> bs!1845164 (not (= lambda!392848 lambda!392814))))

(assert (=> bs!1845150 (not (= lambda!392848 lambda!392805))))

(declare-fun bs!1845165 () Bool)

(assert (= bs!1845165 (and b!6912280 b!6911757)))

(assert (=> bs!1845165 (= (and (= (_2!37061 lt!2468736) (_2!37061 lt!2468732)) (= (regOne!34294 r3!135) r2!6280) (= (regTwo!34294 r3!135) r3!135)) (= lambda!392848 lambda!392800))))

(assert (=> bs!1845165 (not (= lambda!392848 lambda!392799))))

(assert (=> b!6912280 true))

(assert (=> b!6912280 true))

(declare-fun b!6912278 () Bool)

(declare-fun e!4161530 () Bool)

(declare-fun call!628444 () Bool)

(assert (=> b!6912278 (= e!4161530 call!628444)))

(declare-fun b!6912279 () Bool)

(declare-fun res!2819019 () Bool)

(declare-fun e!4161527 () Bool)

(assert (=> b!6912279 (=> res!2819019 e!4161527)))

(assert (=> b!6912279 (= res!2819019 call!628444)))

(declare-fun e!4161526 () Bool)

(assert (=> b!6912279 (= e!4161526 e!4161527)))

(declare-fun bm!628438 () Bool)

(assert (=> bm!628438 (= call!628444 (isEmpty!38773 (_2!37061 lt!2468736)))))

(declare-fun call!628443 () Bool)

(assert (=> b!6912280 (= e!4161526 call!628443)))

(assert (=> b!6912281 (= e!4161527 call!628443)))

(declare-fun b!6912282 () Bool)

(declare-fun c!1283908 () Bool)

(assert (=> b!6912282 (= c!1283908 ((_ is Union!16891) r3!135))))

(declare-fun e!4161528 () Bool)

(declare-fun e!4161525 () Bool)

(assert (=> b!6912282 (= e!4161528 e!4161525)))

(declare-fun bm!628439 () Bool)

(declare-fun c!1283909 () Bool)

(assert (=> bm!628439 (= call!628443 (Exists!3899 (ite c!1283909 lambda!392846 lambda!392848)))))

(declare-fun b!6912283 () Bool)

(declare-fun c!1283911 () Bool)

(assert (=> b!6912283 (= c!1283911 ((_ is ElementMatch!16891) r3!135))))

(declare-fun e!4161529 () Bool)

(assert (=> b!6912283 (= e!4161529 e!4161528)))

(declare-fun d!2163561 () Bool)

(declare-fun c!1283910 () Bool)

(assert (=> d!2163561 (= c!1283910 ((_ is EmptyExpr!16891) r3!135))))

(assert (=> d!2163561 (= (matchRSpec!3954 r3!135 (_2!37061 lt!2468736)) e!4161530)))

(declare-fun b!6912284 () Bool)

(assert (=> b!6912284 (= e!4161528 (= (_2!37061 lt!2468736) (Cons!66524 (c!1283789 r3!135) Nil!66524)))))

(declare-fun b!6912285 () Bool)

(declare-fun e!4161524 () Bool)

(assert (=> b!6912285 (= e!4161525 e!4161524)))

(declare-fun res!2819020 () Bool)

(assert (=> b!6912285 (= res!2819020 (matchRSpec!3954 (regOne!34295 r3!135) (_2!37061 lt!2468736)))))

(assert (=> b!6912285 (=> res!2819020 e!4161524)))

(declare-fun b!6912286 () Bool)

(assert (=> b!6912286 (= e!4161525 e!4161526)))

(assert (=> b!6912286 (= c!1283909 ((_ is Star!16891) r3!135))))

(declare-fun b!6912287 () Bool)

(assert (=> b!6912287 (= e!4161524 (matchRSpec!3954 (regTwo!34295 r3!135) (_2!37061 lt!2468736)))))

(declare-fun b!6912288 () Bool)

(assert (=> b!6912288 (= e!4161530 e!4161529)))

(declare-fun res!2819021 () Bool)

(assert (=> b!6912288 (= res!2819021 (not ((_ is EmptyLang!16891) r3!135)))))

(assert (=> b!6912288 (=> (not res!2819021) (not e!4161529))))

(assert (= (and d!2163561 c!1283910) b!6912278))

(assert (= (and d!2163561 (not c!1283910)) b!6912288))

(assert (= (and b!6912288 res!2819021) b!6912283))

(assert (= (and b!6912283 c!1283911) b!6912284))

(assert (= (and b!6912283 (not c!1283911)) b!6912282))

(assert (= (and b!6912282 c!1283908) b!6912285))

(assert (= (and b!6912282 (not c!1283908)) b!6912286))

(assert (= (and b!6912285 (not res!2819020)) b!6912287))

(assert (= (and b!6912286 c!1283909) b!6912279))

(assert (= (and b!6912286 (not c!1283909)) b!6912280))

(assert (= (and b!6912279 (not res!2819019)) b!6912281))

(assert (= (or b!6912281 b!6912280) bm!628439))

(assert (= (or b!6912278 b!6912279) bm!628438))

(assert (=> bm!628438 m!7626346))

(declare-fun m!7626438 () Bool)

(assert (=> bm!628439 m!7626438))

(declare-fun m!7626440 () Bool)

(assert (=> b!6912285 m!7626440))

(declare-fun m!7626442 () Bool)

(assert (=> b!6912287 m!7626442))

(assert (=> b!6911770 d!2163561))

(declare-fun d!2163573 () Bool)

(declare-fun e!4161544 () Bool)

(assert (=> d!2163573 e!4161544))

(declare-fun res!2819033 () Bool)

(assert (=> d!2163573 (=> (not res!2819033) (not e!4161544))))

(declare-fun lt!2468820 () List!66648)

(assert (=> d!2163573 (= res!2819033 (= (content!13068 lt!2468820) ((_ map or) (content!13068 (_1!37061 lt!2468732)) (content!13068 (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736))))))))

(declare-fun e!4161543 () List!66648)

(assert (=> d!2163573 (= lt!2468820 e!4161543)))

(declare-fun c!1283916 () Bool)

(assert (=> d!2163573 (= c!1283916 ((_ is Nil!66524) (_1!37061 lt!2468732)))))

(assert (=> d!2163573 (= (++!14944 (_1!37061 lt!2468732) (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736))) lt!2468820)))

(declare-fun b!6912310 () Bool)

(assert (=> b!6912310 (= e!4161544 (or (not (= (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736)) Nil!66524)) (= lt!2468820 (_1!37061 lt!2468732))))))

(declare-fun b!6912309 () Bool)

(declare-fun res!2819032 () Bool)

(assert (=> b!6912309 (=> (not res!2819032) (not e!4161544))))

(assert (=> b!6912309 (= res!2819032 (= (size!40765 lt!2468820) (+ (size!40765 (_1!37061 lt!2468732)) (size!40765 (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736))))))))

(declare-fun b!6912308 () Bool)

(assert (=> b!6912308 (= e!4161543 (Cons!66524 (h!72972 (_1!37061 lt!2468732)) (++!14944 (t!380391 (_1!37061 lt!2468732)) (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736)))))))

(declare-fun b!6912307 () Bool)

(assert (=> b!6912307 (= e!4161543 (++!14944 (_1!37061 lt!2468736) (_2!37061 lt!2468736)))))

(assert (= (and d!2163573 c!1283916) b!6912307))

(assert (= (and d!2163573 (not c!1283916)) b!6912308))

(assert (= (and d!2163573 res!2819033) b!6912309))

(assert (= (and b!6912309 res!2819032) b!6912310))

(declare-fun m!7626444 () Bool)

(assert (=> d!2163573 m!7626444))

(declare-fun m!7626446 () Bool)

(assert (=> d!2163573 m!7626446))

(assert (=> d!2163573 m!7626024))

(declare-fun m!7626448 () Bool)

(assert (=> d!2163573 m!7626448))

(declare-fun m!7626450 () Bool)

(assert (=> b!6912309 m!7626450))

(declare-fun m!7626452 () Bool)

(assert (=> b!6912309 m!7626452))

(assert (=> b!6912309 m!7626024))

(declare-fun m!7626454 () Bool)

(assert (=> b!6912309 m!7626454))

(assert (=> b!6912308 m!7626024))

(declare-fun m!7626456 () Bool)

(assert (=> b!6912308 m!7626456))

(assert (=> b!6911770 d!2163573))

(declare-fun b!6912311 () Bool)

(declare-fun e!4161548 () Bool)

(declare-fun e!4161551 () Bool)

(assert (=> b!6912311 (= e!4161548 e!4161551)))

(declare-fun res!2819035 () Bool)

(assert (=> b!6912311 (= res!2819035 (not (nullable!6730 (reg!17220 r1!6342))))))

(assert (=> b!6912311 (=> (not res!2819035) (not e!4161551))))

(declare-fun b!6912312 () Bool)

(declare-fun e!4161549 () Bool)

(declare-fun e!4161547 () Bool)

(assert (=> b!6912312 (= e!4161549 e!4161547)))

(declare-fun res!2819038 () Bool)

(assert (=> b!6912312 (=> (not res!2819038) (not e!4161547))))

(declare-fun call!628450 () Bool)

(assert (=> b!6912312 (= res!2819038 call!628450)))

(declare-fun b!6912313 () Bool)

(declare-fun res!2819037 () Bool)

(declare-fun e!4161545 () Bool)

(assert (=> b!6912313 (=> (not res!2819037) (not e!4161545))))

(declare-fun call!628449 () Bool)

(assert (=> b!6912313 (= res!2819037 call!628449)))

(declare-fun e!4161546 () Bool)

(assert (=> b!6912313 (= e!4161546 e!4161545)))

(declare-fun bm!628444 () Bool)

(declare-fun c!1283918 () Bool)

(assert (=> bm!628444 (= call!628449 (validRegex!8599 (ite c!1283918 (regOne!34295 r1!6342) (regTwo!34294 r1!6342))))))

(declare-fun b!6912314 () Bool)

(assert (=> b!6912314 (= e!4161547 call!628449)))

(declare-fun b!6912315 () Bool)

(declare-fun call!628448 () Bool)

(assert (=> b!6912315 (= e!4161551 call!628448)))

(declare-fun b!6912316 () Bool)

(declare-fun res!2819034 () Bool)

(assert (=> b!6912316 (=> res!2819034 e!4161549)))

(assert (=> b!6912316 (= res!2819034 (not ((_ is Concat!25736) r1!6342)))))

(assert (=> b!6912316 (= e!4161546 e!4161549)))

(declare-fun b!6912317 () Bool)

(declare-fun e!4161550 () Bool)

(assert (=> b!6912317 (= e!4161550 e!4161548)))

(declare-fun c!1283917 () Bool)

(assert (=> b!6912317 (= c!1283917 ((_ is Star!16891) r1!6342))))

(declare-fun b!6912318 () Bool)

(assert (=> b!6912318 (= e!4161548 e!4161546)))

(assert (=> b!6912318 (= c!1283918 ((_ is Union!16891) r1!6342))))

(declare-fun bm!628445 () Bool)

(assert (=> bm!628445 (= call!628450 call!628448)))

(declare-fun b!6912319 () Bool)

(assert (=> b!6912319 (= e!4161545 call!628450)))

(declare-fun bm!628443 () Bool)

(assert (=> bm!628443 (= call!628448 (validRegex!8599 (ite c!1283917 (reg!17220 r1!6342) (ite c!1283918 (regTwo!34295 r1!6342) (regOne!34294 r1!6342)))))))

(declare-fun d!2163575 () Bool)

(declare-fun res!2819036 () Bool)

(assert (=> d!2163575 (=> res!2819036 e!4161550)))

(assert (=> d!2163575 (= res!2819036 ((_ is ElementMatch!16891) r1!6342))))

(assert (=> d!2163575 (= (validRegex!8599 r1!6342) e!4161550)))

(assert (= (and d!2163575 (not res!2819036)) b!6912317))

(assert (= (and b!6912317 c!1283917) b!6912311))

(assert (= (and b!6912317 (not c!1283917)) b!6912318))

(assert (= (and b!6912311 res!2819035) b!6912315))

(assert (= (and b!6912318 c!1283918) b!6912313))

(assert (= (and b!6912318 (not c!1283918)) b!6912316))

(assert (= (and b!6912313 res!2819037) b!6912319))

(assert (= (and b!6912316 (not res!2819034)) b!6912312))

(assert (= (and b!6912312 res!2819038) b!6912314))

(assert (= (or b!6912313 b!6912314) bm!628444))

(assert (= (or b!6912319 b!6912312) bm!628445))

(assert (= (or b!6912315 bm!628445) bm!628443))

(declare-fun m!7626458 () Bool)

(assert (=> b!6912311 m!7626458))

(declare-fun m!7626460 () Bool)

(assert (=> bm!628444 m!7626460))

(declare-fun m!7626462 () Bool)

(assert (=> bm!628443 m!7626462))

(assert (=> start!665250 d!2163575))

(declare-fun b!6912320 () Bool)

(declare-fun e!4161555 () Bool)

(declare-fun e!4161558 () Bool)

(assert (=> b!6912320 (= e!4161555 e!4161558)))

(declare-fun res!2819040 () Bool)

(assert (=> b!6912320 (= res!2819040 (not (nullable!6730 (reg!17220 r3!135))))))

(assert (=> b!6912320 (=> (not res!2819040) (not e!4161558))))

(declare-fun b!6912321 () Bool)

(declare-fun e!4161556 () Bool)

(declare-fun e!4161554 () Bool)

(assert (=> b!6912321 (= e!4161556 e!4161554)))

(declare-fun res!2819043 () Bool)

(assert (=> b!6912321 (=> (not res!2819043) (not e!4161554))))

(declare-fun call!628453 () Bool)

(assert (=> b!6912321 (= res!2819043 call!628453)))

(declare-fun b!6912322 () Bool)

(declare-fun res!2819042 () Bool)

(declare-fun e!4161552 () Bool)

(assert (=> b!6912322 (=> (not res!2819042) (not e!4161552))))

(declare-fun call!628452 () Bool)

(assert (=> b!6912322 (= res!2819042 call!628452)))

(declare-fun e!4161553 () Bool)

(assert (=> b!6912322 (= e!4161553 e!4161552)))

(declare-fun bm!628447 () Bool)

(declare-fun c!1283920 () Bool)

(assert (=> bm!628447 (= call!628452 (validRegex!8599 (ite c!1283920 (regOne!34295 r3!135) (regTwo!34294 r3!135))))))

(declare-fun b!6912323 () Bool)

(assert (=> b!6912323 (= e!4161554 call!628452)))

(declare-fun b!6912324 () Bool)

(declare-fun call!628451 () Bool)

(assert (=> b!6912324 (= e!4161558 call!628451)))

(declare-fun b!6912325 () Bool)

(declare-fun res!2819039 () Bool)

(assert (=> b!6912325 (=> res!2819039 e!4161556)))

(assert (=> b!6912325 (= res!2819039 (not ((_ is Concat!25736) r3!135)))))

(assert (=> b!6912325 (= e!4161553 e!4161556)))

(declare-fun b!6912326 () Bool)

(declare-fun e!4161557 () Bool)

(assert (=> b!6912326 (= e!4161557 e!4161555)))

(declare-fun c!1283919 () Bool)

(assert (=> b!6912326 (= c!1283919 ((_ is Star!16891) r3!135))))

(declare-fun b!6912327 () Bool)

(assert (=> b!6912327 (= e!4161555 e!4161553)))

(assert (=> b!6912327 (= c!1283920 ((_ is Union!16891) r3!135))))

(declare-fun bm!628448 () Bool)

(assert (=> bm!628448 (= call!628453 call!628451)))

(declare-fun b!6912328 () Bool)

(assert (=> b!6912328 (= e!4161552 call!628453)))

(declare-fun bm!628446 () Bool)

(assert (=> bm!628446 (= call!628451 (validRegex!8599 (ite c!1283919 (reg!17220 r3!135) (ite c!1283920 (regTwo!34295 r3!135) (regOne!34294 r3!135)))))))

(declare-fun d!2163577 () Bool)

(declare-fun res!2819041 () Bool)

(assert (=> d!2163577 (=> res!2819041 e!4161557)))

(assert (=> d!2163577 (= res!2819041 ((_ is ElementMatch!16891) r3!135))))

(assert (=> d!2163577 (= (validRegex!8599 r3!135) e!4161557)))

(assert (= (and d!2163577 (not res!2819041)) b!6912326))

(assert (= (and b!6912326 c!1283919) b!6912320))

(assert (= (and b!6912326 (not c!1283919)) b!6912327))

(assert (= (and b!6912320 res!2819040) b!6912324))

(assert (= (and b!6912327 c!1283920) b!6912322))

(assert (= (and b!6912327 (not c!1283920)) b!6912325))

(assert (= (and b!6912322 res!2819042) b!6912328))

(assert (= (and b!6912325 (not res!2819039)) b!6912321))

(assert (= (and b!6912321 res!2819043) b!6912323))

(assert (= (or b!6912322 b!6912323) bm!628447))

(assert (= (or b!6912328 b!6912321) bm!628448))

(assert (= (or b!6912324 bm!628448) bm!628446))

(declare-fun m!7626464 () Bool)

(assert (=> b!6912320 m!7626464))

(declare-fun m!7626466 () Bool)

(assert (=> bm!628447 m!7626466))

(declare-fun m!7626468 () Bool)

(assert (=> bm!628446 m!7626468))

(assert (=> b!6911759 d!2163577))

(declare-fun bs!1845182 () Bool)

(declare-fun b!6912332 () Bool)

(assert (= bs!1845182 (and b!6912332 b!6912281)))

(declare-fun lambda!392851 () Int)

(assert (=> bs!1845182 (= (and (= s!14361 (_2!37061 lt!2468736)) (= (reg!17220 lt!2468741) (reg!17220 r3!135)) (= lt!2468741 r3!135)) (= lambda!392851 lambda!392846))))

(declare-fun bs!1845183 () Bool)

(assert (= bs!1845183 (and b!6912332 d!2163483)))

(assert (=> bs!1845183 (not (= lambda!392851 lambda!392822))))

(declare-fun bs!1845184 () Bool)

(assert (= bs!1845184 (and b!6912332 b!6911777)))

(assert (=> bs!1845184 (not (= lambda!392851 lambda!392797))))

(declare-fun bs!1845185 () Bool)

(assert (= bs!1845185 (and b!6912332 b!6912014)))

(assert (=> bs!1845185 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (reg!17220 lt!2468741) (reg!17220 lt!2468746)) (= lt!2468741 lt!2468746)) (= lambda!392851 lambda!392825))))

(declare-fun bs!1845186 () Bool)

(assert (= bs!1845186 (and b!6912332 b!6912227)))

(assert (=> bs!1845186 (= (and (= s!14361 (_1!37061 lt!2468736)) (= (reg!17220 lt!2468741) (reg!17220 r2!6280)) (= lt!2468741 r2!6280)) (= lambda!392851 lambda!392843))))

(declare-fun bs!1845187 () Bool)

(assert (= bs!1845187 (and b!6912332 d!2163471)))

(assert (=> bs!1845187 (not (= lambda!392851 lambda!392806))))

(declare-fun bs!1845188 () Bool)

(assert (= bs!1845188 (and b!6912332 b!6912013)))

(assert (=> bs!1845188 (not (= lambda!392851 lambda!392828))))

(declare-fun bs!1845189 () Bool)

(assert (= bs!1845189 (and b!6912332 b!6912280)))

(assert (=> bs!1845189 (not (= lambda!392851 lambda!392848))))

(declare-fun bs!1845190 () Bool)

(assert (= bs!1845190 (and b!6912332 b!6911899)))

(assert (=> bs!1845190 (not (= lambda!392851 lambda!392815))))

(declare-fun bs!1845191 () Bool)

(assert (= bs!1845191 (and b!6912332 d!2163535)))

(assert (=> bs!1845191 (not (= lambda!392851 lambda!392839))))

(declare-fun bs!1845193 () Bool)

(assert (= bs!1845193 (and b!6912332 d!2163497)))

(assert (=> bs!1845193 (not (= lambda!392851 lambda!392831))))

(assert (=> bs!1845184 (not (= lambda!392851 lambda!392798))))

(declare-fun bs!1845194 () Bool)

(assert (= bs!1845194 (and b!6912332 b!6912226)))

(assert (=> bs!1845194 (not (= lambda!392851 lambda!392845))))

(assert (=> bs!1845191 (not (= lambda!392851 lambda!392841))))

(declare-fun bs!1845195 () Bool)

(assert (= bs!1845195 (and b!6912332 b!6911900)))

(assert (=> bs!1845195 (= (and (= s!14361 (_1!37061 lt!2468732)) (= (reg!17220 lt!2468741) (reg!17220 r1!6342)) (= lt!2468741 r1!6342)) (= lambda!392851 lambda!392814))))

(assert (=> bs!1845187 (not (= lambda!392851 lambda!392805))))

(declare-fun bs!1845196 () Bool)

(assert (= bs!1845196 (and b!6912332 b!6911757)))

(assert (=> bs!1845196 (not (= lambda!392851 lambda!392800))))

(assert (=> bs!1845196 (not (= lambda!392851 lambda!392799))))

(assert (=> b!6912332 true))

(assert (=> b!6912332 true))

(declare-fun bs!1845197 () Bool)

(declare-fun b!6912331 () Bool)

(assert (= bs!1845197 (and b!6912331 b!6912281)))

(declare-fun lambda!392852 () Int)

(assert (=> bs!1845197 (not (= lambda!392852 lambda!392846))))

(declare-fun bs!1845198 () Bool)

(assert (= bs!1845198 (and b!6912331 b!6911777)))

(assert (=> bs!1845198 (not (= lambda!392852 lambda!392797))))

(declare-fun bs!1845199 () Bool)

(assert (= bs!1845199 (and b!6912331 b!6912014)))

(assert (=> bs!1845199 (not (= lambda!392852 lambda!392825))))

(declare-fun bs!1845201 () Bool)

(assert (= bs!1845201 (and b!6912331 b!6912227)))

(assert (=> bs!1845201 (not (= lambda!392852 lambda!392843))))

(declare-fun bs!1845203 () Bool)

(assert (= bs!1845203 (and b!6912331 d!2163471)))

(assert (=> bs!1845203 (= (and (= (regOne!34294 lt!2468741) r1!6342) (= (regTwo!34294 lt!2468741) lt!2468746)) (= lambda!392852 lambda!392806))))

(declare-fun bs!1845205 () Bool)

(assert (= bs!1845205 (and b!6912331 b!6912013)))

(assert (=> bs!1845205 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468741) (regOne!34294 lt!2468746)) (= (regTwo!34294 lt!2468741) (regTwo!34294 lt!2468746))) (= lambda!392852 lambda!392828))))

(declare-fun bs!1845207 () Bool)

(assert (= bs!1845207 (and b!6912331 b!6912280)))

(assert (=> bs!1845207 (= (and (= s!14361 (_2!37061 lt!2468736)) (= (regOne!34294 lt!2468741) (regOne!34294 r3!135)) (= (regTwo!34294 lt!2468741) (regTwo!34294 r3!135))) (= lambda!392852 lambda!392848))))

(declare-fun bs!1845209 () Bool)

(assert (= bs!1845209 (and b!6912331 b!6911899)))

(assert (=> bs!1845209 (= (and (= s!14361 (_1!37061 lt!2468732)) (= (regOne!34294 lt!2468741) (regOne!34294 r1!6342)) (= (regTwo!34294 lt!2468741) (regTwo!34294 r1!6342))) (= lambda!392852 lambda!392815))))

(declare-fun bs!1845211 () Bool)

(assert (= bs!1845211 (and b!6912331 d!2163535)))

(assert (=> bs!1845211 (not (= lambda!392852 lambda!392839))))

(declare-fun bs!1845213 () Bool)

(assert (= bs!1845213 (and b!6912331 d!2163497)))

(assert (=> bs!1845213 (not (= lambda!392852 lambda!392831))))

(declare-fun bs!1845215 () Bool)

(assert (= bs!1845215 (and b!6912331 d!2163483)))

(assert (=> bs!1845215 (not (= lambda!392852 lambda!392822))))

(declare-fun bs!1845217 () Bool)

(assert (= bs!1845217 (and b!6912331 b!6912332)))

(assert (=> bs!1845217 (not (= lambda!392852 lambda!392851))))

(assert (=> bs!1845198 (= (and (= (regOne!34294 lt!2468741) r1!6342) (= (regTwo!34294 lt!2468741) lt!2468746)) (= lambda!392852 lambda!392798))))

(declare-fun bs!1845220 () Bool)

(assert (= bs!1845220 (and b!6912331 b!6912226)))

(assert (=> bs!1845220 (= (and (= s!14361 (_1!37061 lt!2468736)) (= (regOne!34294 lt!2468741) (regOne!34294 r2!6280)) (= (regTwo!34294 lt!2468741) (regTwo!34294 r2!6280))) (= lambda!392852 lambda!392845))))

(assert (=> bs!1845211 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468741) r2!6280) (= (regTwo!34294 lt!2468741) r3!135)) (= lambda!392852 lambda!392841))))

(declare-fun bs!1845223 () Bool)

(assert (= bs!1845223 (and b!6912331 b!6911900)))

(assert (=> bs!1845223 (not (= lambda!392852 lambda!392814))))

(assert (=> bs!1845203 (not (= lambda!392852 lambda!392805))))

(declare-fun bs!1845225 () Bool)

(assert (= bs!1845225 (and b!6912331 b!6911757)))

(assert (=> bs!1845225 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468741) r2!6280) (= (regTwo!34294 lt!2468741) r3!135)) (= lambda!392852 lambda!392800))))

(assert (=> bs!1845225 (not (= lambda!392852 lambda!392799))))

(assert (=> b!6912331 true))

(assert (=> b!6912331 true))

(declare-fun b!6912329 () Bool)

(declare-fun e!4161565 () Bool)

(declare-fun call!628455 () Bool)

(assert (=> b!6912329 (= e!4161565 call!628455)))

(declare-fun b!6912330 () Bool)

(declare-fun res!2819044 () Bool)

(declare-fun e!4161562 () Bool)

(assert (=> b!6912330 (=> res!2819044 e!4161562)))

(assert (=> b!6912330 (= res!2819044 call!628455)))

(declare-fun e!4161561 () Bool)

(assert (=> b!6912330 (= e!4161561 e!4161562)))

(declare-fun bm!628449 () Bool)

(assert (=> bm!628449 (= call!628455 (isEmpty!38773 s!14361))))

(declare-fun call!628454 () Bool)

(assert (=> b!6912331 (= e!4161561 call!628454)))

(assert (=> b!6912332 (= e!4161562 call!628454)))

(declare-fun b!6912333 () Bool)

(declare-fun c!1283921 () Bool)

(assert (=> b!6912333 (= c!1283921 ((_ is Union!16891) lt!2468741))))

(declare-fun e!4161563 () Bool)

(declare-fun e!4161560 () Bool)

(assert (=> b!6912333 (= e!4161563 e!4161560)))

(declare-fun c!1283922 () Bool)

(declare-fun bm!628450 () Bool)

(assert (=> bm!628450 (= call!628454 (Exists!3899 (ite c!1283922 lambda!392851 lambda!392852)))))

(declare-fun b!6912334 () Bool)

(declare-fun c!1283924 () Bool)

(assert (=> b!6912334 (= c!1283924 ((_ is ElementMatch!16891) lt!2468741))))

(declare-fun e!4161564 () Bool)

(assert (=> b!6912334 (= e!4161564 e!4161563)))

(declare-fun d!2163579 () Bool)

(declare-fun c!1283923 () Bool)

(assert (=> d!2163579 (= c!1283923 ((_ is EmptyExpr!16891) lt!2468741))))

(assert (=> d!2163579 (= (matchRSpec!3954 lt!2468741 s!14361) e!4161565)))

(declare-fun b!6912335 () Bool)

(assert (=> b!6912335 (= e!4161563 (= s!14361 (Cons!66524 (c!1283789 lt!2468741) Nil!66524)))))

(declare-fun b!6912336 () Bool)

(declare-fun e!4161559 () Bool)

(assert (=> b!6912336 (= e!4161560 e!4161559)))

(declare-fun res!2819045 () Bool)

(assert (=> b!6912336 (= res!2819045 (matchRSpec!3954 (regOne!34295 lt!2468741) s!14361))))

(assert (=> b!6912336 (=> res!2819045 e!4161559)))

(declare-fun b!6912337 () Bool)

(assert (=> b!6912337 (= e!4161560 e!4161561)))

(assert (=> b!6912337 (= c!1283922 ((_ is Star!16891) lt!2468741))))

(declare-fun b!6912338 () Bool)

(assert (=> b!6912338 (= e!4161559 (matchRSpec!3954 (regTwo!34295 lt!2468741) s!14361))))

(declare-fun b!6912339 () Bool)

(assert (=> b!6912339 (= e!4161565 e!4161564)))

(declare-fun res!2819046 () Bool)

(assert (=> b!6912339 (= res!2819046 (not ((_ is EmptyLang!16891) lt!2468741)))))

(assert (=> b!6912339 (=> (not res!2819046) (not e!4161564))))

(assert (= (and d!2163579 c!1283923) b!6912329))

(assert (= (and d!2163579 (not c!1283923)) b!6912339))

(assert (= (and b!6912339 res!2819046) b!6912334))

(assert (= (and b!6912334 c!1283924) b!6912335))

(assert (= (and b!6912334 (not c!1283924)) b!6912333))

(assert (= (and b!6912333 c!1283921) b!6912336))

(assert (= (and b!6912333 (not c!1283921)) b!6912337))

(assert (= (and b!6912336 (not res!2819045)) b!6912338))

(assert (= (and b!6912337 c!1283922) b!6912330))

(assert (= (and b!6912337 (not c!1283922)) b!6912331))

(assert (= (and b!6912330 (not res!2819044)) b!6912332))

(assert (= (or b!6912332 b!6912331) bm!628450))

(assert (= (or b!6912329 b!6912330) bm!628449))

(declare-fun m!7626476 () Bool)

(assert (=> bm!628449 m!7626476))

(declare-fun m!7626478 () Bool)

(assert (=> bm!628450 m!7626478))

(declare-fun m!7626480 () Bool)

(assert (=> b!6912336 m!7626480))

(declare-fun m!7626482 () Bool)

(assert (=> b!6912338 m!7626482))

(assert (=> b!6911760 d!2163579))

(declare-fun d!2163583 () Bool)

(assert (=> d!2163583 (= (matchR!9036 lt!2468731 s!14361) (matchRSpec!3954 lt!2468731 s!14361))))

(declare-fun lt!2468821 () Unit!160518)

(assert (=> d!2163583 (= lt!2468821 (choose!51478 lt!2468731 s!14361))))

(assert (=> d!2163583 (validRegex!8599 lt!2468731)))

(assert (=> d!2163583 (= (mainMatchTheorem!3954 lt!2468731 s!14361) lt!2468821)))

(declare-fun bs!1845228 () Bool)

(assert (= bs!1845228 d!2163583))

(assert (=> bs!1845228 m!7626036))

(assert (=> bs!1845228 m!7626032))

(declare-fun m!7626484 () Bool)

(assert (=> bs!1845228 m!7626484))

(declare-fun m!7626486 () Bool)

(assert (=> bs!1845228 m!7626486))

(assert (=> b!6911760 d!2163583))

(declare-fun bm!628453 () Bool)

(declare-fun call!628458 () Bool)

(assert (=> bm!628453 (= call!628458 (isEmpty!38773 s!14361))))

(declare-fun b!6912351 () Bool)

(declare-fun res!2819054 () Bool)

(declare-fun e!4161576 () Bool)

(assert (=> b!6912351 (=> res!2819054 e!4161576)))

(declare-fun e!4161579 () Bool)

(assert (=> b!6912351 (= res!2819054 e!4161579)))

(declare-fun res!2819056 () Bool)

(assert (=> b!6912351 (=> (not res!2819056) (not e!4161579))))

(declare-fun lt!2468822 () Bool)

(assert (=> b!6912351 (= res!2819056 lt!2468822)))

(declare-fun b!6912352 () Bool)

(declare-fun res!2819057 () Bool)

(declare-fun e!4161575 () Bool)

(assert (=> b!6912352 (=> res!2819057 e!4161575)))

(assert (=> b!6912352 (= res!2819057 (not (isEmpty!38773 (tail!12914 s!14361))))))

(declare-fun d!2163585 () Bool)

(declare-fun e!4161573 () Bool)

(assert (=> d!2163585 e!4161573))

(declare-fun c!1283930 () Bool)

(assert (=> d!2163585 (= c!1283930 ((_ is EmptyExpr!16891) lt!2468731))))

(declare-fun e!4161577 () Bool)

(assert (=> d!2163585 (= lt!2468822 e!4161577)))

(declare-fun c!1283931 () Bool)

(assert (=> d!2163585 (= c!1283931 (isEmpty!38773 s!14361))))

(assert (=> d!2163585 (validRegex!8599 lt!2468731)))

(assert (=> d!2163585 (= (matchR!9036 lt!2468731 s!14361) lt!2468822)))

(declare-fun b!6912353 () Bool)

(declare-fun res!2819051 () Bool)

(assert (=> b!6912353 (=> res!2819051 e!4161576)))

(assert (=> b!6912353 (= res!2819051 (not ((_ is ElementMatch!16891) lt!2468731)))))

(declare-fun e!4161574 () Bool)

(assert (=> b!6912353 (= e!4161574 e!4161576)))

(declare-fun b!6912354 () Bool)

(declare-fun e!4161578 () Bool)

(assert (=> b!6912354 (= e!4161576 e!4161578)))

(declare-fun res!2819052 () Bool)

(assert (=> b!6912354 (=> (not res!2819052) (not e!4161578))))

(assert (=> b!6912354 (= res!2819052 (not lt!2468822))))

(declare-fun b!6912355 () Bool)

(assert (=> b!6912355 (= e!4161577 (matchR!9036 (derivativeStep!5409 lt!2468731 (head!13862 s!14361)) (tail!12914 s!14361)))))

(declare-fun b!6912356 () Bool)

(declare-fun res!2819053 () Bool)

(assert (=> b!6912356 (=> (not res!2819053) (not e!4161579))))

(assert (=> b!6912356 (= res!2819053 (not call!628458))))

(declare-fun b!6912357 () Bool)

(assert (=> b!6912357 (= e!4161573 e!4161574)))

(declare-fun c!1283929 () Bool)

(assert (=> b!6912357 (= c!1283929 ((_ is EmptyLang!16891) lt!2468731))))

(declare-fun b!6912358 () Bool)

(assert (=> b!6912358 (= e!4161574 (not lt!2468822))))

(declare-fun b!6912359 () Bool)

(assert (=> b!6912359 (= e!4161575 (not (= (head!13862 s!14361) (c!1283789 lt!2468731))))))

(declare-fun b!6912360 () Bool)

(assert (=> b!6912360 (= e!4161578 e!4161575)))

(declare-fun res!2819050 () Bool)

(assert (=> b!6912360 (=> res!2819050 e!4161575)))

(assert (=> b!6912360 (= res!2819050 call!628458)))

(declare-fun b!6912361 () Bool)

(assert (=> b!6912361 (= e!4161577 (nullable!6730 lt!2468731))))

(declare-fun b!6912362 () Bool)

(assert (=> b!6912362 (= e!4161579 (= (head!13862 s!14361) (c!1283789 lt!2468731)))))

(declare-fun b!6912363 () Bool)

(declare-fun res!2819055 () Bool)

(assert (=> b!6912363 (=> (not res!2819055) (not e!4161579))))

(assert (=> b!6912363 (= res!2819055 (isEmpty!38773 (tail!12914 s!14361)))))

(declare-fun b!6912364 () Bool)

(assert (=> b!6912364 (= e!4161573 (= lt!2468822 call!628458))))

(assert (= (and d!2163585 c!1283931) b!6912361))

(assert (= (and d!2163585 (not c!1283931)) b!6912355))

(assert (= (and d!2163585 c!1283930) b!6912364))

(assert (= (and d!2163585 (not c!1283930)) b!6912357))

(assert (= (and b!6912357 c!1283929) b!6912358))

(assert (= (and b!6912357 (not c!1283929)) b!6912353))

(assert (= (and b!6912353 (not res!2819051)) b!6912351))

(assert (= (and b!6912351 res!2819056) b!6912356))

(assert (= (and b!6912356 res!2819053) b!6912363))

(assert (= (and b!6912363 res!2819055) b!6912362))

(assert (= (and b!6912351 (not res!2819054)) b!6912354))

(assert (= (and b!6912354 res!2819052) b!6912360))

(assert (= (and b!6912360 (not res!2819050)) b!6912352))

(assert (= (and b!6912352 (not res!2819057)) b!6912359))

(assert (= (or b!6912364 b!6912356 b!6912360) bm!628453))

(declare-fun m!7626488 () Bool)

(assert (=> b!6912359 m!7626488))

(declare-fun m!7626490 () Bool)

(assert (=> b!6912361 m!7626490))

(assert (=> b!6912355 m!7626488))

(assert (=> b!6912355 m!7626488))

(declare-fun m!7626492 () Bool)

(assert (=> b!6912355 m!7626492))

(declare-fun m!7626494 () Bool)

(assert (=> b!6912355 m!7626494))

(assert (=> b!6912355 m!7626492))

(assert (=> b!6912355 m!7626494))

(declare-fun m!7626496 () Bool)

(assert (=> b!6912355 m!7626496))

(assert (=> bm!628453 m!7626476))

(assert (=> b!6912362 m!7626488))

(assert (=> b!6912363 m!7626494))

(assert (=> b!6912363 m!7626494))

(declare-fun m!7626498 () Bool)

(assert (=> b!6912363 m!7626498))

(assert (=> b!6912352 m!7626494))

(assert (=> b!6912352 m!7626494))

(assert (=> b!6912352 m!7626498))

(assert (=> d!2163585 m!7626476))

(assert (=> d!2163585 m!7626486))

(assert (=> b!6911760 d!2163585))

(declare-fun bm!628454 () Bool)

(declare-fun call!628459 () Bool)

(assert (=> bm!628454 (= call!628459 (isEmpty!38773 s!14361))))

(declare-fun b!6912365 () Bool)

(declare-fun res!2819062 () Bool)

(declare-fun e!4161583 () Bool)

(assert (=> b!6912365 (=> res!2819062 e!4161583)))

(declare-fun e!4161586 () Bool)

(assert (=> b!6912365 (= res!2819062 e!4161586)))

(declare-fun res!2819064 () Bool)

(assert (=> b!6912365 (=> (not res!2819064) (not e!4161586))))

(declare-fun lt!2468823 () Bool)

(assert (=> b!6912365 (= res!2819064 lt!2468823)))

(declare-fun b!6912366 () Bool)

(declare-fun res!2819065 () Bool)

(declare-fun e!4161582 () Bool)

(assert (=> b!6912366 (=> res!2819065 e!4161582)))

(assert (=> b!6912366 (= res!2819065 (not (isEmpty!38773 (tail!12914 s!14361))))))

(declare-fun d!2163587 () Bool)

(declare-fun e!4161580 () Bool)

(assert (=> d!2163587 e!4161580))

(declare-fun c!1283933 () Bool)

(assert (=> d!2163587 (= c!1283933 ((_ is EmptyExpr!16891) lt!2468741))))

(declare-fun e!4161584 () Bool)

(assert (=> d!2163587 (= lt!2468823 e!4161584)))

(declare-fun c!1283934 () Bool)

(assert (=> d!2163587 (= c!1283934 (isEmpty!38773 s!14361))))

(assert (=> d!2163587 (validRegex!8599 lt!2468741)))

(assert (=> d!2163587 (= (matchR!9036 lt!2468741 s!14361) lt!2468823)))

(declare-fun b!6912367 () Bool)

(declare-fun res!2819059 () Bool)

(assert (=> b!6912367 (=> res!2819059 e!4161583)))

(assert (=> b!6912367 (= res!2819059 (not ((_ is ElementMatch!16891) lt!2468741)))))

(declare-fun e!4161581 () Bool)

(assert (=> b!6912367 (= e!4161581 e!4161583)))

(declare-fun b!6912368 () Bool)

(declare-fun e!4161585 () Bool)

(assert (=> b!6912368 (= e!4161583 e!4161585)))

(declare-fun res!2819060 () Bool)

(assert (=> b!6912368 (=> (not res!2819060) (not e!4161585))))

(assert (=> b!6912368 (= res!2819060 (not lt!2468823))))

(declare-fun b!6912369 () Bool)

(assert (=> b!6912369 (= e!4161584 (matchR!9036 (derivativeStep!5409 lt!2468741 (head!13862 s!14361)) (tail!12914 s!14361)))))

(declare-fun b!6912370 () Bool)

(declare-fun res!2819061 () Bool)

(assert (=> b!6912370 (=> (not res!2819061) (not e!4161586))))

(assert (=> b!6912370 (= res!2819061 (not call!628459))))

(declare-fun b!6912371 () Bool)

(assert (=> b!6912371 (= e!4161580 e!4161581)))

(declare-fun c!1283932 () Bool)

(assert (=> b!6912371 (= c!1283932 ((_ is EmptyLang!16891) lt!2468741))))

(declare-fun b!6912372 () Bool)

(assert (=> b!6912372 (= e!4161581 (not lt!2468823))))

(declare-fun b!6912373 () Bool)

(assert (=> b!6912373 (= e!4161582 (not (= (head!13862 s!14361) (c!1283789 lt!2468741))))))

(declare-fun b!6912374 () Bool)

(assert (=> b!6912374 (= e!4161585 e!4161582)))

(declare-fun res!2819058 () Bool)

(assert (=> b!6912374 (=> res!2819058 e!4161582)))

(assert (=> b!6912374 (= res!2819058 call!628459)))

(declare-fun b!6912375 () Bool)

(assert (=> b!6912375 (= e!4161584 (nullable!6730 lt!2468741))))

(declare-fun b!6912376 () Bool)

(assert (=> b!6912376 (= e!4161586 (= (head!13862 s!14361) (c!1283789 lt!2468741)))))

(declare-fun b!6912377 () Bool)

(declare-fun res!2819063 () Bool)

(assert (=> b!6912377 (=> (not res!2819063) (not e!4161586))))

(assert (=> b!6912377 (= res!2819063 (isEmpty!38773 (tail!12914 s!14361)))))

(declare-fun b!6912378 () Bool)

(assert (=> b!6912378 (= e!4161580 (= lt!2468823 call!628459))))

(assert (= (and d!2163587 c!1283934) b!6912375))

(assert (= (and d!2163587 (not c!1283934)) b!6912369))

(assert (= (and d!2163587 c!1283933) b!6912378))

(assert (= (and d!2163587 (not c!1283933)) b!6912371))

(assert (= (and b!6912371 c!1283932) b!6912372))

(assert (= (and b!6912371 (not c!1283932)) b!6912367))

(assert (= (and b!6912367 (not res!2819059)) b!6912365))

(assert (= (and b!6912365 res!2819064) b!6912370))

(assert (= (and b!6912370 res!2819061) b!6912377))

(assert (= (and b!6912377 res!2819063) b!6912376))

(assert (= (and b!6912365 (not res!2819062)) b!6912368))

(assert (= (and b!6912368 res!2819060) b!6912374))

(assert (= (and b!6912374 (not res!2819058)) b!6912366))

(assert (= (and b!6912366 (not res!2819065)) b!6912373))

(assert (= (or b!6912378 b!6912370 b!6912374) bm!628454))

(assert (=> b!6912373 m!7626488))

(declare-fun m!7626500 () Bool)

(assert (=> b!6912375 m!7626500))

(assert (=> b!6912369 m!7626488))

(assert (=> b!6912369 m!7626488))

(declare-fun m!7626502 () Bool)

(assert (=> b!6912369 m!7626502))

(assert (=> b!6912369 m!7626494))

(assert (=> b!6912369 m!7626502))

(assert (=> b!6912369 m!7626494))

(declare-fun m!7626504 () Bool)

(assert (=> b!6912369 m!7626504))

(assert (=> bm!628454 m!7626476))

(assert (=> b!6912376 m!7626488))

(assert (=> b!6912377 m!7626494))

(assert (=> b!6912377 m!7626494))

(assert (=> b!6912377 m!7626498))

(assert (=> b!6912366 m!7626494))

(assert (=> b!6912366 m!7626494))

(assert (=> b!6912366 m!7626498))

(assert (=> d!2163587 m!7626476))

(declare-fun m!7626506 () Bool)

(assert (=> d!2163587 m!7626506))

(assert (=> b!6911760 d!2163587))

(declare-fun bs!1845246 () Bool)

(declare-fun b!6912382 () Bool)

(assert (= bs!1845246 (and b!6912382 b!6912281)))

(declare-fun lambda!392855 () Int)

(assert (=> bs!1845246 (= (and (= s!14361 (_2!37061 lt!2468736)) (= (reg!17220 lt!2468731) (reg!17220 r3!135)) (= lt!2468731 r3!135)) (= lambda!392855 lambda!392846))))

(declare-fun bs!1845247 () Bool)

(assert (= bs!1845247 (and b!6912382 b!6911777)))

(assert (=> bs!1845247 (not (= lambda!392855 lambda!392797))))

(declare-fun bs!1845248 () Bool)

(assert (= bs!1845248 (and b!6912382 b!6912014)))

(assert (=> bs!1845248 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (reg!17220 lt!2468731) (reg!17220 lt!2468746)) (= lt!2468731 lt!2468746)) (= lambda!392855 lambda!392825))))

(declare-fun bs!1845249 () Bool)

(assert (= bs!1845249 (and b!6912382 b!6912331)))

(assert (=> bs!1845249 (not (= lambda!392855 lambda!392852))))

(declare-fun bs!1845251 () Bool)

(assert (= bs!1845251 (and b!6912382 b!6912227)))

(assert (=> bs!1845251 (= (and (= s!14361 (_1!37061 lt!2468736)) (= (reg!17220 lt!2468731) (reg!17220 r2!6280)) (= lt!2468731 r2!6280)) (= lambda!392855 lambda!392843))))

(declare-fun bs!1845252 () Bool)

(assert (= bs!1845252 (and b!6912382 d!2163471)))

(assert (=> bs!1845252 (not (= lambda!392855 lambda!392806))))

(declare-fun bs!1845253 () Bool)

(assert (= bs!1845253 (and b!6912382 b!6912013)))

(assert (=> bs!1845253 (not (= lambda!392855 lambda!392828))))

(declare-fun bs!1845254 () Bool)

(assert (= bs!1845254 (and b!6912382 b!6912280)))

(assert (=> bs!1845254 (not (= lambda!392855 lambda!392848))))

(declare-fun bs!1845255 () Bool)

(assert (= bs!1845255 (and b!6912382 b!6911899)))

(assert (=> bs!1845255 (not (= lambda!392855 lambda!392815))))

(declare-fun bs!1845256 () Bool)

(assert (= bs!1845256 (and b!6912382 d!2163535)))

(assert (=> bs!1845256 (not (= lambda!392855 lambda!392839))))

(declare-fun bs!1845257 () Bool)

(assert (= bs!1845257 (and b!6912382 d!2163497)))

(assert (=> bs!1845257 (not (= lambda!392855 lambda!392831))))

(declare-fun bs!1845258 () Bool)

(assert (= bs!1845258 (and b!6912382 d!2163483)))

(assert (=> bs!1845258 (not (= lambda!392855 lambda!392822))))

(declare-fun bs!1845259 () Bool)

(assert (= bs!1845259 (and b!6912382 b!6912332)))

(assert (=> bs!1845259 (= (and (= (reg!17220 lt!2468731) (reg!17220 lt!2468741)) (= lt!2468731 lt!2468741)) (= lambda!392855 lambda!392851))))

(assert (=> bs!1845247 (not (= lambda!392855 lambda!392798))))

(declare-fun bs!1845260 () Bool)

(assert (= bs!1845260 (and b!6912382 b!6912226)))

(assert (=> bs!1845260 (not (= lambda!392855 lambda!392845))))

(assert (=> bs!1845256 (not (= lambda!392855 lambda!392841))))

(declare-fun bs!1845262 () Bool)

(assert (= bs!1845262 (and b!6912382 b!6911900)))

(assert (=> bs!1845262 (= (and (= s!14361 (_1!37061 lt!2468732)) (= (reg!17220 lt!2468731) (reg!17220 r1!6342)) (= lt!2468731 r1!6342)) (= lambda!392855 lambda!392814))))

(assert (=> bs!1845252 (not (= lambda!392855 lambda!392805))))

(declare-fun bs!1845264 () Bool)

(assert (= bs!1845264 (and b!6912382 b!6911757)))

(assert (=> bs!1845264 (not (= lambda!392855 lambda!392800))))

(assert (=> bs!1845264 (not (= lambda!392855 lambda!392799))))

(assert (=> b!6912382 true))

(assert (=> b!6912382 true))

(declare-fun bs!1845265 () Bool)

(declare-fun b!6912381 () Bool)

(assert (= bs!1845265 (and b!6912381 b!6912281)))

(declare-fun lambda!392856 () Int)

(assert (=> bs!1845265 (not (= lambda!392856 lambda!392846))))

(declare-fun bs!1845266 () Bool)

(assert (= bs!1845266 (and b!6912381 b!6911777)))

(assert (=> bs!1845266 (not (= lambda!392856 lambda!392797))))

(declare-fun bs!1845267 () Bool)

(assert (= bs!1845267 (and b!6912381 b!6912014)))

(assert (=> bs!1845267 (not (= lambda!392856 lambda!392825))))

(declare-fun bs!1845268 () Bool)

(assert (= bs!1845268 (and b!6912381 b!6912331)))

(assert (=> bs!1845268 (= (and (= (regOne!34294 lt!2468731) (regOne!34294 lt!2468741)) (= (regTwo!34294 lt!2468731) (regTwo!34294 lt!2468741))) (= lambda!392856 lambda!392852))))

(declare-fun bs!1845269 () Bool)

(assert (= bs!1845269 (and b!6912381 b!6912382)))

(assert (=> bs!1845269 (not (= lambda!392856 lambda!392855))))

(declare-fun bs!1845270 () Bool)

(assert (= bs!1845270 (and b!6912381 b!6912227)))

(assert (=> bs!1845270 (not (= lambda!392856 lambda!392843))))

(declare-fun bs!1845271 () Bool)

(assert (= bs!1845271 (and b!6912381 d!2163471)))

(assert (=> bs!1845271 (= (and (= (regOne!34294 lt!2468731) r1!6342) (= (regTwo!34294 lt!2468731) lt!2468746)) (= lambda!392856 lambda!392806))))

(declare-fun bs!1845272 () Bool)

(assert (= bs!1845272 (and b!6912381 b!6912013)))

(assert (=> bs!1845272 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468731) (regOne!34294 lt!2468746)) (= (regTwo!34294 lt!2468731) (regTwo!34294 lt!2468746))) (= lambda!392856 lambda!392828))))

(declare-fun bs!1845273 () Bool)

(assert (= bs!1845273 (and b!6912381 b!6912280)))

(assert (=> bs!1845273 (= (and (= s!14361 (_2!37061 lt!2468736)) (= (regOne!34294 lt!2468731) (regOne!34294 r3!135)) (= (regTwo!34294 lt!2468731) (regTwo!34294 r3!135))) (= lambda!392856 lambda!392848))))

(declare-fun bs!1845274 () Bool)

(assert (= bs!1845274 (and b!6912381 b!6911899)))

(assert (=> bs!1845274 (= (and (= s!14361 (_1!37061 lt!2468732)) (= (regOne!34294 lt!2468731) (regOne!34294 r1!6342)) (= (regTwo!34294 lt!2468731) (regTwo!34294 r1!6342))) (= lambda!392856 lambda!392815))))

(declare-fun bs!1845275 () Bool)

(assert (= bs!1845275 (and b!6912381 d!2163535)))

(assert (=> bs!1845275 (not (= lambda!392856 lambda!392839))))

(declare-fun bs!1845276 () Bool)

(assert (= bs!1845276 (and b!6912381 d!2163497)))

(assert (=> bs!1845276 (not (= lambda!392856 lambda!392831))))

(declare-fun bs!1845277 () Bool)

(assert (= bs!1845277 (and b!6912381 d!2163483)))

(assert (=> bs!1845277 (not (= lambda!392856 lambda!392822))))

(declare-fun bs!1845278 () Bool)

(assert (= bs!1845278 (and b!6912381 b!6912332)))

(assert (=> bs!1845278 (not (= lambda!392856 lambda!392851))))

(assert (=> bs!1845266 (= (and (= (regOne!34294 lt!2468731) r1!6342) (= (regTwo!34294 lt!2468731) lt!2468746)) (= lambda!392856 lambda!392798))))

(declare-fun bs!1845279 () Bool)

(assert (= bs!1845279 (and b!6912381 b!6912226)))

(assert (=> bs!1845279 (= (and (= s!14361 (_1!37061 lt!2468736)) (= (regOne!34294 lt!2468731) (regOne!34294 r2!6280)) (= (regTwo!34294 lt!2468731) (regTwo!34294 r2!6280))) (= lambda!392856 lambda!392845))))

(assert (=> bs!1845275 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468731) r2!6280) (= (regTwo!34294 lt!2468731) r3!135)) (= lambda!392856 lambda!392841))))

(declare-fun bs!1845280 () Bool)

(assert (= bs!1845280 (and b!6912381 b!6911900)))

(assert (=> bs!1845280 (not (= lambda!392856 lambda!392814))))

(assert (=> bs!1845271 (not (= lambda!392856 lambda!392805))))

(declare-fun bs!1845281 () Bool)

(assert (= bs!1845281 (and b!6912381 b!6911757)))

(assert (=> bs!1845281 (= (and (= s!14361 (_2!37061 lt!2468732)) (= (regOne!34294 lt!2468731) r2!6280) (= (regTwo!34294 lt!2468731) r3!135)) (= lambda!392856 lambda!392800))))

(assert (=> bs!1845281 (not (= lambda!392856 lambda!392799))))

(assert (=> b!6912381 true))

(assert (=> b!6912381 true))

(declare-fun b!6912379 () Bool)

(declare-fun e!4161593 () Bool)

(declare-fun call!628461 () Bool)

(assert (=> b!6912379 (= e!4161593 call!628461)))

(declare-fun b!6912380 () Bool)

(declare-fun res!2819066 () Bool)

(declare-fun e!4161590 () Bool)

(assert (=> b!6912380 (=> res!2819066 e!4161590)))

(assert (=> b!6912380 (= res!2819066 call!628461)))

(declare-fun e!4161589 () Bool)

(assert (=> b!6912380 (= e!4161589 e!4161590)))

(declare-fun bm!628455 () Bool)

(assert (=> bm!628455 (= call!628461 (isEmpty!38773 s!14361))))

(declare-fun call!628460 () Bool)

(assert (=> b!6912381 (= e!4161589 call!628460)))

(assert (=> b!6912382 (= e!4161590 call!628460)))

(declare-fun b!6912383 () Bool)

(declare-fun c!1283935 () Bool)

(assert (=> b!6912383 (= c!1283935 ((_ is Union!16891) lt!2468731))))

(declare-fun e!4161591 () Bool)

(declare-fun e!4161588 () Bool)

(assert (=> b!6912383 (= e!4161591 e!4161588)))

(declare-fun c!1283936 () Bool)

(declare-fun bm!628456 () Bool)

(assert (=> bm!628456 (= call!628460 (Exists!3899 (ite c!1283936 lambda!392855 lambda!392856)))))

(declare-fun b!6912384 () Bool)

(declare-fun c!1283938 () Bool)

(assert (=> b!6912384 (= c!1283938 ((_ is ElementMatch!16891) lt!2468731))))

(declare-fun e!4161592 () Bool)

(assert (=> b!6912384 (= e!4161592 e!4161591)))

(declare-fun d!2163589 () Bool)

(declare-fun c!1283937 () Bool)

(assert (=> d!2163589 (= c!1283937 ((_ is EmptyExpr!16891) lt!2468731))))

(assert (=> d!2163589 (= (matchRSpec!3954 lt!2468731 s!14361) e!4161593)))

(declare-fun b!6912385 () Bool)

(assert (=> b!6912385 (= e!4161591 (= s!14361 (Cons!66524 (c!1283789 lt!2468731) Nil!66524)))))

(declare-fun b!6912386 () Bool)

(declare-fun e!4161587 () Bool)

(assert (=> b!6912386 (= e!4161588 e!4161587)))

(declare-fun res!2819067 () Bool)

(assert (=> b!6912386 (= res!2819067 (matchRSpec!3954 (regOne!34295 lt!2468731) s!14361))))

(assert (=> b!6912386 (=> res!2819067 e!4161587)))

(declare-fun b!6912387 () Bool)

(assert (=> b!6912387 (= e!4161588 e!4161589)))

(assert (=> b!6912387 (= c!1283936 ((_ is Star!16891) lt!2468731))))

(declare-fun b!6912388 () Bool)

(assert (=> b!6912388 (= e!4161587 (matchRSpec!3954 (regTwo!34295 lt!2468731) s!14361))))

(declare-fun b!6912389 () Bool)

(assert (=> b!6912389 (= e!4161593 e!4161592)))

(declare-fun res!2819068 () Bool)

(assert (=> b!6912389 (= res!2819068 (not ((_ is EmptyLang!16891) lt!2468731)))))

(assert (=> b!6912389 (=> (not res!2819068) (not e!4161592))))

(assert (= (and d!2163589 c!1283937) b!6912379))

(assert (= (and d!2163589 (not c!1283937)) b!6912389))

(assert (= (and b!6912389 res!2819068) b!6912384))

(assert (= (and b!6912384 c!1283938) b!6912385))

(assert (= (and b!6912384 (not c!1283938)) b!6912383))

(assert (= (and b!6912383 c!1283935) b!6912386))

(assert (= (and b!6912383 (not c!1283935)) b!6912387))

(assert (= (and b!6912386 (not res!2819067)) b!6912388))

(assert (= (and b!6912387 c!1283936) b!6912380))

(assert (= (and b!6912387 (not c!1283936)) b!6912381))

(assert (= (and b!6912380 (not res!2819066)) b!6912382))

(assert (= (or b!6912382 b!6912381) bm!628456))

(assert (= (or b!6912379 b!6912380) bm!628455))

(assert (=> bm!628455 m!7626476))

(declare-fun m!7626540 () Bool)

(assert (=> bm!628456 m!7626540))

(declare-fun m!7626542 () Bool)

(assert (=> b!6912386 m!7626542))

(declare-fun m!7626544 () Bool)

(assert (=> b!6912388 m!7626544))

(assert (=> b!6911760 d!2163589))

(declare-fun d!2163603 () Bool)

(assert (=> d!2163603 (= (matchR!9036 lt!2468741 s!14361) (matchRSpec!3954 lt!2468741 s!14361))))

(declare-fun lt!2468826 () Unit!160518)

(assert (=> d!2163603 (= lt!2468826 (choose!51478 lt!2468741 s!14361))))

(assert (=> d!2163603 (validRegex!8599 lt!2468741)))

(assert (=> d!2163603 (= (mainMatchTheorem!3954 lt!2468741 s!14361) lt!2468826)))

(declare-fun bs!1845282 () Bool)

(assert (= bs!1845282 d!2163603))

(assert (=> bs!1845282 m!7626042))

(assert (=> bs!1845282 m!7626038))

(declare-fun m!7626546 () Bool)

(assert (=> bs!1845282 m!7626546))

(assert (=> bs!1845282 m!7626506))

(assert (=> b!6911760 d!2163603))

(declare-fun d!2163605 () Bool)

(assert (=> d!2163605 (= (isDefined!13373 lt!2468735) (not (isEmpty!38775 lt!2468735)))))

(declare-fun bs!1845283 () Bool)

(assert (= bs!1845283 d!2163605))

(declare-fun m!7626548 () Bool)

(assert (=> bs!1845283 m!7626548))

(assert (=> b!6911766 d!2163605))

(declare-fun b!6912472 () Bool)

(declare-fun e!4161627 () Option!16670)

(assert (=> b!6912472 (= e!4161627 (Some!16669 (tuple2!67517 Nil!66524 s!14361)))))

(declare-fun b!6912473 () Bool)

(declare-fun e!4161624 () Bool)

(declare-fun lt!2468828 () Option!16670)

(assert (=> b!6912473 (= e!4161624 (= (++!14944 (_1!37061 (get!23287 lt!2468828)) (_2!37061 (get!23287 lt!2468828))) s!14361))))

(declare-fun b!6912474 () Bool)

(declare-fun res!2819082 () Bool)

(assert (=> b!6912474 (=> (not res!2819082) (not e!4161624))))

(assert (=> b!6912474 (= res!2819082 (matchR!9036 r1!6342 (_1!37061 (get!23287 lt!2468828))))))

(declare-fun b!6912475 () Bool)

(declare-fun lt!2468827 () Unit!160518)

(declare-fun lt!2468829 () Unit!160518)

(assert (=> b!6912475 (= lt!2468827 lt!2468829)))

(assert (=> b!6912475 (= (++!14944 (++!14944 Nil!66524 (Cons!66524 (h!72972 s!14361) Nil!66524)) (t!380391 s!14361)) s!14361)))

(assert (=> b!6912475 (= lt!2468829 (lemmaMoveElementToOtherListKeepsConcatEq!2817 Nil!66524 (h!72972 s!14361) (t!380391 s!14361) s!14361))))

(declare-fun e!4161625 () Option!16670)

(assert (=> b!6912475 (= e!4161625 (findConcatSeparation!3084 r1!6342 lt!2468746 (++!14944 Nil!66524 (Cons!66524 (h!72972 s!14361) Nil!66524)) (t!380391 s!14361) s!14361))))

(declare-fun b!6912477 () Bool)

(assert (=> b!6912477 (= e!4161625 None!16669)))

(declare-fun b!6912478 () Bool)

(declare-fun e!4161628 () Bool)

(assert (=> b!6912478 (= e!4161628 (matchR!9036 lt!2468746 s!14361))))

(declare-fun b!6912479 () Bool)

(declare-fun e!4161626 () Bool)

(assert (=> b!6912479 (= e!4161626 (not (isDefined!13373 lt!2468828)))))

(declare-fun b!6912480 () Bool)

(assert (=> b!6912480 (= e!4161627 e!4161625)))

(declare-fun c!1283945 () Bool)

(assert (=> b!6912480 (= c!1283945 ((_ is Nil!66524) s!14361))))

(declare-fun b!6912476 () Bool)

(declare-fun res!2819083 () Bool)

(assert (=> b!6912476 (=> (not res!2819083) (not e!4161624))))

(assert (=> b!6912476 (= res!2819083 (matchR!9036 lt!2468746 (_2!37061 (get!23287 lt!2468828))))))

(declare-fun d!2163607 () Bool)

(assert (=> d!2163607 e!4161626))

(declare-fun res!2819086 () Bool)

(assert (=> d!2163607 (=> res!2819086 e!4161626)))

(assert (=> d!2163607 (= res!2819086 e!4161624)))

(declare-fun res!2819084 () Bool)

(assert (=> d!2163607 (=> (not res!2819084) (not e!4161624))))

(assert (=> d!2163607 (= res!2819084 (isDefined!13373 lt!2468828))))

(assert (=> d!2163607 (= lt!2468828 e!4161627)))

(declare-fun c!1283944 () Bool)

(assert (=> d!2163607 (= c!1283944 e!4161628)))

(declare-fun res!2819085 () Bool)

(assert (=> d!2163607 (=> (not res!2819085) (not e!4161628))))

(assert (=> d!2163607 (= res!2819085 (matchR!9036 r1!6342 Nil!66524))))

(assert (=> d!2163607 (validRegex!8599 r1!6342)))

(assert (=> d!2163607 (= (findConcatSeparation!3084 r1!6342 lt!2468746 Nil!66524 s!14361 s!14361) lt!2468828)))

(assert (= (and d!2163607 res!2819085) b!6912478))

(assert (= (and d!2163607 c!1283944) b!6912472))

(assert (= (and d!2163607 (not c!1283944)) b!6912480))

(assert (= (and b!6912480 c!1283945) b!6912477))

(assert (= (and b!6912480 (not c!1283945)) b!6912475))

(assert (= (and d!2163607 res!2819084) b!6912474))

(assert (= (and b!6912474 res!2819082) b!6912476))

(assert (= (and b!6912476 res!2819083) b!6912473))

(assert (= (and d!2163607 (not res!2819086)) b!6912479))

(declare-fun m!7626550 () Bool)

(assert (=> b!6912475 m!7626550))

(assert (=> b!6912475 m!7626550))

(declare-fun m!7626552 () Bool)

(assert (=> b!6912475 m!7626552))

(declare-fun m!7626554 () Bool)

(assert (=> b!6912475 m!7626554))

(assert (=> b!6912475 m!7626550))

(declare-fun m!7626556 () Bool)

(assert (=> b!6912475 m!7626556))

(declare-fun m!7626558 () Bool)

(assert (=> b!6912474 m!7626558))

(declare-fun m!7626560 () Bool)

(assert (=> b!6912474 m!7626560))

(declare-fun m!7626562 () Bool)

(assert (=> d!2163607 m!7626562))

(declare-fun m!7626564 () Bool)

(assert (=> d!2163607 m!7626564))

(assert (=> d!2163607 m!7625992))

(declare-fun m!7626566 () Bool)

(assert (=> b!6912478 m!7626566))

(assert (=> b!6912479 m!7626562))

(assert (=> b!6912473 m!7626558))

(declare-fun m!7626568 () Bool)

(assert (=> b!6912473 m!7626568))

(assert (=> b!6912476 m!7626558))

(declare-fun m!7626570 () Bool)

(assert (=> b!6912476 m!7626570))

(assert (=> b!6911766 d!2163607))

(declare-fun b!6912510 () Bool)

(declare-fun e!4161635 () Bool)

(declare-fun tp!1903501 () Bool)

(declare-fun tp!1903500 () Bool)

(assert (=> b!6912510 (= e!4161635 (and tp!1903501 tp!1903500))))

(declare-fun b!6912509 () Bool)

(declare-fun tp!1903498 () Bool)

(assert (=> b!6912509 (= e!4161635 tp!1903498)))

(declare-fun b!6912508 () Bool)

(declare-fun tp!1903502 () Bool)

(declare-fun tp!1903499 () Bool)

(assert (=> b!6912508 (= e!4161635 (and tp!1903502 tp!1903499))))

(assert (=> b!6911772 (= tp!1903386 e!4161635)))

(declare-fun b!6912507 () Bool)

(assert (=> b!6912507 (= e!4161635 tp_is_empty!43007)))

(assert (= (and b!6911772 ((_ is ElementMatch!16891) (regOne!34294 r1!6342))) b!6912507))

(assert (= (and b!6911772 ((_ is Concat!25736) (regOne!34294 r1!6342))) b!6912508))

(assert (= (and b!6911772 ((_ is Star!16891) (regOne!34294 r1!6342))) b!6912509))

(assert (= (and b!6911772 ((_ is Union!16891) (regOne!34294 r1!6342))) b!6912510))

(declare-fun b!6912514 () Bool)

(declare-fun e!4161636 () Bool)

(declare-fun tp!1903506 () Bool)

(declare-fun tp!1903505 () Bool)

(assert (=> b!6912514 (= e!4161636 (and tp!1903506 tp!1903505))))

(declare-fun b!6912513 () Bool)

(declare-fun tp!1903503 () Bool)

(assert (=> b!6912513 (= e!4161636 tp!1903503)))

(declare-fun b!6912512 () Bool)

(declare-fun tp!1903507 () Bool)

(declare-fun tp!1903504 () Bool)

(assert (=> b!6912512 (= e!4161636 (and tp!1903507 tp!1903504))))

(assert (=> b!6911772 (= tp!1903396 e!4161636)))

(declare-fun b!6912511 () Bool)

(assert (=> b!6912511 (= e!4161636 tp_is_empty!43007)))

(assert (= (and b!6911772 ((_ is ElementMatch!16891) (regTwo!34294 r1!6342))) b!6912511))

(assert (= (and b!6911772 ((_ is Concat!25736) (regTwo!34294 r1!6342))) b!6912512))

(assert (= (and b!6911772 ((_ is Star!16891) (regTwo!34294 r1!6342))) b!6912513))

(assert (= (and b!6911772 ((_ is Union!16891) (regTwo!34294 r1!6342))) b!6912514))

(declare-fun b!6912518 () Bool)

(declare-fun e!4161637 () Bool)

(declare-fun tp!1903511 () Bool)

(declare-fun tp!1903510 () Bool)

(assert (=> b!6912518 (= e!4161637 (and tp!1903511 tp!1903510))))

(declare-fun b!6912517 () Bool)

(declare-fun tp!1903508 () Bool)

(assert (=> b!6912517 (= e!4161637 tp!1903508)))

(declare-fun b!6912516 () Bool)

(declare-fun tp!1903512 () Bool)

(declare-fun tp!1903509 () Bool)

(assert (=> b!6912516 (= e!4161637 (and tp!1903512 tp!1903509))))

(assert (=> b!6911756 (= tp!1903391 e!4161637)))

(declare-fun b!6912515 () Bool)

(assert (=> b!6912515 (= e!4161637 tp_is_empty!43007)))

(assert (= (and b!6911756 ((_ is ElementMatch!16891) (regOne!34295 r1!6342))) b!6912515))

(assert (= (and b!6911756 ((_ is Concat!25736) (regOne!34295 r1!6342))) b!6912516))

(assert (= (and b!6911756 ((_ is Star!16891) (regOne!34295 r1!6342))) b!6912517))

(assert (= (and b!6911756 ((_ is Union!16891) (regOne!34295 r1!6342))) b!6912518))

(declare-fun b!6912522 () Bool)

(declare-fun e!4161638 () Bool)

(declare-fun tp!1903516 () Bool)

(declare-fun tp!1903515 () Bool)

(assert (=> b!6912522 (= e!4161638 (and tp!1903516 tp!1903515))))

(declare-fun b!6912521 () Bool)

(declare-fun tp!1903513 () Bool)

(assert (=> b!6912521 (= e!4161638 tp!1903513)))

(declare-fun b!6912520 () Bool)

(declare-fun tp!1903517 () Bool)

(declare-fun tp!1903514 () Bool)

(assert (=> b!6912520 (= e!4161638 (and tp!1903517 tp!1903514))))

(assert (=> b!6911756 (= tp!1903387 e!4161638)))

(declare-fun b!6912519 () Bool)

(assert (=> b!6912519 (= e!4161638 tp_is_empty!43007)))

(assert (= (and b!6911756 ((_ is ElementMatch!16891) (regTwo!34295 r1!6342))) b!6912519))

(assert (= (and b!6911756 ((_ is Concat!25736) (regTwo!34295 r1!6342))) b!6912520))

(assert (= (and b!6911756 ((_ is Star!16891) (regTwo!34295 r1!6342))) b!6912521))

(assert (= (and b!6911756 ((_ is Union!16891) (regTwo!34295 r1!6342))) b!6912522))

(declare-fun b!6912526 () Bool)

(declare-fun e!4161639 () Bool)

(declare-fun tp!1903521 () Bool)

(declare-fun tp!1903520 () Bool)

(assert (=> b!6912526 (= e!4161639 (and tp!1903521 tp!1903520))))

(declare-fun b!6912525 () Bool)

(declare-fun tp!1903518 () Bool)

(assert (=> b!6912525 (= e!4161639 tp!1903518)))

(declare-fun b!6912524 () Bool)

(declare-fun tp!1903522 () Bool)

(declare-fun tp!1903519 () Bool)

(assert (=> b!6912524 (= e!4161639 (and tp!1903522 tp!1903519))))

(assert (=> b!6911768 (= tp!1903390 e!4161639)))

(declare-fun b!6912523 () Bool)

(assert (=> b!6912523 (= e!4161639 tp_is_empty!43007)))

(assert (= (and b!6911768 ((_ is ElementMatch!16891) (reg!17220 r1!6342))) b!6912523))

(assert (= (and b!6911768 ((_ is Concat!25736) (reg!17220 r1!6342))) b!6912524))

(assert (= (and b!6911768 ((_ is Star!16891) (reg!17220 r1!6342))) b!6912525))

(assert (= (and b!6911768 ((_ is Union!16891) (reg!17220 r1!6342))) b!6912526))

(declare-fun b!6912531 () Bool)

(declare-fun e!4161642 () Bool)

(declare-fun tp!1903525 () Bool)

(assert (=> b!6912531 (= e!4161642 (and tp_is_empty!43007 tp!1903525))))

(assert (=> b!6911773 (= tp!1903393 e!4161642)))

(assert (= (and b!6911773 ((_ is Cons!66524) (t!380391 s!14361))) b!6912531))

(declare-fun b!6912535 () Bool)

(declare-fun e!4161643 () Bool)

(declare-fun tp!1903529 () Bool)

(declare-fun tp!1903528 () Bool)

(assert (=> b!6912535 (= e!4161643 (and tp!1903529 tp!1903528))))

(declare-fun b!6912534 () Bool)

(declare-fun tp!1903526 () Bool)

(assert (=> b!6912534 (= e!4161643 tp!1903526)))

(declare-fun b!6912533 () Bool)

(declare-fun tp!1903530 () Bool)

(declare-fun tp!1903527 () Bool)

(assert (=> b!6912533 (= e!4161643 (and tp!1903530 tp!1903527))))

(assert (=> b!6911758 (= tp!1903394 e!4161643)))

(declare-fun b!6912532 () Bool)

(assert (=> b!6912532 (= e!4161643 tp_is_empty!43007)))

(assert (= (and b!6911758 ((_ is ElementMatch!16891) (reg!17220 r2!6280))) b!6912532))

(assert (= (and b!6911758 ((_ is Concat!25736) (reg!17220 r2!6280))) b!6912533))

(assert (= (and b!6911758 ((_ is Star!16891) (reg!17220 r2!6280))) b!6912534))

(assert (= (and b!6911758 ((_ is Union!16891) (reg!17220 r2!6280))) b!6912535))

(declare-fun b!6912539 () Bool)

(declare-fun e!4161644 () Bool)

(declare-fun tp!1903534 () Bool)

(declare-fun tp!1903533 () Bool)

(assert (=> b!6912539 (= e!4161644 (and tp!1903534 tp!1903533))))

(declare-fun b!6912538 () Bool)

(declare-fun tp!1903531 () Bool)

(assert (=> b!6912538 (= e!4161644 tp!1903531)))

(declare-fun b!6912537 () Bool)

(declare-fun tp!1903535 () Bool)

(declare-fun tp!1903532 () Bool)

(assert (=> b!6912537 (= e!4161644 (and tp!1903535 tp!1903532))))

(assert (=> b!6911763 (= tp!1903384 e!4161644)))

(declare-fun b!6912536 () Bool)

(assert (=> b!6912536 (= e!4161644 tp_is_empty!43007)))

(assert (= (and b!6911763 ((_ is ElementMatch!16891) (reg!17220 r3!135))) b!6912536))

(assert (= (and b!6911763 ((_ is Concat!25736) (reg!17220 r3!135))) b!6912537))

(assert (= (and b!6911763 ((_ is Star!16891) (reg!17220 r3!135))) b!6912538))

(assert (= (and b!6911763 ((_ is Union!16891) (reg!17220 r3!135))) b!6912539))

(declare-fun b!6912543 () Bool)

(declare-fun e!4161645 () Bool)

(declare-fun tp!1903539 () Bool)

(declare-fun tp!1903538 () Bool)

(assert (=> b!6912543 (= e!4161645 (and tp!1903539 tp!1903538))))

(declare-fun b!6912542 () Bool)

(declare-fun tp!1903536 () Bool)

(assert (=> b!6912542 (= e!4161645 tp!1903536)))

(declare-fun b!6912541 () Bool)

(declare-fun tp!1903540 () Bool)

(declare-fun tp!1903537 () Bool)

(assert (=> b!6912541 (= e!4161645 (and tp!1903540 tp!1903537))))

(assert (=> b!6911764 (= tp!1903385 e!4161645)))

(declare-fun b!6912540 () Bool)

(assert (=> b!6912540 (= e!4161645 tp_is_empty!43007)))

(assert (= (and b!6911764 ((_ is ElementMatch!16891) (regOne!34295 r3!135))) b!6912540))

(assert (= (and b!6911764 ((_ is Concat!25736) (regOne!34295 r3!135))) b!6912541))

(assert (= (and b!6911764 ((_ is Star!16891) (regOne!34295 r3!135))) b!6912542))

(assert (= (and b!6911764 ((_ is Union!16891) (regOne!34295 r3!135))) b!6912543))

(declare-fun b!6912547 () Bool)

(declare-fun e!4161646 () Bool)

(declare-fun tp!1903544 () Bool)

(declare-fun tp!1903543 () Bool)

(assert (=> b!6912547 (= e!4161646 (and tp!1903544 tp!1903543))))

(declare-fun b!6912546 () Bool)

(declare-fun tp!1903541 () Bool)

(assert (=> b!6912546 (= e!4161646 tp!1903541)))

(declare-fun b!6912545 () Bool)

(declare-fun tp!1903545 () Bool)

(declare-fun tp!1903542 () Bool)

(assert (=> b!6912545 (= e!4161646 (and tp!1903545 tp!1903542))))

(assert (=> b!6911764 (= tp!1903392 e!4161646)))

(declare-fun b!6912544 () Bool)

(assert (=> b!6912544 (= e!4161646 tp_is_empty!43007)))

(assert (= (and b!6911764 ((_ is ElementMatch!16891) (regTwo!34295 r3!135))) b!6912544))

(assert (= (and b!6911764 ((_ is Concat!25736) (regTwo!34295 r3!135))) b!6912545))

(assert (= (and b!6911764 ((_ is Star!16891) (regTwo!34295 r3!135))) b!6912546))

(assert (= (and b!6911764 ((_ is Union!16891) (regTwo!34295 r3!135))) b!6912547))

(declare-fun b!6912551 () Bool)

(declare-fun e!4161647 () Bool)

(declare-fun tp!1903549 () Bool)

(declare-fun tp!1903548 () Bool)

(assert (=> b!6912551 (= e!4161647 (and tp!1903549 tp!1903548))))

(declare-fun b!6912550 () Bool)

(declare-fun tp!1903546 () Bool)

(assert (=> b!6912550 (= e!4161647 tp!1903546)))

(declare-fun b!6912549 () Bool)

(declare-fun tp!1903550 () Bool)

(declare-fun tp!1903547 () Bool)

(assert (=> b!6912549 (= e!4161647 (and tp!1903550 tp!1903547))))

(assert (=> b!6911775 (= tp!1903399 e!4161647)))

(declare-fun b!6912548 () Bool)

(assert (=> b!6912548 (= e!4161647 tp_is_empty!43007)))

(assert (= (and b!6911775 ((_ is ElementMatch!16891) (regOne!34294 r3!135))) b!6912548))

(assert (= (and b!6911775 ((_ is Concat!25736) (regOne!34294 r3!135))) b!6912549))

(assert (= (and b!6911775 ((_ is Star!16891) (regOne!34294 r3!135))) b!6912550))

(assert (= (and b!6911775 ((_ is Union!16891) (regOne!34294 r3!135))) b!6912551))

(declare-fun b!6912555 () Bool)

(declare-fun e!4161648 () Bool)

(declare-fun tp!1903554 () Bool)

(declare-fun tp!1903553 () Bool)

(assert (=> b!6912555 (= e!4161648 (and tp!1903554 tp!1903553))))

(declare-fun b!6912554 () Bool)

(declare-fun tp!1903551 () Bool)

(assert (=> b!6912554 (= e!4161648 tp!1903551)))

(declare-fun b!6912553 () Bool)

(declare-fun tp!1903555 () Bool)

(declare-fun tp!1903552 () Bool)

(assert (=> b!6912553 (= e!4161648 (and tp!1903555 tp!1903552))))

(assert (=> b!6911775 (= tp!1903397 e!4161648)))

(declare-fun b!6912552 () Bool)

(assert (=> b!6912552 (= e!4161648 tp_is_empty!43007)))

(assert (= (and b!6911775 ((_ is ElementMatch!16891) (regTwo!34294 r3!135))) b!6912552))

(assert (= (and b!6911775 ((_ is Concat!25736) (regTwo!34294 r3!135))) b!6912553))

(assert (= (and b!6911775 ((_ is Star!16891) (regTwo!34294 r3!135))) b!6912554))

(assert (= (and b!6911775 ((_ is Union!16891) (regTwo!34294 r3!135))) b!6912555))

(declare-fun b!6912559 () Bool)

(declare-fun e!4161649 () Bool)

(declare-fun tp!1903559 () Bool)

(declare-fun tp!1903558 () Bool)

(assert (=> b!6912559 (= e!4161649 (and tp!1903559 tp!1903558))))

(declare-fun b!6912558 () Bool)

(declare-fun tp!1903556 () Bool)

(assert (=> b!6912558 (= e!4161649 tp!1903556)))

(declare-fun b!6912557 () Bool)

(declare-fun tp!1903560 () Bool)

(declare-fun tp!1903557 () Bool)

(assert (=> b!6912557 (= e!4161649 (and tp!1903560 tp!1903557))))

(assert (=> b!6911776 (= tp!1903389 e!4161649)))

(declare-fun b!6912556 () Bool)

(assert (=> b!6912556 (= e!4161649 tp_is_empty!43007)))

(assert (= (and b!6911776 ((_ is ElementMatch!16891) (regOne!34295 r2!6280))) b!6912556))

(assert (= (and b!6911776 ((_ is Concat!25736) (regOne!34295 r2!6280))) b!6912557))

(assert (= (and b!6911776 ((_ is Star!16891) (regOne!34295 r2!6280))) b!6912558))

(assert (= (and b!6911776 ((_ is Union!16891) (regOne!34295 r2!6280))) b!6912559))

(declare-fun b!6912563 () Bool)

(declare-fun e!4161650 () Bool)

(declare-fun tp!1903564 () Bool)

(declare-fun tp!1903563 () Bool)

(assert (=> b!6912563 (= e!4161650 (and tp!1903564 tp!1903563))))

(declare-fun b!6912562 () Bool)

(declare-fun tp!1903561 () Bool)

(assert (=> b!6912562 (= e!4161650 tp!1903561)))

(declare-fun b!6912561 () Bool)

(declare-fun tp!1903565 () Bool)

(declare-fun tp!1903562 () Bool)

(assert (=> b!6912561 (= e!4161650 (and tp!1903565 tp!1903562))))

(assert (=> b!6911776 (= tp!1903388 e!4161650)))

(declare-fun b!6912560 () Bool)

(assert (=> b!6912560 (= e!4161650 tp_is_empty!43007)))

(assert (= (and b!6911776 ((_ is ElementMatch!16891) (regTwo!34295 r2!6280))) b!6912560))

(assert (= (and b!6911776 ((_ is Concat!25736) (regTwo!34295 r2!6280))) b!6912561))

(assert (= (and b!6911776 ((_ is Star!16891) (regTwo!34295 r2!6280))) b!6912562))

(assert (= (and b!6911776 ((_ is Union!16891) (regTwo!34295 r2!6280))) b!6912563))

(declare-fun b!6912567 () Bool)

(declare-fun e!4161651 () Bool)

(declare-fun tp!1903569 () Bool)

(declare-fun tp!1903568 () Bool)

(assert (=> b!6912567 (= e!4161651 (and tp!1903569 tp!1903568))))

(declare-fun b!6912566 () Bool)

(declare-fun tp!1903566 () Bool)

(assert (=> b!6912566 (= e!4161651 tp!1903566)))

(declare-fun b!6912565 () Bool)

(declare-fun tp!1903570 () Bool)

(declare-fun tp!1903567 () Bool)

(assert (=> b!6912565 (= e!4161651 (and tp!1903570 tp!1903567))))

(assert (=> b!6911765 (= tp!1903398 e!4161651)))

(declare-fun b!6912564 () Bool)

(assert (=> b!6912564 (= e!4161651 tp_is_empty!43007)))

(assert (= (and b!6911765 ((_ is ElementMatch!16891) (regOne!34294 r2!6280))) b!6912564))

(assert (= (and b!6911765 ((_ is Concat!25736) (regOne!34294 r2!6280))) b!6912565))

(assert (= (and b!6911765 ((_ is Star!16891) (regOne!34294 r2!6280))) b!6912566))

(assert (= (and b!6911765 ((_ is Union!16891) (regOne!34294 r2!6280))) b!6912567))

(declare-fun b!6912571 () Bool)

(declare-fun e!4161652 () Bool)

(declare-fun tp!1903574 () Bool)

(declare-fun tp!1903573 () Bool)

(assert (=> b!6912571 (= e!4161652 (and tp!1903574 tp!1903573))))

(declare-fun b!6912570 () Bool)

(declare-fun tp!1903571 () Bool)

(assert (=> b!6912570 (= e!4161652 tp!1903571)))

(declare-fun b!6912569 () Bool)

(declare-fun tp!1903575 () Bool)

(declare-fun tp!1903572 () Bool)

(assert (=> b!6912569 (= e!4161652 (and tp!1903575 tp!1903572))))

(assert (=> b!6911765 (= tp!1903395 e!4161652)))

(declare-fun b!6912568 () Bool)

(assert (=> b!6912568 (= e!4161652 tp_is_empty!43007)))

(assert (= (and b!6911765 ((_ is ElementMatch!16891) (regTwo!34294 r2!6280))) b!6912568))

(assert (= (and b!6911765 ((_ is Concat!25736) (regTwo!34294 r2!6280))) b!6912569))

(assert (= (and b!6911765 ((_ is Star!16891) (regTwo!34294 r2!6280))) b!6912570))

(assert (= (and b!6911765 ((_ is Union!16891) (regTwo!34294 r2!6280))) b!6912571))

(check-sat (not b!6912559) (not d!2163519) (not d!2163491) (not b!6912541) (not b!6912513) (not b!6912522) (not bm!628444) (not d!2163557) (not b!6912542) (not d!2163463) (not b!6912375) (not b!6912285) (not d!2163467) (not b!6912549) (not b!6912525) (not b!6912476) (not b!6912311) (not b!6912517) (not b!6911994) (not b!6911993) (not bm!628443) (not b!6912518) (not b!6912366) (not b!6912336) (not b!6912473) (not b!6912561) (not b!6912516) (not b!6912009) (not b!6912266) (not b!6912550) (not b!6912535) (not bm!628412) (not bm!628438) (not b!6912007) (not b!6912563) (not d!2163471) (not b!6912113) (not b!6912214) (not b!6912352) (not bm!628428) (not bm!628400) (not d!2163523) (not b!6912377) (not b!6912567) (not b!6912001) tp_is_empty!43007 (not b!6912533) (not bm!628390) (not b!6912355) (not d!2163545) (not d!2163497) (not b!6912287) (not b!6912545) (not d!2163485) (not b!6912558) (not d!2163573) (not b!6912267) (not bm!628424) (not d!2163605) (not b!6911998) (not b!6912136) (not b!6912363) (not bm!628456) (not b!6912139) (not b!6912147) (not b!6912005) (not b!6912512) (not d!2163559) (not bm!628439) (not d!2163607) (not b!6911991) (not b!6912361) (not b!6912475) (not bm!628454) (not b!6912555) (not b!6912553) (not bm!628391) (not bm!628447) (not b!6912562) (not b!6912565) (not d!2163603) (not b!6911995) (not d!2163585) (not b!6912211) (not b!6912521) (not b!6912119) (not bm!628401) (not bm!628449) (not bm!628453) (not b!6912478) (not b!6912373) (not b!6912508) (not b!6912571) (not b!6912146) (not b!6912201) (not bm!628455) (not b!6912569) (not b!6912386) (not b!6912514) (not bm!628402) (not d!2163483) (not b!6912233) (not b!6912474) (not b!6912222) (not b!6912309) (not b!6912524) (not b!6912338) (not d!2163555) (not b!6912116) (not bm!628426) (not b!6912479) (not b!6912543) (not d!2163493) (not d!2163499) (not bm!628423) (not bm!628427) (not b!6912145) (not b!6912359) (not b!6912554) (not b!6911987) (not d!2163535) (not b!6912362) (not b!6912018) (not b!6912118) (not b!6912570) (not b!6912308) (not b!6912221) (not b!6912510) (not b!6912388) (not b!6912115) (not b!6912114) (not b!6912376) (not b!6912557) (not b!6911904) (not b!6912534) (not b!6911984) (not b!6912509) (not b!6912008) (not b!6912539) (not b!6912218) (not b!6912547) (not b!6912320) (not d!2163583) (not b!6912143) (not b!6912538) (not b!6912537) (not bm!628446) (not b!6912566) (not b!6912020) (not b!6912220) (not b!6912520) (not bm!628403) (not d!2163587) (not b!6911906) (not d!2163531) (not b!6912369) (not b!6912526) (not bm!628450) (not b!6912531) (not b!6912546) (not d!2163527) (not b!6912231) (not b!6912551) (not d!2163469))
(check-sat)
