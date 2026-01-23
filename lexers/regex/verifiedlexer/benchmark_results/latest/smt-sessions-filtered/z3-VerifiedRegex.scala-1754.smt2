; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87766 () Bool)

(assert start!87766)

(declare-fun b!998569 () Bool)

(declare-fun e!640322 () Bool)

(declare-fun e!640327 () Bool)

(assert (=> b!998569 (= e!640322 e!640327)))

(declare-fun res!450949 () Bool)

(assert (=> b!998569 (=> res!450949 e!640327)))

(declare-fun lt!351685 () Bool)

(assert (=> b!998569 (= res!450949 (not lt!351685))))

(declare-fun e!640325 () Bool)

(assert (=> b!998569 e!640325))

(declare-fun res!450950 () Bool)

(assert (=> b!998569 (=> res!450950 e!640325)))

(assert (=> b!998569 (= res!450950 lt!351685)))

(declare-datatypes ((C!6104 0))(
  ( (C!6105 (val!3300 Int)) )
))
(declare-datatypes ((Regex!2767 0))(
  ( (ElementMatch!2767 (c!164334 C!6104)) (Concat!4600 (regOne!6046 Regex!2767) (regTwo!6046 Regex!2767)) (EmptyExpr!2767) (Star!2767 (reg!3096 Regex!2767)) (EmptyLang!2767) (Union!2767 (regOne!6047 Regex!2767) (regTwo!6047 Regex!2767)) )
))
(declare-fun r!15766 () Regex!2767)

(declare-datatypes ((List!9997 0))(
  ( (Nil!9981) (Cons!9981 (h!15382 C!6104) (t!101043 List!9997)) )
))
(declare-fun s!10566 () List!9997)

(declare-fun matchR!1303 (Regex!2767 List!9997) Bool)

(assert (=> b!998569 (= lt!351685 (matchR!1303 (regOne!6047 r!15766) s!10566))))

(declare-datatypes ((Unit!15193 0))(
  ( (Unit!15194) )
))
(declare-fun lt!351686 () Unit!15193)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!74 (Regex!2767 Regex!2767 List!9997) Unit!15193)

(assert (=> b!998569 (= lt!351686 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!74 (regOne!6047 r!15766) (regTwo!6047 r!15766) s!10566))))

(declare-fun b!998570 () Bool)

(assert (=> b!998570 (= e!640325 (matchR!1303 (regTwo!6047 r!15766) s!10566))))

(declare-fun res!450947 () Bool)

(declare-fun e!640323 () Bool)

(assert (=> start!87766 (=> (not res!450947) (not e!640323))))

(declare-fun validRegex!1236 (Regex!2767) Bool)

(assert (=> start!87766 (= res!450947 (validRegex!1236 r!15766))))

(assert (=> start!87766 e!640323))

(declare-fun e!640324 () Bool)

(assert (=> start!87766 e!640324))

(declare-fun e!640326 () Bool)

(assert (=> start!87766 e!640326))

(declare-fun b!998571 () Bool)

(assert (=> b!998571 (= e!640323 (not e!640322))))

(declare-fun res!450948 () Bool)

(assert (=> b!998571 (=> res!450948 e!640322)))

(declare-fun lt!351688 () Bool)

(get-info :version)

(assert (=> b!998571 (= res!450948 (or (not lt!351688) (and ((_ is Concat!4600) r!15766) ((_ is EmptyExpr!2767) (regOne!6046 r!15766))) (and ((_ is Concat!4600) r!15766) ((_ is EmptyExpr!2767) (regTwo!6046 r!15766))) ((_ is Concat!4600) r!15766) (not ((_ is Union!2767) r!15766))))))

(declare-fun matchRSpec!566 (Regex!2767 List!9997) Bool)

(assert (=> b!998571 (= lt!351688 (matchRSpec!566 r!15766 s!10566))))

(assert (=> b!998571 (= lt!351688 (matchR!1303 r!15766 s!10566))))

(declare-fun lt!351682 () Unit!15193)

(declare-fun mainMatchTheorem!566 (Regex!2767 List!9997) Unit!15193)

(assert (=> b!998571 (= lt!351682 (mainMatchTheorem!566 r!15766 s!10566))))

(declare-fun b!998572 () Bool)

(declare-fun e!640321 () Bool)

(declare-fun removeUselessConcat!364 (Regex!2767) Regex!2767)

(assert (=> b!998572 (= e!640321 (matchR!1303 (removeUselessConcat!364 r!15766) s!10566))))

(declare-fun lt!351683 () Regex!2767)

(declare-fun lt!351689 () Regex!2767)

(assert (=> b!998572 (matchR!1303 (Union!2767 lt!351683 lt!351689) s!10566)))

(declare-fun lt!351684 () Unit!15193)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!20 (Regex!2767 Regex!2767 List!9997) Unit!15193)

(assert (=> b!998572 (= lt!351684 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!20 lt!351683 lt!351689 s!10566))))

(declare-fun b!998573 () Bool)

(declare-fun tp_is_empty!5177 () Bool)

(assert (=> b!998573 (= e!640324 tp_is_empty!5177)))

(declare-fun b!998574 () Bool)

(declare-fun tp!304515 () Bool)

(assert (=> b!998574 (= e!640326 (and tp_is_empty!5177 tp!304515))))

(declare-fun b!998575 () Bool)

(declare-fun tp!304514 () Bool)

(assert (=> b!998575 (= e!640324 tp!304514)))

(declare-fun b!998576 () Bool)

(assert (=> b!998576 (= e!640327 e!640321)))

(declare-fun res!450951 () Bool)

(assert (=> b!998576 (=> res!450951 e!640321)))

(assert (=> b!998576 (= res!450951 (not (validRegex!1236 lt!351683)))))

(assert (=> b!998576 (= lt!351689 (removeUselessConcat!364 (regTwo!6047 r!15766)))))

(assert (=> b!998576 (matchR!1303 lt!351683 s!10566)))

(assert (=> b!998576 (= lt!351683 (removeUselessConcat!364 (regOne!6047 r!15766)))))

(declare-fun lt!351687 () Unit!15193)

(declare-fun lemmaRemoveUselessConcatSound!210 (Regex!2767 List!9997) Unit!15193)

(assert (=> b!998576 (= lt!351687 (lemmaRemoveUselessConcatSound!210 (regOne!6047 r!15766) s!10566))))

(declare-fun b!998577 () Bool)

(declare-fun tp!304513 () Bool)

(declare-fun tp!304516 () Bool)

(assert (=> b!998577 (= e!640324 (and tp!304513 tp!304516))))

(declare-fun b!998578 () Bool)

(declare-fun res!450952 () Bool)

(assert (=> b!998578 (=> res!450952 e!640321)))

(assert (=> b!998578 (= res!450952 (not (validRegex!1236 lt!351689)))))

(declare-fun b!998579 () Bool)

(declare-fun tp!304512 () Bool)

(declare-fun tp!304511 () Bool)

(assert (=> b!998579 (= e!640324 (and tp!304512 tp!304511))))

(assert (= (and start!87766 res!450947) b!998571))

(assert (= (and b!998571 (not res!450948)) b!998569))

(assert (= (and b!998569 (not res!450950)) b!998570))

(assert (= (and b!998569 (not res!450949)) b!998576))

(assert (= (and b!998576 (not res!450951)) b!998578))

(assert (= (and b!998578 (not res!450952)) b!998572))

(assert (= (and start!87766 ((_ is ElementMatch!2767) r!15766)) b!998573))

(assert (= (and start!87766 ((_ is Concat!4600) r!15766)) b!998577))

(assert (= (and start!87766 ((_ is Star!2767) r!15766)) b!998575))

(assert (= (and start!87766 ((_ is Union!2767) r!15766)) b!998579))

(assert (= (and start!87766 ((_ is Cons!9981) s!10566)) b!998574))

(declare-fun m!1189123 () Bool)

(assert (=> b!998578 m!1189123))

(declare-fun m!1189125 () Bool)

(assert (=> b!998570 m!1189125))

(declare-fun m!1189127 () Bool)

(assert (=> start!87766 m!1189127))

(declare-fun m!1189129 () Bool)

(assert (=> b!998571 m!1189129))

(declare-fun m!1189131 () Bool)

(assert (=> b!998571 m!1189131))

(declare-fun m!1189133 () Bool)

(assert (=> b!998571 m!1189133))

(declare-fun m!1189135 () Bool)

(assert (=> b!998569 m!1189135))

(declare-fun m!1189137 () Bool)

(assert (=> b!998569 m!1189137))

(declare-fun m!1189139 () Bool)

(assert (=> b!998576 m!1189139))

(declare-fun m!1189141 () Bool)

(assert (=> b!998576 m!1189141))

(declare-fun m!1189143 () Bool)

(assert (=> b!998576 m!1189143))

(declare-fun m!1189145 () Bool)

(assert (=> b!998576 m!1189145))

(declare-fun m!1189147 () Bool)

(assert (=> b!998576 m!1189147))

(declare-fun m!1189149 () Bool)

(assert (=> b!998572 m!1189149))

(assert (=> b!998572 m!1189149))

(declare-fun m!1189151 () Bool)

(assert (=> b!998572 m!1189151))

(declare-fun m!1189153 () Bool)

(assert (=> b!998572 m!1189153))

(declare-fun m!1189155 () Bool)

(assert (=> b!998572 m!1189155))

(check-sat (not start!87766) (not b!998572) (not b!998575) (not b!998576) (not b!998570) (not b!998578) (not b!998577) (not b!998571) (not b!998569) (not b!998574) tp_is_empty!5177 (not b!998579))
(check-sat)
(get-model)

(declare-fun b!998598 () Bool)

(declare-fun res!450965 () Bool)

(declare-fun e!640344 () Bool)

(assert (=> b!998598 (=> res!450965 e!640344)))

(assert (=> b!998598 (= res!450965 (not ((_ is Concat!4600) r!15766)))))

(declare-fun e!640345 () Bool)

(assert (=> b!998598 (= e!640345 e!640344)))

(declare-fun b!998599 () Bool)

(declare-fun e!640347 () Bool)

(declare-fun call!66186 () Bool)

(assert (=> b!998599 (= e!640347 call!66186)))

(declare-fun b!998600 () Bool)

(declare-fun e!640346 () Bool)

(assert (=> b!998600 (= e!640346 e!640345)))

(declare-fun c!164339 () Bool)

(assert (=> b!998600 (= c!164339 ((_ is Union!2767) r!15766))))

(declare-fun b!998601 () Bool)

(declare-fun e!640343 () Bool)

(assert (=> b!998601 (= e!640344 e!640343)))

(declare-fun res!450966 () Bool)

(assert (=> b!998601 (=> (not res!450966) (not e!640343))))

(declare-fun call!66188 () Bool)

(assert (=> b!998601 (= res!450966 call!66188)))

(declare-fun b!998602 () Bool)

(declare-fun res!450967 () Bool)

(declare-fun e!640342 () Bool)

(assert (=> b!998602 (=> (not res!450967) (not e!640342))))

(assert (=> b!998602 (= res!450967 call!66188)))

(assert (=> b!998602 (= e!640345 e!640342)))

(declare-fun bm!66181 () Bool)

(assert (=> bm!66181 (= call!66188 (validRegex!1236 (ite c!164339 (regOne!6047 r!15766) (regOne!6046 r!15766))))))

(declare-fun b!998604 () Bool)

(declare-fun call!66187 () Bool)

(assert (=> b!998604 (= e!640342 call!66187)))

(declare-fun bm!66182 () Bool)

(declare-fun c!164340 () Bool)

(assert (=> bm!66182 (= call!66186 (validRegex!1236 (ite c!164340 (reg!3096 r!15766) (ite c!164339 (regTwo!6047 r!15766) (regTwo!6046 r!15766)))))))

(declare-fun b!998605 () Bool)

(assert (=> b!998605 (= e!640346 e!640347)))

(declare-fun res!450963 () Bool)

(declare-fun nullable!881 (Regex!2767) Bool)

(assert (=> b!998605 (= res!450963 (not (nullable!881 (reg!3096 r!15766))))))

(assert (=> b!998605 (=> (not res!450963) (not e!640347))))

(declare-fun b!998603 () Bool)

(declare-fun e!640348 () Bool)

(assert (=> b!998603 (= e!640348 e!640346)))

(assert (=> b!998603 (= c!164340 ((_ is Star!2767) r!15766))))

(declare-fun d!291087 () Bool)

(declare-fun res!450964 () Bool)

(assert (=> d!291087 (=> res!450964 e!640348)))

(assert (=> d!291087 (= res!450964 ((_ is ElementMatch!2767) r!15766))))

(assert (=> d!291087 (= (validRegex!1236 r!15766) e!640348)))

(declare-fun bm!66183 () Bool)

(assert (=> bm!66183 (= call!66187 call!66186)))

(declare-fun b!998606 () Bool)

(assert (=> b!998606 (= e!640343 call!66187)))

(assert (= (and d!291087 (not res!450964)) b!998603))

(assert (= (and b!998603 c!164340) b!998605))

(assert (= (and b!998603 (not c!164340)) b!998600))

(assert (= (and b!998605 res!450963) b!998599))

(assert (= (and b!998600 c!164339) b!998602))

(assert (= (and b!998600 (not c!164339)) b!998598))

(assert (= (and b!998602 res!450967) b!998604))

(assert (= (and b!998598 (not res!450965)) b!998601))

(assert (= (and b!998601 res!450966) b!998606))

(assert (= (or b!998604 b!998606) bm!66183))

(assert (= (or b!998602 b!998601) bm!66181))

(assert (= (or b!998599 bm!66183) bm!66182))

(declare-fun m!1189157 () Bool)

(assert (=> bm!66181 m!1189157))

(declare-fun m!1189159 () Bool)

(assert (=> bm!66182 m!1189159))

(declare-fun m!1189161 () Bool)

(assert (=> b!998605 m!1189161))

(assert (=> start!87766 d!291087))

(declare-fun b!998677 () Bool)

(declare-fun res!451010 () Bool)

(declare-fun e!640389 () Bool)

(assert (=> b!998677 (=> (not res!451010) (not e!640389))))

(declare-fun call!66194 () Bool)

(assert (=> b!998677 (= res!451010 (not call!66194))))

(declare-fun b!998679 () Bool)

(declare-fun res!451008 () Bool)

(declare-fun e!640386 () Bool)

(assert (=> b!998679 (=> res!451008 e!640386)))

(declare-fun isEmpty!6319 (List!9997) Bool)

(declare-fun tail!1402 (List!9997) List!9997)

(assert (=> b!998679 (= res!451008 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!998680 () Bool)

(declare-fun head!1840 (List!9997) C!6104)

(assert (=> b!998680 (= e!640386 (not (= (head!1840 s!10566) (c!164334 (regTwo!6047 r!15766)))))))

(declare-fun b!998681 () Bool)

(declare-fun e!640390 () Bool)

(assert (=> b!998681 (= e!640390 (nullable!881 (regTwo!6047 r!15766)))))

(declare-fun b!998682 () Bool)

(declare-fun res!451012 () Bool)

(assert (=> b!998682 (=> (not res!451012) (not e!640389))))

(assert (=> b!998682 (= res!451012 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!998683 () Bool)

(declare-fun e!640387 () Bool)

(declare-fun lt!351695 () Bool)

(assert (=> b!998683 (= e!640387 (= lt!351695 call!66194))))

(declare-fun b!998684 () Bool)

(declare-fun e!640385 () Bool)

(assert (=> b!998684 (= e!640387 e!640385)))

(declare-fun c!164358 () Bool)

(assert (=> b!998684 (= c!164358 ((_ is EmptyLang!2767) (regTwo!6047 r!15766)))))

(declare-fun b!998685 () Bool)

(declare-fun res!451014 () Bool)

(declare-fun e!640388 () Bool)

(assert (=> b!998685 (=> res!451014 e!640388)))

(assert (=> b!998685 (= res!451014 (not ((_ is ElementMatch!2767) (regTwo!6047 r!15766))))))

(assert (=> b!998685 (= e!640385 e!640388)))

(declare-fun b!998686 () Bool)

(declare-fun e!640384 () Bool)

(assert (=> b!998686 (= e!640384 e!640386)))

(declare-fun res!451011 () Bool)

(assert (=> b!998686 (=> res!451011 e!640386)))

(assert (=> b!998686 (= res!451011 call!66194)))

(declare-fun b!998687 () Bool)

(declare-fun derivativeStep!687 (Regex!2767 C!6104) Regex!2767)

(assert (=> b!998687 (= e!640390 (matchR!1303 (derivativeStep!687 (regTwo!6047 r!15766) (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291091 () Bool)

(assert (=> d!291091 e!640387))

(declare-fun c!164357 () Bool)

(assert (=> d!291091 (= c!164357 ((_ is EmptyExpr!2767) (regTwo!6047 r!15766)))))

(assert (=> d!291091 (= lt!351695 e!640390)))

(declare-fun c!164356 () Bool)

(assert (=> d!291091 (= c!164356 (isEmpty!6319 s!10566))))

(assert (=> d!291091 (validRegex!1236 (regTwo!6047 r!15766))))

(assert (=> d!291091 (= (matchR!1303 (regTwo!6047 r!15766) s!10566) lt!351695)))

(declare-fun b!998678 () Bool)

(assert (=> b!998678 (= e!640388 e!640384)))

(declare-fun res!451013 () Bool)

(assert (=> b!998678 (=> (not res!451013) (not e!640384))))

(assert (=> b!998678 (= res!451013 (not lt!351695))))

(declare-fun b!998688 () Bool)

(assert (=> b!998688 (= e!640385 (not lt!351695))))

(declare-fun b!998689 () Bool)

(declare-fun res!451009 () Bool)

(assert (=> b!998689 (=> res!451009 e!640388)))

(assert (=> b!998689 (= res!451009 e!640389)))

(declare-fun res!451015 () Bool)

(assert (=> b!998689 (=> (not res!451015) (not e!640389))))

(assert (=> b!998689 (= res!451015 lt!351695)))

(declare-fun bm!66189 () Bool)

(assert (=> bm!66189 (= call!66194 (isEmpty!6319 s!10566))))

(declare-fun b!998690 () Bool)

(assert (=> b!998690 (= e!640389 (= (head!1840 s!10566) (c!164334 (regTwo!6047 r!15766))))))

(assert (= (and d!291091 c!164356) b!998681))

(assert (= (and d!291091 (not c!164356)) b!998687))

(assert (= (and d!291091 c!164357) b!998683))

(assert (= (and d!291091 (not c!164357)) b!998684))

(assert (= (and b!998684 c!164358) b!998688))

(assert (= (and b!998684 (not c!164358)) b!998685))

(assert (= (and b!998685 (not res!451014)) b!998689))

(assert (= (and b!998689 res!451015) b!998677))

(assert (= (and b!998677 res!451010) b!998682))

(assert (= (and b!998682 res!451012) b!998690))

(assert (= (and b!998689 (not res!451009)) b!998678))

(assert (= (and b!998678 res!451013) b!998686))

(assert (= (and b!998686 (not res!451011)) b!998679))

(assert (= (and b!998679 (not res!451008)) b!998680))

(assert (= (or b!998683 b!998677 b!998686) bm!66189))

(declare-fun m!1189179 () Bool)

(assert (=> b!998687 m!1189179))

(assert (=> b!998687 m!1189179))

(declare-fun m!1189181 () Bool)

(assert (=> b!998687 m!1189181))

(declare-fun m!1189183 () Bool)

(assert (=> b!998687 m!1189183))

(assert (=> b!998687 m!1189181))

(assert (=> b!998687 m!1189183))

(declare-fun m!1189185 () Bool)

(assert (=> b!998687 m!1189185))

(declare-fun m!1189187 () Bool)

(assert (=> b!998681 m!1189187))

(assert (=> b!998690 m!1189179))

(assert (=> b!998679 m!1189183))

(assert (=> b!998679 m!1189183))

(declare-fun m!1189189 () Bool)

(assert (=> b!998679 m!1189189))

(assert (=> b!998682 m!1189183))

(assert (=> b!998682 m!1189183))

(assert (=> b!998682 m!1189189))

(declare-fun m!1189191 () Bool)

(assert (=> d!291091 m!1189191))

(declare-fun m!1189193 () Bool)

(assert (=> d!291091 m!1189193))

(assert (=> b!998680 m!1189179))

(assert (=> bm!66189 m!1189191))

(assert (=> b!998570 d!291091))

(declare-fun b!998777 () Bool)

(declare-fun e!640443 () Regex!2767)

(declare-fun call!66222 () Regex!2767)

(declare-fun call!66224 () Regex!2767)

(assert (=> b!998777 (= e!640443 (Concat!4600 call!66222 call!66224))))

(declare-fun b!998778 () Bool)

(declare-fun e!640441 () Regex!2767)

(declare-fun call!66223 () Regex!2767)

(assert (=> b!998778 (= e!640441 call!66223)))

(declare-fun b!998779 () Bool)

(declare-fun e!640439 () Regex!2767)

(assert (=> b!998779 (= e!640443 e!640439)))

(declare-fun c!164391 () Bool)

(assert (=> b!998779 (= c!164391 ((_ is Union!2767) (regTwo!6047 r!15766)))))

(declare-fun bm!66217 () Bool)

(declare-fun call!66226 () Regex!2767)

(assert (=> bm!66217 (= call!66224 call!66226)))

(declare-fun bm!66218 () Bool)

(declare-fun c!164392 () Bool)

(assert (=> bm!66218 (= call!66222 (removeUselessConcat!364 (ite c!164392 (regOne!6046 (regTwo!6047 r!15766)) (regOne!6047 (regTwo!6047 r!15766)))))))

(declare-fun bm!66219 () Bool)

(assert (=> bm!66219 (= call!66226 call!66223)))

(declare-fun b!998780 () Bool)

(declare-fun e!640442 () Bool)

(declare-fun lt!351706 () Regex!2767)

(assert (=> b!998780 (= e!640442 (= (nullable!881 lt!351706) (nullable!881 (regTwo!6047 r!15766))))))

(declare-fun bm!66220 () Bool)

(declare-fun call!66225 () Regex!2767)

(assert (=> bm!66220 (= call!66225 call!66224)))

(declare-fun b!998781 () Bool)

(assert (=> b!998781 (= e!640439 (Union!2767 call!66222 call!66225))))

(declare-fun b!998782 () Bool)

(declare-fun e!640438 () Regex!2767)

(assert (=> b!998782 (= e!640438 (Star!2767 call!66225))))

(declare-fun d!291095 () Bool)

(assert (=> d!291095 e!640442))

(declare-fun res!451040 () Bool)

(assert (=> d!291095 (=> (not res!451040) (not e!640442))))

(assert (=> d!291095 (= res!451040 (validRegex!1236 lt!351706))))

(assert (=> d!291095 (= lt!351706 e!640441)))

(declare-fun c!164393 () Bool)

(assert (=> d!291095 (= c!164393 (and ((_ is Concat!4600) (regTwo!6047 r!15766)) ((_ is EmptyExpr!2767) (regOne!6046 (regTwo!6047 r!15766)))))))

(assert (=> d!291095 (validRegex!1236 (regTwo!6047 r!15766))))

(assert (=> d!291095 (= (removeUselessConcat!364 (regTwo!6047 r!15766)) lt!351706)))

(declare-fun b!998783 () Bool)

(declare-fun c!164394 () Bool)

(assert (=> b!998783 (= c!164394 ((_ is Star!2767) (regTwo!6047 r!15766)))))

(assert (=> b!998783 (= e!640439 e!640438)))

(declare-fun bm!66221 () Bool)

(declare-fun c!164390 () Bool)

(assert (=> bm!66221 (= call!66223 (removeUselessConcat!364 (ite c!164393 (regTwo!6046 (regTwo!6047 r!15766)) (ite c!164390 (regOne!6046 (regTwo!6047 r!15766)) (ite c!164392 (regTwo!6046 (regTwo!6047 r!15766)) (ite c!164391 (regTwo!6047 (regTwo!6047 r!15766)) (reg!3096 (regTwo!6047 r!15766))))))))))

(declare-fun b!998784 () Bool)

(declare-fun e!640440 () Regex!2767)

(assert (=> b!998784 (= e!640441 e!640440)))

(assert (=> b!998784 (= c!164390 (and ((_ is Concat!4600) (regTwo!6047 r!15766)) ((_ is EmptyExpr!2767) (regTwo!6046 (regTwo!6047 r!15766)))))))

(declare-fun b!998785 () Bool)

(assert (=> b!998785 (= c!164392 ((_ is Concat!4600) (regTwo!6047 r!15766)))))

(assert (=> b!998785 (= e!640440 e!640443)))

(declare-fun b!998786 () Bool)

(assert (=> b!998786 (= e!640440 call!66226)))

(declare-fun b!998787 () Bool)

(assert (=> b!998787 (= e!640438 (regTwo!6047 r!15766))))

(assert (= (and d!291095 c!164393) b!998778))

(assert (= (and d!291095 (not c!164393)) b!998784))

(assert (= (and b!998784 c!164390) b!998786))

(assert (= (and b!998784 (not c!164390)) b!998785))

(assert (= (and b!998785 c!164392) b!998777))

(assert (= (and b!998785 (not c!164392)) b!998779))

(assert (= (and b!998779 c!164391) b!998781))

(assert (= (and b!998779 (not c!164391)) b!998783))

(assert (= (and b!998783 c!164394) b!998782))

(assert (= (and b!998783 (not c!164394)) b!998787))

(assert (= (or b!998781 b!998782) bm!66220))

(assert (= (or b!998777 bm!66220) bm!66217))

(assert (= (or b!998777 b!998781) bm!66218))

(assert (= (or b!998786 bm!66217) bm!66219))

(assert (= (or b!998778 bm!66219) bm!66221))

(assert (= (and d!291095 res!451040) b!998780))

(declare-fun m!1189223 () Bool)

(assert (=> bm!66218 m!1189223))

(declare-fun m!1189225 () Bool)

(assert (=> b!998780 m!1189225))

(assert (=> b!998780 m!1189187))

(declare-fun m!1189227 () Bool)

(assert (=> d!291095 m!1189227))

(assert (=> d!291095 m!1189193))

(declare-fun m!1189229 () Bool)

(assert (=> bm!66221 m!1189229))

(assert (=> b!998576 d!291095))

(declare-fun b!998788 () Bool)

(declare-fun e!640449 () Regex!2767)

(declare-fun call!66227 () Regex!2767)

(declare-fun call!66229 () Regex!2767)

(assert (=> b!998788 (= e!640449 (Concat!4600 call!66227 call!66229))))

(declare-fun b!998789 () Bool)

(declare-fun e!640447 () Regex!2767)

(declare-fun call!66228 () Regex!2767)

(assert (=> b!998789 (= e!640447 call!66228)))

(declare-fun b!998790 () Bool)

(declare-fun e!640445 () Regex!2767)

(assert (=> b!998790 (= e!640449 e!640445)))

(declare-fun c!164396 () Bool)

(assert (=> b!998790 (= c!164396 ((_ is Union!2767) (regOne!6047 r!15766)))))

(declare-fun bm!66222 () Bool)

(declare-fun call!66231 () Regex!2767)

(assert (=> bm!66222 (= call!66229 call!66231)))

(declare-fun bm!66223 () Bool)

(declare-fun c!164397 () Bool)

(assert (=> bm!66223 (= call!66227 (removeUselessConcat!364 (ite c!164397 (regOne!6046 (regOne!6047 r!15766)) (regOne!6047 (regOne!6047 r!15766)))))))

(declare-fun bm!66224 () Bool)

(assert (=> bm!66224 (= call!66231 call!66228)))

(declare-fun b!998791 () Bool)

(declare-fun e!640448 () Bool)

(declare-fun lt!351707 () Regex!2767)

(assert (=> b!998791 (= e!640448 (= (nullable!881 lt!351707) (nullable!881 (regOne!6047 r!15766))))))

(declare-fun bm!66225 () Bool)

(declare-fun call!66230 () Regex!2767)

(assert (=> bm!66225 (= call!66230 call!66229)))

(declare-fun b!998792 () Bool)

(assert (=> b!998792 (= e!640445 (Union!2767 call!66227 call!66230))))

(declare-fun b!998793 () Bool)

(declare-fun e!640444 () Regex!2767)

(assert (=> b!998793 (= e!640444 (Star!2767 call!66230))))

(declare-fun d!291105 () Bool)

(assert (=> d!291105 e!640448))

(declare-fun res!451041 () Bool)

(assert (=> d!291105 (=> (not res!451041) (not e!640448))))

(assert (=> d!291105 (= res!451041 (validRegex!1236 lt!351707))))

(assert (=> d!291105 (= lt!351707 e!640447)))

(declare-fun c!164398 () Bool)

(assert (=> d!291105 (= c!164398 (and ((_ is Concat!4600) (regOne!6047 r!15766)) ((_ is EmptyExpr!2767) (regOne!6046 (regOne!6047 r!15766)))))))

(assert (=> d!291105 (validRegex!1236 (regOne!6047 r!15766))))

(assert (=> d!291105 (= (removeUselessConcat!364 (regOne!6047 r!15766)) lt!351707)))

(declare-fun b!998794 () Bool)

(declare-fun c!164399 () Bool)

(assert (=> b!998794 (= c!164399 ((_ is Star!2767) (regOne!6047 r!15766)))))

(assert (=> b!998794 (= e!640445 e!640444)))

(declare-fun bm!66226 () Bool)

(declare-fun c!164395 () Bool)

(assert (=> bm!66226 (= call!66228 (removeUselessConcat!364 (ite c!164398 (regTwo!6046 (regOne!6047 r!15766)) (ite c!164395 (regOne!6046 (regOne!6047 r!15766)) (ite c!164397 (regTwo!6046 (regOne!6047 r!15766)) (ite c!164396 (regTwo!6047 (regOne!6047 r!15766)) (reg!3096 (regOne!6047 r!15766))))))))))

(declare-fun b!998795 () Bool)

(declare-fun e!640446 () Regex!2767)

(assert (=> b!998795 (= e!640447 e!640446)))

(assert (=> b!998795 (= c!164395 (and ((_ is Concat!4600) (regOne!6047 r!15766)) ((_ is EmptyExpr!2767) (regTwo!6046 (regOne!6047 r!15766)))))))

(declare-fun b!998796 () Bool)

(assert (=> b!998796 (= c!164397 ((_ is Concat!4600) (regOne!6047 r!15766)))))

(assert (=> b!998796 (= e!640446 e!640449)))

(declare-fun b!998797 () Bool)

(assert (=> b!998797 (= e!640446 call!66231)))

(declare-fun b!998798 () Bool)

(assert (=> b!998798 (= e!640444 (regOne!6047 r!15766))))

(assert (= (and d!291105 c!164398) b!998789))

(assert (= (and d!291105 (not c!164398)) b!998795))

(assert (= (and b!998795 c!164395) b!998797))

(assert (= (and b!998795 (not c!164395)) b!998796))

(assert (= (and b!998796 c!164397) b!998788))

(assert (= (and b!998796 (not c!164397)) b!998790))

(assert (= (and b!998790 c!164396) b!998792))

(assert (= (and b!998790 (not c!164396)) b!998794))

(assert (= (and b!998794 c!164399) b!998793))

(assert (= (and b!998794 (not c!164399)) b!998798))

(assert (= (or b!998792 b!998793) bm!66225))

(assert (= (or b!998788 bm!66225) bm!66222))

(assert (= (or b!998788 b!998792) bm!66223))

(assert (= (or b!998797 bm!66222) bm!66224))

(assert (= (or b!998789 bm!66224) bm!66226))

(assert (= (and d!291105 res!451041) b!998791))

(declare-fun m!1189231 () Bool)

(assert (=> bm!66223 m!1189231))

(declare-fun m!1189233 () Bool)

(assert (=> b!998791 m!1189233))

(declare-fun m!1189235 () Bool)

(assert (=> b!998791 m!1189235))

(declare-fun m!1189237 () Bool)

(assert (=> d!291105 m!1189237))

(declare-fun m!1189239 () Bool)

(assert (=> d!291105 m!1189239))

(declare-fun m!1189241 () Bool)

(assert (=> bm!66226 m!1189241))

(assert (=> b!998576 d!291105))

(declare-fun d!291107 () Bool)

(assert (=> d!291107 (= (matchR!1303 (regOne!6047 r!15766) s!10566) (matchR!1303 (removeUselessConcat!364 (regOne!6047 r!15766)) s!10566))))

(declare-fun lt!351711 () Unit!15193)

(declare-fun choose!6317 (Regex!2767 List!9997) Unit!15193)

(assert (=> d!291107 (= lt!351711 (choose!6317 (regOne!6047 r!15766) s!10566))))

(assert (=> d!291107 (validRegex!1236 (regOne!6047 r!15766))))

(assert (=> d!291107 (= (lemmaRemoveUselessConcatSound!210 (regOne!6047 r!15766) s!10566) lt!351711)))

(declare-fun bs!245070 () Bool)

(assert (= bs!245070 d!291107))

(assert (=> bs!245070 m!1189239))

(assert (=> bs!245070 m!1189135))

(declare-fun m!1189249 () Bool)

(assert (=> bs!245070 m!1189249))

(assert (=> bs!245070 m!1189145))

(assert (=> bs!245070 m!1189145))

(declare-fun m!1189251 () Bool)

(assert (=> bs!245070 m!1189251))

(assert (=> b!998576 d!291107))

(declare-fun b!998840 () Bool)

(declare-fun res!451067 () Bool)

(declare-fun e!640480 () Bool)

(assert (=> b!998840 (=> res!451067 e!640480)))

(assert (=> b!998840 (= res!451067 (not ((_ is Concat!4600) lt!351683)))))

(declare-fun e!640481 () Bool)

(assert (=> b!998840 (= e!640481 e!640480)))

(declare-fun b!998841 () Bool)

(declare-fun e!640483 () Bool)

(declare-fun call!66242 () Bool)

(assert (=> b!998841 (= e!640483 call!66242)))

(declare-fun b!998842 () Bool)

(declare-fun e!640482 () Bool)

(assert (=> b!998842 (= e!640482 e!640481)))

(declare-fun c!164409 () Bool)

(assert (=> b!998842 (= c!164409 ((_ is Union!2767) lt!351683))))

(declare-fun b!998843 () Bool)

(declare-fun e!640479 () Bool)

(assert (=> b!998843 (= e!640480 e!640479)))

(declare-fun res!451068 () Bool)

(assert (=> b!998843 (=> (not res!451068) (not e!640479))))

(declare-fun call!66244 () Bool)

(assert (=> b!998843 (= res!451068 call!66244)))

(declare-fun b!998844 () Bool)

(declare-fun res!451069 () Bool)

(declare-fun e!640478 () Bool)

(assert (=> b!998844 (=> (not res!451069) (not e!640478))))

(assert (=> b!998844 (= res!451069 call!66244)))

(assert (=> b!998844 (= e!640481 e!640478)))

(declare-fun bm!66237 () Bool)

(assert (=> bm!66237 (= call!66244 (validRegex!1236 (ite c!164409 (regOne!6047 lt!351683) (regOne!6046 lt!351683))))))

(declare-fun b!998846 () Bool)

(declare-fun call!66243 () Bool)

(assert (=> b!998846 (= e!640478 call!66243)))

(declare-fun c!164410 () Bool)

(declare-fun bm!66238 () Bool)

(assert (=> bm!66238 (= call!66242 (validRegex!1236 (ite c!164410 (reg!3096 lt!351683) (ite c!164409 (regTwo!6047 lt!351683) (regTwo!6046 lt!351683)))))))

(declare-fun b!998847 () Bool)

(assert (=> b!998847 (= e!640482 e!640483)))

(declare-fun res!451065 () Bool)

(assert (=> b!998847 (= res!451065 (not (nullable!881 (reg!3096 lt!351683))))))

(assert (=> b!998847 (=> (not res!451065) (not e!640483))))

(declare-fun b!998845 () Bool)

(declare-fun e!640484 () Bool)

(assert (=> b!998845 (= e!640484 e!640482)))

(assert (=> b!998845 (= c!164410 ((_ is Star!2767) lt!351683))))

(declare-fun d!291111 () Bool)

(declare-fun res!451066 () Bool)

(assert (=> d!291111 (=> res!451066 e!640484)))

(assert (=> d!291111 (= res!451066 ((_ is ElementMatch!2767) lt!351683))))

(assert (=> d!291111 (= (validRegex!1236 lt!351683) e!640484)))

(declare-fun bm!66239 () Bool)

(assert (=> bm!66239 (= call!66243 call!66242)))

(declare-fun b!998848 () Bool)

(assert (=> b!998848 (= e!640479 call!66243)))

(assert (= (and d!291111 (not res!451066)) b!998845))

(assert (= (and b!998845 c!164410) b!998847))

(assert (= (and b!998845 (not c!164410)) b!998842))

(assert (= (and b!998847 res!451065) b!998841))

(assert (= (and b!998842 c!164409) b!998844))

(assert (= (and b!998842 (not c!164409)) b!998840))

(assert (= (and b!998844 res!451069) b!998846))

(assert (= (and b!998840 (not res!451067)) b!998843))

(assert (= (and b!998843 res!451068) b!998848))

(assert (= (or b!998846 b!998848) bm!66239))

(assert (= (or b!998844 b!998843) bm!66237))

(assert (= (or b!998841 bm!66239) bm!66238))

(declare-fun m!1189261 () Bool)

(assert (=> bm!66237 m!1189261))

(declare-fun m!1189263 () Bool)

(assert (=> bm!66238 m!1189263))

(declare-fun m!1189265 () Bool)

(assert (=> b!998847 m!1189265))

(assert (=> b!998576 d!291111))

(declare-fun b!998849 () Bool)

(declare-fun res!451072 () Bool)

(declare-fun e!640490 () Bool)

(assert (=> b!998849 (=> (not res!451072) (not e!640490))))

(declare-fun call!66245 () Bool)

(assert (=> b!998849 (= res!451072 (not call!66245))))

(declare-fun b!998851 () Bool)

(declare-fun res!451070 () Bool)

(declare-fun e!640487 () Bool)

(assert (=> b!998851 (=> res!451070 e!640487)))

(assert (=> b!998851 (= res!451070 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!998852 () Bool)

(assert (=> b!998852 (= e!640487 (not (= (head!1840 s!10566) (c!164334 lt!351683))))))

(declare-fun b!998853 () Bool)

(declare-fun e!640491 () Bool)

(assert (=> b!998853 (= e!640491 (nullable!881 lt!351683))))

(declare-fun b!998854 () Bool)

(declare-fun res!451074 () Bool)

(assert (=> b!998854 (=> (not res!451074) (not e!640490))))

(assert (=> b!998854 (= res!451074 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!998855 () Bool)

(declare-fun e!640488 () Bool)

(declare-fun lt!351712 () Bool)

(assert (=> b!998855 (= e!640488 (= lt!351712 call!66245))))

(declare-fun b!998856 () Bool)

(declare-fun e!640486 () Bool)

(assert (=> b!998856 (= e!640488 e!640486)))

(declare-fun c!164413 () Bool)

(assert (=> b!998856 (= c!164413 ((_ is EmptyLang!2767) lt!351683))))

(declare-fun b!998857 () Bool)

(declare-fun res!451076 () Bool)

(declare-fun e!640489 () Bool)

(assert (=> b!998857 (=> res!451076 e!640489)))

(assert (=> b!998857 (= res!451076 (not ((_ is ElementMatch!2767) lt!351683)))))

(assert (=> b!998857 (= e!640486 e!640489)))

(declare-fun b!998858 () Bool)

(declare-fun e!640485 () Bool)

(assert (=> b!998858 (= e!640485 e!640487)))

(declare-fun res!451073 () Bool)

(assert (=> b!998858 (=> res!451073 e!640487)))

(assert (=> b!998858 (= res!451073 call!66245)))

(declare-fun b!998859 () Bool)

(assert (=> b!998859 (= e!640491 (matchR!1303 (derivativeStep!687 lt!351683 (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291115 () Bool)

(assert (=> d!291115 e!640488))

(declare-fun c!164412 () Bool)

(assert (=> d!291115 (= c!164412 ((_ is EmptyExpr!2767) lt!351683))))

(assert (=> d!291115 (= lt!351712 e!640491)))

(declare-fun c!164411 () Bool)

(assert (=> d!291115 (= c!164411 (isEmpty!6319 s!10566))))

(assert (=> d!291115 (validRegex!1236 lt!351683)))

(assert (=> d!291115 (= (matchR!1303 lt!351683 s!10566) lt!351712)))

(declare-fun b!998850 () Bool)

(assert (=> b!998850 (= e!640489 e!640485)))

(declare-fun res!451075 () Bool)

(assert (=> b!998850 (=> (not res!451075) (not e!640485))))

(assert (=> b!998850 (= res!451075 (not lt!351712))))

(declare-fun b!998860 () Bool)

(assert (=> b!998860 (= e!640486 (not lt!351712))))

(declare-fun b!998861 () Bool)

(declare-fun res!451071 () Bool)

(assert (=> b!998861 (=> res!451071 e!640489)))

(assert (=> b!998861 (= res!451071 e!640490)))

(declare-fun res!451077 () Bool)

(assert (=> b!998861 (=> (not res!451077) (not e!640490))))

(assert (=> b!998861 (= res!451077 lt!351712)))

(declare-fun bm!66240 () Bool)

(assert (=> bm!66240 (= call!66245 (isEmpty!6319 s!10566))))

(declare-fun b!998862 () Bool)

(assert (=> b!998862 (= e!640490 (= (head!1840 s!10566) (c!164334 lt!351683)))))

(assert (= (and d!291115 c!164411) b!998853))

(assert (= (and d!291115 (not c!164411)) b!998859))

(assert (= (and d!291115 c!164412) b!998855))

(assert (= (and d!291115 (not c!164412)) b!998856))

(assert (= (and b!998856 c!164413) b!998860))

(assert (= (and b!998856 (not c!164413)) b!998857))

(assert (= (and b!998857 (not res!451076)) b!998861))

(assert (= (and b!998861 res!451077) b!998849))

(assert (= (and b!998849 res!451072) b!998854))

(assert (= (and b!998854 res!451074) b!998862))

(assert (= (and b!998861 (not res!451071)) b!998850))

(assert (= (and b!998850 res!451075) b!998858))

(assert (= (and b!998858 (not res!451073)) b!998851))

(assert (= (and b!998851 (not res!451070)) b!998852))

(assert (= (or b!998855 b!998849 b!998858) bm!66240))

(assert (=> b!998859 m!1189179))

(assert (=> b!998859 m!1189179))

(declare-fun m!1189267 () Bool)

(assert (=> b!998859 m!1189267))

(assert (=> b!998859 m!1189183))

(assert (=> b!998859 m!1189267))

(assert (=> b!998859 m!1189183))

(declare-fun m!1189269 () Bool)

(assert (=> b!998859 m!1189269))

(declare-fun m!1189271 () Bool)

(assert (=> b!998853 m!1189271))

(assert (=> b!998862 m!1189179))

(assert (=> b!998851 m!1189183))

(assert (=> b!998851 m!1189183))

(assert (=> b!998851 m!1189189))

(assert (=> b!998854 m!1189183))

(assert (=> b!998854 m!1189183))

(assert (=> b!998854 m!1189189))

(assert (=> d!291115 m!1189191))

(assert (=> d!291115 m!1189143))

(assert (=> b!998852 m!1189179))

(assert (=> bm!66240 m!1189191))

(assert (=> b!998576 d!291115))

(declare-fun b!999052 () Bool)

(assert (=> b!999052 true))

(assert (=> b!999052 true))

(declare-fun bs!245074 () Bool)

(declare-fun b!999057 () Bool)

(assert (= bs!245074 (and b!999057 b!999052)))

(declare-fun lambda!35490 () Int)

(declare-fun lambda!35489 () Int)

(assert (=> bs!245074 (not (= lambda!35490 lambda!35489))))

(assert (=> b!999057 true))

(assert (=> b!999057 true))

(declare-fun b!999051 () Bool)

(declare-fun e!640596 () Bool)

(declare-fun call!66274 () Bool)

(assert (=> b!999051 (= e!640596 call!66274)))

(declare-fun e!640594 () Bool)

(declare-fun call!66275 () Bool)

(assert (=> b!999052 (= e!640594 call!66275)))

(declare-fun b!999053 () Bool)

(declare-fun c!164454 () Bool)

(assert (=> b!999053 (= c!164454 ((_ is Union!2767) r!15766))))

(declare-fun e!640593 () Bool)

(declare-fun e!640595 () Bool)

(assert (=> b!999053 (= e!640593 e!640595)))

(declare-fun bm!66269 () Bool)

(assert (=> bm!66269 (= call!66274 (isEmpty!6319 s!10566))))

(declare-fun b!999054 () Bool)

(assert (=> b!999054 (= e!640593 (= s!10566 (Cons!9981 (c!164334 r!15766) Nil!9981)))))

(declare-fun b!999055 () Bool)

(declare-fun c!164457 () Bool)

(assert (=> b!999055 (= c!164457 ((_ is ElementMatch!2767) r!15766))))

(declare-fun e!640591 () Bool)

(assert (=> b!999055 (= e!640591 e!640593)))

(declare-fun b!999056 () Bool)

(declare-fun res!451149 () Bool)

(assert (=> b!999056 (=> res!451149 e!640594)))

(assert (=> b!999056 (= res!451149 call!66274)))

(declare-fun e!640592 () Bool)

(assert (=> b!999056 (= e!640592 e!640594)))

(assert (=> b!999057 (= e!640592 call!66275)))

(declare-fun b!999058 () Bool)

(assert (=> b!999058 (= e!640595 e!640592)))

(declare-fun c!164455 () Bool)

(assert (=> b!999058 (= c!164455 ((_ is Star!2767) r!15766))))

(declare-fun bm!66270 () Bool)

(declare-fun Exists!501 (Int) Bool)

(assert (=> bm!66270 (= call!66275 (Exists!501 (ite c!164455 lambda!35489 lambda!35490)))))

(declare-fun d!291117 () Bool)

(declare-fun c!164456 () Bool)

(assert (=> d!291117 (= c!164456 ((_ is EmptyExpr!2767) r!15766))))

(assert (=> d!291117 (= (matchRSpec!566 r!15766 s!10566) e!640596)))

(declare-fun b!999059 () Bool)

(assert (=> b!999059 (= e!640596 e!640591)))

(declare-fun res!451148 () Bool)

(assert (=> b!999059 (= res!451148 (not ((_ is EmptyLang!2767) r!15766)))))

(assert (=> b!999059 (=> (not res!451148) (not e!640591))))

(declare-fun b!999060 () Bool)

(declare-fun e!640597 () Bool)

(assert (=> b!999060 (= e!640595 e!640597)))

(declare-fun res!451147 () Bool)

(assert (=> b!999060 (= res!451147 (matchRSpec!566 (regOne!6047 r!15766) s!10566))))

(assert (=> b!999060 (=> res!451147 e!640597)))

(declare-fun b!999061 () Bool)

(assert (=> b!999061 (= e!640597 (matchRSpec!566 (regTwo!6047 r!15766) s!10566))))

(assert (= (and d!291117 c!164456) b!999051))

(assert (= (and d!291117 (not c!164456)) b!999059))

(assert (= (and b!999059 res!451148) b!999055))

(assert (= (and b!999055 c!164457) b!999054))

(assert (= (and b!999055 (not c!164457)) b!999053))

(assert (= (and b!999053 c!164454) b!999060))

(assert (= (and b!999053 (not c!164454)) b!999058))

(assert (= (and b!999060 (not res!451147)) b!999061))

(assert (= (and b!999058 c!164455) b!999056))

(assert (= (and b!999058 (not c!164455)) b!999057))

(assert (= (and b!999056 (not res!451149)) b!999052))

(assert (= (or b!999052 b!999057) bm!66270))

(assert (= (or b!999051 b!999056) bm!66269))

(assert (=> bm!66269 m!1189191))

(declare-fun m!1189325 () Bool)

(assert (=> bm!66270 m!1189325))

(declare-fun m!1189327 () Bool)

(assert (=> b!999060 m!1189327))

(declare-fun m!1189329 () Bool)

(assert (=> b!999061 m!1189329))

(assert (=> b!998571 d!291117))

(declare-fun b!999066 () Bool)

(declare-fun res!451152 () Bool)

(declare-fun e!640603 () Bool)

(assert (=> b!999066 (=> (not res!451152) (not e!640603))))

(declare-fun call!66276 () Bool)

(assert (=> b!999066 (= res!451152 (not call!66276))))

(declare-fun b!999068 () Bool)

(declare-fun res!451150 () Bool)

(declare-fun e!640600 () Bool)

(assert (=> b!999068 (=> res!451150 e!640600)))

(assert (=> b!999068 (= res!451150 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!999069 () Bool)

(assert (=> b!999069 (= e!640600 (not (= (head!1840 s!10566) (c!164334 r!15766))))))

(declare-fun b!999070 () Bool)

(declare-fun e!640604 () Bool)

(assert (=> b!999070 (= e!640604 (nullable!881 r!15766))))

(declare-fun b!999071 () Bool)

(declare-fun res!451154 () Bool)

(assert (=> b!999071 (=> (not res!451154) (not e!640603))))

(assert (=> b!999071 (= res!451154 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!999072 () Bool)

(declare-fun e!640601 () Bool)

(declare-fun lt!351726 () Bool)

(assert (=> b!999072 (= e!640601 (= lt!351726 call!66276))))

(declare-fun b!999073 () Bool)

(declare-fun e!640599 () Bool)

(assert (=> b!999073 (= e!640601 e!640599)))

(declare-fun c!164460 () Bool)

(assert (=> b!999073 (= c!164460 ((_ is EmptyLang!2767) r!15766))))

(declare-fun b!999074 () Bool)

(declare-fun res!451156 () Bool)

(declare-fun e!640602 () Bool)

(assert (=> b!999074 (=> res!451156 e!640602)))

(assert (=> b!999074 (= res!451156 (not ((_ is ElementMatch!2767) r!15766)))))

(assert (=> b!999074 (= e!640599 e!640602)))

(declare-fun b!999075 () Bool)

(declare-fun e!640598 () Bool)

(assert (=> b!999075 (= e!640598 e!640600)))

(declare-fun res!451153 () Bool)

(assert (=> b!999075 (=> res!451153 e!640600)))

(assert (=> b!999075 (= res!451153 call!66276)))

(declare-fun b!999076 () Bool)

(assert (=> b!999076 (= e!640604 (matchR!1303 (derivativeStep!687 r!15766 (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291137 () Bool)

(assert (=> d!291137 e!640601))

(declare-fun c!164459 () Bool)

(assert (=> d!291137 (= c!164459 ((_ is EmptyExpr!2767) r!15766))))

(assert (=> d!291137 (= lt!351726 e!640604)))

(declare-fun c!164458 () Bool)

(assert (=> d!291137 (= c!164458 (isEmpty!6319 s!10566))))

(assert (=> d!291137 (validRegex!1236 r!15766)))

(assert (=> d!291137 (= (matchR!1303 r!15766 s!10566) lt!351726)))

(declare-fun b!999067 () Bool)

(assert (=> b!999067 (= e!640602 e!640598)))

(declare-fun res!451155 () Bool)

(assert (=> b!999067 (=> (not res!451155) (not e!640598))))

(assert (=> b!999067 (= res!451155 (not lt!351726))))

(declare-fun b!999077 () Bool)

(assert (=> b!999077 (= e!640599 (not lt!351726))))

(declare-fun b!999078 () Bool)

(declare-fun res!451151 () Bool)

(assert (=> b!999078 (=> res!451151 e!640602)))

(assert (=> b!999078 (= res!451151 e!640603)))

(declare-fun res!451157 () Bool)

(assert (=> b!999078 (=> (not res!451157) (not e!640603))))

(assert (=> b!999078 (= res!451157 lt!351726)))

(declare-fun bm!66271 () Bool)

(assert (=> bm!66271 (= call!66276 (isEmpty!6319 s!10566))))

(declare-fun b!999079 () Bool)

(assert (=> b!999079 (= e!640603 (= (head!1840 s!10566) (c!164334 r!15766)))))

(assert (= (and d!291137 c!164458) b!999070))

(assert (= (and d!291137 (not c!164458)) b!999076))

(assert (= (and d!291137 c!164459) b!999072))

(assert (= (and d!291137 (not c!164459)) b!999073))

(assert (= (and b!999073 c!164460) b!999077))

(assert (= (and b!999073 (not c!164460)) b!999074))

(assert (= (and b!999074 (not res!451156)) b!999078))

(assert (= (and b!999078 res!451157) b!999066))

(assert (= (and b!999066 res!451152) b!999071))

(assert (= (and b!999071 res!451154) b!999079))

(assert (= (and b!999078 (not res!451151)) b!999067))

(assert (= (and b!999067 res!451155) b!999075))

(assert (= (and b!999075 (not res!451153)) b!999068))

(assert (= (and b!999068 (not res!451150)) b!999069))

(assert (= (or b!999072 b!999066 b!999075) bm!66271))

(assert (=> b!999076 m!1189179))

(assert (=> b!999076 m!1189179))

(declare-fun m!1189331 () Bool)

(assert (=> b!999076 m!1189331))

(assert (=> b!999076 m!1189183))

(assert (=> b!999076 m!1189331))

(assert (=> b!999076 m!1189183))

(declare-fun m!1189333 () Bool)

(assert (=> b!999076 m!1189333))

(declare-fun m!1189335 () Bool)

(assert (=> b!999070 m!1189335))

(assert (=> b!999079 m!1189179))

(assert (=> b!999068 m!1189183))

(assert (=> b!999068 m!1189183))

(assert (=> b!999068 m!1189189))

(assert (=> b!999071 m!1189183))

(assert (=> b!999071 m!1189183))

(assert (=> b!999071 m!1189189))

(assert (=> d!291137 m!1189191))

(assert (=> d!291137 m!1189127))

(assert (=> b!999069 m!1189179))

(assert (=> bm!66271 m!1189191))

(assert (=> b!998571 d!291137))

(declare-fun d!291139 () Bool)

(assert (=> d!291139 (= (matchR!1303 r!15766 s!10566) (matchRSpec!566 r!15766 s!10566))))

(declare-fun lt!351729 () Unit!15193)

(declare-fun choose!6319 (Regex!2767 List!9997) Unit!15193)

(assert (=> d!291139 (= lt!351729 (choose!6319 r!15766 s!10566))))

(assert (=> d!291139 (validRegex!1236 r!15766)))

(assert (=> d!291139 (= (mainMatchTheorem!566 r!15766 s!10566) lt!351729)))

(declare-fun bs!245075 () Bool)

(assert (= bs!245075 d!291139))

(assert (=> bs!245075 m!1189131))

(assert (=> bs!245075 m!1189129))

(declare-fun m!1189337 () Bool)

(assert (=> bs!245075 m!1189337))

(assert (=> bs!245075 m!1189127))

(assert (=> b!998571 d!291139))

(declare-fun b!999080 () Bool)

(declare-fun res!451160 () Bool)

(declare-fun e!640610 () Bool)

(assert (=> b!999080 (=> (not res!451160) (not e!640610))))

(declare-fun call!66277 () Bool)

(assert (=> b!999080 (= res!451160 (not call!66277))))

(declare-fun b!999082 () Bool)

(declare-fun res!451158 () Bool)

(declare-fun e!640607 () Bool)

(assert (=> b!999082 (=> res!451158 e!640607)))

(assert (=> b!999082 (= res!451158 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!999083 () Bool)

(assert (=> b!999083 (= e!640607 (not (= (head!1840 s!10566) (c!164334 (removeUselessConcat!364 r!15766)))))))

(declare-fun b!999084 () Bool)

(declare-fun e!640611 () Bool)

(assert (=> b!999084 (= e!640611 (nullable!881 (removeUselessConcat!364 r!15766)))))

(declare-fun b!999085 () Bool)

(declare-fun res!451162 () Bool)

(assert (=> b!999085 (=> (not res!451162) (not e!640610))))

(assert (=> b!999085 (= res!451162 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!999086 () Bool)

(declare-fun e!640608 () Bool)

(declare-fun lt!351730 () Bool)

(assert (=> b!999086 (= e!640608 (= lt!351730 call!66277))))

(declare-fun b!999087 () Bool)

(declare-fun e!640606 () Bool)

(assert (=> b!999087 (= e!640608 e!640606)))

(declare-fun c!164463 () Bool)

(assert (=> b!999087 (= c!164463 ((_ is EmptyLang!2767) (removeUselessConcat!364 r!15766)))))

(declare-fun b!999088 () Bool)

(declare-fun res!451164 () Bool)

(declare-fun e!640609 () Bool)

(assert (=> b!999088 (=> res!451164 e!640609)))

(assert (=> b!999088 (= res!451164 (not ((_ is ElementMatch!2767) (removeUselessConcat!364 r!15766))))))

(assert (=> b!999088 (= e!640606 e!640609)))

(declare-fun b!999089 () Bool)

(declare-fun e!640605 () Bool)

(assert (=> b!999089 (= e!640605 e!640607)))

(declare-fun res!451161 () Bool)

(assert (=> b!999089 (=> res!451161 e!640607)))

(assert (=> b!999089 (= res!451161 call!66277)))

(declare-fun b!999090 () Bool)

(assert (=> b!999090 (= e!640611 (matchR!1303 (derivativeStep!687 (removeUselessConcat!364 r!15766) (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291141 () Bool)

(assert (=> d!291141 e!640608))

(declare-fun c!164462 () Bool)

(assert (=> d!291141 (= c!164462 ((_ is EmptyExpr!2767) (removeUselessConcat!364 r!15766)))))

(assert (=> d!291141 (= lt!351730 e!640611)))

(declare-fun c!164461 () Bool)

(assert (=> d!291141 (= c!164461 (isEmpty!6319 s!10566))))

(assert (=> d!291141 (validRegex!1236 (removeUselessConcat!364 r!15766))))

(assert (=> d!291141 (= (matchR!1303 (removeUselessConcat!364 r!15766) s!10566) lt!351730)))

(declare-fun b!999081 () Bool)

(assert (=> b!999081 (= e!640609 e!640605)))

(declare-fun res!451163 () Bool)

(assert (=> b!999081 (=> (not res!451163) (not e!640605))))

(assert (=> b!999081 (= res!451163 (not lt!351730))))

(declare-fun b!999091 () Bool)

(assert (=> b!999091 (= e!640606 (not lt!351730))))

(declare-fun b!999092 () Bool)

(declare-fun res!451159 () Bool)

(assert (=> b!999092 (=> res!451159 e!640609)))

(assert (=> b!999092 (= res!451159 e!640610)))

(declare-fun res!451165 () Bool)

(assert (=> b!999092 (=> (not res!451165) (not e!640610))))

(assert (=> b!999092 (= res!451165 lt!351730)))

(declare-fun bm!66272 () Bool)

(assert (=> bm!66272 (= call!66277 (isEmpty!6319 s!10566))))

(declare-fun b!999093 () Bool)

(assert (=> b!999093 (= e!640610 (= (head!1840 s!10566) (c!164334 (removeUselessConcat!364 r!15766))))))

(assert (= (and d!291141 c!164461) b!999084))

(assert (= (and d!291141 (not c!164461)) b!999090))

(assert (= (and d!291141 c!164462) b!999086))

(assert (= (and d!291141 (not c!164462)) b!999087))

(assert (= (and b!999087 c!164463) b!999091))

(assert (= (and b!999087 (not c!164463)) b!999088))

(assert (= (and b!999088 (not res!451164)) b!999092))

(assert (= (and b!999092 res!451165) b!999080))

(assert (= (and b!999080 res!451160) b!999085))

(assert (= (and b!999085 res!451162) b!999093))

(assert (= (and b!999092 (not res!451159)) b!999081))

(assert (= (and b!999081 res!451163) b!999089))

(assert (= (and b!999089 (not res!451161)) b!999082))

(assert (= (and b!999082 (not res!451158)) b!999083))

(assert (= (or b!999086 b!999080 b!999089) bm!66272))

(assert (=> b!999090 m!1189179))

(assert (=> b!999090 m!1189149))

(assert (=> b!999090 m!1189179))

(declare-fun m!1189339 () Bool)

(assert (=> b!999090 m!1189339))

(assert (=> b!999090 m!1189183))

(assert (=> b!999090 m!1189339))

(assert (=> b!999090 m!1189183))

(declare-fun m!1189341 () Bool)

(assert (=> b!999090 m!1189341))

(assert (=> b!999084 m!1189149))

(declare-fun m!1189343 () Bool)

(assert (=> b!999084 m!1189343))

(assert (=> b!999093 m!1189179))

(assert (=> b!999082 m!1189183))

(assert (=> b!999082 m!1189183))

(assert (=> b!999082 m!1189189))

(assert (=> b!999085 m!1189183))

(assert (=> b!999085 m!1189183))

(assert (=> b!999085 m!1189189))

(assert (=> d!291141 m!1189191))

(assert (=> d!291141 m!1189149))

(declare-fun m!1189345 () Bool)

(assert (=> d!291141 m!1189345))

(assert (=> b!999083 m!1189179))

(assert (=> bm!66272 m!1189191))

(assert (=> b!998572 d!291141))

(declare-fun b!999094 () Bool)

(declare-fun e!640617 () Regex!2767)

(declare-fun call!66278 () Regex!2767)

(declare-fun call!66280 () Regex!2767)

(assert (=> b!999094 (= e!640617 (Concat!4600 call!66278 call!66280))))

(declare-fun b!999095 () Bool)

(declare-fun e!640615 () Regex!2767)

(declare-fun call!66279 () Regex!2767)

(assert (=> b!999095 (= e!640615 call!66279)))

(declare-fun b!999096 () Bool)

(declare-fun e!640613 () Regex!2767)

(assert (=> b!999096 (= e!640617 e!640613)))

(declare-fun c!164465 () Bool)

(assert (=> b!999096 (= c!164465 ((_ is Union!2767) r!15766))))

(declare-fun bm!66273 () Bool)

(declare-fun call!66282 () Regex!2767)

(assert (=> bm!66273 (= call!66280 call!66282)))

(declare-fun bm!66274 () Bool)

(declare-fun c!164466 () Bool)

(assert (=> bm!66274 (= call!66278 (removeUselessConcat!364 (ite c!164466 (regOne!6046 r!15766) (regOne!6047 r!15766))))))

(declare-fun bm!66275 () Bool)

(assert (=> bm!66275 (= call!66282 call!66279)))

(declare-fun b!999097 () Bool)

(declare-fun e!640616 () Bool)

(declare-fun lt!351731 () Regex!2767)

(assert (=> b!999097 (= e!640616 (= (nullable!881 lt!351731) (nullable!881 r!15766)))))

(declare-fun bm!66276 () Bool)

(declare-fun call!66281 () Regex!2767)

(assert (=> bm!66276 (= call!66281 call!66280)))

(declare-fun b!999098 () Bool)

(assert (=> b!999098 (= e!640613 (Union!2767 call!66278 call!66281))))

(declare-fun b!999099 () Bool)

(declare-fun e!640612 () Regex!2767)

(assert (=> b!999099 (= e!640612 (Star!2767 call!66281))))

(declare-fun d!291143 () Bool)

(assert (=> d!291143 e!640616))

(declare-fun res!451166 () Bool)

(assert (=> d!291143 (=> (not res!451166) (not e!640616))))

(assert (=> d!291143 (= res!451166 (validRegex!1236 lt!351731))))

(assert (=> d!291143 (= lt!351731 e!640615)))

(declare-fun c!164467 () Bool)

(assert (=> d!291143 (= c!164467 (and ((_ is Concat!4600) r!15766) ((_ is EmptyExpr!2767) (regOne!6046 r!15766))))))

(assert (=> d!291143 (validRegex!1236 r!15766)))

(assert (=> d!291143 (= (removeUselessConcat!364 r!15766) lt!351731)))

(declare-fun b!999100 () Bool)

(declare-fun c!164468 () Bool)

(assert (=> b!999100 (= c!164468 ((_ is Star!2767) r!15766))))

(assert (=> b!999100 (= e!640613 e!640612)))

(declare-fun c!164464 () Bool)

(declare-fun bm!66277 () Bool)

(assert (=> bm!66277 (= call!66279 (removeUselessConcat!364 (ite c!164467 (regTwo!6046 r!15766) (ite c!164464 (regOne!6046 r!15766) (ite c!164466 (regTwo!6046 r!15766) (ite c!164465 (regTwo!6047 r!15766) (reg!3096 r!15766)))))))))

(declare-fun b!999101 () Bool)

(declare-fun e!640614 () Regex!2767)

(assert (=> b!999101 (= e!640615 e!640614)))

(assert (=> b!999101 (= c!164464 (and ((_ is Concat!4600) r!15766) ((_ is EmptyExpr!2767) (regTwo!6046 r!15766))))))

(declare-fun b!999102 () Bool)

(assert (=> b!999102 (= c!164466 ((_ is Concat!4600) r!15766))))

(assert (=> b!999102 (= e!640614 e!640617)))

(declare-fun b!999103 () Bool)

(assert (=> b!999103 (= e!640614 call!66282)))

(declare-fun b!999104 () Bool)

(assert (=> b!999104 (= e!640612 r!15766)))

(assert (= (and d!291143 c!164467) b!999095))

(assert (= (and d!291143 (not c!164467)) b!999101))

(assert (= (and b!999101 c!164464) b!999103))

(assert (= (and b!999101 (not c!164464)) b!999102))

(assert (= (and b!999102 c!164466) b!999094))

(assert (= (and b!999102 (not c!164466)) b!999096))

(assert (= (and b!999096 c!164465) b!999098))

(assert (= (and b!999096 (not c!164465)) b!999100))

(assert (= (and b!999100 c!164468) b!999099))

(assert (= (and b!999100 (not c!164468)) b!999104))

(assert (= (or b!999098 b!999099) bm!66276))

(assert (= (or b!999094 bm!66276) bm!66273))

(assert (= (or b!999094 b!999098) bm!66274))

(assert (= (or b!999103 bm!66273) bm!66275))

(assert (= (or b!999095 bm!66275) bm!66277))

(assert (= (and d!291143 res!451166) b!999097))

(declare-fun m!1189347 () Bool)

(assert (=> bm!66274 m!1189347))

(declare-fun m!1189349 () Bool)

(assert (=> b!999097 m!1189349))

(assert (=> b!999097 m!1189335))

(declare-fun m!1189351 () Bool)

(assert (=> d!291143 m!1189351))

(assert (=> d!291143 m!1189127))

(declare-fun m!1189353 () Bool)

(assert (=> bm!66277 m!1189353))

(assert (=> b!998572 d!291143))

(declare-fun b!999105 () Bool)

(declare-fun res!451169 () Bool)

(declare-fun e!640623 () Bool)

(assert (=> b!999105 (=> (not res!451169) (not e!640623))))

(declare-fun call!66283 () Bool)

(assert (=> b!999105 (= res!451169 (not call!66283))))

(declare-fun b!999107 () Bool)

(declare-fun res!451167 () Bool)

(declare-fun e!640620 () Bool)

(assert (=> b!999107 (=> res!451167 e!640620)))

(assert (=> b!999107 (= res!451167 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!999108 () Bool)

(assert (=> b!999108 (= e!640620 (not (= (head!1840 s!10566) (c!164334 (Union!2767 lt!351683 lt!351689)))))))

(declare-fun b!999109 () Bool)

(declare-fun e!640624 () Bool)

(assert (=> b!999109 (= e!640624 (nullable!881 (Union!2767 lt!351683 lt!351689)))))

(declare-fun b!999110 () Bool)

(declare-fun res!451171 () Bool)

(assert (=> b!999110 (=> (not res!451171) (not e!640623))))

(assert (=> b!999110 (= res!451171 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!999111 () Bool)

(declare-fun e!640621 () Bool)

(declare-fun lt!351732 () Bool)

(assert (=> b!999111 (= e!640621 (= lt!351732 call!66283))))

(declare-fun b!999112 () Bool)

(declare-fun e!640619 () Bool)

(assert (=> b!999112 (= e!640621 e!640619)))

(declare-fun c!164471 () Bool)

(assert (=> b!999112 (= c!164471 ((_ is EmptyLang!2767) (Union!2767 lt!351683 lt!351689)))))

(declare-fun b!999113 () Bool)

(declare-fun res!451173 () Bool)

(declare-fun e!640622 () Bool)

(assert (=> b!999113 (=> res!451173 e!640622)))

(assert (=> b!999113 (= res!451173 (not ((_ is ElementMatch!2767) (Union!2767 lt!351683 lt!351689))))))

(assert (=> b!999113 (= e!640619 e!640622)))

(declare-fun b!999114 () Bool)

(declare-fun e!640618 () Bool)

(assert (=> b!999114 (= e!640618 e!640620)))

(declare-fun res!451170 () Bool)

(assert (=> b!999114 (=> res!451170 e!640620)))

(assert (=> b!999114 (= res!451170 call!66283)))

(declare-fun b!999115 () Bool)

(assert (=> b!999115 (= e!640624 (matchR!1303 (derivativeStep!687 (Union!2767 lt!351683 lt!351689) (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291145 () Bool)

(assert (=> d!291145 e!640621))

(declare-fun c!164470 () Bool)

(assert (=> d!291145 (= c!164470 ((_ is EmptyExpr!2767) (Union!2767 lt!351683 lt!351689)))))

(assert (=> d!291145 (= lt!351732 e!640624)))

(declare-fun c!164469 () Bool)

(assert (=> d!291145 (= c!164469 (isEmpty!6319 s!10566))))

(assert (=> d!291145 (validRegex!1236 (Union!2767 lt!351683 lt!351689))))

(assert (=> d!291145 (= (matchR!1303 (Union!2767 lt!351683 lt!351689) s!10566) lt!351732)))

(declare-fun b!999106 () Bool)

(assert (=> b!999106 (= e!640622 e!640618)))

(declare-fun res!451172 () Bool)

(assert (=> b!999106 (=> (not res!451172) (not e!640618))))

(assert (=> b!999106 (= res!451172 (not lt!351732))))

(declare-fun b!999116 () Bool)

(assert (=> b!999116 (= e!640619 (not lt!351732))))

(declare-fun b!999117 () Bool)

(declare-fun res!451168 () Bool)

(assert (=> b!999117 (=> res!451168 e!640622)))

(assert (=> b!999117 (= res!451168 e!640623)))

(declare-fun res!451174 () Bool)

(assert (=> b!999117 (=> (not res!451174) (not e!640623))))

(assert (=> b!999117 (= res!451174 lt!351732)))

(declare-fun bm!66278 () Bool)

(assert (=> bm!66278 (= call!66283 (isEmpty!6319 s!10566))))

(declare-fun b!999118 () Bool)

(assert (=> b!999118 (= e!640623 (= (head!1840 s!10566) (c!164334 (Union!2767 lt!351683 lt!351689))))))

(assert (= (and d!291145 c!164469) b!999109))

(assert (= (and d!291145 (not c!164469)) b!999115))

(assert (= (and d!291145 c!164470) b!999111))

(assert (= (and d!291145 (not c!164470)) b!999112))

(assert (= (and b!999112 c!164471) b!999116))

(assert (= (and b!999112 (not c!164471)) b!999113))

(assert (= (and b!999113 (not res!451173)) b!999117))

(assert (= (and b!999117 res!451174) b!999105))

(assert (= (and b!999105 res!451169) b!999110))

(assert (= (and b!999110 res!451171) b!999118))

(assert (= (and b!999117 (not res!451168)) b!999106))

(assert (= (and b!999106 res!451172) b!999114))

(assert (= (and b!999114 (not res!451170)) b!999107))

(assert (= (and b!999107 (not res!451167)) b!999108))

(assert (= (or b!999111 b!999105 b!999114) bm!66278))

(assert (=> b!999115 m!1189179))

(assert (=> b!999115 m!1189179))

(declare-fun m!1189355 () Bool)

(assert (=> b!999115 m!1189355))

(assert (=> b!999115 m!1189183))

(assert (=> b!999115 m!1189355))

(assert (=> b!999115 m!1189183))

(declare-fun m!1189357 () Bool)

(assert (=> b!999115 m!1189357))

(declare-fun m!1189359 () Bool)

(assert (=> b!999109 m!1189359))

(assert (=> b!999118 m!1189179))

(assert (=> b!999107 m!1189183))

(assert (=> b!999107 m!1189183))

(assert (=> b!999107 m!1189189))

(assert (=> b!999110 m!1189183))

(assert (=> b!999110 m!1189183))

(assert (=> b!999110 m!1189189))

(assert (=> d!291145 m!1189191))

(declare-fun m!1189361 () Bool)

(assert (=> d!291145 m!1189361))

(assert (=> b!999108 m!1189179))

(assert (=> bm!66278 m!1189191))

(assert (=> b!998572 d!291145))

(declare-fun d!291147 () Bool)

(assert (=> d!291147 (matchR!1303 (Union!2767 lt!351683 lt!351689) s!10566)))

(declare-fun lt!351735 () Unit!15193)

(declare-fun choose!6321 (Regex!2767 Regex!2767 List!9997) Unit!15193)

(assert (=> d!291147 (= lt!351735 (choose!6321 lt!351683 lt!351689 s!10566))))

(declare-fun e!640627 () Bool)

(assert (=> d!291147 e!640627))

(declare-fun res!451177 () Bool)

(assert (=> d!291147 (=> (not res!451177) (not e!640627))))

(assert (=> d!291147 (= res!451177 (validRegex!1236 lt!351683))))

(assert (=> d!291147 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!20 lt!351683 lt!351689 s!10566) lt!351735)))

(declare-fun b!999121 () Bool)

(assert (=> b!999121 (= e!640627 (validRegex!1236 lt!351689))))

(assert (= (and d!291147 res!451177) b!999121))

(assert (=> d!291147 m!1189153))

(declare-fun m!1189363 () Bool)

(assert (=> d!291147 m!1189363))

(assert (=> d!291147 m!1189143))

(assert (=> b!999121 m!1189123))

(assert (=> b!998572 d!291147))

(declare-fun b!999122 () Bool)

(declare-fun res!451180 () Bool)

(declare-fun e!640630 () Bool)

(assert (=> b!999122 (=> res!451180 e!640630)))

(assert (=> b!999122 (= res!451180 (not ((_ is Concat!4600) lt!351689)))))

(declare-fun e!640631 () Bool)

(assert (=> b!999122 (= e!640631 e!640630)))

(declare-fun b!999123 () Bool)

(declare-fun e!640633 () Bool)

(declare-fun call!66284 () Bool)

(assert (=> b!999123 (= e!640633 call!66284)))

(declare-fun b!999124 () Bool)

(declare-fun e!640632 () Bool)

(assert (=> b!999124 (= e!640632 e!640631)))

(declare-fun c!164472 () Bool)

(assert (=> b!999124 (= c!164472 ((_ is Union!2767) lt!351689))))

(declare-fun b!999125 () Bool)

(declare-fun e!640629 () Bool)

(assert (=> b!999125 (= e!640630 e!640629)))

(declare-fun res!451181 () Bool)

(assert (=> b!999125 (=> (not res!451181) (not e!640629))))

(declare-fun call!66286 () Bool)

(assert (=> b!999125 (= res!451181 call!66286)))

(declare-fun b!999126 () Bool)

(declare-fun res!451182 () Bool)

(declare-fun e!640628 () Bool)

(assert (=> b!999126 (=> (not res!451182) (not e!640628))))

(assert (=> b!999126 (= res!451182 call!66286)))

(assert (=> b!999126 (= e!640631 e!640628)))

(declare-fun bm!66279 () Bool)

(assert (=> bm!66279 (= call!66286 (validRegex!1236 (ite c!164472 (regOne!6047 lt!351689) (regOne!6046 lt!351689))))))

(declare-fun b!999128 () Bool)

(declare-fun call!66285 () Bool)

(assert (=> b!999128 (= e!640628 call!66285)))

(declare-fun c!164473 () Bool)

(declare-fun bm!66280 () Bool)

(assert (=> bm!66280 (= call!66284 (validRegex!1236 (ite c!164473 (reg!3096 lt!351689) (ite c!164472 (regTwo!6047 lt!351689) (regTwo!6046 lt!351689)))))))

(declare-fun b!999129 () Bool)

(assert (=> b!999129 (= e!640632 e!640633)))

(declare-fun res!451178 () Bool)

(assert (=> b!999129 (= res!451178 (not (nullable!881 (reg!3096 lt!351689))))))

(assert (=> b!999129 (=> (not res!451178) (not e!640633))))

(declare-fun b!999127 () Bool)

(declare-fun e!640634 () Bool)

(assert (=> b!999127 (= e!640634 e!640632)))

(assert (=> b!999127 (= c!164473 ((_ is Star!2767) lt!351689))))

(declare-fun d!291149 () Bool)

(declare-fun res!451179 () Bool)

(assert (=> d!291149 (=> res!451179 e!640634)))

(assert (=> d!291149 (= res!451179 ((_ is ElementMatch!2767) lt!351689))))

(assert (=> d!291149 (= (validRegex!1236 lt!351689) e!640634)))

(declare-fun bm!66281 () Bool)

(assert (=> bm!66281 (= call!66285 call!66284)))

(declare-fun b!999130 () Bool)

(assert (=> b!999130 (= e!640629 call!66285)))

(assert (= (and d!291149 (not res!451179)) b!999127))

(assert (= (and b!999127 c!164473) b!999129))

(assert (= (and b!999127 (not c!164473)) b!999124))

(assert (= (and b!999129 res!451178) b!999123))

(assert (= (and b!999124 c!164472) b!999126))

(assert (= (and b!999124 (not c!164472)) b!999122))

(assert (= (and b!999126 res!451182) b!999128))

(assert (= (and b!999122 (not res!451180)) b!999125))

(assert (= (and b!999125 res!451181) b!999130))

(assert (= (or b!999128 b!999130) bm!66281))

(assert (= (or b!999126 b!999125) bm!66279))

(assert (= (or b!999123 bm!66281) bm!66280))

(declare-fun m!1189365 () Bool)

(assert (=> bm!66279 m!1189365))

(declare-fun m!1189367 () Bool)

(assert (=> bm!66280 m!1189367))

(declare-fun m!1189369 () Bool)

(assert (=> b!999129 m!1189369))

(assert (=> b!998578 d!291149))

(declare-fun b!999131 () Bool)

(declare-fun res!451185 () Bool)

(declare-fun e!640640 () Bool)

(assert (=> b!999131 (=> (not res!451185) (not e!640640))))

(declare-fun call!66287 () Bool)

(assert (=> b!999131 (= res!451185 (not call!66287))))

(declare-fun b!999133 () Bool)

(declare-fun res!451183 () Bool)

(declare-fun e!640637 () Bool)

(assert (=> b!999133 (=> res!451183 e!640637)))

(assert (=> b!999133 (= res!451183 (not (isEmpty!6319 (tail!1402 s!10566))))))

(declare-fun b!999134 () Bool)

(assert (=> b!999134 (= e!640637 (not (= (head!1840 s!10566) (c!164334 (regOne!6047 r!15766)))))))

(declare-fun b!999135 () Bool)

(declare-fun e!640641 () Bool)

(assert (=> b!999135 (= e!640641 (nullable!881 (regOne!6047 r!15766)))))

(declare-fun b!999136 () Bool)

(declare-fun res!451187 () Bool)

(assert (=> b!999136 (=> (not res!451187) (not e!640640))))

(assert (=> b!999136 (= res!451187 (isEmpty!6319 (tail!1402 s!10566)))))

(declare-fun b!999137 () Bool)

(declare-fun e!640638 () Bool)

(declare-fun lt!351736 () Bool)

(assert (=> b!999137 (= e!640638 (= lt!351736 call!66287))))

(declare-fun b!999138 () Bool)

(declare-fun e!640636 () Bool)

(assert (=> b!999138 (= e!640638 e!640636)))

(declare-fun c!164476 () Bool)

(assert (=> b!999138 (= c!164476 ((_ is EmptyLang!2767) (regOne!6047 r!15766)))))

(declare-fun b!999139 () Bool)

(declare-fun res!451189 () Bool)

(declare-fun e!640639 () Bool)

(assert (=> b!999139 (=> res!451189 e!640639)))

(assert (=> b!999139 (= res!451189 (not ((_ is ElementMatch!2767) (regOne!6047 r!15766))))))

(assert (=> b!999139 (= e!640636 e!640639)))

(declare-fun b!999140 () Bool)

(declare-fun e!640635 () Bool)

(assert (=> b!999140 (= e!640635 e!640637)))

(declare-fun res!451186 () Bool)

(assert (=> b!999140 (=> res!451186 e!640637)))

(assert (=> b!999140 (= res!451186 call!66287)))

(declare-fun b!999141 () Bool)

(assert (=> b!999141 (= e!640641 (matchR!1303 (derivativeStep!687 (regOne!6047 r!15766) (head!1840 s!10566)) (tail!1402 s!10566)))))

(declare-fun d!291151 () Bool)

(assert (=> d!291151 e!640638))

(declare-fun c!164475 () Bool)

(assert (=> d!291151 (= c!164475 ((_ is EmptyExpr!2767) (regOne!6047 r!15766)))))

(assert (=> d!291151 (= lt!351736 e!640641)))

(declare-fun c!164474 () Bool)

(assert (=> d!291151 (= c!164474 (isEmpty!6319 s!10566))))

(assert (=> d!291151 (validRegex!1236 (regOne!6047 r!15766))))

(assert (=> d!291151 (= (matchR!1303 (regOne!6047 r!15766) s!10566) lt!351736)))

(declare-fun b!999132 () Bool)

(assert (=> b!999132 (= e!640639 e!640635)))

(declare-fun res!451188 () Bool)

(assert (=> b!999132 (=> (not res!451188) (not e!640635))))

(assert (=> b!999132 (= res!451188 (not lt!351736))))

(declare-fun b!999142 () Bool)

(assert (=> b!999142 (= e!640636 (not lt!351736))))

(declare-fun b!999143 () Bool)

(declare-fun res!451184 () Bool)

(assert (=> b!999143 (=> res!451184 e!640639)))

(assert (=> b!999143 (= res!451184 e!640640)))

(declare-fun res!451190 () Bool)

(assert (=> b!999143 (=> (not res!451190) (not e!640640))))

(assert (=> b!999143 (= res!451190 lt!351736)))

(declare-fun bm!66282 () Bool)

(assert (=> bm!66282 (= call!66287 (isEmpty!6319 s!10566))))

(declare-fun b!999144 () Bool)

(assert (=> b!999144 (= e!640640 (= (head!1840 s!10566) (c!164334 (regOne!6047 r!15766))))))

(assert (= (and d!291151 c!164474) b!999135))

(assert (= (and d!291151 (not c!164474)) b!999141))

(assert (= (and d!291151 c!164475) b!999137))

(assert (= (and d!291151 (not c!164475)) b!999138))

(assert (= (and b!999138 c!164476) b!999142))

(assert (= (and b!999138 (not c!164476)) b!999139))

(assert (= (and b!999139 (not res!451189)) b!999143))

(assert (= (and b!999143 res!451190) b!999131))

(assert (= (and b!999131 res!451185) b!999136))

(assert (= (and b!999136 res!451187) b!999144))

(assert (= (and b!999143 (not res!451184)) b!999132))

(assert (= (and b!999132 res!451188) b!999140))

(assert (= (and b!999140 (not res!451186)) b!999133))

(assert (= (and b!999133 (not res!451183)) b!999134))

(assert (= (or b!999137 b!999131 b!999140) bm!66282))

(assert (=> b!999141 m!1189179))

(assert (=> b!999141 m!1189179))

(declare-fun m!1189371 () Bool)

(assert (=> b!999141 m!1189371))

(assert (=> b!999141 m!1189183))

(assert (=> b!999141 m!1189371))

(assert (=> b!999141 m!1189183))

(declare-fun m!1189373 () Bool)

(assert (=> b!999141 m!1189373))

(assert (=> b!999135 m!1189235))

(assert (=> b!999144 m!1189179))

(assert (=> b!999133 m!1189183))

(assert (=> b!999133 m!1189183))

(assert (=> b!999133 m!1189189))

(assert (=> b!999136 m!1189183))

(assert (=> b!999136 m!1189183))

(assert (=> b!999136 m!1189189))

(assert (=> d!291151 m!1189191))

(assert (=> d!291151 m!1189239))

(assert (=> b!999134 m!1189179))

(assert (=> bm!66282 m!1189191))

(assert (=> b!998569 d!291151))

(declare-fun d!291153 () Bool)

(declare-fun e!640647 () Bool)

(assert (=> d!291153 e!640647))

(declare-fun res!451195 () Bool)

(assert (=> d!291153 (=> res!451195 e!640647)))

(assert (=> d!291153 (= res!451195 (matchR!1303 (regOne!6047 r!15766) s!10566))))

(declare-fun lt!351739 () Unit!15193)

(declare-fun choose!6322 (Regex!2767 Regex!2767 List!9997) Unit!15193)

(assert (=> d!291153 (= lt!351739 (choose!6322 (regOne!6047 r!15766) (regTwo!6047 r!15766) s!10566))))

(declare-fun e!640646 () Bool)

(assert (=> d!291153 e!640646))

(declare-fun res!451196 () Bool)

(assert (=> d!291153 (=> (not res!451196) (not e!640646))))

(assert (=> d!291153 (= res!451196 (validRegex!1236 (regOne!6047 r!15766)))))

(assert (=> d!291153 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!74 (regOne!6047 r!15766) (regTwo!6047 r!15766) s!10566) lt!351739)))

(declare-fun b!999149 () Bool)

(assert (=> b!999149 (= e!640646 (validRegex!1236 (regTwo!6047 r!15766)))))

(declare-fun b!999150 () Bool)

(assert (=> b!999150 (= e!640647 (matchR!1303 (regTwo!6047 r!15766) s!10566))))

(assert (= (and d!291153 res!451196) b!999149))

(assert (= (and d!291153 (not res!451195)) b!999150))

(assert (=> d!291153 m!1189135))

(declare-fun m!1189375 () Bool)

(assert (=> d!291153 m!1189375))

(assert (=> d!291153 m!1189239))

(assert (=> b!999149 m!1189193))

(assert (=> b!999150 m!1189125))

(assert (=> b!998569 d!291153))

(declare-fun b!999164 () Bool)

(declare-fun e!640650 () Bool)

(declare-fun tp!304569 () Bool)

(declare-fun tp!304566 () Bool)

(assert (=> b!999164 (= e!640650 (and tp!304569 tp!304566))))

(declare-fun b!999161 () Bool)

(assert (=> b!999161 (= e!640650 tp_is_empty!5177)))

(declare-fun b!999163 () Bool)

(declare-fun tp!304568 () Bool)

(assert (=> b!999163 (= e!640650 tp!304568)))

(assert (=> b!998575 (= tp!304514 e!640650)))

(declare-fun b!999162 () Bool)

(declare-fun tp!304565 () Bool)

(declare-fun tp!304567 () Bool)

(assert (=> b!999162 (= e!640650 (and tp!304565 tp!304567))))

(assert (= (and b!998575 ((_ is ElementMatch!2767) (reg!3096 r!15766))) b!999161))

(assert (= (and b!998575 ((_ is Concat!4600) (reg!3096 r!15766))) b!999162))

(assert (= (and b!998575 ((_ is Star!2767) (reg!3096 r!15766))) b!999163))

(assert (= (and b!998575 ((_ is Union!2767) (reg!3096 r!15766))) b!999164))

(declare-fun b!999168 () Bool)

(declare-fun e!640651 () Bool)

(declare-fun tp!304574 () Bool)

(declare-fun tp!304571 () Bool)

(assert (=> b!999168 (= e!640651 (and tp!304574 tp!304571))))

(declare-fun b!999165 () Bool)

(assert (=> b!999165 (= e!640651 tp_is_empty!5177)))

(declare-fun b!999167 () Bool)

(declare-fun tp!304573 () Bool)

(assert (=> b!999167 (= e!640651 tp!304573)))

(assert (=> b!998577 (= tp!304513 e!640651)))

(declare-fun b!999166 () Bool)

(declare-fun tp!304570 () Bool)

(declare-fun tp!304572 () Bool)

(assert (=> b!999166 (= e!640651 (and tp!304570 tp!304572))))

(assert (= (and b!998577 ((_ is ElementMatch!2767) (regOne!6046 r!15766))) b!999165))

(assert (= (and b!998577 ((_ is Concat!4600) (regOne!6046 r!15766))) b!999166))

(assert (= (and b!998577 ((_ is Star!2767) (regOne!6046 r!15766))) b!999167))

(assert (= (and b!998577 ((_ is Union!2767) (regOne!6046 r!15766))) b!999168))

(declare-fun b!999172 () Bool)

(declare-fun e!640652 () Bool)

(declare-fun tp!304579 () Bool)

(declare-fun tp!304576 () Bool)

(assert (=> b!999172 (= e!640652 (and tp!304579 tp!304576))))

(declare-fun b!999169 () Bool)

(assert (=> b!999169 (= e!640652 tp_is_empty!5177)))

(declare-fun b!999171 () Bool)

(declare-fun tp!304578 () Bool)

(assert (=> b!999171 (= e!640652 tp!304578)))

(assert (=> b!998577 (= tp!304516 e!640652)))

(declare-fun b!999170 () Bool)

(declare-fun tp!304575 () Bool)

(declare-fun tp!304577 () Bool)

(assert (=> b!999170 (= e!640652 (and tp!304575 tp!304577))))

(assert (= (and b!998577 ((_ is ElementMatch!2767) (regTwo!6046 r!15766))) b!999169))

(assert (= (and b!998577 ((_ is Concat!4600) (regTwo!6046 r!15766))) b!999170))

(assert (= (and b!998577 ((_ is Star!2767) (regTwo!6046 r!15766))) b!999171))

(assert (= (and b!998577 ((_ is Union!2767) (regTwo!6046 r!15766))) b!999172))

(declare-fun b!999176 () Bool)

(declare-fun e!640653 () Bool)

(declare-fun tp!304584 () Bool)

(declare-fun tp!304581 () Bool)

(assert (=> b!999176 (= e!640653 (and tp!304584 tp!304581))))

(declare-fun b!999173 () Bool)

(assert (=> b!999173 (= e!640653 tp_is_empty!5177)))

(declare-fun b!999175 () Bool)

(declare-fun tp!304583 () Bool)

(assert (=> b!999175 (= e!640653 tp!304583)))

(assert (=> b!998579 (= tp!304512 e!640653)))

(declare-fun b!999174 () Bool)

(declare-fun tp!304580 () Bool)

(declare-fun tp!304582 () Bool)

(assert (=> b!999174 (= e!640653 (and tp!304580 tp!304582))))

(assert (= (and b!998579 ((_ is ElementMatch!2767) (regOne!6047 r!15766))) b!999173))

(assert (= (and b!998579 ((_ is Concat!4600) (regOne!6047 r!15766))) b!999174))

(assert (= (and b!998579 ((_ is Star!2767) (regOne!6047 r!15766))) b!999175))

(assert (= (and b!998579 ((_ is Union!2767) (regOne!6047 r!15766))) b!999176))

(declare-fun b!999180 () Bool)

(declare-fun e!640654 () Bool)

(declare-fun tp!304589 () Bool)

(declare-fun tp!304586 () Bool)

(assert (=> b!999180 (= e!640654 (and tp!304589 tp!304586))))

(declare-fun b!999177 () Bool)

(assert (=> b!999177 (= e!640654 tp_is_empty!5177)))

(declare-fun b!999179 () Bool)

(declare-fun tp!304588 () Bool)

(assert (=> b!999179 (= e!640654 tp!304588)))

(assert (=> b!998579 (= tp!304511 e!640654)))

(declare-fun b!999178 () Bool)

(declare-fun tp!304585 () Bool)

(declare-fun tp!304587 () Bool)

(assert (=> b!999178 (= e!640654 (and tp!304585 tp!304587))))

(assert (= (and b!998579 ((_ is ElementMatch!2767) (regTwo!6047 r!15766))) b!999177))

(assert (= (and b!998579 ((_ is Concat!4600) (regTwo!6047 r!15766))) b!999178))

(assert (= (and b!998579 ((_ is Star!2767) (regTwo!6047 r!15766))) b!999179))

(assert (= (and b!998579 ((_ is Union!2767) (regTwo!6047 r!15766))) b!999180))

(declare-fun b!999185 () Bool)

(declare-fun e!640657 () Bool)

(declare-fun tp!304592 () Bool)

(assert (=> b!999185 (= e!640657 (and tp_is_empty!5177 tp!304592))))

(assert (=> b!998574 (= tp!304515 e!640657)))

(assert (= (and b!998574 ((_ is Cons!9981) (t!101043 s!10566))) b!999185))

(check-sat (not d!291141) (not b!999107) (not bm!66238) (not bm!66181) (not d!291115) (not b!999068) (not b!999179) (not b!998687) (not b!999118) (not b!999175) (not bm!66240) (not d!291153) (not b!998681) (not b!999079) (not d!291091) (not b!999093) (not b!999133) (not b!999162) (not b!998852) (not b!999164) tp_is_empty!5177 (not bm!66282) (not d!291137) (not bm!66279) (not d!291151) (not b!999149) (not b!999110) (not b!999070) (not d!291145) (not bm!66226) (not bm!66280) (not b!999136) (not b!999163) (not b!999109) (not b!998680) (not b!999084) (not b!999085) (not d!291105) (not bm!66277) (not bm!66223) (not bm!66221) (not b!998605) (not b!999108) (not b!998847) (not b!998859) (not bm!66278) (not d!291107) (not b!998679) (not b!999083) (not b!999144) (not d!291143) (not b!999121) (not b!999178) (not b!999135) (not bm!66189) (not b!999171) (not d!291095) (not b!999134) (not b!998690) (not b!999166) (not b!999141) (not b!999172) (not d!291139) (not b!999069) (not b!999174) (not bm!66182) (not b!999185) (not d!291147) (not bm!66218) (not b!999129) (not b!999076) (not bm!66269) (not b!998791) (not bm!66272) (not b!999082) (not bm!66271) (not b!998853) (not b!999180) (not b!999060) (not bm!66270) (not b!998862) (not b!999097) (not b!999167) (not bm!66274) (not bm!66237) (not b!998682) (not b!998780) (not b!999061) (not b!999090) (not b!999176) (not b!999071) (not b!998854) (not b!998851) (not b!999115) (not b!999170) (not b!999168) (not b!999150))
(check-sat)
