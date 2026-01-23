; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45628 () Bool)

(assert start!45628)

(declare-fun res!211115 () Bool)

(declare-fun e!290902 () Bool)

(assert (=> start!45628 (=> (not res!211115) (not e!290902))))

(declare-datatypes ((C!3232 0))(
  ( (C!3233 (val!1602 Int)) )
))
(declare-datatypes ((Regex!1155 0))(
  ( (ElementMatch!1155 (c!95374 C!3232)) (Concat!2055 (regOne!2822 Regex!1155) (regTwo!2822 Regex!1155)) (EmptyExpr!1155) (Star!1155 (reg!1484 Regex!1155)) (EmptyLang!1155) (Union!1155 (regOne!2823 Regex!1155) (regTwo!2823 Regex!1155)) )
))
(declare-fun r!20230 () Regex!1155)

(declare-fun validRegex!383 (Regex!1155) Bool)

(assert (=> start!45628 (= res!211115 (validRegex!383 r!20230))))

(assert (=> start!45628 e!290902))

(declare-fun e!290903 () Bool)

(assert (=> start!45628 e!290903))

(declare-fun tp_is_empty!2307 () Bool)

(assert (=> start!45628 tp_is_empty!2307))

(declare-fun b!476688 () Bool)

(assert (=> b!476688 (= e!290902 (not (validRegex!383 (regTwo!2823 r!20230))))))

(declare-fun c!12526 () C!3232)

(declare-fun lostCause!149 (Regex!1155) Bool)

(declare-fun derivativeStep!241 (Regex!1155 C!3232) Regex!1155)

(assert (=> b!476688 (lostCause!149 (derivativeStep!241 (regOne!2823 r!20230) c!12526))))

(declare-datatypes ((Unit!8352 0))(
  ( (Unit!8353) )
))
(declare-fun lt!210750 () Unit!8352)

(declare-fun lemmaDerivativeStepFixPointLostCause!12 (Regex!1155 C!3232) Unit!8352)

(assert (=> b!476688 (= lt!210750 (lemmaDerivativeStepFixPointLostCause!12 (regOne!2823 r!20230) c!12526))))

(declare-fun b!476689 () Bool)

(declare-fun res!211114 () Bool)

(assert (=> b!476689 (=> (not res!211114) (not e!290902))))

(assert (=> b!476689 (= res!211114 (lostCause!149 r!20230))))

(declare-fun b!476690 () Bool)

(declare-fun tp!133220 () Bool)

(declare-fun tp!133221 () Bool)

(assert (=> b!476690 (= e!290903 (and tp!133220 tp!133221))))

(declare-fun b!476691 () Bool)

(declare-fun res!211113 () Bool)

(assert (=> b!476691 (=> (not res!211113) (not e!290902))))

(get-info :version)

(assert (=> b!476691 (= res!211113 (and (not ((_ is EmptyLang!1155) r!20230)) (not ((_ is EmptyExpr!1155) r!20230)) (not ((_ is ElementMatch!1155) r!20230)) ((_ is Union!1155) r!20230)))))

(declare-fun b!476692 () Bool)

(declare-fun tp!133219 () Bool)

(assert (=> b!476692 (= e!290903 tp!133219)))

(declare-fun b!476693 () Bool)

(declare-fun tp!133217 () Bool)

(declare-fun tp!133218 () Bool)

(assert (=> b!476693 (= e!290903 (and tp!133217 tp!133218))))

(declare-fun b!476694 () Bool)

(assert (=> b!476694 (= e!290903 tp_is_empty!2307)))

(assert (= (and start!45628 res!211115) b!476689))

(assert (= (and b!476689 res!211114) b!476691))

(assert (= (and b!476691 res!211113) b!476688))

(assert (= (and start!45628 ((_ is ElementMatch!1155) r!20230)) b!476694))

(assert (= (and start!45628 ((_ is Concat!2055) r!20230)) b!476693))

(assert (= (and start!45628 ((_ is Star!1155) r!20230)) b!476692))

(assert (= (and start!45628 ((_ is Union!1155) r!20230)) b!476690))

(declare-fun m!747543 () Bool)

(assert (=> start!45628 m!747543))

(declare-fun m!747545 () Bool)

(assert (=> b!476688 m!747545))

(declare-fun m!747547 () Bool)

(assert (=> b!476688 m!747547))

(assert (=> b!476688 m!747547))

(declare-fun m!747549 () Bool)

(assert (=> b!476688 m!747549))

(declare-fun m!747551 () Bool)

(assert (=> b!476688 m!747551))

(declare-fun m!747553 () Bool)

(assert (=> b!476689 m!747553))

(check-sat (not b!476690) tp_is_empty!2307 (not b!476689) (not b!476693) (not start!45628) (not b!476688) (not b!476692))
(check-sat)
(get-model)

(declare-fun b!476731 () Bool)

(declare-fun e!290938 () Bool)

(declare-fun call!33336 () Bool)

(assert (=> b!476731 (= e!290938 call!33336)))

(declare-fun b!476732 () Bool)

(declare-fun e!290936 () Bool)

(assert (=> b!476732 (= e!290936 e!290938)))

(declare-fun res!211140 () Bool)

(assert (=> b!476732 (=> (not res!211140) (not e!290938))))

(declare-fun call!33334 () Bool)

(assert (=> b!476732 (= res!211140 call!33334)))

(declare-fun d!180002 () Bool)

(declare-fun res!211138 () Bool)

(declare-fun e!290933 () Bool)

(assert (=> d!180002 (=> res!211138 e!290933)))

(assert (=> d!180002 (= res!211138 ((_ is ElementMatch!1155) r!20230))))

(assert (=> d!180002 (= (validRegex!383 r!20230) e!290933)))

(declare-fun bm!33329 () Bool)

(declare-fun c!95384 () Bool)

(assert (=> bm!33329 (= call!33334 (validRegex!383 (ite c!95384 (regTwo!2823 r!20230) (regOne!2822 r!20230))))))

(declare-fun b!476733 () Bool)

(declare-fun e!290934 () Bool)

(declare-fun e!290935 () Bool)

(assert (=> b!476733 (= e!290934 e!290935)))

(declare-fun res!211139 () Bool)

(declare-fun nullable!289 (Regex!1155) Bool)

(assert (=> b!476733 (= res!211139 (not (nullable!289 (reg!1484 r!20230))))))

(assert (=> b!476733 (=> (not res!211139) (not e!290935))))

(declare-fun b!476734 () Bool)

(assert (=> b!476734 (= e!290933 e!290934)))

(declare-fun c!95383 () Bool)

(assert (=> b!476734 (= c!95383 ((_ is Star!1155) r!20230))))

(declare-fun bm!33330 () Bool)

(declare-fun call!33335 () Bool)

(assert (=> bm!33330 (= call!33336 call!33335)))

(declare-fun bm!33331 () Bool)

(assert (=> bm!33331 (= call!33335 (validRegex!383 (ite c!95383 (reg!1484 r!20230) (ite c!95384 (regOne!2823 r!20230) (regTwo!2822 r!20230)))))))

(declare-fun b!476735 () Bool)

(declare-fun res!211137 () Bool)

(assert (=> b!476735 (=> res!211137 e!290936)))

(assert (=> b!476735 (= res!211137 (not ((_ is Concat!2055) r!20230)))))

(declare-fun e!290937 () Bool)

(assert (=> b!476735 (= e!290937 e!290936)))

(declare-fun b!476736 () Bool)

(assert (=> b!476736 (= e!290935 call!33335)))

(declare-fun b!476737 () Bool)

(declare-fun e!290932 () Bool)

(assert (=> b!476737 (= e!290932 call!33334)))

(declare-fun b!476738 () Bool)

(assert (=> b!476738 (= e!290934 e!290937)))

(assert (=> b!476738 (= c!95384 ((_ is Union!1155) r!20230))))

(declare-fun b!476739 () Bool)

(declare-fun res!211136 () Bool)

(assert (=> b!476739 (=> (not res!211136) (not e!290932))))

(assert (=> b!476739 (= res!211136 call!33336)))

(assert (=> b!476739 (= e!290937 e!290932)))

(assert (= (and d!180002 (not res!211138)) b!476734))

(assert (= (and b!476734 c!95383) b!476733))

(assert (= (and b!476734 (not c!95383)) b!476738))

(assert (= (and b!476733 res!211139) b!476736))

(assert (= (and b!476738 c!95384) b!476739))

(assert (= (and b!476738 (not c!95384)) b!476735))

(assert (= (and b!476739 res!211136) b!476737))

(assert (= (and b!476735 (not res!211137)) b!476732))

(assert (= (and b!476732 res!211140) b!476731))

(assert (= (or b!476737 b!476732) bm!33329))

(assert (= (or b!476739 b!476731) bm!33330))

(assert (= (or b!476736 bm!33330) bm!33331))

(declare-fun m!747555 () Bool)

(assert (=> bm!33329 m!747555))

(declare-fun m!747557 () Bool)

(assert (=> b!476733 m!747557))

(declare-fun m!747559 () Bool)

(assert (=> bm!33331 m!747559))

(assert (=> start!45628 d!180002))

(declare-fun b!476749 () Bool)

(declare-fun e!290952 () Bool)

(declare-fun call!33342 () Bool)

(assert (=> b!476749 (= e!290952 call!33342)))

(declare-fun b!476750 () Bool)

(declare-fun e!290950 () Bool)

(assert (=> b!476750 (= e!290950 e!290952)))

(declare-fun res!211150 () Bool)

(assert (=> b!476750 (=> (not res!211150) (not e!290952))))

(declare-fun call!33340 () Bool)

(assert (=> b!476750 (= res!211150 call!33340)))

(declare-fun d!180006 () Bool)

(declare-fun res!211148 () Bool)

(declare-fun e!290947 () Bool)

(assert (=> d!180006 (=> res!211148 e!290947)))

(assert (=> d!180006 (= res!211148 ((_ is ElementMatch!1155) (regTwo!2823 r!20230)))))

(assert (=> d!180006 (= (validRegex!383 (regTwo!2823 r!20230)) e!290947)))

(declare-fun bm!33335 () Bool)

(declare-fun c!95388 () Bool)

(assert (=> bm!33335 (= call!33340 (validRegex!383 (ite c!95388 (regTwo!2823 (regTwo!2823 r!20230)) (regOne!2822 (regTwo!2823 r!20230)))))))

(declare-fun b!476751 () Bool)

(declare-fun e!290948 () Bool)

(declare-fun e!290949 () Bool)

(assert (=> b!476751 (= e!290948 e!290949)))

(declare-fun res!211149 () Bool)

(assert (=> b!476751 (= res!211149 (not (nullable!289 (reg!1484 (regTwo!2823 r!20230)))))))

(assert (=> b!476751 (=> (not res!211149) (not e!290949))))

(declare-fun b!476752 () Bool)

(assert (=> b!476752 (= e!290947 e!290948)))

(declare-fun c!95387 () Bool)

(assert (=> b!476752 (= c!95387 ((_ is Star!1155) (regTwo!2823 r!20230)))))

(declare-fun bm!33336 () Bool)

(declare-fun call!33341 () Bool)

(assert (=> bm!33336 (= call!33342 call!33341)))

(declare-fun bm!33337 () Bool)

(assert (=> bm!33337 (= call!33341 (validRegex!383 (ite c!95387 (reg!1484 (regTwo!2823 r!20230)) (ite c!95388 (regOne!2823 (regTwo!2823 r!20230)) (regTwo!2822 (regTwo!2823 r!20230))))))))

(declare-fun b!476753 () Bool)

(declare-fun res!211147 () Bool)

(assert (=> b!476753 (=> res!211147 e!290950)))

(assert (=> b!476753 (= res!211147 (not ((_ is Concat!2055) (regTwo!2823 r!20230))))))

(declare-fun e!290951 () Bool)

(assert (=> b!476753 (= e!290951 e!290950)))

(declare-fun b!476754 () Bool)

(assert (=> b!476754 (= e!290949 call!33341)))

(declare-fun b!476755 () Bool)

(declare-fun e!290946 () Bool)

(assert (=> b!476755 (= e!290946 call!33340)))

(declare-fun b!476756 () Bool)

(assert (=> b!476756 (= e!290948 e!290951)))

(assert (=> b!476756 (= c!95388 ((_ is Union!1155) (regTwo!2823 r!20230)))))

(declare-fun b!476757 () Bool)

(declare-fun res!211146 () Bool)

(assert (=> b!476757 (=> (not res!211146) (not e!290946))))

(assert (=> b!476757 (= res!211146 call!33342)))

(assert (=> b!476757 (= e!290951 e!290946)))

(assert (= (and d!180006 (not res!211148)) b!476752))

(assert (= (and b!476752 c!95387) b!476751))

(assert (= (and b!476752 (not c!95387)) b!476756))

(assert (= (and b!476751 res!211149) b!476754))

(assert (= (and b!476756 c!95388) b!476757))

(assert (= (and b!476756 (not c!95388)) b!476753))

(assert (= (and b!476757 res!211146) b!476755))

(assert (= (and b!476753 (not res!211147)) b!476750))

(assert (= (and b!476750 res!211150) b!476749))

(assert (= (or b!476755 b!476750) bm!33335))

(assert (= (or b!476757 b!476749) bm!33336))

(assert (= (or b!476754 bm!33336) bm!33337))

(declare-fun m!747567 () Bool)

(assert (=> bm!33335 m!747567))

(declare-fun m!747569 () Bool)

(assert (=> b!476751 m!747569))

(declare-fun m!747571 () Bool)

(assert (=> bm!33337 m!747571))

(assert (=> b!476688 d!180006))

(declare-fun d!180010 () Bool)

(declare-fun lostCauseFct!59 (Regex!1155) Bool)

(assert (=> d!180010 (= (lostCause!149 (derivativeStep!241 (regOne!2823 r!20230) c!12526)) (lostCauseFct!59 (derivativeStep!241 (regOne!2823 r!20230) c!12526)))))

(declare-fun bs!58721 () Bool)

(assert (= bs!58721 d!180010))

(assert (=> bs!58721 m!747547))

(declare-fun m!747575 () Bool)

(assert (=> bs!58721 m!747575))

(assert (=> b!476688 d!180010))

(declare-fun bm!33357 () Bool)

(declare-fun c!95418 () Bool)

(declare-fun call!33366 () Regex!1155)

(assert (=> bm!33357 (= call!33366 (derivativeStep!241 (ite c!95418 (regOne!2823 (regOne!2823 r!20230)) (regTwo!2822 (regOne!2823 r!20230))) c!12526))))

(declare-fun b!476805 () Bool)

(declare-fun e!290978 () Regex!1155)

(declare-fun call!33365 () Regex!1155)

(assert (=> b!476805 (= e!290978 (Concat!2055 call!33365 (regOne!2823 r!20230)))))

(declare-fun d!180014 () Bool)

(declare-fun lt!210756 () Regex!1155)

(assert (=> d!180014 (validRegex!383 lt!210756)))

(declare-fun e!290982 () Regex!1155)

(assert (=> d!180014 (= lt!210756 e!290982)))

(declare-fun c!95415 () Bool)

(assert (=> d!180014 (= c!95415 (or ((_ is EmptyExpr!1155) (regOne!2823 r!20230)) ((_ is EmptyLang!1155) (regOne!2823 r!20230))))))

(assert (=> d!180014 (validRegex!383 (regOne!2823 r!20230))))

(assert (=> d!180014 (= (derivativeStep!241 (regOne!2823 r!20230) c!12526) lt!210756)))

(declare-fun b!476807 () Bool)

(declare-fun e!290980 () Regex!1155)

(declare-fun call!33364 () Regex!1155)

(assert (=> b!476807 (= e!290980 (Union!1155 call!33366 call!33364))))

(declare-fun b!476809 () Bool)

(assert (=> b!476809 (= c!95418 ((_ is Union!1155) (regOne!2823 r!20230)))))

(declare-fun e!290981 () Regex!1155)

(assert (=> b!476809 (= e!290981 e!290980)))

(declare-fun b!476811 () Bool)

(declare-fun c!95417 () Bool)

(assert (=> b!476811 (= c!95417 (nullable!289 (regOne!2822 (regOne!2823 r!20230))))))

(declare-fun e!290979 () Regex!1155)

(assert (=> b!476811 (= e!290978 e!290979)))

(declare-fun b!476812 () Bool)

(declare-fun call!33362 () Regex!1155)

(assert (=> b!476812 (= e!290979 (Union!1155 (Concat!2055 call!33362 (regTwo!2822 (regOne!2823 r!20230))) call!33366))))

(declare-fun b!476813 () Bool)

(assert (=> b!476813 (= e!290979 (Union!1155 (Concat!2055 call!33362 (regTwo!2822 (regOne!2823 r!20230))) EmptyLang!1155))))

(declare-fun b!476814 () Bool)

(assert (=> b!476814 (= e!290980 e!290978)))

(declare-fun c!95412 () Bool)

(assert (=> b!476814 (= c!95412 ((_ is Star!1155) (regOne!2823 r!20230)))))

(declare-fun bm!33359 () Bool)

(assert (=> bm!33359 (= call!33364 (derivativeStep!241 (ite c!95418 (regTwo!2823 (regOne!2823 r!20230)) (ite c!95412 (reg!1484 (regOne!2823 r!20230)) (regOne!2822 (regOne!2823 r!20230)))) c!12526))))

(declare-fun b!476815 () Bool)

(assert (=> b!476815 (= e!290982 e!290981)))

(declare-fun c!95416 () Bool)

(assert (=> b!476815 (= c!95416 ((_ is ElementMatch!1155) (regOne!2823 r!20230)))))

(declare-fun bm!33360 () Bool)

(assert (=> bm!33360 (= call!33365 call!33364)))

(declare-fun bm!33361 () Bool)

(assert (=> bm!33361 (= call!33362 call!33365)))

(declare-fun b!476816 () Bool)

(assert (=> b!476816 (= e!290982 EmptyLang!1155)))

(declare-fun b!476817 () Bool)

(assert (=> b!476817 (= e!290981 (ite (= c!12526 (c!95374 (regOne!2823 r!20230))) EmptyExpr!1155 EmptyLang!1155))))

(assert (= (and d!180014 c!95415) b!476816))

(assert (= (and d!180014 (not c!95415)) b!476815))

(assert (= (and b!476815 c!95416) b!476817))

(assert (= (and b!476815 (not c!95416)) b!476809))

(assert (= (and b!476809 c!95418) b!476807))

(assert (= (and b!476809 (not c!95418)) b!476814))

(assert (= (and b!476814 c!95412) b!476805))

(assert (= (and b!476814 (not c!95412)) b!476811))

(assert (= (and b!476811 c!95417) b!476812))

(assert (= (and b!476811 (not c!95417)) b!476813))

(assert (= (or b!476812 b!476813) bm!33361))

(assert (= (or b!476805 bm!33361) bm!33360))

(assert (= (or b!476807 bm!33360) bm!33359))

(assert (= (or b!476807 b!476812) bm!33357))

(declare-fun m!747579 () Bool)

(assert (=> bm!33357 m!747579))

(declare-fun m!747581 () Bool)

(assert (=> d!180014 m!747581))

(declare-fun m!747583 () Bool)

(assert (=> d!180014 m!747583))

(declare-fun m!747587 () Bool)

(assert (=> b!476811 m!747587))

(declare-fun m!747593 () Bool)

(assert (=> bm!33359 m!747593))

(assert (=> b!476688 d!180014))

(declare-fun d!180016 () Bool)

(assert (=> d!180016 (lostCause!149 (derivativeStep!241 (regOne!2823 r!20230) c!12526))))

(declare-fun lt!210761 () Unit!8352)

(declare-fun choose!3624 (Regex!1155 C!3232) Unit!8352)

(assert (=> d!180016 (= lt!210761 (choose!3624 (regOne!2823 r!20230) c!12526))))

(assert (=> d!180016 (validRegex!383 (regOne!2823 r!20230))))

(assert (=> d!180016 (= (lemmaDerivativeStepFixPointLostCause!12 (regOne!2823 r!20230) c!12526) lt!210761)))

(declare-fun bs!58722 () Bool)

(assert (= bs!58722 d!180016))

(assert (=> bs!58722 m!747547))

(assert (=> bs!58722 m!747547))

(assert (=> bs!58722 m!747549))

(declare-fun m!747597 () Bool)

(assert (=> bs!58722 m!747597))

(assert (=> bs!58722 m!747583))

(assert (=> b!476688 d!180016))

(declare-fun d!180021 () Bool)

(assert (=> d!180021 (= (lostCause!149 r!20230) (lostCauseFct!59 r!20230))))

(declare-fun bs!58724 () Bool)

(assert (= bs!58724 d!180021))

(declare-fun m!747601 () Bool)

(assert (=> bs!58724 m!747601))

(assert (=> b!476689 d!180021))

(declare-fun e!290994 () Bool)

(assert (=> b!476692 (= tp!133219 e!290994)))

(declare-fun b!476849 () Bool)

(declare-fun tp!133240 () Bool)

(assert (=> b!476849 (= e!290994 tp!133240)))

(declare-fun b!476850 () Bool)

(declare-fun tp!133241 () Bool)

(declare-fun tp!133238 () Bool)

(assert (=> b!476850 (= e!290994 (and tp!133241 tp!133238))))

(declare-fun b!476848 () Bool)

(declare-fun tp!133242 () Bool)

(declare-fun tp!133239 () Bool)

(assert (=> b!476848 (= e!290994 (and tp!133242 tp!133239))))

(declare-fun b!476847 () Bool)

(assert (=> b!476847 (= e!290994 tp_is_empty!2307)))

(assert (= (and b!476692 ((_ is ElementMatch!1155) (reg!1484 r!20230))) b!476847))

(assert (= (and b!476692 ((_ is Concat!2055) (reg!1484 r!20230))) b!476848))

(assert (= (and b!476692 ((_ is Star!1155) (reg!1484 r!20230))) b!476849))

(assert (= (and b!476692 ((_ is Union!1155) (reg!1484 r!20230))) b!476850))

(declare-fun e!290995 () Bool)

(assert (=> b!476693 (= tp!133217 e!290995)))

(declare-fun b!476853 () Bool)

(declare-fun tp!133249 () Bool)

(assert (=> b!476853 (= e!290995 tp!133249)))

(declare-fun b!476854 () Bool)

(declare-fun tp!133250 () Bool)

(declare-fun tp!133247 () Bool)

(assert (=> b!476854 (= e!290995 (and tp!133250 tp!133247))))

(declare-fun b!476852 () Bool)

(declare-fun tp!133251 () Bool)

(declare-fun tp!133248 () Bool)

(assert (=> b!476852 (= e!290995 (and tp!133251 tp!133248))))

(declare-fun b!476851 () Bool)

(assert (=> b!476851 (= e!290995 tp_is_empty!2307)))

(assert (= (and b!476693 ((_ is ElementMatch!1155) (regOne!2822 r!20230))) b!476851))

(assert (= (and b!476693 ((_ is Concat!2055) (regOne!2822 r!20230))) b!476852))

(assert (= (and b!476693 ((_ is Star!1155) (regOne!2822 r!20230))) b!476853))

(assert (= (and b!476693 ((_ is Union!1155) (regOne!2822 r!20230))) b!476854))

(declare-fun e!290996 () Bool)

(assert (=> b!476693 (= tp!133218 e!290996)))

(declare-fun b!476857 () Bool)

(declare-fun tp!133254 () Bool)

(assert (=> b!476857 (= e!290996 tp!133254)))

(declare-fun b!476858 () Bool)

(declare-fun tp!133255 () Bool)

(declare-fun tp!133252 () Bool)

(assert (=> b!476858 (= e!290996 (and tp!133255 tp!133252))))

(declare-fun b!476856 () Bool)

(declare-fun tp!133256 () Bool)

(declare-fun tp!133253 () Bool)

(assert (=> b!476856 (= e!290996 (and tp!133256 tp!133253))))

(declare-fun b!476855 () Bool)

(assert (=> b!476855 (= e!290996 tp_is_empty!2307)))

(assert (= (and b!476693 ((_ is ElementMatch!1155) (regTwo!2822 r!20230))) b!476855))

(assert (= (and b!476693 ((_ is Concat!2055) (regTwo!2822 r!20230))) b!476856))

(assert (= (and b!476693 ((_ is Star!1155) (regTwo!2822 r!20230))) b!476857))

(assert (= (and b!476693 ((_ is Union!1155) (regTwo!2822 r!20230))) b!476858))

(declare-fun e!290997 () Bool)

(assert (=> b!476690 (= tp!133220 e!290997)))

(declare-fun b!476861 () Bool)

(declare-fun tp!133259 () Bool)

(assert (=> b!476861 (= e!290997 tp!133259)))

(declare-fun b!476862 () Bool)

(declare-fun tp!133260 () Bool)

(declare-fun tp!133257 () Bool)

(assert (=> b!476862 (= e!290997 (and tp!133260 tp!133257))))

(declare-fun b!476860 () Bool)

(declare-fun tp!133261 () Bool)

(declare-fun tp!133258 () Bool)

(assert (=> b!476860 (= e!290997 (and tp!133261 tp!133258))))

(declare-fun b!476859 () Bool)

(assert (=> b!476859 (= e!290997 tp_is_empty!2307)))

(assert (= (and b!476690 ((_ is ElementMatch!1155) (regOne!2823 r!20230))) b!476859))

(assert (= (and b!476690 ((_ is Concat!2055) (regOne!2823 r!20230))) b!476860))

(assert (= (and b!476690 ((_ is Star!1155) (regOne!2823 r!20230))) b!476861))

(assert (= (and b!476690 ((_ is Union!1155) (regOne!2823 r!20230))) b!476862))

(declare-fun e!290999 () Bool)

(assert (=> b!476690 (= tp!133221 e!290999)))

(declare-fun b!476869 () Bool)

(declare-fun tp!133269 () Bool)

(assert (=> b!476869 (= e!290999 tp!133269)))

(declare-fun b!476870 () Bool)

(declare-fun tp!133270 () Bool)

(declare-fun tp!133267 () Bool)

(assert (=> b!476870 (= e!290999 (and tp!133270 tp!133267))))

(declare-fun b!476868 () Bool)

(declare-fun tp!133271 () Bool)

(declare-fun tp!133268 () Bool)

(assert (=> b!476868 (= e!290999 (and tp!133271 tp!133268))))

(declare-fun b!476867 () Bool)

(assert (=> b!476867 (= e!290999 tp_is_empty!2307)))

(assert (= (and b!476690 ((_ is ElementMatch!1155) (regTwo!2823 r!20230))) b!476867))

(assert (= (and b!476690 ((_ is Concat!2055) (regTwo!2823 r!20230))) b!476868))

(assert (= (and b!476690 ((_ is Star!1155) (regTwo!2823 r!20230))) b!476869))

(assert (= (and b!476690 ((_ is Union!1155) (regTwo!2823 r!20230))) b!476870))

(check-sat (not b!476861) (not bm!33331) (not d!180021) (not b!476869) (not b!476811) tp_is_empty!2307 (not b!476862) (not b!476856) (not bm!33337) (not b!476850) (not b!476870) (not b!476868) (not bm!33359) (not b!476852) (not b!476733) (not b!476860) (not bm!33357) (not b!476853) (not b!476751) (not d!180016) (not b!476857) (not bm!33329) (not bm!33335) (not b!476849) (not b!476848) (not b!476854) (not d!180010) (not d!180014) (not b!476858))
(check-sat)
