; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735476 () Bool)

(assert start!735476)

(declare-fun b!7639387 () Bool)

(declare-fun e!4541057 () Bool)

(declare-fun tp!2229889 () Bool)

(declare-fun tp!2229892 () Bool)

(assert (=> b!7639387 (= e!4541057 (and tp!2229889 tp!2229892))))

(declare-fun b!7639388 () Bool)

(declare-fun res!3059920 () Bool)

(declare-fun e!4541059 () Bool)

(assert (=> b!7639388 (=> (not res!3059920) (not e!4541059))))

(declare-datatypes ((C!41192 0))(
  ( (C!41193 (val!31036 Int)) )
))
(declare-datatypes ((Regex!20433 0))(
  ( (ElementMatch!20433 (c!1407186 C!41192)) (Concat!29278 (regOne!41378 Regex!20433) (regTwo!41378 Regex!20433)) (EmptyExpr!20433) (Star!20433 (reg!20762 Regex!20433)) (EmptyLang!20433) (Union!20433 (regOne!41379 Regex!20433) (regTwo!41379 Regex!20433)) )
))
(declare-fun r!14126 () Regex!20433)

(get-info :version)

(assert (=> b!7639388 (= res!3059920 ((_ is EmptyExpr!20433) r!14126))))

(declare-fun b!7639389 () Bool)

(declare-datatypes ((List!73284 0))(
  ( (Nil!73160) (Cons!73160 (h!79608 C!41192) (t!388019 List!73284)) )
))
(declare-fun s!9605 () List!73284)

(declare-fun matchR!9934 (Regex!20433 List!73284) Bool)

(declare-fun matchRSpec!4564 (Regex!20433 List!73284) Bool)

(assert (=> b!7639389 (= e!4541059 (not (= (matchR!9934 r!14126 s!9605) (matchRSpec!4564 r!14126 s!9605))))))

(declare-fun b!7639390 () Bool)

(declare-fun tp_is_empty!51221 () Bool)

(assert (=> b!7639390 (= e!4541057 tp_is_empty!51221)))

(declare-fun b!7639392 () Bool)

(declare-fun e!4541058 () Bool)

(declare-fun tp!2229891 () Bool)

(assert (=> b!7639392 (= e!4541058 (and tp_is_empty!51221 tp!2229891))))

(declare-fun b!7639393 () Bool)

(declare-fun tp!2229893 () Bool)

(assert (=> b!7639393 (= e!4541057 tp!2229893)))

(declare-fun res!3059919 () Bool)

(assert (=> start!735476 (=> (not res!3059919) (not e!4541059))))

(declare-fun validRegex!10851 (Regex!20433) Bool)

(assert (=> start!735476 (= res!3059919 (validRegex!10851 r!14126))))

(assert (=> start!735476 e!4541059))

(assert (=> start!735476 e!4541057))

(assert (=> start!735476 e!4541058))

(declare-fun b!7639391 () Bool)

(declare-fun tp!2229888 () Bool)

(declare-fun tp!2229890 () Bool)

(assert (=> b!7639391 (= e!4541057 (and tp!2229888 tp!2229890))))

(assert (= (and start!735476 res!3059919) b!7639388))

(assert (= (and b!7639388 res!3059920) b!7639389))

(assert (= (and start!735476 ((_ is ElementMatch!20433) r!14126)) b!7639390))

(assert (= (and start!735476 ((_ is Concat!29278) r!14126)) b!7639391))

(assert (= (and start!735476 ((_ is Star!20433) r!14126)) b!7639393))

(assert (= (and start!735476 ((_ is Union!20433) r!14126)) b!7639387))

(assert (= (and start!735476 ((_ is Cons!73160) s!9605)) b!7639392))

(declare-fun m!8162600 () Bool)

(assert (=> b!7639389 m!8162600))

(declare-fun m!8162602 () Bool)

(assert (=> b!7639389 m!8162602))

(declare-fun m!8162604 () Bool)

(assert (=> start!735476 m!8162604))

(check-sat (not start!735476) (not b!7639387) (not b!7639393) (not b!7639389) tp_is_empty!51221 (not b!7639391) (not b!7639392))
(check-sat)
(get-model)

(declare-fun b!7639477 () Bool)

(declare-fun e!4541115 () Bool)

(declare-fun e!4541113 () Bool)

(assert (=> b!7639477 (= e!4541115 e!4541113)))

(declare-fun res!3059968 () Bool)

(assert (=> b!7639477 (=> (not res!3059968) (not e!4541113))))

(declare-fun lt!2660485 () Bool)

(assert (=> b!7639477 (= res!3059968 (not lt!2660485))))

(declare-fun b!7639478 () Bool)

(declare-fun res!3059975 () Bool)

(declare-fun e!4541114 () Bool)

(assert (=> b!7639478 (=> (not res!3059975) (not e!4541114))))

(declare-fun isEmpty!41791 (List!73284) Bool)

(declare-fun tail!15251 (List!73284) List!73284)

(assert (=> b!7639478 (= res!3059975 (isEmpty!41791 (tail!15251 s!9605)))))

(declare-fun b!7639479 () Bool)

(declare-fun res!3059972 () Bool)

(assert (=> b!7639479 (=> (not res!3059972) (not e!4541114))))

(declare-fun call!701162 () Bool)

(assert (=> b!7639479 (= res!3059972 (not call!701162))))

(declare-fun b!7639480 () Bool)

(declare-fun e!4541111 () Bool)

(declare-fun head!15711 (List!73284) C!41192)

(assert (=> b!7639480 (= e!4541111 (not (= (head!15711 s!9605) (c!1407186 r!14126))))))

(declare-fun d!2325070 () Bool)

(declare-fun e!4541112 () Bool)

(assert (=> d!2325070 e!4541112))

(declare-fun c!1407205 () Bool)

(assert (=> d!2325070 (= c!1407205 ((_ is EmptyExpr!20433) r!14126))))

(declare-fun e!4541109 () Bool)

(assert (=> d!2325070 (= lt!2660485 e!4541109)))

(declare-fun c!1407206 () Bool)

(assert (=> d!2325070 (= c!1407206 (isEmpty!41791 s!9605))))

(assert (=> d!2325070 (validRegex!10851 r!14126)))

(assert (=> d!2325070 (= (matchR!9934 r!14126 s!9605) lt!2660485)))

(declare-fun b!7639481 () Bool)

(declare-fun res!3059973 () Bool)

(assert (=> b!7639481 (=> res!3059973 e!4541115)))

(assert (=> b!7639481 (= res!3059973 (not ((_ is ElementMatch!20433) r!14126)))))

(declare-fun e!4541110 () Bool)

(assert (=> b!7639481 (= e!4541110 e!4541115)))

(declare-fun b!7639482 () Bool)

(declare-fun res!3059970 () Bool)

(assert (=> b!7639482 (=> res!3059970 e!4541111)))

(assert (=> b!7639482 (= res!3059970 (not (isEmpty!41791 (tail!15251 s!9605))))))

(declare-fun b!7639483 () Bool)

(declare-fun nullable!8940 (Regex!20433) Bool)

(assert (=> b!7639483 (= e!4541109 (nullable!8940 r!14126))))

(declare-fun b!7639484 () Bool)

(declare-fun res!3059969 () Bool)

(assert (=> b!7639484 (=> res!3059969 e!4541115)))

(assert (=> b!7639484 (= res!3059969 e!4541114)))

(declare-fun res!3059971 () Bool)

(assert (=> b!7639484 (=> (not res!3059971) (not e!4541114))))

(assert (=> b!7639484 (= res!3059971 lt!2660485)))

(declare-fun b!7639485 () Bool)

(assert (=> b!7639485 (= e!4541114 (= (head!15711 s!9605) (c!1407186 r!14126)))))

(declare-fun b!7639486 () Bool)

(assert (=> b!7639486 (= e!4541110 (not lt!2660485))))

(declare-fun b!7639487 () Bool)

(assert (=> b!7639487 (= e!4541113 e!4541111)))

(declare-fun res!3059974 () Bool)

(assert (=> b!7639487 (=> res!3059974 e!4541111)))

(assert (=> b!7639487 (= res!3059974 call!701162)))

(declare-fun b!7639488 () Bool)

(assert (=> b!7639488 (= e!4541112 (= lt!2660485 call!701162))))

(declare-fun b!7639489 () Bool)

(declare-fun derivativeStep!5911 (Regex!20433 C!41192) Regex!20433)

(assert (=> b!7639489 (= e!4541109 (matchR!9934 (derivativeStep!5911 r!14126 (head!15711 s!9605)) (tail!15251 s!9605)))))

(declare-fun bm!701157 () Bool)

(assert (=> bm!701157 (= call!701162 (isEmpty!41791 s!9605))))

(declare-fun b!7639490 () Bool)

(assert (=> b!7639490 (= e!4541112 e!4541110)))

(declare-fun c!1407207 () Bool)

(assert (=> b!7639490 (= c!1407207 ((_ is EmptyLang!20433) r!14126))))

(assert (= (and d!2325070 c!1407206) b!7639483))

(assert (= (and d!2325070 (not c!1407206)) b!7639489))

(assert (= (and d!2325070 c!1407205) b!7639488))

(assert (= (and d!2325070 (not c!1407205)) b!7639490))

(assert (= (and b!7639490 c!1407207) b!7639486))

(assert (= (and b!7639490 (not c!1407207)) b!7639481))

(assert (= (and b!7639481 (not res!3059973)) b!7639484))

(assert (= (and b!7639484 res!3059971) b!7639479))

(assert (= (and b!7639479 res!3059972) b!7639478))

(assert (= (and b!7639478 res!3059975) b!7639485))

(assert (= (and b!7639484 (not res!3059969)) b!7639477))

(assert (= (and b!7639477 res!3059968) b!7639487))

(assert (= (and b!7639487 (not res!3059974)) b!7639482))

(assert (= (and b!7639482 (not res!3059970)) b!7639480))

(assert (= (or b!7639488 b!7639479 b!7639487) bm!701157))

(declare-fun m!8162612 () Bool)

(assert (=> b!7639483 m!8162612))

(declare-fun m!8162614 () Bool)

(assert (=> b!7639485 m!8162614))

(assert (=> b!7639489 m!8162614))

(assert (=> b!7639489 m!8162614))

(declare-fun m!8162616 () Bool)

(assert (=> b!7639489 m!8162616))

(declare-fun m!8162618 () Bool)

(assert (=> b!7639489 m!8162618))

(assert (=> b!7639489 m!8162616))

(assert (=> b!7639489 m!8162618))

(declare-fun m!8162620 () Bool)

(assert (=> b!7639489 m!8162620))

(declare-fun m!8162622 () Bool)

(assert (=> d!2325070 m!8162622))

(assert (=> d!2325070 m!8162604))

(assert (=> bm!701157 m!8162622))

(assert (=> b!7639482 m!8162618))

(assert (=> b!7639482 m!8162618))

(declare-fun m!8162624 () Bool)

(assert (=> b!7639482 m!8162624))

(assert (=> b!7639480 m!8162614))

(assert (=> b!7639478 m!8162618))

(assert (=> b!7639478 m!8162618))

(assert (=> b!7639478 m!8162624))

(assert (=> b!7639389 d!2325070))

(declare-fun b!7639625 () Bool)

(assert (=> b!7639625 true))

(assert (=> b!7639625 true))

(declare-fun bs!1944682 () Bool)

(declare-fun b!7639620 () Bool)

(assert (= bs!1944682 (and b!7639620 b!7639625)))

(declare-fun lambda!469615 () Int)

(declare-fun lambda!469614 () Int)

(assert (=> bs!1944682 (not (= lambda!469615 lambda!469614))))

(assert (=> b!7639620 true))

(assert (=> b!7639620 true))

(declare-fun b!7639619 () Bool)

(declare-fun e!4541180 () Bool)

(declare-fun e!4541177 () Bool)

(assert (=> b!7639619 (= e!4541180 e!4541177)))

(declare-fun res!3060020 () Bool)

(assert (=> b!7639619 (= res!3060020 (matchRSpec!4564 (regOne!41379 r!14126) s!9605))))

(assert (=> b!7639619 (=> res!3060020 e!4541177)))

(declare-fun e!4541178 () Bool)

(declare-fun call!701176 () Bool)

(assert (=> b!7639620 (= e!4541178 call!701176)))

(declare-fun d!2325074 () Bool)

(declare-fun c!1407232 () Bool)

(assert (=> d!2325074 (= c!1407232 ((_ is EmptyExpr!20433) r!14126))))

(declare-fun e!4541179 () Bool)

(assert (=> d!2325074 (= (matchRSpec!4564 r!14126 s!9605) e!4541179)))

(declare-fun b!7639621 () Bool)

(declare-fun res!3060019 () Bool)

(declare-fun e!4541176 () Bool)

(assert (=> b!7639621 (=> res!3060019 e!4541176)))

(declare-fun call!701177 () Bool)

(assert (=> b!7639621 (= res!3060019 call!701177)))

(assert (=> b!7639621 (= e!4541178 e!4541176)))

(declare-fun bm!701171 () Bool)

(assert (=> bm!701171 (= call!701177 (isEmpty!41791 s!9605))))

(declare-fun b!7639622 () Bool)

(assert (=> b!7639622 (= e!4541180 e!4541178)))

(declare-fun c!1407231 () Bool)

(assert (=> b!7639622 (= c!1407231 ((_ is Star!20433) r!14126))))

(declare-fun b!7639623 () Bool)

(declare-fun e!4541181 () Bool)

(assert (=> b!7639623 (= e!4541181 (= s!9605 (Cons!73160 (c!1407186 r!14126) Nil!73160)))))

(declare-fun b!7639624 () Bool)

(assert (=> b!7639624 (= e!4541179 call!701177)))

(assert (=> b!7639625 (= e!4541176 call!701176)))

(declare-fun b!7639626 () Bool)

(declare-fun e!4541182 () Bool)

(assert (=> b!7639626 (= e!4541179 e!4541182)))

(declare-fun res!3060021 () Bool)

(assert (=> b!7639626 (= res!3060021 (not ((_ is EmptyLang!20433) r!14126)))))

(assert (=> b!7639626 (=> (not res!3060021) (not e!4541182))))

(declare-fun b!7639627 () Bool)

(assert (=> b!7639627 (= e!4541177 (matchRSpec!4564 (regTwo!41379 r!14126) s!9605))))

(declare-fun b!7639628 () Bool)

(declare-fun c!1407233 () Bool)

(assert (=> b!7639628 (= c!1407233 ((_ is ElementMatch!20433) r!14126))))

(assert (=> b!7639628 (= e!4541182 e!4541181)))

(declare-fun bm!701172 () Bool)

(declare-fun Exists!4585 (Int) Bool)

(assert (=> bm!701172 (= call!701176 (Exists!4585 (ite c!1407231 lambda!469614 lambda!469615)))))

(declare-fun b!7639629 () Bool)

(declare-fun c!1407234 () Bool)

(assert (=> b!7639629 (= c!1407234 ((_ is Union!20433) r!14126))))

(assert (=> b!7639629 (= e!4541181 e!4541180)))

(assert (= (and d!2325074 c!1407232) b!7639624))

(assert (= (and d!2325074 (not c!1407232)) b!7639626))

(assert (= (and b!7639626 res!3060021) b!7639628))

(assert (= (and b!7639628 c!1407233) b!7639623))

(assert (= (and b!7639628 (not c!1407233)) b!7639629))

(assert (= (and b!7639629 c!1407234) b!7639619))

(assert (= (and b!7639629 (not c!1407234)) b!7639622))

(assert (= (and b!7639619 (not res!3060020)) b!7639627))

(assert (= (and b!7639622 c!1407231) b!7639621))

(assert (= (and b!7639622 (not c!1407231)) b!7639620))

(assert (= (and b!7639621 (not res!3060019)) b!7639625))

(assert (= (or b!7639625 b!7639620) bm!701172))

(assert (= (or b!7639624 b!7639621) bm!701171))

(declare-fun m!8162646 () Bool)

(assert (=> b!7639619 m!8162646))

(assert (=> bm!701171 m!8162622))

(declare-fun m!8162648 () Bool)

(assert (=> b!7639627 m!8162648))

(declare-fun m!8162650 () Bool)

(assert (=> bm!701172 m!8162650))

(assert (=> b!7639389 d!2325074))

(declare-fun b!7639652 () Bool)

(declare-fun e!4541203 () Bool)

(declare-fun e!4541201 () Bool)

(assert (=> b!7639652 (= e!4541203 e!4541201)))

(declare-fun c!1407240 () Bool)

(assert (=> b!7639652 (= c!1407240 ((_ is Star!20433) r!14126))))

(declare-fun bm!701179 () Bool)

(declare-fun call!701184 () Bool)

(declare-fun call!701185 () Bool)

(assert (=> bm!701179 (= call!701184 call!701185)))

(declare-fun c!1407239 () Bool)

(declare-fun bm!701180 () Bool)

(assert (=> bm!701180 (= call!701185 (validRegex!10851 (ite c!1407240 (reg!20762 r!14126) (ite c!1407239 (regOne!41379 r!14126) (regOne!41378 r!14126)))))))

(declare-fun b!7639653 () Bool)

(declare-fun res!3060036 () Bool)

(declare-fun e!4541198 () Bool)

(assert (=> b!7639653 (=> res!3060036 e!4541198)))

(assert (=> b!7639653 (= res!3060036 (not ((_ is Concat!29278) r!14126)))))

(declare-fun e!4541202 () Bool)

(assert (=> b!7639653 (= e!4541202 e!4541198)))

(declare-fun b!7639654 () Bool)

(assert (=> b!7639654 (= e!4541201 e!4541202)))

(assert (=> b!7639654 (= c!1407239 ((_ is Union!20433) r!14126))))

(declare-fun b!7639655 () Bool)

(declare-fun e!4541200 () Bool)

(assert (=> b!7639655 (= e!4541201 e!4541200)))

(declare-fun res!3060035 () Bool)

(assert (=> b!7639655 (= res!3060035 (not (nullable!8940 (reg!20762 r!14126))))))

(assert (=> b!7639655 (=> (not res!3060035) (not e!4541200))))

(declare-fun bm!701181 () Bool)

(declare-fun call!701186 () Bool)

(assert (=> bm!701181 (= call!701186 (validRegex!10851 (ite c!1407239 (regTwo!41379 r!14126) (regTwo!41378 r!14126))))))

(declare-fun b!7639657 () Bool)

(declare-fun e!4541199 () Bool)

(assert (=> b!7639657 (= e!4541198 e!4541199)))

(declare-fun res!3060032 () Bool)

(assert (=> b!7639657 (=> (not res!3060032) (not e!4541199))))

(assert (=> b!7639657 (= res!3060032 call!701184)))

(declare-fun b!7639658 () Bool)

(declare-fun e!4541197 () Bool)

(assert (=> b!7639658 (= e!4541197 call!701186)))

(declare-fun d!2325078 () Bool)

(declare-fun res!3060034 () Bool)

(assert (=> d!2325078 (=> res!3060034 e!4541203)))

(assert (=> d!2325078 (= res!3060034 ((_ is ElementMatch!20433) r!14126))))

(assert (=> d!2325078 (= (validRegex!10851 r!14126) e!4541203)))

(declare-fun b!7639656 () Bool)

(assert (=> b!7639656 (= e!4541199 call!701186)))

(declare-fun b!7639659 () Bool)

(assert (=> b!7639659 (= e!4541200 call!701185)))

(declare-fun b!7639660 () Bool)

(declare-fun res!3060033 () Bool)

(assert (=> b!7639660 (=> (not res!3060033) (not e!4541197))))

(assert (=> b!7639660 (= res!3060033 call!701184)))

(assert (=> b!7639660 (= e!4541202 e!4541197)))

(assert (= (and d!2325078 (not res!3060034)) b!7639652))

(assert (= (and b!7639652 c!1407240) b!7639655))

(assert (= (and b!7639652 (not c!1407240)) b!7639654))

(assert (= (and b!7639655 res!3060035) b!7639659))

(assert (= (and b!7639654 c!1407239) b!7639660))

(assert (= (and b!7639654 (not c!1407239)) b!7639653))

(assert (= (and b!7639660 res!3060033) b!7639658))

(assert (= (and b!7639653 (not res!3060036)) b!7639657))

(assert (= (and b!7639657 res!3060032) b!7639656))

(assert (= (or b!7639660 b!7639657) bm!701179))

(assert (= (or b!7639658 b!7639656) bm!701181))

(assert (= (or b!7639659 bm!701179) bm!701180))

(declare-fun m!8162652 () Bool)

(assert (=> bm!701180 m!8162652))

(declare-fun m!8162654 () Bool)

(assert (=> b!7639655 m!8162654))

(declare-fun m!8162656 () Bool)

(assert (=> bm!701181 m!8162656))

(assert (=> start!735476 d!2325078))

(declare-fun b!7639671 () Bool)

(declare-fun e!4541206 () Bool)

(assert (=> b!7639671 (= e!4541206 tp_is_empty!51221)))

(declare-fun b!7639673 () Bool)

(declare-fun tp!2229946 () Bool)

(assert (=> b!7639673 (= e!4541206 tp!2229946)))

(declare-fun b!7639672 () Bool)

(declare-fun tp!2229945 () Bool)

(declare-fun tp!2229944 () Bool)

(assert (=> b!7639672 (= e!4541206 (and tp!2229945 tp!2229944))))

(assert (=> b!7639387 (= tp!2229889 e!4541206)))

(declare-fun b!7639674 () Bool)

(declare-fun tp!2229942 () Bool)

(declare-fun tp!2229943 () Bool)

(assert (=> b!7639674 (= e!4541206 (and tp!2229942 tp!2229943))))

(assert (= (and b!7639387 ((_ is ElementMatch!20433) (regOne!41379 r!14126))) b!7639671))

(assert (= (and b!7639387 ((_ is Concat!29278) (regOne!41379 r!14126))) b!7639672))

(assert (= (and b!7639387 ((_ is Star!20433) (regOne!41379 r!14126))) b!7639673))

(assert (= (and b!7639387 ((_ is Union!20433) (regOne!41379 r!14126))) b!7639674))

(declare-fun b!7639675 () Bool)

(declare-fun e!4541207 () Bool)

(assert (=> b!7639675 (= e!4541207 tp_is_empty!51221)))

(declare-fun b!7639677 () Bool)

(declare-fun tp!2229951 () Bool)

(assert (=> b!7639677 (= e!4541207 tp!2229951)))

(declare-fun b!7639676 () Bool)

(declare-fun tp!2229950 () Bool)

(declare-fun tp!2229949 () Bool)

(assert (=> b!7639676 (= e!4541207 (and tp!2229950 tp!2229949))))

(assert (=> b!7639387 (= tp!2229892 e!4541207)))

(declare-fun b!7639678 () Bool)

(declare-fun tp!2229947 () Bool)

(declare-fun tp!2229948 () Bool)

(assert (=> b!7639678 (= e!4541207 (and tp!2229947 tp!2229948))))

(assert (= (and b!7639387 ((_ is ElementMatch!20433) (regTwo!41379 r!14126))) b!7639675))

(assert (= (and b!7639387 ((_ is Concat!29278) (regTwo!41379 r!14126))) b!7639676))

(assert (= (and b!7639387 ((_ is Star!20433) (regTwo!41379 r!14126))) b!7639677))

(assert (= (and b!7639387 ((_ is Union!20433) (regTwo!41379 r!14126))) b!7639678))

(declare-fun b!7639683 () Bool)

(declare-fun e!4541210 () Bool)

(declare-fun tp!2229954 () Bool)

(assert (=> b!7639683 (= e!4541210 (and tp_is_empty!51221 tp!2229954))))

(assert (=> b!7639392 (= tp!2229891 e!4541210)))

(assert (= (and b!7639392 ((_ is Cons!73160) (t!388019 s!9605))) b!7639683))

(declare-fun b!7639684 () Bool)

(declare-fun e!4541211 () Bool)

(assert (=> b!7639684 (= e!4541211 tp_is_empty!51221)))

(declare-fun b!7639686 () Bool)

(declare-fun tp!2229959 () Bool)

(assert (=> b!7639686 (= e!4541211 tp!2229959)))

(declare-fun b!7639685 () Bool)

(declare-fun tp!2229958 () Bool)

(declare-fun tp!2229957 () Bool)

(assert (=> b!7639685 (= e!4541211 (and tp!2229958 tp!2229957))))

(assert (=> b!7639393 (= tp!2229893 e!4541211)))

(declare-fun b!7639687 () Bool)

(declare-fun tp!2229955 () Bool)

(declare-fun tp!2229956 () Bool)

(assert (=> b!7639687 (= e!4541211 (and tp!2229955 tp!2229956))))

(assert (= (and b!7639393 ((_ is ElementMatch!20433) (reg!20762 r!14126))) b!7639684))

(assert (= (and b!7639393 ((_ is Concat!29278) (reg!20762 r!14126))) b!7639685))

(assert (= (and b!7639393 ((_ is Star!20433) (reg!20762 r!14126))) b!7639686))

(assert (= (and b!7639393 ((_ is Union!20433) (reg!20762 r!14126))) b!7639687))

(declare-fun b!7639688 () Bool)

(declare-fun e!4541212 () Bool)

(assert (=> b!7639688 (= e!4541212 tp_is_empty!51221)))

(declare-fun b!7639690 () Bool)

(declare-fun tp!2229964 () Bool)

(assert (=> b!7639690 (= e!4541212 tp!2229964)))

(declare-fun b!7639689 () Bool)

(declare-fun tp!2229963 () Bool)

(declare-fun tp!2229962 () Bool)

(assert (=> b!7639689 (= e!4541212 (and tp!2229963 tp!2229962))))

(assert (=> b!7639391 (= tp!2229888 e!4541212)))

(declare-fun b!7639691 () Bool)

(declare-fun tp!2229960 () Bool)

(declare-fun tp!2229961 () Bool)

(assert (=> b!7639691 (= e!4541212 (and tp!2229960 tp!2229961))))

(assert (= (and b!7639391 ((_ is ElementMatch!20433) (regOne!41378 r!14126))) b!7639688))

(assert (= (and b!7639391 ((_ is Concat!29278) (regOne!41378 r!14126))) b!7639689))

(assert (= (and b!7639391 ((_ is Star!20433) (regOne!41378 r!14126))) b!7639690))

(assert (= (and b!7639391 ((_ is Union!20433) (regOne!41378 r!14126))) b!7639691))

(declare-fun b!7639692 () Bool)

(declare-fun e!4541213 () Bool)

(assert (=> b!7639692 (= e!4541213 tp_is_empty!51221)))

(declare-fun b!7639694 () Bool)

(declare-fun tp!2229969 () Bool)

(assert (=> b!7639694 (= e!4541213 tp!2229969)))

(declare-fun b!7639693 () Bool)

(declare-fun tp!2229968 () Bool)

(declare-fun tp!2229967 () Bool)

(assert (=> b!7639693 (= e!4541213 (and tp!2229968 tp!2229967))))

(assert (=> b!7639391 (= tp!2229890 e!4541213)))

(declare-fun b!7639695 () Bool)

(declare-fun tp!2229965 () Bool)

(declare-fun tp!2229966 () Bool)

(assert (=> b!7639695 (= e!4541213 (and tp!2229965 tp!2229966))))

(assert (= (and b!7639391 ((_ is ElementMatch!20433) (regTwo!41378 r!14126))) b!7639692))

(assert (= (and b!7639391 ((_ is Concat!29278) (regTwo!41378 r!14126))) b!7639693))

(assert (= (and b!7639391 ((_ is Star!20433) (regTwo!41378 r!14126))) b!7639694))

(assert (= (and b!7639391 ((_ is Union!20433) (regTwo!41378 r!14126))) b!7639695))

(check-sat (not b!7639687) (not b!7639619) (not b!7639693) (not bm!701181) (not b!7639480) (not b!7639694) tp_is_empty!51221 (not b!7639690) (not b!7639686) (not b!7639689) (not b!7639678) (not b!7639489) (not bm!701171) (not b!7639685) (not b!7639672) (not bm!701172) (not b!7639683) (not b!7639691) (not b!7639627) (not b!7639677) (not b!7639695) (not b!7639482) (not b!7639485) (not b!7639676) (not b!7639478) (not b!7639483) (not d!2325070) (not bm!701180) (not b!7639655) (not b!7639673) (not b!7639674) (not bm!701157))
(check-sat)
