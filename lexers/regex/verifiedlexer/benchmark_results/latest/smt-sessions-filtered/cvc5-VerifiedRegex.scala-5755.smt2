; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285198 () Bool)

(assert start!285198)

(declare-fun b!2933771 () Bool)

(assert (=> b!2933771 true))

(assert (=> b!2933771 true))

(assert (=> b!2933771 true))

(declare-fun lambda!109272 () Int)

(declare-fun lambda!109271 () Int)

(assert (=> b!2933771 (not (= lambda!109272 lambda!109271))))

(assert (=> b!2933771 true))

(assert (=> b!2933771 true))

(assert (=> b!2933771 true))

(declare-fun b!2933760 () Bool)

(declare-fun e!1849649 () Bool)

(declare-fun tp!939771 () Bool)

(declare-fun tp!939767 () Bool)

(assert (=> b!2933760 (= e!1849649 (and tp!939771 tp!939767))))

(declare-fun b!2933762 () Bool)

(declare-fun res!1211155 () Bool)

(declare-fun e!1849643 () Bool)

(assert (=> b!2933762 (=> res!1211155 e!1849643)))

(declare-datatypes ((C!18306 0))(
  ( (C!18307 (val!11189 Int)) )
))
(declare-datatypes ((List!34925 0))(
  ( (Nil!34801) (Cons!34801 (h!40221 C!18306) (t!233990 List!34925)) )
))
(declare-fun s!11993 () List!34925)

(declare-fun isEmpty!19058 (List!34925) Bool)

(assert (=> b!2933762 (= res!1211155 (isEmpty!19058 s!11993))))

(declare-fun b!2933763 () Bool)

(declare-fun e!1849644 () Bool)

(declare-fun tp_is_empty!15683 () Bool)

(declare-fun tp!939768 () Bool)

(assert (=> b!2933763 (= e!1849644 (and tp_is_empty!15683 tp!939768))))

(declare-fun b!2933764 () Bool)

(declare-fun tp!939770 () Bool)

(assert (=> b!2933764 (= e!1849649 tp!939770)))

(declare-fun b!2933765 () Bool)

(declare-datatypes ((Unit!48479 0))(
  ( (Unit!48480) )
))
(declare-fun e!1849645 () Unit!48479)

(declare-fun Unit!48481 () Unit!48479)

(assert (=> b!2933765 (= e!1849645 Unit!48481)))

(declare-fun lt!1028573 () Unit!48479)

(declare-datatypes ((Regex!9060 0))(
  ( (ElementMatch!9060 (c!479253 C!18306)) (Concat!14381 (regOne!18632 Regex!9060) (regTwo!18632 Regex!9060)) (EmptyExpr!9060) (Star!9060 (reg!9389 Regex!9060)) (EmptyLang!9060) (Union!9060 (regOne!18633 Regex!9060) (regTwo!18633 Regex!9060)) )
))
(declare-fun r!17423 () Regex!9060)

(declare-datatypes ((tuple2!33770 0))(
  ( (tuple2!33771 (_1!20017 List!34925) (_2!20017 List!34925)) )
))
(declare-fun lt!1028565 () tuple2!33770)

(declare-fun mainMatchTheorem!1197 (Regex!9060 List!34925) Unit!48479)

(assert (=> b!2933765 (= lt!1028573 (mainMatchTheorem!1197 (reg!9389 r!17423) (_1!20017 lt!1028565)))))

(assert (=> b!2933765 false))

(declare-fun b!2933766 () Bool)

(declare-fun e!1849642 () Bool)

(declare-fun lt!1028569 () Regex!9060)

(declare-fun validRegex!3793 (Regex!9060) Bool)

(assert (=> b!2933766 (= e!1849642 (validRegex!3793 lt!1028569))))

(declare-fun b!2933767 () Bool)

(declare-fun e!1849647 () Bool)

(declare-fun e!1849646 () Bool)

(assert (=> b!2933767 (= e!1849647 e!1849646)))

(declare-fun res!1211158 () Bool)

(assert (=> b!2933767 (=> res!1211158 e!1849646)))

(declare-fun matchR!3942 (Regex!9060 List!34925) Bool)

(assert (=> b!2933767 (= res!1211158 (not (matchR!3942 (reg!9389 r!17423) (_1!20017 lt!1028565))))))

(declare-datatypes ((Option!6617 0))(
  ( (None!6616) (Some!6616 (v!34750 tuple2!33770)) )
))
(declare-fun lt!1028575 () Option!6617)

(declare-fun get!10639 (Option!6617) tuple2!33770)

(assert (=> b!2933767 (= lt!1028565 (get!10639 lt!1028575))))

(declare-fun b!2933768 () Bool)

(assert (=> b!2933768 (= e!1849646 e!1849642)))

(declare-fun res!1211160 () Bool)

(assert (=> b!2933768 (=> res!1211160 e!1849642)))

(declare-fun lt!1028574 () Regex!9060)

(assert (=> b!2933768 (= res!1211160 (not (= lt!1028574 lt!1028569)))))

(declare-fun lt!1028576 () Regex!9060)

(assert (=> b!2933768 (= lt!1028569 (Star!9060 lt!1028576))))

(assert (=> b!2933768 (matchR!3942 lt!1028574 (_2!20017 lt!1028565))))

(declare-fun lt!1028562 () Regex!9060)

(declare-fun simplify!67 (Regex!9060) Regex!9060)

(assert (=> b!2933768 (= lt!1028574 (simplify!67 lt!1028562))))

(declare-fun lt!1028572 () Unit!48479)

(declare-fun lemmaSimplifySound!63 (Regex!9060 List!34925) Unit!48479)

(assert (=> b!2933768 (= lt!1028572 (lemmaSimplifySound!63 lt!1028562 (_2!20017 lt!1028565)))))

(declare-fun lt!1028567 () Unit!48479)

(assert (=> b!2933768 (= lt!1028567 e!1849645)))

(declare-fun c!479252 () Bool)

(declare-fun size!26456 (List!34925) Int)

(assert (=> b!2933768 (= c!479252 (= (size!26456 (_2!20017 lt!1028565)) (size!26456 s!11993)))))

(assert (=> b!2933768 (matchR!3942 lt!1028576 (_1!20017 lt!1028565))))

(assert (=> b!2933768 (= lt!1028576 (simplify!67 (reg!9389 r!17423)))))

(declare-fun lt!1028568 () Unit!48479)

(assert (=> b!2933768 (= lt!1028568 (lemmaSimplifySound!63 (reg!9389 r!17423) (_1!20017 lt!1028565)))))

(declare-fun b!2933769 () Bool)

(declare-fun res!1211161 () Bool)

(assert (=> b!2933769 (=> res!1211161 e!1849646)))

(assert (=> b!2933769 (= res!1211161 (not (matchR!3942 lt!1028562 (_2!20017 lt!1028565))))))

(declare-fun b!2933761 () Bool)

(declare-fun tp!939769 () Bool)

(declare-fun tp!939766 () Bool)

(assert (=> b!2933761 (= e!1849649 (and tp!939769 tp!939766))))

(declare-fun res!1211159 () Bool)

(declare-fun e!1849648 () Bool)

(assert (=> start!285198 (=> (not res!1211159) (not e!1849648))))

(assert (=> start!285198 (= res!1211159 (validRegex!3793 r!17423))))

(assert (=> start!285198 e!1849648))

(assert (=> start!285198 e!1849649))

(assert (=> start!285198 e!1849644))

(declare-fun b!2933770 () Bool)

(assert (=> b!2933770 (= e!1849649 tp_is_empty!15683)))

(assert (=> b!2933771 (= e!1849643 e!1849647)))

(declare-fun res!1211157 () Bool)

(assert (=> b!2933771 (=> res!1211157 e!1849647)))

(declare-fun lt!1028570 () Bool)

(assert (=> b!2933771 (= res!1211157 (not lt!1028570))))

(declare-fun Exists!1422 (Int) Bool)

(assert (=> b!2933771 (= (Exists!1422 lambda!109271) (Exists!1422 lambda!109272))))

(declare-fun lt!1028564 () Unit!48479)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!233 (Regex!9060 List!34925) Unit!48479)

(assert (=> b!2933771 (= lt!1028564 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!233 (reg!9389 r!17423) s!11993))))

(assert (=> b!2933771 (= lt!1028570 (Exists!1422 lambda!109271))))

(declare-fun isDefined!5168 (Option!6617) Bool)

(assert (=> b!2933771 (= lt!1028570 (isDefined!5168 lt!1028575))))

(declare-fun findConcatSeparation!1011 (Regex!9060 Regex!9060 List!34925 List!34925 List!34925) Option!6617)

(assert (=> b!2933771 (= lt!1028575 (findConcatSeparation!1011 (reg!9389 r!17423) lt!1028562 Nil!34801 s!11993 s!11993))))

(declare-fun lt!1028566 () Unit!48479)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!793 (Regex!9060 Regex!9060 List!34925) Unit!48479)

(assert (=> b!2933771 (= lt!1028566 (lemmaFindConcatSeparationEquivalentToExists!793 (reg!9389 r!17423) lt!1028562 s!11993))))

(assert (=> b!2933771 (= lt!1028562 (Star!9060 (reg!9389 r!17423)))))

(declare-fun b!2933772 () Bool)

(declare-fun Unit!48482 () Unit!48479)

(assert (=> b!2933772 (= e!1849645 Unit!48482)))

(declare-fun b!2933773 () Bool)

(assert (=> b!2933773 (= e!1849648 (not e!1849643))))

(declare-fun res!1211156 () Bool)

(assert (=> b!2933773 (=> res!1211156 e!1849643)))

(declare-fun lt!1028571 () Bool)

(assert (=> b!2933773 (= res!1211156 (or (not lt!1028571) (is-Concat!14381 r!17423) (is-Union!9060 r!17423) (not (is-Star!9060 r!17423))))))

(declare-fun matchRSpec!1197 (Regex!9060 List!34925) Bool)

(assert (=> b!2933773 (= lt!1028571 (matchRSpec!1197 r!17423 s!11993))))

(assert (=> b!2933773 (= lt!1028571 (matchR!3942 r!17423 s!11993))))

(declare-fun lt!1028563 () Unit!48479)

(assert (=> b!2933773 (= lt!1028563 (mainMatchTheorem!1197 r!17423 s!11993))))

(assert (= (and start!285198 res!1211159) b!2933773))

(assert (= (and b!2933773 (not res!1211156)) b!2933762))

(assert (= (and b!2933762 (not res!1211155)) b!2933771))

(assert (= (and b!2933771 (not res!1211157)) b!2933767))

(assert (= (and b!2933767 (not res!1211158)) b!2933769))

(assert (= (and b!2933769 (not res!1211161)) b!2933768))

(assert (= (and b!2933768 c!479252) b!2933765))

(assert (= (and b!2933768 (not c!479252)) b!2933772))

(assert (= (and b!2933768 (not res!1211160)) b!2933766))

(assert (= (and start!285198 (is-ElementMatch!9060 r!17423)) b!2933770))

(assert (= (and start!285198 (is-Concat!14381 r!17423)) b!2933761))

(assert (= (and start!285198 (is-Star!9060 r!17423)) b!2933764))

(assert (= (and start!285198 (is-Union!9060 r!17423)) b!2933760))

(assert (= (and start!285198 (is-Cons!34801 s!11993)) b!2933763))

(declare-fun m!3322501 () Bool)

(assert (=> b!2933773 m!3322501))

(declare-fun m!3322503 () Bool)

(assert (=> b!2933773 m!3322503))

(declare-fun m!3322505 () Bool)

(assert (=> b!2933773 m!3322505))

(declare-fun m!3322507 () Bool)

(assert (=> b!2933765 m!3322507))

(declare-fun m!3322509 () Bool)

(assert (=> b!2933768 m!3322509))

(declare-fun m!3322511 () Bool)

(assert (=> b!2933768 m!3322511))

(declare-fun m!3322513 () Bool)

(assert (=> b!2933768 m!3322513))

(declare-fun m!3322515 () Bool)

(assert (=> b!2933768 m!3322515))

(declare-fun m!3322517 () Bool)

(assert (=> b!2933768 m!3322517))

(declare-fun m!3322519 () Bool)

(assert (=> b!2933768 m!3322519))

(declare-fun m!3322521 () Bool)

(assert (=> b!2933768 m!3322521))

(declare-fun m!3322523 () Bool)

(assert (=> b!2933768 m!3322523))

(declare-fun m!3322525 () Bool)

(assert (=> b!2933767 m!3322525))

(declare-fun m!3322527 () Bool)

(assert (=> b!2933767 m!3322527))

(declare-fun m!3322529 () Bool)

(assert (=> b!2933762 m!3322529))

(declare-fun m!3322531 () Bool)

(assert (=> start!285198 m!3322531))

(declare-fun m!3322533 () Bool)

(assert (=> b!2933766 m!3322533))

(declare-fun m!3322535 () Bool)

(assert (=> b!2933771 m!3322535))

(declare-fun m!3322537 () Bool)

(assert (=> b!2933771 m!3322537))

(declare-fun m!3322539 () Bool)

(assert (=> b!2933771 m!3322539))

(declare-fun m!3322541 () Bool)

(assert (=> b!2933771 m!3322541))

(declare-fun m!3322543 () Bool)

(assert (=> b!2933771 m!3322543))

(assert (=> b!2933771 m!3322537))

(declare-fun m!3322545 () Bool)

(assert (=> b!2933771 m!3322545))

(declare-fun m!3322547 () Bool)

(assert (=> b!2933769 m!3322547))

(push 1)

(assert (not b!2933763))

(assert (not b!2933769))

(assert tp_is_empty!15683)

(assert (not b!2933766))

(assert (not b!2933764))

(assert (not b!2933761))

(assert (not b!2933768))

(assert (not b!2933765))

(assert (not b!2933773))

(assert (not b!2933760))

(assert (not b!2933762))

(assert (not start!285198))

(assert (not b!2933767))

(assert (not b!2933771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2933866 () Bool)

(declare-fun res!1211219 () Bool)

(declare-fun e!1849695 () Bool)

(assert (=> b!2933866 (=> res!1211219 e!1849695)))

(assert (=> b!2933866 (= res!1211219 (not (is-ElementMatch!9060 lt!1028562)))))

(declare-fun e!1849700 () Bool)

(assert (=> b!2933866 (= e!1849700 e!1849695)))

(declare-fun b!2933867 () Bool)

(declare-fun e!1849694 () Bool)

(declare-fun e!1849698 () Bool)

(assert (=> b!2933867 (= e!1849694 e!1849698)))

(declare-fun res!1211214 () Bool)

(assert (=> b!2933867 (=> res!1211214 e!1849698)))

(declare-fun call!192687 () Bool)

(assert (=> b!2933867 (= res!1211214 call!192687)))

(declare-fun b!2933868 () Bool)

(assert (=> b!2933868 (= e!1849695 e!1849694)))

(declare-fun res!1211213 () Bool)

(assert (=> b!2933868 (=> (not res!1211213) (not e!1849694))))

(declare-fun lt!1028624 () Bool)

(assert (=> b!2933868 (= res!1211213 (not lt!1028624))))

(declare-fun b!2933869 () Bool)

(declare-fun head!6524 (List!34925) C!18306)

(assert (=> b!2933869 (= e!1849698 (not (= (head!6524 (_2!20017 lt!1028565)) (c!479253 lt!1028562))))))

(declare-fun bm!192682 () Bool)

(assert (=> bm!192682 (= call!192687 (isEmpty!19058 (_2!20017 lt!1028565)))))

(declare-fun d!839640 () Bool)

(declare-fun e!1849699 () Bool)

(assert (=> d!839640 e!1849699))

(declare-fun c!479266 () Bool)

(assert (=> d!839640 (= c!479266 (is-EmptyExpr!9060 lt!1028562))))

(declare-fun e!1849696 () Bool)

(assert (=> d!839640 (= lt!1028624 e!1849696)))

(declare-fun c!479265 () Bool)

(assert (=> d!839640 (= c!479265 (isEmpty!19058 (_2!20017 lt!1028565)))))

(assert (=> d!839640 (validRegex!3793 lt!1028562)))

(assert (=> d!839640 (= (matchR!3942 lt!1028562 (_2!20017 lt!1028565)) lt!1028624)))

(declare-fun b!2933870 () Bool)

(declare-fun nullable!2854 (Regex!9060) Bool)

(assert (=> b!2933870 (= e!1849696 (nullable!2854 lt!1028562))))

(declare-fun b!2933871 () Bool)

(assert (=> b!2933871 (= e!1849699 (= lt!1028624 call!192687))))

(declare-fun b!2933872 () Bool)

(assert (=> b!2933872 (= e!1849699 e!1849700)))

(declare-fun c!479264 () Bool)

(assert (=> b!2933872 (= c!479264 (is-EmptyLang!9060 lt!1028562))))

(declare-fun b!2933873 () Bool)

(declare-fun res!1211215 () Bool)

(declare-fun e!1849697 () Bool)

(assert (=> b!2933873 (=> (not res!1211215) (not e!1849697))))

(assert (=> b!2933873 (= res!1211215 (not call!192687))))

(declare-fun b!2933874 () Bool)

(declare-fun res!1211216 () Bool)

(assert (=> b!2933874 (=> res!1211216 e!1849695)))

(assert (=> b!2933874 (= res!1211216 e!1849697)))

(declare-fun res!1211217 () Bool)

(assert (=> b!2933874 (=> (not res!1211217) (not e!1849697))))

(assert (=> b!2933874 (= res!1211217 lt!1028624)))

(declare-fun b!2933875 () Bool)

(declare-fun res!1211218 () Bool)

(assert (=> b!2933875 (=> (not res!1211218) (not e!1849697))))

(declare-fun tail!4750 (List!34925) List!34925)

(assert (=> b!2933875 (= res!1211218 (isEmpty!19058 (tail!4750 (_2!20017 lt!1028565))))))

(declare-fun b!2933876 () Bool)

(assert (=> b!2933876 (= e!1849697 (= (head!6524 (_2!20017 lt!1028565)) (c!479253 lt!1028562)))))

(declare-fun b!2933877 () Bool)

(assert (=> b!2933877 (= e!1849700 (not lt!1028624))))

(declare-fun b!2933878 () Bool)

(declare-fun res!1211220 () Bool)

(assert (=> b!2933878 (=> res!1211220 e!1849698)))

(assert (=> b!2933878 (= res!1211220 (not (isEmpty!19058 (tail!4750 (_2!20017 lt!1028565)))))))

(declare-fun b!2933879 () Bool)

(declare-fun derivativeStep!2465 (Regex!9060 C!18306) Regex!9060)

(assert (=> b!2933879 (= e!1849696 (matchR!3942 (derivativeStep!2465 lt!1028562 (head!6524 (_2!20017 lt!1028565))) (tail!4750 (_2!20017 lt!1028565))))))

(assert (= (and d!839640 c!479265) b!2933870))

(assert (= (and d!839640 (not c!479265)) b!2933879))

(assert (= (and d!839640 c!479266) b!2933871))

(assert (= (and d!839640 (not c!479266)) b!2933872))

(assert (= (and b!2933872 c!479264) b!2933877))

(assert (= (and b!2933872 (not c!479264)) b!2933866))

(assert (= (and b!2933866 (not res!1211219)) b!2933874))

(assert (= (and b!2933874 res!1211217) b!2933873))

(assert (= (and b!2933873 res!1211215) b!2933875))

(assert (= (and b!2933875 res!1211218) b!2933876))

(assert (= (and b!2933874 (not res!1211216)) b!2933868))

(assert (= (and b!2933868 res!1211213) b!2933867))

(assert (= (and b!2933867 (not res!1211214)) b!2933878))

(assert (= (and b!2933878 (not res!1211220)) b!2933869))

(assert (= (or b!2933871 b!2933867 b!2933873) bm!192682))

(declare-fun m!3322597 () Bool)

(assert (=> bm!192682 m!3322597))

(declare-fun m!3322599 () Bool)

(assert (=> b!2933878 m!3322599))

(assert (=> b!2933878 m!3322599))

(declare-fun m!3322601 () Bool)

(assert (=> b!2933878 m!3322601))

(assert (=> d!839640 m!3322597))

(declare-fun m!3322603 () Bool)

(assert (=> d!839640 m!3322603))

(declare-fun m!3322605 () Bool)

(assert (=> b!2933879 m!3322605))

(assert (=> b!2933879 m!3322605))

(declare-fun m!3322607 () Bool)

(assert (=> b!2933879 m!3322607))

(assert (=> b!2933879 m!3322599))

(assert (=> b!2933879 m!3322607))

(assert (=> b!2933879 m!3322599))

(declare-fun m!3322609 () Bool)

(assert (=> b!2933879 m!3322609))

(assert (=> b!2933875 m!3322599))

(assert (=> b!2933875 m!3322599))

(assert (=> b!2933875 m!3322601))

(assert (=> b!2933876 m!3322605))

(assert (=> b!2933869 m!3322605))

(declare-fun m!3322611 () Bool)

(assert (=> b!2933870 m!3322611))

(assert (=> b!2933769 d!839640))

(declare-fun bs!525351 () Bool)

(declare-fun b!2933923 () Bool)

(assert (= bs!525351 (and b!2933923 b!2933771)))

(declare-fun lambda!109287 () Int)

(assert (=> bs!525351 (not (= lambda!109287 lambda!109271))))

(assert (=> bs!525351 (= (= r!17423 lt!1028562) (= lambda!109287 lambda!109272))))

(assert (=> b!2933923 true))

(assert (=> b!2933923 true))

(declare-fun bs!525352 () Bool)

(declare-fun b!2933921 () Bool)

(assert (= bs!525352 (and b!2933921 b!2933771)))

(declare-fun lambda!109288 () Int)

(assert (=> bs!525352 (not (= lambda!109288 lambda!109271))))

(assert (=> bs!525352 (not (= lambda!109288 lambda!109272))))

(declare-fun bs!525353 () Bool)

(assert (= bs!525353 (and b!2933921 b!2933923)))

(assert (=> bs!525353 (not (= lambda!109288 lambda!109287))))

(assert (=> b!2933921 true))

(assert (=> b!2933921 true))

(declare-fun b!2933916 () Bool)

(declare-fun e!1849724 () Bool)

(assert (=> b!2933916 (= e!1849724 (matchRSpec!1197 (regTwo!18633 r!17423) s!11993))))

(declare-fun c!479278 () Bool)

(declare-fun call!192692 () Bool)

(declare-fun bm!192687 () Bool)

(assert (=> bm!192687 (= call!192692 (Exists!1422 (ite c!479278 lambda!109287 lambda!109288)))))

(declare-fun b!2933917 () Bool)

(declare-fun e!1849725 () Bool)

(assert (=> b!2933917 (= e!1849725 e!1849724)))

(declare-fun res!1211242 () Bool)

(assert (=> b!2933917 (= res!1211242 (matchRSpec!1197 (regOne!18633 r!17423) s!11993))))

(assert (=> b!2933917 (=> res!1211242 e!1849724)))

(declare-fun b!2933918 () Bool)

(declare-fun e!1849727 () Bool)

(assert (=> b!2933918 (= e!1849727 (= s!11993 (Cons!34801 (c!479253 r!17423) Nil!34801)))))

(declare-fun b!2933919 () Bool)

(declare-fun e!1849722 () Bool)

(assert (=> b!2933919 (= e!1849725 e!1849722)))

(assert (=> b!2933919 (= c!479278 (is-Star!9060 r!17423))))

(declare-fun b!2933920 () Bool)

(declare-fun c!479276 () Bool)

(assert (=> b!2933920 (= c!479276 (is-Union!9060 r!17423))))

(assert (=> b!2933920 (= e!1849727 e!1849725)))

(assert (=> b!2933921 (= e!1849722 call!192692)))

(declare-fun b!2933922 () Bool)

(declare-fun c!479275 () Bool)

(assert (=> b!2933922 (= c!479275 (is-ElementMatch!9060 r!17423))))

(declare-fun e!1849726 () Bool)

(assert (=> b!2933922 (= e!1849726 e!1849727)))

(declare-fun e!1849723 () Bool)

(assert (=> b!2933923 (= e!1849723 call!192692)))

(declare-fun b!2933924 () Bool)

(declare-fun e!1849721 () Bool)

(declare-fun call!192693 () Bool)

(assert (=> b!2933924 (= e!1849721 call!192693)))

(declare-fun d!839644 () Bool)

(declare-fun c!479277 () Bool)

(assert (=> d!839644 (= c!479277 (is-EmptyExpr!9060 r!17423))))

(assert (=> d!839644 (= (matchRSpec!1197 r!17423 s!11993) e!1849721)))

(declare-fun bm!192688 () Bool)

(assert (=> bm!192688 (= call!192693 (isEmpty!19058 s!11993))))

(declare-fun b!2933925 () Bool)

(declare-fun res!1211241 () Bool)

(assert (=> b!2933925 (=> res!1211241 e!1849723)))

(assert (=> b!2933925 (= res!1211241 call!192693)))

(assert (=> b!2933925 (= e!1849722 e!1849723)))

(declare-fun b!2933926 () Bool)

(assert (=> b!2933926 (= e!1849721 e!1849726)))

(declare-fun res!1211243 () Bool)

(assert (=> b!2933926 (= res!1211243 (not (is-EmptyLang!9060 r!17423)))))

(assert (=> b!2933926 (=> (not res!1211243) (not e!1849726))))

(assert (= (and d!839644 c!479277) b!2933924))

(assert (= (and d!839644 (not c!479277)) b!2933926))

(assert (= (and b!2933926 res!1211243) b!2933922))

(assert (= (and b!2933922 c!479275) b!2933918))

(assert (= (and b!2933922 (not c!479275)) b!2933920))

(assert (= (and b!2933920 c!479276) b!2933917))

(assert (= (and b!2933920 (not c!479276)) b!2933919))

(assert (= (and b!2933917 (not res!1211242)) b!2933916))

(assert (= (and b!2933919 c!479278) b!2933925))

(assert (= (and b!2933919 (not c!479278)) b!2933921))

(assert (= (and b!2933925 (not res!1211241)) b!2933923))

(assert (= (or b!2933923 b!2933921) bm!192687))

(assert (= (or b!2933924 b!2933925) bm!192688))

(declare-fun m!3322613 () Bool)

(assert (=> b!2933916 m!3322613))

(declare-fun m!3322615 () Bool)

(assert (=> bm!192687 m!3322615))

(declare-fun m!3322617 () Bool)

(assert (=> b!2933917 m!3322617))

(assert (=> bm!192688 m!3322529))

(assert (=> b!2933773 d!839644))

(declare-fun b!2933927 () Bool)

(declare-fun res!1211250 () Bool)

(declare-fun e!1849729 () Bool)

(assert (=> b!2933927 (=> res!1211250 e!1849729)))

(assert (=> b!2933927 (= res!1211250 (not (is-ElementMatch!9060 r!17423)))))

(declare-fun e!1849734 () Bool)

(assert (=> b!2933927 (= e!1849734 e!1849729)))

(declare-fun b!2933928 () Bool)

(declare-fun e!1849728 () Bool)

(declare-fun e!1849732 () Bool)

(assert (=> b!2933928 (= e!1849728 e!1849732)))

(declare-fun res!1211245 () Bool)

(assert (=> b!2933928 (=> res!1211245 e!1849732)))

(declare-fun call!192694 () Bool)

(assert (=> b!2933928 (= res!1211245 call!192694)))

(declare-fun b!2933929 () Bool)

(assert (=> b!2933929 (= e!1849729 e!1849728)))

(declare-fun res!1211244 () Bool)

(assert (=> b!2933929 (=> (not res!1211244) (not e!1849728))))

(declare-fun lt!1028627 () Bool)

(assert (=> b!2933929 (= res!1211244 (not lt!1028627))))

(declare-fun b!2933930 () Bool)

(assert (=> b!2933930 (= e!1849732 (not (= (head!6524 s!11993) (c!479253 r!17423))))))

(declare-fun bm!192689 () Bool)

(assert (=> bm!192689 (= call!192694 (isEmpty!19058 s!11993))))

(declare-fun d!839646 () Bool)

(declare-fun e!1849733 () Bool)

(assert (=> d!839646 e!1849733))

(declare-fun c!479281 () Bool)

(assert (=> d!839646 (= c!479281 (is-EmptyExpr!9060 r!17423))))

(declare-fun e!1849730 () Bool)

(assert (=> d!839646 (= lt!1028627 e!1849730)))

(declare-fun c!479280 () Bool)

(assert (=> d!839646 (= c!479280 (isEmpty!19058 s!11993))))

(assert (=> d!839646 (validRegex!3793 r!17423)))

(assert (=> d!839646 (= (matchR!3942 r!17423 s!11993) lt!1028627)))

(declare-fun b!2933931 () Bool)

(assert (=> b!2933931 (= e!1849730 (nullable!2854 r!17423))))

(declare-fun b!2933932 () Bool)

(assert (=> b!2933932 (= e!1849733 (= lt!1028627 call!192694))))

(declare-fun b!2933933 () Bool)

(assert (=> b!2933933 (= e!1849733 e!1849734)))

(declare-fun c!479279 () Bool)

(assert (=> b!2933933 (= c!479279 (is-EmptyLang!9060 r!17423))))

(declare-fun b!2933934 () Bool)

(declare-fun res!1211246 () Bool)

(declare-fun e!1849731 () Bool)

(assert (=> b!2933934 (=> (not res!1211246) (not e!1849731))))

(assert (=> b!2933934 (= res!1211246 (not call!192694))))

(declare-fun b!2933935 () Bool)

(declare-fun res!1211247 () Bool)

(assert (=> b!2933935 (=> res!1211247 e!1849729)))

(assert (=> b!2933935 (= res!1211247 e!1849731)))

(declare-fun res!1211248 () Bool)

(assert (=> b!2933935 (=> (not res!1211248) (not e!1849731))))

(assert (=> b!2933935 (= res!1211248 lt!1028627)))

(declare-fun b!2933936 () Bool)

(declare-fun res!1211249 () Bool)

(assert (=> b!2933936 (=> (not res!1211249) (not e!1849731))))

(assert (=> b!2933936 (= res!1211249 (isEmpty!19058 (tail!4750 s!11993)))))

(declare-fun b!2933937 () Bool)

(assert (=> b!2933937 (= e!1849731 (= (head!6524 s!11993) (c!479253 r!17423)))))

(declare-fun b!2933938 () Bool)

(assert (=> b!2933938 (= e!1849734 (not lt!1028627))))

(declare-fun b!2933939 () Bool)

(declare-fun res!1211251 () Bool)

(assert (=> b!2933939 (=> res!1211251 e!1849732)))

(assert (=> b!2933939 (= res!1211251 (not (isEmpty!19058 (tail!4750 s!11993))))))

(declare-fun b!2933940 () Bool)

(assert (=> b!2933940 (= e!1849730 (matchR!3942 (derivativeStep!2465 r!17423 (head!6524 s!11993)) (tail!4750 s!11993)))))

(assert (= (and d!839646 c!479280) b!2933931))

(assert (= (and d!839646 (not c!479280)) b!2933940))

(assert (= (and d!839646 c!479281) b!2933932))

(assert (= (and d!839646 (not c!479281)) b!2933933))

(assert (= (and b!2933933 c!479279) b!2933938))

(assert (= (and b!2933933 (not c!479279)) b!2933927))

(assert (= (and b!2933927 (not res!1211250)) b!2933935))

(assert (= (and b!2933935 res!1211248) b!2933934))

(assert (= (and b!2933934 res!1211246) b!2933936))

(assert (= (and b!2933936 res!1211249) b!2933937))

(assert (= (and b!2933935 (not res!1211247)) b!2933929))

(assert (= (and b!2933929 res!1211244) b!2933928))

(assert (= (and b!2933928 (not res!1211245)) b!2933939))

(assert (= (and b!2933939 (not res!1211251)) b!2933930))

(assert (= (or b!2933932 b!2933928 b!2933934) bm!192689))

(assert (=> bm!192689 m!3322529))

(declare-fun m!3322619 () Bool)

(assert (=> b!2933939 m!3322619))

(assert (=> b!2933939 m!3322619))

(declare-fun m!3322621 () Bool)

(assert (=> b!2933939 m!3322621))

(assert (=> d!839646 m!3322529))

(assert (=> d!839646 m!3322531))

(declare-fun m!3322623 () Bool)

(assert (=> b!2933940 m!3322623))

(assert (=> b!2933940 m!3322623))

(declare-fun m!3322625 () Bool)

(assert (=> b!2933940 m!3322625))

(assert (=> b!2933940 m!3322619))

(assert (=> b!2933940 m!3322625))

(assert (=> b!2933940 m!3322619))

(declare-fun m!3322627 () Bool)

(assert (=> b!2933940 m!3322627))

(assert (=> b!2933936 m!3322619))

(assert (=> b!2933936 m!3322619))

(assert (=> b!2933936 m!3322621))

(assert (=> b!2933937 m!3322623))

(assert (=> b!2933930 m!3322623))

(declare-fun m!3322629 () Bool)

(assert (=> b!2933931 m!3322629))

(assert (=> b!2933773 d!839646))

(declare-fun d!839648 () Bool)

(assert (=> d!839648 (= (matchR!3942 r!17423 s!11993) (matchRSpec!1197 r!17423 s!11993))))

(declare-fun lt!1028631 () Unit!48479)

(declare-fun choose!17351 (Regex!9060 List!34925) Unit!48479)

(assert (=> d!839648 (= lt!1028631 (choose!17351 r!17423 s!11993))))

(assert (=> d!839648 (validRegex!3793 r!17423)))

(assert (=> d!839648 (= (mainMatchTheorem!1197 r!17423 s!11993) lt!1028631)))

(declare-fun bs!525356 () Bool)

(assert (= bs!525356 d!839648))

(assert (=> bs!525356 m!3322503))

(assert (=> bs!525356 m!3322501))

(declare-fun m!3322639 () Bool)

(assert (=> bs!525356 m!3322639))

(assert (=> bs!525356 m!3322531))

(assert (=> b!2933773 d!839648))

(declare-fun b!2933995 () Bool)

(declare-fun e!1849768 () Regex!9060)

(declare-fun e!1849770 () Regex!9060)

(assert (=> b!2933995 (= e!1849768 e!1849770)))

(declare-fun lt!1028649 () Regex!9060)

(declare-fun call!192714 () Regex!9060)

(assert (=> b!2933995 (= lt!1028649 call!192714)))

(declare-fun lt!1028648 () Regex!9060)

(declare-fun call!192715 () Regex!9060)

(assert (=> b!2933995 (= lt!1028648 call!192715)))

(declare-fun res!1211263 () Bool)

(declare-fun call!192712 () Bool)

(assert (=> b!2933995 (= res!1211263 call!192712)))

(declare-fun e!1849773 () Bool)

(assert (=> b!2933995 (=> res!1211263 e!1849773)))

(declare-fun c!479313 () Bool)

(assert (=> b!2933995 (= c!479313 e!1849773)))

(declare-fun b!2933997 () Bool)

(declare-fun e!1849765 () Regex!9060)

(declare-fun lt!1028651 () Regex!9060)

(assert (=> b!2933997 (= e!1849765 lt!1028651)))

(declare-fun b!2933998 () Bool)

(assert (=> b!2933998 (= e!1849770 EmptyLang!9060)))

(declare-fun b!2933999 () Bool)

(declare-fun e!1849767 () Regex!9060)

(assert (=> b!2933999 (= e!1849767 lt!1028649)))

(declare-fun c!479306 () Bool)

(declare-fun c!479310 () Bool)

(declare-fun bm!192704 () Bool)

(declare-fun call!192709 () Regex!9060)

(assert (=> bm!192704 (= call!192709 (simplify!67 (ite c!479306 (reg!9389 lt!1028562) (ite c!479310 (regOne!18633 lt!1028562) (regTwo!18632 lt!1028562)))))))

(declare-fun b!2934000 () Bool)

(declare-fun c!479305 () Bool)

(assert (=> b!2934000 (= c!479305 call!192712)))

(declare-fun e!1849766 () Regex!9060)

(assert (=> b!2934000 (= e!1849765 e!1849766)))

(declare-fun bm!192705 () Bool)

(declare-fun call!192711 () Bool)

(declare-fun call!192710 () Bool)

(assert (=> bm!192705 (= call!192711 call!192710)))

(declare-fun bm!192706 () Bool)

(assert (=> bm!192706 (= call!192715 call!192709)))

(declare-fun b!2934001 () Bool)

(declare-fun e!1849777 () Regex!9060)

(declare-fun e!1849778 () Regex!9060)

(assert (=> b!2934001 (= e!1849777 e!1849778)))

(assert (=> b!2934001 (= c!479306 (is-Star!9060 lt!1028562))))

(declare-fun b!2934002 () Bool)

(declare-fun lt!1028647 () Regex!9060)

(assert (=> b!2934002 (= e!1849766 lt!1028647)))

(declare-fun b!2934003 () Bool)

(assert (=> b!2934003 (= e!1849773 call!192711)))

(declare-fun b!2934004 () Bool)

(assert (=> b!2934004 (= c!479310 (is-Union!9060 lt!1028562))))

(assert (=> b!2934004 (= e!1849778 e!1849768)))

(declare-fun b!2934005 () Bool)

(declare-fun e!1849772 () Regex!9060)

(assert (=> b!2934005 (= e!1849772 e!1849767)))

(declare-fun c!479311 () Bool)

(declare-fun call!192713 () Bool)

(assert (=> b!2934005 (= c!479311 call!192713)))

(declare-fun b!2934006 () Bool)

(declare-fun e!1849771 () Regex!9060)

(assert (=> b!2934006 (= e!1849771 lt!1028562)))

(declare-fun b!2934007 () Bool)

(declare-fun e!1849776 () Regex!9060)

(assert (=> b!2934007 (= e!1849776 e!1849771)))

(declare-fun c!479308 () Bool)

(assert (=> b!2934007 (= c!479308 (is-ElementMatch!9060 lt!1028562))))

(declare-fun b!2933996 () Bool)

(declare-fun c!479309 () Bool)

(declare-fun isEmptyExpr!284 (Regex!9060) Bool)

(assert (=> b!2933996 (= c!479309 (isEmptyExpr!284 lt!1028649))))

(assert (=> b!2933996 (= e!1849770 e!1849772)))

(declare-fun d!839652 () Bool)

(declare-fun e!1849775 () Bool)

(assert (=> d!839652 e!1849775))

(declare-fun res!1211262 () Bool)

(assert (=> d!839652 (=> (not res!1211262) (not e!1849775))))

(declare-fun lt!1028646 () Regex!9060)

(assert (=> d!839652 (= res!1211262 (validRegex!3793 lt!1028646))))

(assert (=> d!839652 (= lt!1028646 e!1849776)))

(declare-fun c!479304 () Bool)

(assert (=> d!839652 (= c!479304 (is-EmptyLang!9060 lt!1028562))))

(assert (=> d!839652 (validRegex!3793 lt!1028562)))

(assert (=> d!839652 (= (simplify!67 lt!1028562) lt!1028646)))

(declare-fun b!2934008 () Bool)

(assert (=> b!2934008 (= e!1849776 EmptyLang!9060)))

(declare-fun b!2934009 () Bool)

(declare-fun e!1849769 () Regex!9060)

(declare-fun lt!1028650 () Regex!9060)

(assert (=> b!2934009 (= e!1849769 (Star!9060 lt!1028650))))

(declare-fun b!2934010 () Bool)

(declare-fun c!479307 () Bool)

(assert (=> b!2934010 (= c!479307 (is-EmptyExpr!9060 lt!1028562))))

(assert (=> b!2934010 (= e!1849771 e!1849777)))

(declare-fun b!2934011 () Bool)

(assert (=> b!2934011 (= e!1849768 e!1849765)))

(assert (=> b!2934011 (= lt!1028647 call!192715)))

(assert (=> b!2934011 (= lt!1028651 call!192714)))

(declare-fun c!479314 () Bool)

(assert (=> b!2934011 (= c!479314 call!192711)))

(declare-fun b!2934012 () Bool)

(assert (=> b!2934012 (= e!1849775 (= (nullable!2854 lt!1028646) (nullable!2854 lt!1028562)))))

(declare-fun bm!192707 () Bool)

(declare-fun isEmptyLang!199 (Regex!9060) Bool)

(assert (=> bm!192707 (= call!192712 (isEmptyLang!199 (ite c!479310 lt!1028651 lt!1028649)))))

(declare-fun bm!192708 () Bool)

(assert (=> bm!192708 (= call!192714 (simplify!67 (ite c!479310 (regTwo!18633 lt!1028562) (regOne!18632 lt!1028562))))))

(declare-fun bm!192709 () Bool)

(assert (=> bm!192709 (= call!192713 (isEmptyExpr!284 (ite c!479306 lt!1028650 lt!1028648)))))

(declare-fun b!2934013 () Bool)

(declare-fun c!479312 () Bool)

(declare-fun e!1849774 () Bool)

(assert (=> b!2934013 (= c!479312 e!1849774)))

(declare-fun res!1211264 () Bool)

(assert (=> b!2934013 (=> res!1211264 e!1849774)))

(assert (=> b!2934013 (= res!1211264 call!192710)))

(assert (=> b!2934013 (= lt!1028650 call!192709)))

(assert (=> b!2934013 (= e!1849778 e!1849769)))

(declare-fun b!2934014 () Bool)

(assert (=> b!2934014 (= e!1849777 EmptyExpr!9060)))

(declare-fun b!2934015 () Bool)

(assert (=> b!2934015 (= e!1849774 call!192713)))

(declare-fun bm!192710 () Bool)

(assert (=> bm!192710 (= call!192710 (isEmptyLang!199 (ite c!479306 lt!1028650 (ite c!479310 lt!1028647 lt!1028648))))))

(declare-fun b!2934016 () Bool)

(assert (=> b!2934016 (= e!1849767 (Concat!14381 lt!1028649 lt!1028648))))

(declare-fun b!2934017 () Bool)

(assert (=> b!2934017 (= e!1849772 lt!1028648)))

(declare-fun b!2934018 () Bool)

(assert (=> b!2934018 (= e!1849766 (Union!9060 lt!1028647 lt!1028651))))

(declare-fun b!2934019 () Bool)

(assert (=> b!2934019 (= e!1849769 EmptyExpr!9060)))

(assert (= (and d!839652 c!479304) b!2934008))

(assert (= (and d!839652 (not c!479304)) b!2934007))

(assert (= (and b!2934007 c!479308) b!2934006))

(assert (= (and b!2934007 (not c!479308)) b!2934010))

(assert (= (and b!2934010 c!479307) b!2934014))

(assert (= (and b!2934010 (not c!479307)) b!2934001))

(assert (= (and b!2934001 c!479306) b!2934013))

(assert (= (and b!2934001 (not c!479306)) b!2934004))

(assert (= (and b!2934013 (not res!1211264)) b!2934015))

(assert (= (and b!2934013 c!479312) b!2934019))

(assert (= (and b!2934013 (not c!479312)) b!2934009))

(assert (= (and b!2934004 c!479310) b!2934011))

(assert (= (and b!2934004 (not c!479310)) b!2933995))

(assert (= (and b!2934011 c!479314) b!2933997))

(assert (= (and b!2934011 (not c!479314)) b!2934000))

(assert (= (and b!2934000 c!479305) b!2934002))

(assert (= (and b!2934000 (not c!479305)) b!2934018))

(assert (= (and b!2933995 (not res!1211263)) b!2934003))

(assert (= (and b!2933995 c!479313) b!2933998))

(assert (= (and b!2933995 (not c!479313)) b!2933996))

(assert (= (and b!2933996 c!479309) b!2934017))

(assert (= (and b!2933996 (not c!479309)) b!2934005))

(assert (= (and b!2934005 c!479311) b!2933999))

(assert (= (and b!2934005 (not c!479311)) b!2934016))

(assert (= (or b!2934011 b!2933995) bm!192706))

(assert (= (or b!2934011 b!2933995) bm!192708))

(assert (= (or b!2934000 b!2933995) bm!192707))

(assert (= (or b!2934011 b!2934003) bm!192705))

(assert (= (or b!2934015 b!2934005) bm!192709))

(assert (= (or b!2934013 bm!192706) bm!192704))

(assert (= (or b!2934013 bm!192705) bm!192710))

(assert (= (and d!839652 res!1211262) b!2934012))

(declare-fun m!3322641 () Bool)

(assert (=> bm!192704 m!3322641))

(declare-fun m!3322643 () Bool)

(assert (=> bm!192707 m!3322643))

(declare-fun m!3322645 () Bool)

(assert (=> bm!192708 m!3322645))

(declare-fun m!3322647 () Bool)

(assert (=> b!2933996 m!3322647))

(declare-fun m!3322649 () Bool)

(assert (=> bm!192709 m!3322649))

(declare-fun m!3322651 () Bool)

(assert (=> d!839652 m!3322651))

(assert (=> d!839652 m!3322603))

(declare-fun m!3322653 () Bool)

(assert (=> b!2934012 m!3322653))

(assert (=> b!2934012 m!3322611))

(declare-fun m!3322655 () Bool)

(assert (=> bm!192710 m!3322655))

(assert (=> b!2933768 d!839652))

(declare-fun d!839654 () Bool)

(declare-fun lt!1028654 () Int)

(assert (=> d!839654 (>= lt!1028654 0)))

(declare-fun e!1849781 () Int)

(assert (=> d!839654 (= lt!1028654 e!1849781)))

(declare-fun c!479317 () Bool)

(assert (=> d!839654 (= c!479317 (is-Nil!34801 s!11993))))

(assert (=> d!839654 (= (size!26456 s!11993) lt!1028654)))

(declare-fun b!2934024 () Bool)

(assert (=> b!2934024 (= e!1849781 0)))

(declare-fun b!2934025 () Bool)

(assert (=> b!2934025 (= e!1849781 (+ 1 (size!26456 (t!233990 s!11993))))))

(assert (= (and d!839654 c!479317) b!2934024))

(assert (= (and d!839654 (not c!479317)) b!2934025))

(declare-fun m!3322657 () Bool)

(assert (=> b!2934025 m!3322657))

(assert (=> b!2933768 d!839654))

(declare-fun b!2934028 () Bool)

(declare-fun res!1211273 () Bool)

(declare-fun e!1849785 () Bool)

(assert (=> b!2934028 (=> res!1211273 e!1849785)))

(assert (=> b!2934028 (= res!1211273 (not (is-ElementMatch!9060 lt!1028576)))))

(declare-fun e!1849790 () Bool)

(assert (=> b!2934028 (= e!1849790 e!1849785)))

(declare-fun b!2934029 () Bool)

(declare-fun e!1849784 () Bool)

(declare-fun e!1849788 () Bool)

(assert (=> b!2934029 (= e!1849784 e!1849788)))

(declare-fun res!1211268 () Bool)

(assert (=> b!2934029 (=> res!1211268 e!1849788)))

(declare-fun call!192716 () Bool)

(assert (=> b!2934029 (= res!1211268 call!192716)))

(declare-fun b!2934030 () Bool)

(assert (=> b!2934030 (= e!1849785 e!1849784)))

(declare-fun res!1211267 () Bool)

(assert (=> b!2934030 (=> (not res!1211267) (not e!1849784))))

(declare-fun lt!1028655 () Bool)

(assert (=> b!2934030 (= res!1211267 (not lt!1028655))))

(declare-fun b!2934031 () Bool)

(assert (=> b!2934031 (= e!1849788 (not (= (head!6524 (_1!20017 lt!1028565)) (c!479253 lt!1028576))))))

(declare-fun bm!192711 () Bool)

(assert (=> bm!192711 (= call!192716 (isEmpty!19058 (_1!20017 lt!1028565)))))

(declare-fun d!839656 () Bool)

(declare-fun e!1849789 () Bool)

(assert (=> d!839656 e!1849789))

(declare-fun c!479320 () Bool)

(assert (=> d!839656 (= c!479320 (is-EmptyExpr!9060 lt!1028576))))

(declare-fun e!1849786 () Bool)

(assert (=> d!839656 (= lt!1028655 e!1849786)))

(declare-fun c!479319 () Bool)

(assert (=> d!839656 (= c!479319 (isEmpty!19058 (_1!20017 lt!1028565)))))

(assert (=> d!839656 (validRegex!3793 lt!1028576)))

(assert (=> d!839656 (= (matchR!3942 lt!1028576 (_1!20017 lt!1028565)) lt!1028655)))

(declare-fun b!2934032 () Bool)

(assert (=> b!2934032 (= e!1849786 (nullable!2854 lt!1028576))))

(declare-fun b!2934033 () Bool)

(assert (=> b!2934033 (= e!1849789 (= lt!1028655 call!192716))))

(declare-fun b!2934034 () Bool)

(assert (=> b!2934034 (= e!1849789 e!1849790)))

(declare-fun c!479318 () Bool)

(assert (=> b!2934034 (= c!479318 (is-EmptyLang!9060 lt!1028576))))

(declare-fun b!2934035 () Bool)

(declare-fun res!1211269 () Bool)

(declare-fun e!1849787 () Bool)

(assert (=> b!2934035 (=> (not res!1211269) (not e!1849787))))

(assert (=> b!2934035 (= res!1211269 (not call!192716))))

(declare-fun b!2934036 () Bool)

(declare-fun res!1211270 () Bool)

(assert (=> b!2934036 (=> res!1211270 e!1849785)))

(assert (=> b!2934036 (= res!1211270 e!1849787)))

(declare-fun res!1211271 () Bool)

(assert (=> b!2934036 (=> (not res!1211271) (not e!1849787))))

(assert (=> b!2934036 (= res!1211271 lt!1028655)))

(declare-fun b!2934037 () Bool)

(declare-fun res!1211272 () Bool)

(assert (=> b!2934037 (=> (not res!1211272) (not e!1849787))))

(assert (=> b!2934037 (= res!1211272 (isEmpty!19058 (tail!4750 (_1!20017 lt!1028565))))))

(declare-fun b!2934038 () Bool)

(assert (=> b!2934038 (= e!1849787 (= (head!6524 (_1!20017 lt!1028565)) (c!479253 lt!1028576)))))

(declare-fun b!2934039 () Bool)

(assert (=> b!2934039 (= e!1849790 (not lt!1028655))))

(declare-fun b!2934040 () Bool)

(declare-fun res!1211274 () Bool)

(assert (=> b!2934040 (=> res!1211274 e!1849788)))

(assert (=> b!2934040 (= res!1211274 (not (isEmpty!19058 (tail!4750 (_1!20017 lt!1028565)))))))

(declare-fun b!2934041 () Bool)

(assert (=> b!2934041 (= e!1849786 (matchR!3942 (derivativeStep!2465 lt!1028576 (head!6524 (_1!20017 lt!1028565))) (tail!4750 (_1!20017 lt!1028565))))))

(assert (= (and d!839656 c!479319) b!2934032))

(assert (= (and d!839656 (not c!479319)) b!2934041))

(assert (= (and d!839656 c!479320) b!2934033))

(assert (= (and d!839656 (not c!479320)) b!2934034))

(assert (= (and b!2934034 c!479318) b!2934039))

(assert (= (and b!2934034 (not c!479318)) b!2934028))

(assert (= (and b!2934028 (not res!1211273)) b!2934036))

(assert (= (and b!2934036 res!1211271) b!2934035))

(assert (= (and b!2934035 res!1211269) b!2934037))

(assert (= (and b!2934037 res!1211272) b!2934038))

(assert (= (and b!2934036 (not res!1211270)) b!2934030))

(assert (= (and b!2934030 res!1211267) b!2934029))

(assert (= (and b!2934029 (not res!1211268)) b!2934040))

(assert (= (and b!2934040 (not res!1211274)) b!2934031))

(assert (= (or b!2934033 b!2934029 b!2934035) bm!192711))

(declare-fun m!3322659 () Bool)

(assert (=> bm!192711 m!3322659))

(declare-fun m!3322661 () Bool)

(assert (=> b!2934040 m!3322661))

(assert (=> b!2934040 m!3322661))

(declare-fun m!3322663 () Bool)

(assert (=> b!2934040 m!3322663))

(assert (=> d!839656 m!3322659))

(declare-fun m!3322665 () Bool)

(assert (=> d!839656 m!3322665))

(declare-fun m!3322667 () Bool)

(assert (=> b!2934041 m!3322667))

(assert (=> b!2934041 m!3322667))

(declare-fun m!3322669 () Bool)

(assert (=> b!2934041 m!3322669))

(assert (=> b!2934041 m!3322661))

(assert (=> b!2934041 m!3322669))

(assert (=> b!2934041 m!3322661))

(declare-fun m!3322671 () Bool)

(assert (=> b!2934041 m!3322671))

(assert (=> b!2934037 m!3322661))

(assert (=> b!2934037 m!3322661))

(assert (=> b!2934037 m!3322663))

(assert (=> b!2934038 m!3322667))

(assert (=> b!2934031 m!3322667))

(declare-fun m!3322673 () Bool)

(assert (=> b!2934032 m!3322673))

(assert (=> b!2933768 d!839656))

(declare-fun b!2934046 () Bool)

(declare-fun res!1211285 () Bool)

(declare-fun e!1849792 () Bool)

(assert (=> b!2934046 (=> res!1211285 e!1849792)))

(assert (=> b!2934046 (= res!1211285 (not (is-ElementMatch!9060 lt!1028574)))))

(declare-fun e!1849797 () Bool)

(assert (=> b!2934046 (= e!1849797 e!1849792)))

(declare-fun b!2934047 () Bool)

(declare-fun e!1849791 () Bool)

(declare-fun e!1849795 () Bool)

(assert (=> b!2934047 (= e!1849791 e!1849795)))

(declare-fun res!1211280 () Bool)

(assert (=> b!2934047 (=> res!1211280 e!1849795)))

(declare-fun call!192717 () Bool)

(assert (=> b!2934047 (= res!1211280 call!192717)))

(declare-fun b!2934048 () Bool)

(assert (=> b!2934048 (= e!1849792 e!1849791)))

(declare-fun res!1211279 () Bool)

(assert (=> b!2934048 (=> (not res!1211279) (not e!1849791))))

(declare-fun lt!1028656 () Bool)

(assert (=> b!2934048 (= res!1211279 (not lt!1028656))))

(declare-fun b!2934049 () Bool)

(assert (=> b!2934049 (= e!1849795 (not (= (head!6524 (_2!20017 lt!1028565)) (c!479253 lt!1028574))))))

(declare-fun bm!192712 () Bool)

(assert (=> bm!192712 (= call!192717 (isEmpty!19058 (_2!20017 lt!1028565)))))

(declare-fun d!839658 () Bool)

(declare-fun e!1849796 () Bool)

(assert (=> d!839658 e!1849796))

(declare-fun c!479323 () Bool)

(assert (=> d!839658 (= c!479323 (is-EmptyExpr!9060 lt!1028574))))

(declare-fun e!1849793 () Bool)

(assert (=> d!839658 (= lt!1028656 e!1849793)))

(declare-fun c!479322 () Bool)

(assert (=> d!839658 (= c!479322 (isEmpty!19058 (_2!20017 lt!1028565)))))

(assert (=> d!839658 (validRegex!3793 lt!1028574)))

(assert (=> d!839658 (= (matchR!3942 lt!1028574 (_2!20017 lt!1028565)) lt!1028656)))

(declare-fun b!2934050 () Bool)

(assert (=> b!2934050 (= e!1849793 (nullable!2854 lt!1028574))))

(declare-fun b!2934051 () Bool)

(assert (=> b!2934051 (= e!1849796 (= lt!1028656 call!192717))))

(declare-fun b!2934052 () Bool)

(assert (=> b!2934052 (= e!1849796 e!1849797)))

(declare-fun c!479321 () Bool)

(assert (=> b!2934052 (= c!479321 (is-EmptyLang!9060 lt!1028574))))

(declare-fun b!2934053 () Bool)

(declare-fun res!1211281 () Bool)

(declare-fun e!1849794 () Bool)

(assert (=> b!2934053 (=> (not res!1211281) (not e!1849794))))

(assert (=> b!2934053 (= res!1211281 (not call!192717))))

(declare-fun b!2934054 () Bool)

(declare-fun res!1211282 () Bool)

(assert (=> b!2934054 (=> res!1211282 e!1849792)))

(assert (=> b!2934054 (= res!1211282 e!1849794)))

(declare-fun res!1211283 () Bool)

(assert (=> b!2934054 (=> (not res!1211283) (not e!1849794))))

(assert (=> b!2934054 (= res!1211283 lt!1028656)))

(declare-fun b!2934055 () Bool)

(declare-fun res!1211284 () Bool)

(assert (=> b!2934055 (=> (not res!1211284) (not e!1849794))))

(assert (=> b!2934055 (= res!1211284 (isEmpty!19058 (tail!4750 (_2!20017 lt!1028565))))))

(declare-fun b!2934056 () Bool)

(assert (=> b!2934056 (= e!1849794 (= (head!6524 (_2!20017 lt!1028565)) (c!479253 lt!1028574)))))

(declare-fun b!2934057 () Bool)

(assert (=> b!2934057 (= e!1849797 (not lt!1028656))))

(declare-fun b!2934058 () Bool)

(declare-fun res!1211286 () Bool)

(assert (=> b!2934058 (=> res!1211286 e!1849795)))

(assert (=> b!2934058 (= res!1211286 (not (isEmpty!19058 (tail!4750 (_2!20017 lt!1028565)))))))

(declare-fun b!2934059 () Bool)

(assert (=> b!2934059 (= e!1849793 (matchR!3942 (derivativeStep!2465 lt!1028574 (head!6524 (_2!20017 lt!1028565))) (tail!4750 (_2!20017 lt!1028565))))))

(assert (= (and d!839658 c!479322) b!2934050))

(assert (= (and d!839658 (not c!479322)) b!2934059))

(assert (= (and d!839658 c!479323) b!2934051))

(assert (= (and d!839658 (not c!479323)) b!2934052))

(assert (= (and b!2934052 c!479321) b!2934057))

(assert (= (and b!2934052 (not c!479321)) b!2934046))

(assert (= (and b!2934046 (not res!1211285)) b!2934054))

(assert (= (and b!2934054 res!1211283) b!2934053))

(assert (= (and b!2934053 res!1211281) b!2934055))

(assert (= (and b!2934055 res!1211284) b!2934056))

(assert (= (and b!2934054 (not res!1211282)) b!2934048))

(assert (= (and b!2934048 res!1211279) b!2934047))

(assert (= (and b!2934047 (not res!1211280)) b!2934058))

(assert (= (and b!2934058 (not res!1211286)) b!2934049))

(assert (= (or b!2934051 b!2934047 b!2934053) bm!192712))

(assert (=> bm!192712 m!3322597))

(assert (=> b!2934058 m!3322599))

(assert (=> b!2934058 m!3322599))

(assert (=> b!2934058 m!3322601))

(assert (=> d!839658 m!3322597))

(declare-fun m!3322675 () Bool)

(assert (=> d!839658 m!3322675))

(assert (=> b!2934059 m!3322605))

(assert (=> b!2934059 m!3322605))

(declare-fun m!3322677 () Bool)

(assert (=> b!2934059 m!3322677))

(assert (=> b!2934059 m!3322599))

(assert (=> b!2934059 m!3322677))

(assert (=> b!2934059 m!3322599))

(declare-fun m!3322679 () Bool)

(assert (=> b!2934059 m!3322679))

(assert (=> b!2934055 m!3322599))

(assert (=> b!2934055 m!3322599))

(assert (=> b!2934055 m!3322601))

(assert (=> b!2934056 m!3322605))

(assert (=> b!2934049 m!3322605))

(declare-fun m!3322681 () Bool)

(assert (=> b!2934050 m!3322681))

(assert (=> b!2933768 d!839658))

(declare-fun d!839660 () Bool)

(declare-fun lt!1028657 () Int)

(assert (=> d!839660 (>= lt!1028657 0)))

(declare-fun e!1849798 () Int)

(assert (=> d!839660 (= lt!1028657 e!1849798)))

(declare-fun c!479324 () Bool)

(assert (=> d!839660 (= c!479324 (is-Nil!34801 (_2!20017 lt!1028565)))))

(assert (=> d!839660 (= (size!26456 (_2!20017 lt!1028565)) lt!1028657)))

(declare-fun b!2934060 () Bool)

(assert (=> b!2934060 (= e!1849798 0)))

(declare-fun b!2934061 () Bool)

(assert (=> b!2934061 (= e!1849798 (+ 1 (size!26456 (t!233990 (_2!20017 lt!1028565)))))))

(assert (= (and d!839660 c!479324) b!2934060))

(assert (= (and d!839660 (not c!479324)) b!2934061))

(declare-fun m!3322683 () Bool)

(assert (=> b!2934061 m!3322683))

(assert (=> b!2933768 d!839660))

(declare-fun d!839662 () Bool)

(assert (=> d!839662 (= (matchR!3942 (reg!9389 r!17423) (_1!20017 lt!1028565)) (matchR!3942 (simplify!67 (reg!9389 r!17423)) (_1!20017 lt!1028565)))))

(declare-fun lt!1028661 () Unit!48479)

(declare-fun choose!17352 (Regex!9060 List!34925) Unit!48479)

(assert (=> d!839662 (= lt!1028661 (choose!17352 (reg!9389 r!17423) (_1!20017 lt!1028565)))))

(assert (=> d!839662 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839662 (= (lemmaSimplifySound!63 (reg!9389 r!17423) (_1!20017 lt!1028565)) lt!1028661)))

(declare-fun bs!525357 () Bool)

(assert (= bs!525357 d!839662))

(assert (=> bs!525357 m!3322525))

(assert (=> bs!525357 m!3322513))

(declare-fun m!3322685 () Bool)

(assert (=> bs!525357 m!3322685))

(declare-fun m!3322687 () Bool)

(assert (=> bs!525357 m!3322687))

(assert (=> bs!525357 m!3322513))

(declare-fun m!3322689 () Bool)

(assert (=> bs!525357 m!3322689))

(assert (=> b!2933768 d!839662))

(declare-fun d!839664 () Bool)

(assert (=> d!839664 (= (matchR!3942 lt!1028562 (_2!20017 lt!1028565)) (matchR!3942 (simplify!67 lt!1028562) (_2!20017 lt!1028565)))))

(declare-fun lt!1028662 () Unit!48479)

(assert (=> d!839664 (= lt!1028662 (choose!17352 lt!1028562 (_2!20017 lt!1028565)))))

(assert (=> d!839664 (validRegex!3793 lt!1028562)))

(assert (=> d!839664 (= (lemmaSimplifySound!63 lt!1028562 (_2!20017 lt!1028565)) lt!1028662)))

(declare-fun bs!525358 () Bool)

(assert (= bs!525358 d!839664))

(assert (=> bs!525358 m!3322547))

(assert (=> bs!525358 m!3322509))

(declare-fun m!3322691 () Bool)

(assert (=> bs!525358 m!3322691))

(assert (=> bs!525358 m!3322603))

(assert (=> bs!525358 m!3322509))

(declare-fun m!3322693 () Bool)

(assert (=> bs!525358 m!3322693))

(assert (=> b!2933768 d!839664))

(declare-fun b!2934062 () Bool)

(declare-fun e!1849802 () Regex!9060)

(declare-fun e!1849804 () Regex!9060)

(assert (=> b!2934062 (= e!1849802 e!1849804)))

(declare-fun lt!1028666 () Regex!9060)

(declare-fun call!192723 () Regex!9060)

(assert (=> b!2934062 (= lt!1028666 call!192723)))

(declare-fun lt!1028665 () Regex!9060)

(declare-fun call!192724 () Regex!9060)

(assert (=> b!2934062 (= lt!1028665 call!192724)))

(declare-fun res!1211288 () Bool)

(declare-fun call!192721 () Bool)

(assert (=> b!2934062 (= res!1211288 call!192721)))

(declare-fun e!1849807 () Bool)

(assert (=> b!2934062 (=> res!1211288 e!1849807)))

(declare-fun c!479334 () Bool)

(assert (=> b!2934062 (= c!479334 e!1849807)))

(declare-fun b!2934064 () Bool)

(declare-fun e!1849799 () Regex!9060)

(declare-fun lt!1028668 () Regex!9060)

(assert (=> b!2934064 (= e!1849799 lt!1028668)))

(declare-fun b!2934065 () Bool)

(assert (=> b!2934065 (= e!1849804 EmptyLang!9060)))

(declare-fun b!2934066 () Bool)

(declare-fun e!1849801 () Regex!9060)

(assert (=> b!2934066 (= e!1849801 lt!1028666)))

(declare-fun call!192718 () Regex!9060)

(declare-fun c!479331 () Bool)

(declare-fun c!479327 () Bool)

(declare-fun bm!192713 () Bool)

(assert (=> bm!192713 (= call!192718 (simplify!67 (ite c!479327 (reg!9389 (reg!9389 r!17423)) (ite c!479331 (regOne!18633 (reg!9389 r!17423)) (regTwo!18632 (reg!9389 r!17423))))))))

(declare-fun b!2934067 () Bool)

(declare-fun c!479326 () Bool)

(assert (=> b!2934067 (= c!479326 call!192721)))

(declare-fun e!1849800 () Regex!9060)

(assert (=> b!2934067 (= e!1849799 e!1849800)))

(declare-fun bm!192714 () Bool)

(declare-fun call!192720 () Bool)

(declare-fun call!192719 () Bool)

(assert (=> bm!192714 (= call!192720 call!192719)))

(declare-fun bm!192715 () Bool)

(assert (=> bm!192715 (= call!192724 call!192718)))

(declare-fun b!2934068 () Bool)

(declare-fun e!1849811 () Regex!9060)

(declare-fun e!1849812 () Regex!9060)

(assert (=> b!2934068 (= e!1849811 e!1849812)))

(assert (=> b!2934068 (= c!479327 (is-Star!9060 (reg!9389 r!17423)))))

(declare-fun b!2934069 () Bool)

(declare-fun lt!1028664 () Regex!9060)

(assert (=> b!2934069 (= e!1849800 lt!1028664)))

(declare-fun b!2934070 () Bool)

(assert (=> b!2934070 (= e!1849807 call!192720)))

(declare-fun b!2934071 () Bool)

(assert (=> b!2934071 (= c!479331 (is-Union!9060 (reg!9389 r!17423)))))

(assert (=> b!2934071 (= e!1849812 e!1849802)))

(declare-fun b!2934072 () Bool)

(declare-fun e!1849806 () Regex!9060)

(assert (=> b!2934072 (= e!1849806 e!1849801)))

(declare-fun c!479332 () Bool)

(declare-fun call!192722 () Bool)

(assert (=> b!2934072 (= c!479332 call!192722)))

(declare-fun b!2934073 () Bool)

(declare-fun e!1849805 () Regex!9060)

(assert (=> b!2934073 (= e!1849805 (reg!9389 r!17423))))

(declare-fun b!2934074 () Bool)

(declare-fun e!1849810 () Regex!9060)

(assert (=> b!2934074 (= e!1849810 e!1849805)))

(declare-fun c!479329 () Bool)

(assert (=> b!2934074 (= c!479329 (is-ElementMatch!9060 (reg!9389 r!17423)))))

(declare-fun b!2934063 () Bool)

(declare-fun c!479330 () Bool)

(assert (=> b!2934063 (= c!479330 (isEmptyExpr!284 lt!1028666))))

(assert (=> b!2934063 (= e!1849804 e!1849806)))

(declare-fun d!839666 () Bool)

(declare-fun e!1849809 () Bool)

(assert (=> d!839666 e!1849809))

(declare-fun res!1211287 () Bool)

(assert (=> d!839666 (=> (not res!1211287) (not e!1849809))))

(declare-fun lt!1028663 () Regex!9060)

(assert (=> d!839666 (= res!1211287 (validRegex!3793 lt!1028663))))

(assert (=> d!839666 (= lt!1028663 e!1849810)))

(declare-fun c!479325 () Bool)

(assert (=> d!839666 (= c!479325 (is-EmptyLang!9060 (reg!9389 r!17423)))))

(assert (=> d!839666 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839666 (= (simplify!67 (reg!9389 r!17423)) lt!1028663)))

(declare-fun b!2934075 () Bool)

(assert (=> b!2934075 (= e!1849810 EmptyLang!9060)))

(declare-fun b!2934076 () Bool)

(declare-fun e!1849803 () Regex!9060)

(declare-fun lt!1028667 () Regex!9060)

(assert (=> b!2934076 (= e!1849803 (Star!9060 lt!1028667))))

(declare-fun b!2934077 () Bool)

(declare-fun c!479328 () Bool)

(assert (=> b!2934077 (= c!479328 (is-EmptyExpr!9060 (reg!9389 r!17423)))))

(assert (=> b!2934077 (= e!1849805 e!1849811)))

(declare-fun b!2934078 () Bool)

(assert (=> b!2934078 (= e!1849802 e!1849799)))

(assert (=> b!2934078 (= lt!1028664 call!192724)))

(assert (=> b!2934078 (= lt!1028668 call!192723)))

(declare-fun c!479335 () Bool)

(assert (=> b!2934078 (= c!479335 call!192720)))

(declare-fun b!2934079 () Bool)

(assert (=> b!2934079 (= e!1849809 (= (nullable!2854 lt!1028663) (nullable!2854 (reg!9389 r!17423))))))

(declare-fun bm!192716 () Bool)

(assert (=> bm!192716 (= call!192721 (isEmptyLang!199 (ite c!479331 lt!1028668 lt!1028666)))))

(declare-fun bm!192717 () Bool)

(assert (=> bm!192717 (= call!192723 (simplify!67 (ite c!479331 (regTwo!18633 (reg!9389 r!17423)) (regOne!18632 (reg!9389 r!17423)))))))

(declare-fun bm!192718 () Bool)

(assert (=> bm!192718 (= call!192722 (isEmptyExpr!284 (ite c!479327 lt!1028667 lt!1028665)))))

(declare-fun b!2934080 () Bool)

(declare-fun c!479333 () Bool)

(declare-fun e!1849808 () Bool)

(assert (=> b!2934080 (= c!479333 e!1849808)))

(declare-fun res!1211289 () Bool)

(assert (=> b!2934080 (=> res!1211289 e!1849808)))

(assert (=> b!2934080 (= res!1211289 call!192719)))

(assert (=> b!2934080 (= lt!1028667 call!192718)))

(assert (=> b!2934080 (= e!1849812 e!1849803)))

(declare-fun b!2934081 () Bool)

(assert (=> b!2934081 (= e!1849811 EmptyExpr!9060)))

(declare-fun b!2934082 () Bool)

(assert (=> b!2934082 (= e!1849808 call!192722)))

(declare-fun bm!192719 () Bool)

(assert (=> bm!192719 (= call!192719 (isEmptyLang!199 (ite c!479327 lt!1028667 (ite c!479331 lt!1028664 lt!1028665))))))

(declare-fun b!2934083 () Bool)

(assert (=> b!2934083 (= e!1849801 (Concat!14381 lt!1028666 lt!1028665))))

(declare-fun b!2934084 () Bool)

(assert (=> b!2934084 (= e!1849806 lt!1028665)))

(declare-fun b!2934085 () Bool)

(assert (=> b!2934085 (= e!1849800 (Union!9060 lt!1028664 lt!1028668))))

(declare-fun b!2934086 () Bool)

(assert (=> b!2934086 (= e!1849803 EmptyExpr!9060)))

(assert (= (and d!839666 c!479325) b!2934075))

(assert (= (and d!839666 (not c!479325)) b!2934074))

(assert (= (and b!2934074 c!479329) b!2934073))

(assert (= (and b!2934074 (not c!479329)) b!2934077))

(assert (= (and b!2934077 c!479328) b!2934081))

(assert (= (and b!2934077 (not c!479328)) b!2934068))

(assert (= (and b!2934068 c!479327) b!2934080))

(assert (= (and b!2934068 (not c!479327)) b!2934071))

(assert (= (and b!2934080 (not res!1211289)) b!2934082))

(assert (= (and b!2934080 c!479333) b!2934086))

(assert (= (and b!2934080 (not c!479333)) b!2934076))

(assert (= (and b!2934071 c!479331) b!2934078))

(assert (= (and b!2934071 (not c!479331)) b!2934062))

(assert (= (and b!2934078 c!479335) b!2934064))

(assert (= (and b!2934078 (not c!479335)) b!2934067))

(assert (= (and b!2934067 c!479326) b!2934069))

(assert (= (and b!2934067 (not c!479326)) b!2934085))

(assert (= (and b!2934062 (not res!1211288)) b!2934070))

(assert (= (and b!2934062 c!479334) b!2934065))

(assert (= (and b!2934062 (not c!479334)) b!2934063))

(assert (= (and b!2934063 c!479330) b!2934084))

(assert (= (and b!2934063 (not c!479330)) b!2934072))

(assert (= (and b!2934072 c!479332) b!2934066))

(assert (= (and b!2934072 (not c!479332)) b!2934083))

(assert (= (or b!2934078 b!2934062) bm!192715))

(assert (= (or b!2934078 b!2934062) bm!192717))

(assert (= (or b!2934067 b!2934062) bm!192716))

(assert (= (or b!2934078 b!2934070) bm!192714))

(assert (= (or b!2934082 b!2934072) bm!192718))

(assert (= (or b!2934080 bm!192715) bm!192713))

(assert (= (or b!2934080 bm!192714) bm!192719))

(assert (= (and d!839666 res!1211287) b!2934079))

(declare-fun m!3322695 () Bool)

(assert (=> bm!192713 m!3322695))

(declare-fun m!3322697 () Bool)

(assert (=> bm!192716 m!3322697))

(declare-fun m!3322699 () Bool)

(assert (=> bm!192717 m!3322699))

(declare-fun m!3322701 () Bool)

(assert (=> b!2934063 m!3322701))

(declare-fun m!3322703 () Bool)

(assert (=> bm!192718 m!3322703))

(declare-fun m!3322705 () Bool)

(assert (=> d!839666 m!3322705))

(assert (=> d!839666 m!3322687))

(declare-fun m!3322707 () Bool)

(assert (=> b!2934079 m!3322707))

(declare-fun m!3322709 () Bool)

(assert (=> b!2934079 m!3322709))

(declare-fun m!3322711 () Bool)

(assert (=> bm!192719 m!3322711))

(assert (=> b!2933768 d!839666))

(declare-fun b!2934105 () Bool)

(declare-fun e!1849832 () Bool)

(declare-fun e!1849829 () Bool)

(assert (=> b!2934105 (= e!1849832 e!1849829)))

(declare-fun c!479341 () Bool)

(assert (=> b!2934105 (= c!479341 (is-Star!9060 r!17423))))

(declare-fun c!479340 () Bool)

(declare-fun bm!192726 () Bool)

(declare-fun call!192733 () Bool)

(assert (=> bm!192726 (= call!192733 (validRegex!3793 (ite c!479341 (reg!9389 r!17423) (ite c!479340 (regTwo!18633 r!17423) (regOne!18632 r!17423)))))))

(declare-fun b!2934106 () Bool)

(declare-fun e!1849828 () Bool)

(assert (=> b!2934106 (= e!1849829 e!1849828)))

(declare-fun res!1211302 () Bool)

(assert (=> b!2934106 (= res!1211302 (not (nullable!2854 (reg!9389 r!17423))))))

(assert (=> b!2934106 (=> (not res!1211302) (not e!1849828))))

(declare-fun b!2934107 () Bool)

(declare-fun e!1849830 () Bool)

(declare-fun e!1849827 () Bool)

(assert (=> b!2934107 (= e!1849830 e!1849827)))

(declare-fun res!1211303 () Bool)

(assert (=> b!2934107 (=> (not res!1211303) (not e!1849827))))

(declare-fun call!192732 () Bool)

(assert (=> b!2934107 (= res!1211303 call!192732)))

(declare-fun b!2934108 () Bool)

(declare-fun e!1849831 () Bool)

(assert (=> b!2934108 (= e!1849831 call!192732)))

(declare-fun b!2934109 () Bool)

(declare-fun res!1211301 () Bool)

(assert (=> b!2934109 (=> (not res!1211301) (not e!1849831))))

(declare-fun call!192731 () Bool)

(assert (=> b!2934109 (= res!1211301 call!192731)))

(declare-fun e!1849833 () Bool)

(assert (=> b!2934109 (= e!1849833 e!1849831)))

(declare-fun bm!192728 () Bool)

(assert (=> bm!192728 (= call!192732 call!192733)))

(declare-fun b!2934110 () Bool)

(assert (=> b!2934110 (= e!1849829 e!1849833)))

(assert (=> b!2934110 (= c!479340 (is-Union!9060 r!17423))))

(declare-fun b!2934111 () Bool)

(assert (=> b!2934111 (= e!1849827 call!192731)))

(declare-fun bm!192727 () Bool)

(assert (=> bm!192727 (= call!192731 (validRegex!3793 (ite c!479340 (regOne!18633 r!17423) (regTwo!18632 r!17423))))))

(declare-fun d!839668 () Bool)

(declare-fun res!1211300 () Bool)

(assert (=> d!839668 (=> res!1211300 e!1849832)))

(assert (=> d!839668 (= res!1211300 (is-ElementMatch!9060 r!17423))))

(assert (=> d!839668 (= (validRegex!3793 r!17423) e!1849832)))

(declare-fun b!2934112 () Bool)

(assert (=> b!2934112 (= e!1849828 call!192733)))

(declare-fun b!2934113 () Bool)

(declare-fun res!1211304 () Bool)

(assert (=> b!2934113 (=> res!1211304 e!1849830)))

(assert (=> b!2934113 (= res!1211304 (not (is-Concat!14381 r!17423)))))

(assert (=> b!2934113 (= e!1849833 e!1849830)))

(assert (= (and d!839668 (not res!1211300)) b!2934105))

(assert (= (and b!2934105 c!479341) b!2934106))

(assert (= (and b!2934105 (not c!479341)) b!2934110))

(assert (= (and b!2934106 res!1211302) b!2934112))

(assert (= (and b!2934110 c!479340) b!2934109))

(assert (= (and b!2934110 (not c!479340)) b!2934113))

(assert (= (and b!2934109 res!1211301) b!2934108))

(assert (= (and b!2934113 (not res!1211304)) b!2934107))

(assert (= (and b!2934107 res!1211303) b!2934111))

(assert (= (or b!2934109 b!2934111) bm!192727))

(assert (= (or b!2934108 b!2934107) bm!192728))

(assert (= (or b!2934112 bm!192728) bm!192726))

(declare-fun m!3322721 () Bool)

(assert (=> bm!192726 m!3322721))

(assert (=> b!2934106 m!3322709))

(declare-fun m!3322723 () Bool)

(assert (=> bm!192727 m!3322723))

(assert (=> start!285198 d!839668))

(declare-fun b!2934114 () Bool)

(declare-fun res!1211311 () Bool)

(declare-fun e!1849835 () Bool)

(assert (=> b!2934114 (=> res!1211311 e!1849835)))

(assert (=> b!2934114 (= res!1211311 (not (is-ElementMatch!9060 (reg!9389 r!17423))))))

(declare-fun e!1849840 () Bool)

(assert (=> b!2934114 (= e!1849840 e!1849835)))

(declare-fun b!2934115 () Bool)

(declare-fun e!1849834 () Bool)

(declare-fun e!1849838 () Bool)

(assert (=> b!2934115 (= e!1849834 e!1849838)))

(declare-fun res!1211306 () Bool)

(assert (=> b!2934115 (=> res!1211306 e!1849838)))

(declare-fun call!192734 () Bool)

(assert (=> b!2934115 (= res!1211306 call!192734)))

(declare-fun b!2934116 () Bool)

(assert (=> b!2934116 (= e!1849835 e!1849834)))

(declare-fun res!1211305 () Bool)

(assert (=> b!2934116 (=> (not res!1211305) (not e!1849834))))

(declare-fun lt!1028669 () Bool)

(assert (=> b!2934116 (= res!1211305 (not lt!1028669))))

(declare-fun b!2934117 () Bool)

(assert (=> b!2934117 (= e!1849838 (not (= (head!6524 (_1!20017 lt!1028565)) (c!479253 (reg!9389 r!17423)))))))

(declare-fun bm!192729 () Bool)

(assert (=> bm!192729 (= call!192734 (isEmpty!19058 (_1!20017 lt!1028565)))))

(declare-fun d!839674 () Bool)

(declare-fun e!1849839 () Bool)

(assert (=> d!839674 e!1849839))

(declare-fun c!479344 () Bool)

(assert (=> d!839674 (= c!479344 (is-EmptyExpr!9060 (reg!9389 r!17423)))))

(declare-fun e!1849836 () Bool)

(assert (=> d!839674 (= lt!1028669 e!1849836)))

(declare-fun c!479343 () Bool)

(assert (=> d!839674 (= c!479343 (isEmpty!19058 (_1!20017 lt!1028565)))))

(assert (=> d!839674 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839674 (= (matchR!3942 (reg!9389 r!17423) (_1!20017 lt!1028565)) lt!1028669)))

(declare-fun b!2934118 () Bool)

(assert (=> b!2934118 (= e!1849836 (nullable!2854 (reg!9389 r!17423)))))

(declare-fun b!2934119 () Bool)

(assert (=> b!2934119 (= e!1849839 (= lt!1028669 call!192734))))

(declare-fun b!2934120 () Bool)

(assert (=> b!2934120 (= e!1849839 e!1849840)))

(declare-fun c!479342 () Bool)

(assert (=> b!2934120 (= c!479342 (is-EmptyLang!9060 (reg!9389 r!17423)))))

(declare-fun b!2934121 () Bool)

(declare-fun res!1211307 () Bool)

(declare-fun e!1849837 () Bool)

(assert (=> b!2934121 (=> (not res!1211307) (not e!1849837))))

(assert (=> b!2934121 (= res!1211307 (not call!192734))))

(declare-fun b!2934122 () Bool)

(declare-fun res!1211308 () Bool)

(assert (=> b!2934122 (=> res!1211308 e!1849835)))

(assert (=> b!2934122 (= res!1211308 e!1849837)))

(declare-fun res!1211309 () Bool)

(assert (=> b!2934122 (=> (not res!1211309) (not e!1849837))))

(assert (=> b!2934122 (= res!1211309 lt!1028669)))

(declare-fun b!2934123 () Bool)

(declare-fun res!1211310 () Bool)

(assert (=> b!2934123 (=> (not res!1211310) (not e!1849837))))

(assert (=> b!2934123 (= res!1211310 (isEmpty!19058 (tail!4750 (_1!20017 lt!1028565))))))

(declare-fun b!2934124 () Bool)

(assert (=> b!2934124 (= e!1849837 (= (head!6524 (_1!20017 lt!1028565)) (c!479253 (reg!9389 r!17423))))))

(declare-fun b!2934125 () Bool)

(assert (=> b!2934125 (= e!1849840 (not lt!1028669))))

(declare-fun b!2934126 () Bool)

(declare-fun res!1211312 () Bool)

(assert (=> b!2934126 (=> res!1211312 e!1849838)))

(assert (=> b!2934126 (= res!1211312 (not (isEmpty!19058 (tail!4750 (_1!20017 lt!1028565)))))))

(declare-fun b!2934127 () Bool)

(assert (=> b!2934127 (= e!1849836 (matchR!3942 (derivativeStep!2465 (reg!9389 r!17423) (head!6524 (_1!20017 lt!1028565))) (tail!4750 (_1!20017 lt!1028565))))))

(assert (= (and d!839674 c!479343) b!2934118))

(assert (= (and d!839674 (not c!479343)) b!2934127))

(assert (= (and d!839674 c!479344) b!2934119))

(assert (= (and d!839674 (not c!479344)) b!2934120))

(assert (= (and b!2934120 c!479342) b!2934125))

(assert (= (and b!2934120 (not c!479342)) b!2934114))

(assert (= (and b!2934114 (not res!1211311)) b!2934122))

(assert (= (and b!2934122 res!1211309) b!2934121))

(assert (= (and b!2934121 res!1211307) b!2934123))

(assert (= (and b!2934123 res!1211310) b!2934124))

(assert (= (and b!2934122 (not res!1211308)) b!2934116))

(assert (= (and b!2934116 res!1211305) b!2934115))

(assert (= (and b!2934115 (not res!1211306)) b!2934126))

(assert (= (and b!2934126 (not res!1211312)) b!2934117))

(assert (= (or b!2934119 b!2934115 b!2934121) bm!192729))

(assert (=> bm!192729 m!3322659))

(assert (=> b!2934126 m!3322661))

(assert (=> b!2934126 m!3322661))

(assert (=> b!2934126 m!3322663))

(assert (=> d!839674 m!3322659))

(assert (=> d!839674 m!3322687))

(assert (=> b!2934127 m!3322667))

(assert (=> b!2934127 m!3322667))

(declare-fun m!3322725 () Bool)

(assert (=> b!2934127 m!3322725))

(assert (=> b!2934127 m!3322661))

(assert (=> b!2934127 m!3322725))

(assert (=> b!2934127 m!3322661))

(declare-fun m!3322727 () Bool)

(assert (=> b!2934127 m!3322727))

(assert (=> b!2934123 m!3322661))

(assert (=> b!2934123 m!3322661))

(assert (=> b!2934123 m!3322663))

(assert (=> b!2934124 m!3322667))

(assert (=> b!2934117 m!3322667))

(assert (=> b!2934118 m!3322709))

(assert (=> b!2933767 d!839674))

(declare-fun d!839676 () Bool)

(assert (=> d!839676 (= (get!10639 lt!1028575) (v!34750 lt!1028575))))

(assert (=> b!2933767 d!839676))

(declare-fun d!839678 () Bool)

(assert (=> d!839678 (= (isEmpty!19058 s!11993) (is-Nil!34801 s!11993))))

(assert (=> b!2933762 d!839678))

(declare-fun d!839680 () Bool)

(declare-fun choose!17357 (Int) Bool)

(assert (=> d!839680 (= (Exists!1422 lambda!109272) (choose!17357 lambda!109272))))

(declare-fun bs!525363 () Bool)

(assert (= bs!525363 d!839680))

(declare-fun m!3322729 () Bool)

(assert (=> bs!525363 m!3322729))

(assert (=> b!2933771 d!839680))

(declare-fun bs!525364 () Bool)

(declare-fun d!839682 () Bool)

(assert (= bs!525364 (and d!839682 b!2933771)))

(declare-fun lambda!109298 () Int)

(assert (=> bs!525364 (= lambda!109298 lambda!109271)))

(assert (=> bs!525364 (not (= lambda!109298 lambda!109272))))

(declare-fun bs!525365 () Bool)

(assert (= bs!525365 (and d!839682 b!2933923)))

(assert (=> bs!525365 (not (= lambda!109298 lambda!109287))))

(declare-fun bs!525366 () Bool)

(assert (= bs!525366 (and d!839682 b!2933921)))

(assert (=> bs!525366 (not (= lambda!109298 lambda!109288))))

(assert (=> d!839682 true))

(assert (=> d!839682 true))

(assert (=> d!839682 true))

(assert (=> d!839682 (= (isDefined!5168 (findConcatSeparation!1011 (reg!9389 r!17423) lt!1028562 Nil!34801 s!11993 s!11993)) (Exists!1422 lambda!109298))))

(declare-fun lt!1028672 () Unit!48479)

(declare-fun choose!17358 (Regex!9060 Regex!9060 List!34925) Unit!48479)

(assert (=> d!839682 (= lt!1028672 (choose!17358 (reg!9389 r!17423) lt!1028562 s!11993))))

(assert (=> d!839682 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839682 (= (lemmaFindConcatSeparationEquivalentToExists!793 (reg!9389 r!17423) lt!1028562 s!11993) lt!1028672)))

(declare-fun bs!525367 () Bool)

(assert (= bs!525367 d!839682))

(declare-fun m!3322731 () Bool)

(assert (=> bs!525367 m!3322731))

(assert (=> bs!525367 m!3322539))

(assert (=> bs!525367 m!3322687))

(assert (=> bs!525367 m!3322539))

(declare-fun m!3322733 () Bool)

(assert (=> bs!525367 m!3322733))

(declare-fun m!3322735 () Bool)

(assert (=> bs!525367 m!3322735))

(assert (=> b!2933771 d!839682))

(declare-fun bs!525368 () Bool)

(declare-fun d!839684 () Bool)

(assert (= bs!525368 (and d!839684 b!2933921)))

(declare-fun lambda!109303 () Int)

(assert (=> bs!525368 (not (= lambda!109303 lambda!109288))))

(declare-fun bs!525369 () Bool)

(assert (= bs!525369 (and d!839684 b!2933771)))

(assert (=> bs!525369 (not (= lambda!109303 lambda!109272))))

(assert (=> bs!525369 (= (= (Star!9060 (reg!9389 r!17423)) lt!1028562) (= lambda!109303 lambda!109271))))

(declare-fun bs!525370 () Bool)

(assert (= bs!525370 (and d!839684 d!839682)))

(assert (=> bs!525370 (= (= (Star!9060 (reg!9389 r!17423)) lt!1028562) (= lambda!109303 lambda!109298))))

(declare-fun bs!525371 () Bool)

(assert (= bs!525371 (and d!839684 b!2933923)))

(assert (=> bs!525371 (not (= lambda!109303 lambda!109287))))

(assert (=> d!839684 true))

(assert (=> d!839684 true))

(declare-fun lambda!109304 () Int)

(assert (=> bs!525368 (not (= lambda!109304 lambda!109288))))

(assert (=> bs!525369 (= (= (Star!9060 (reg!9389 r!17423)) lt!1028562) (= lambda!109304 lambda!109272))))

(assert (=> bs!525369 (not (= lambda!109304 lambda!109271))))

(assert (=> bs!525370 (not (= lambda!109304 lambda!109298))))

(declare-fun bs!525372 () Bool)

(assert (= bs!525372 d!839684))

(assert (=> bs!525372 (not (= lambda!109304 lambda!109303))))

(assert (=> bs!525371 (= (= (Star!9060 (reg!9389 r!17423)) r!17423) (= lambda!109304 lambda!109287))))

(assert (=> d!839684 true))

(assert (=> d!839684 true))

(assert (=> d!839684 (= (Exists!1422 lambda!109303) (Exists!1422 lambda!109304))))

(declare-fun lt!1028677 () Unit!48479)

(declare-fun choose!17359 (Regex!9060 List!34925) Unit!48479)

(assert (=> d!839684 (= lt!1028677 (choose!17359 (reg!9389 r!17423) s!11993))))

(assert (=> d!839684 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839684 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!233 (reg!9389 r!17423) s!11993) lt!1028677)))

(declare-fun m!3322737 () Bool)

(assert (=> bs!525372 m!3322737))

(declare-fun m!3322739 () Bool)

(assert (=> bs!525372 m!3322739))

(declare-fun m!3322741 () Bool)

(assert (=> bs!525372 m!3322741))

(assert (=> bs!525372 m!3322687))

(assert (=> b!2933771 d!839684))

(declare-fun d!839686 () Bool)

(assert (=> d!839686 (= (Exists!1422 lambda!109271) (choose!17357 lambda!109271))))

(declare-fun bs!525373 () Bool)

(assert (= bs!525373 d!839686))

(declare-fun m!3322743 () Bool)

(assert (=> bs!525373 m!3322743))

(assert (=> b!2933771 d!839686))

(declare-fun b!2934187 () Bool)

(declare-fun e!1849875 () Option!6617)

(declare-fun e!1849874 () Option!6617)

(assert (=> b!2934187 (= e!1849875 e!1849874)))

(declare-fun c!479355 () Bool)

(assert (=> b!2934187 (= c!479355 (is-Nil!34801 s!11993))))

(declare-fun d!839688 () Bool)

(declare-fun e!1849872 () Bool)

(assert (=> d!839688 e!1849872))

(declare-fun res!1211354 () Bool)

(assert (=> d!839688 (=> res!1211354 e!1849872)))

(declare-fun e!1849876 () Bool)

(assert (=> d!839688 (= res!1211354 e!1849876)))

(declare-fun res!1211355 () Bool)

(assert (=> d!839688 (=> (not res!1211355) (not e!1849876))))

(declare-fun lt!1028692 () Option!6617)

(assert (=> d!839688 (= res!1211355 (isDefined!5168 lt!1028692))))

(assert (=> d!839688 (= lt!1028692 e!1849875)))

(declare-fun c!479356 () Bool)

(declare-fun e!1849873 () Bool)

(assert (=> d!839688 (= c!479356 e!1849873)))

(declare-fun res!1211353 () Bool)

(assert (=> d!839688 (=> (not res!1211353) (not e!1849873))))

(assert (=> d!839688 (= res!1211353 (matchR!3942 (reg!9389 r!17423) Nil!34801))))

(assert (=> d!839688 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839688 (= (findConcatSeparation!1011 (reg!9389 r!17423) lt!1028562 Nil!34801 s!11993 s!11993) lt!1028692)))

(declare-fun b!2934188 () Bool)

(declare-fun ++!8307 (List!34925 List!34925) List!34925)

(assert (=> b!2934188 (= e!1849876 (= (++!8307 (_1!20017 (get!10639 lt!1028692)) (_2!20017 (get!10639 lt!1028692))) s!11993))))

(declare-fun b!2934189 () Bool)

(declare-fun lt!1028691 () Unit!48479)

(declare-fun lt!1028693 () Unit!48479)

(assert (=> b!2934189 (= lt!1028691 lt!1028693)))

(assert (=> b!2934189 (= (++!8307 (++!8307 Nil!34801 (Cons!34801 (h!40221 s!11993) Nil!34801)) (t!233990 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!938 (List!34925 C!18306 List!34925 List!34925) Unit!48479)

(assert (=> b!2934189 (= lt!1028693 (lemmaMoveElementToOtherListKeepsConcatEq!938 Nil!34801 (h!40221 s!11993) (t!233990 s!11993) s!11993))))

(assert (=> b!2934189 (= e!1849874 (findConcatSeparation!1011 (reg!9389 r!17423) lt!1028562 (++!8307 Nil!34801 (Cons!34801 (h!40221 s!11993) Nil!34801)) (t!233990 s!11993) s!11993))))

(declare-fun b!2934190 () Bool)

(assert (=> b!2934190 (= e!1849872 (not (isDefined!5168 lt!1028692)))))

(declare-fun b!2934191 () Bool)

(assert (=> b!2934191 (= e!1849873 (matchR!3942 lt!1028562 s!11993))))

(declare-fun b!2934192 () Bool)

(declare-fun res!1211356 () Bool)

(assert (=> b!2934192 (=> (not res!1211356) (not e!1849876))))

(assert (=> b!2934192 (= res!1211356 (matchR!3942 lt!1028562 (_2!20017 (get!10639 lt!1028692))))))

(declare-fun b!2934193 () Bool)

(assert (=> b!2934193 (= e!1849875 (Some!6616 (tuple2!33771 Nil!34801 s!11993)))))

(declare-fun b!2934194 () Bool)

(declare-fun res!1211352 () Bool)

(assert (=> b!2934194 (=> (not res!1211352) (not e!1849876))))

(assert (=> b!2934194 (= res!1211352 (matchR!3942 (reg!9389 r!17423) (_1!20017 (get!10639 lt!1028692))))))

(declare-fun b!2934195 () Bool)

(assert (=> b!2934195 (= e!1849874 None!6616)))

(assert (= (and d!839688 res!1211353) b!2934191))

(assert (= (and d!839688 c!479356) b!2934193))

(assert (= (and d!839688 (not c!479356)) b!2934187))

(assert (= (and b!2934187 c!479355) b!2934195))

(assert (= (and b!2934187 (not c!479355)) b!2934189))

(assert (= (and d!839688 res!1211355) b!2934194))

(assert (= (and b!2934194 res!1211352) b!2934192))

(assert (= (and b!2934192 res!1211356) b!2934188))

(assert (= (and d!839688 (not res!1211354)) b!2934190))

(declare-fun m!3322769 () Bool)

(assert (=> b!2934189 m!3322769))

(assert (=> b!2934189 m!3322769))

(declare-fun m!3322771 () Bool)

(assert (=> b!2934189 m!3322771))

(declare-fun m!3322773 () Bool)

(assert (=> b!2934189 m!3322773))

(assert (=> b!2934189 m!3322769))

(declare-fun m!3322775 () Bool)

(assert (=> b!2934189 m!3322775))

(declare-fun m!3322777 () Bool)

(assert (=> b!2934192 m!3322777))

(declare-fun m!3322779 () Bool)

(assert (=> b!2934192 m!3322779))

(declare-fun m!3322781 () Bool)

(assert (=> b!2934191 m!3322781))

(declare-fun m!3322783 () Bool)

(assert (=> d!839688 m!3322783))

(declare-fun m!3322785 () Bool)

(assert (=> d!839688 m!3322785))

(assert (=> d!839688 m!3322687))

(assert (=> b!2934194 m!3322777))

(declare-fun m!3322787 () Bool)

(assert (=> b!2934194 m!3322787))

(assert (=> b!2934190 m!3322783))

(assert (=> b!2934188 m!3322777))

(declare-fun m!3322789 () Bool)

(assert (=> b!2934188 m!3322789))

(assert (=> b!2933771 d!839688))

(declare-fun d!839694 () Bool)

(declare-fun isEmpty!19061 (Option!6617) Bool)

(assert (=> d!839694 (= (isDefined!5168 lt!1028575) (not (isEmpty!19061 lt!1028575)))))

(declare-fun bs!525376 () Bool)

(assert (= bs!525376 d!839694))

(declare-fun m!3322793 () Bool)

(assert (=> bs!525376 m!3322793))

(assert (=> b!2933771 d!839694))

(declare-fun b!2934196 () Bool)

(declare-fun e!1849882 () Bool)

(declare-fun e!1849879 () Bool)

(assert (=> b!2934196 (= e!1849882 e!1849879)))

(declare-fun c!479358 () Bool)

(assert (=> b!2934196 (= c!479358 (is-Star!9060 lt!1028569))))

(declare-fun bm!192730 () Bool)

(declare-fun c!479357 () Bool)

(declare-fun call!192737 () Bool)

(assert (=> bm!192730 (= call!192737 (validRegex!3793 (ite c!479358 (reg!9389 lt!1028569) (ite c!479357 (regTwo!18633 lt!1028569) (regOne!18632 lt!1028569)))))))

(declare-fun b!2934197 () Bool)

(declare-fun e!1849878 () Bool)

(assert (=> b!2934197 (= e!1849879 e!1849878)))

(declare-fun res!1211359 () Bool)

(assert (=> b!2934197 (= res!1211359 (not (nullable!2854 (reg!9389 lt!1028569))))))

(assert (=> b!2934197 (=> (not res!1211359) (not e!1849878))))

(declare-fun b!2934198 () Bool)

(declare-fun e!1849880 () Bool)

(declare-fun e!1849877 () Bool)

(assert (=> b!2934198 (= e!1849880 e!1849877)))

(declare-fun res!1211360 () Bool)

(assert (=> b!2934198 (=> (not res!1211360) (not e!1849877))))

(declare-fun call!192736 () Bool)

(assert (=> b!2934198 (= res!1211360 call!192736)))

(declare-fun b!2934199 () Bool)

(declare-fun e!1849881 () Bool)

(assert (=> b!2934199 (= e!1849881 call!192736)))

(declare-fun b!2934200 () Bool)

(declare-fun res!1211358 () Bool)

(assert (=> b!2934200 (=> (not res!1211358) (not e!1849881))))

(declare-fun call!192735 () Bool)

(assert (=> b!2934200 (= res!1211358 call!192735)))

(declare-fun e!1849883 () Bool)

(assert (=> b!2934200 (= e!1849883 e!1849881)))

(declare-fun bm!192732 () Bool)

(assert (=> bm!192732 (= call!192736 call!192737)))

(declare-fun b!2934201 () Bool)

(assert (=> b!2934201 (= e!1849879 e!1849883)))

(assert (=> b!2934201 (= c!479357 (is-Union!9060 lt!1028569))))

(declare-fun b!2934202 () Bool)

(assert (=> b!2934202 (= e!1849877 call!192735)))

(declare-fun bm!192731 () Bool)

(assert (=> bm!192731 (= call!192735 (validRegex!3793 (ite c!479357 (regOne!18633 lt!1028569) (regTwo!18632 lt!1028569))))))

(declare-fun d!839698 () Bool)

(declare-fun res!1211357 () Bool)

(assert (=> d!839698 (=> res!1211357 e!1849882)))

(assert (=> d!839698 (= res!1211357 (is-ElementMatch!9060 lt!1028569))))

(assert (=> d!839698 (= (validRegex!3793 lt!1028569) e!1849882)))

(declare-fun b!2934203 () Bool)

(assert (=> b!2934203 (= e!1849878 call!192737)))

(declare-fun b!2934204 () Bool)

(declare-fun res!1211361 () Bool)

(assert (=> b!2934204 (=> res!1211361 e!1849880)))

(assert (=> b!2934204 (= res!1211361 (not (is-Concat!14381 lt!1028569)))))

(assert (=> b!2934204 (= e!1849883 e!1849880)))

(assert (= (and d!839698 (not res!1211357)) b!2934196))

(assert (= (and b!2934196 c!479358) b!2934197))

(assert (= (and b!2934196 (not c!479358)) b!2934201))

(assert (= (and b!2934197 res!1211359) b!2934203))

(assert (= (and b!2934201 c!479357) b!2934200))

(assert (= (and b!2934201 (not c!479357)) b!2934204))

(assert (= (and b!2934200 res!1211358) b!2934199))

(assert (= (and b!2934204 (not res!1211361)) b!2934198))

(assert (= (and b!2934198 res!1211360) b!2934202))

(assert (= (or b!2934200 b!2934202) bm!192731))

(assert (= (or b!2934199 b!2934198) bm!192732))

(assert (= (or b!2934203 bm!192732) bm!192730))

(declare-fun m!3322795 () Bool)

(assert (=> bm!192730 m!3322795))

(declare-fun m!3322797 () Bool)

(assert (=> b!2934197 m!3322797))

(declare-fun m!3322799 () Bool)

(assert (=> bm!192731 m!3322799))

(assert (=> b!2933766 d!839698))

(declare-fun d!839700 () Bool)

(assert (=> d!839700 (= (matchR!3942 (reg!9389 r!17423) (_1!20017 lt!1028565)) (matchRSpec!1197 (reg!9389 r!17423) (_1!20017 lt!1028565)))))

(declare-fun lt!1028694 () Unit!48479)

(assert (=> d!839700 (= lt!1028694 (choose!17351 (reg!9389 r!17423) (_1!20017 lt!1028565)))))

(assert (=> d!839700 (validRegex!3793 (reg!9389 r!17423))))

(assert (=> d!839700 (= (mainMatchTheorem!1197 (reg!9389 r!17423) (_1!20017 lt!1028565)) lt!1028694)))

(declare-fun bs!525377 () Bool)

(assert (= bs!525377 d!839700))

(assert (=> bs!525377 m!3322525))

(declare-fun m!3322801 () Bool)

(assert (=> bs!525377 m!3322801))

(declare-fun m!3322803 () Bool)

(assert (=> bs!525377 m!3322803))

(assert (=> bs!525377 m!3322687))

(assert (=> b!2933765 d!839700))

(declare-fun e!1849886 () Bool)

(assert (=> b!2933764 (= tp!939770 e!1849886)))

(declare-fun b!2934218 () Bool)

(declare-fun tp!939803 () Bool)

(declare-fun tp!939801 () Bool)

(assert (=> b!2934218 (= e!1849886 (and tp!939803 tp!939801))))

(declare-fun b!2934217 () Bool)

(declare-fun tp!939800 () Bool)

(assert (=> b!2934217 (= e!1849886 tp!939800)))

(declare-fun b!2934215 () Bool)

(assert (=> b!2934215 (= e!1849886 tp_is_empty!15683)))

(declare-fun b!2934216 () Bool)

(declare-fun tp!939802 () Bool)

(declare-fun tp!939804 () Bool)

(assert (=> b!2934216 (= e!1849886 (and tp!939802 tp!939804))))

(assert (= (and b!2933764 (is-ElementMatch!9060 (reg!9389 r!17423))) b!2934215))

(assert (= (and b!2933764 (is-Concat!14381 (reg!9389 r!17423))) b!2934216))

(assert (= (and b!2933764 (is-Star!9060 (reg!9389 r!17423))) b!2934217))

(assert (= (and b!2933764 (is-Union!9060 (reg!9389 r!17423))) b!2934218))

(declare-fun b!2934223 () Bool)

(declare-fun e!1849889 () Bool)

(declare-fun tp!939807 () Bool)

(assert (=> b!2934223 (= e!1849889 (and tp_is_empty!15683 tp!939807))))

(assert (=> b!2933763 (= tp!939768 e!1849889)))

(assert (= (and b!2933763 (is-Cons!34801 (t!233990 s!11993))) b!2934223))

(declare-fun e!1849890 () Bool)

(assert (=> b!2933761 (= tp!939769 e!1849890)))

(declare-fun b!2934227 () Bool)

(declare-fun tp!939811 () Bool)

(declare-fun tp!939809 () Bool)

(assert (=> b!2934227 (= e!1849890 (and tp!939811 tp!939809))))

(declare-fun b!2934226 () Bool)

(declare-fun tp!939808 () Bool)

(assert (=> b!2934226 (= e!1849890 tp!939808)))

(declare-fun b!2934224 () Bool)

(assert (=> b!2934224 (= e!1849890 tp_is_empty!15683)))

(declare-fun b!2934225 () Bool)

(declare-fun tp!939810 () Bool)

(declare-fun tp!939812 () Bool)

(assert (=> b!2934225 (= e!1849890 (and tp!939810 tp!939812))))

(assert (= (and b!2933761 (is-ElementMatch!9060 (regOne!18632 r!17423))) b!2934224))

(assert (= (and b!2933761 (is-Concat!14381 (regOne!18632 r!17423))) b!2934225))

(assert (= (and b!2933761 (is-Star!9060 (regOne!18632 r!17423))) b!2934226))

(assert (= (and b!2933761 (is-Union!9060 (regOne!18632 r!17423))) b!2934227))

(declare-fun e!1849891 () Bool)

(assert (=> b!2933761 (= tp!939766 e!1849891)))

(declare-fun b!2934231 () Bool)

(declare-fun tp!939816 () Bool)

(declare-fun tp!939814 () Bool)

(assert (=> b!2934231 (= e!1849891 (and tp!939816 tp!939814))))

(declare-fun b!2934230 () Bool)

(declare-fun tp!939813 () Bool)

(assert (=> b!2934230 (= e!1849891 tp!939813)))

(declare-fun b!2934228 () Bool)

(assert (=> b!2934228 (= e!1849891 tp_is_empty!15683)))

(declare-fun b!2934229 () Bool)

(declare-fun tp!939815 () Bool)

(declare-fun tp!939817 () Bool)

(assert (=> b!2934229 (= e!1849891 (and tp!939815 tp!939817))))

(assert (= (and b!2933761 (is-ElementMatch!9060 (regTwo!18632 r!17423))) b!2934228))

(assert (= (and b!2933761 (is-Concat!14381 (regTwo!18632 r!17423))) b!2934229))

(assert (= (and b!2933761 (is-Star!9060 (regTwo!18632 r!17423))) b!2934230))

(assert (= (and b!2933761 (is-Union!9060 (regTwo!18632 r!17423))) b!2934231))

(declare-fun e!1849892 () Bool)

(assert (=> b!2933760 (= tp!939771 e!1849892)))

(declare-fun b!2934235 () Bool)

(declare-fun tp!939821 () Bool)

(declare-fun tp!939819 () Bool)

(assert (=> b!2934235 (= e!1849892 (and tp!939821 tp!939819))))

(declare-fun b!2934234 () Bool)

(declare-fun tp!939818 () Bool)

(assert (=> b!2934234 (= e!1849892 tp!939818)))

(declare-fun b!2934232 () Bool)

(assert (=> b!2934232 (= e!1849892 tp_is_empty!15683)))

(declare-fun b!2934233 () Bool)

(declare-fun tp!939820 () Bool)

(declare-fun tp!939822 () Bool)

(assert (=> b!2934233 (= e!1849892 (and tp!939820 tp!939822))))

(assert (= (and b!2933760 (is-ElementMatch!9060 (regOne!18633 r!17423))) b!2934232))

(assert (= (and b!2933760 (is-Concat!14381 (regOne!18633 r!17423))) b!2934233))

(assert (= (and b!2933760 (is-Star!9060 (regOne!18633 r!17423))) b!2934234))

(assert (= (and b!2933760 (is-Union!9060 (regOne!18633 r!17423))) b!2934235))

(declare-fun e!1849893 () Bool)

(assert (=> b!2933760 (= tp!939767 e!1849893)))

(declare-fun b!2934239 () Bool)

(declare-fun tp!939826 () Bool)

(declare-fun tp!939824 () Bool)

(assert (=> b!2934239 (= e!1849893 (and tp!939826 tp!939824))))

(declare-fun b!2934238 () Bool)

(declare-fun tp!939823 () Bool)

(assert (=> b!2934238 (= e!1849893 tp!939823)))

(declare-fun b!2934236 () Bool)

(assert (=> b!2934236 (= e!1849893 tp_is_empty!15683)))

(declare-fun b!2934237 () Bool)

(declare-fun tp!939825 () Bool)

(declare-fun tp!939827 () Bool)

(assert (=> b!2934237 (= e!1849893 (and tp!939825 tp!939827))))

(assert (= (and b!2933760 (is-ElementMatch!9060 (regTwo!18633 r!17423))) b!2934236))

(assert (= (and b!2933760 (is-Concat!14381 (regTwo!18633 r!17423))) b!2934237))

(assert (= (and b!2933760 (is-Star!9060 (regTwo!18633 r!17423))) b!2934238))

(assert (= (and b!2933760 (is-Union!9060 (regTwo!18633 r!17423))) b!2934239))

(push 1)

(assert (not b!2934117))

(assert (not b!2934217))

(assert (not b!2934223))

(assert (not b!2934032))

(assert (not b!2933917))

(assert (not d!839662))

(assert (not b!2933936))

(assert (not bm!192704))

(assert (not bm!192707))

(assert (not b!2934197))

(assert (not b!2934216))

(assert (not b!2934079))

(assert (not bm!192682))

(assert (not b!2934127))

(assert (not bm!192729))

(assert (not b!2934118))

(assert (not b!2934238))

(assert (not b!2934063))

(assert (not bm!192688))

(assert (not d!839694))

(assert (not b!2934235))

(assert (not d!839646))

(assert (not b!2934189))

(assert (not b!2933996))

(assert (not b!2934192))

(assert (not d!839656))

(assert (not b!2933931))

(assert tp_is_empty!15683)

(assert (not b!2934188))

(assert (not d!839658))

(assert (not b!2934038))

(assert (not bm!192717))

(assert (not b!2934058))

(assert (not d!839652))

(assert (not b!2934106))

(assert (not b!2934218))

(assert (not b!2934226))

(assert (not d!839700))

(assert (not bm!192719))

(assert (not bm!192689))

(assert (not b!2934231))

(assert (not d!839666))

(assert (not b!2934050))

(assert (not b!2933916))

(assert (not b!2934126))

(assert (not b!2933939))

(assert (not b!2934049))

(assert (not d!839686))

(assert (not b!2933930))

(assert (not b!2933869))

(assert (not d!839664))

(assert (not b!2934194))

(assert (not b!2934061))

(assert (not b!2933870))

(assert (not b!2934040))

(assert (not bm!192726))

(assert (not bm!192712))

(assert (not bm!192718))

(assert (not bm!192687))

(assert (not b!2934056))

(assert (not d!839674))

(assert (not bm!192716))

(assert (not b!2934041))

(assert (not b!2933937))

(assert (not b!2934227))

(assert (not bm!192711))

(assert (not b!2933875))

(assert (not d!839680))

(assert (not b!2934037))

(assert (not b!2934190))

(assert (not bm!192731))

(assert (not b!2934234))

(assert (not b!2934225))

(assert (not b!2933878))

(assert (not d!839682))

(assert (not b!2934233))

(assert (not d!839648))

(assert (not b!2934055))

(assert (not b!2934230))

(assert (not b!2934059))

(assert (not b!2934031))

(assert (not bm!192730))

(assert (not b!2934237))

(assert (not b!2934012))

(assert (not bm!192713))

(assert (not b!2934124))

(assert (not b!2933876))

(assert (not bm!192727))

(assert (not b!2934025))

(assert (not b!2933940))

(assert (not bm!192708))

(assert (not b!2933879))

(assert (not d!839684))

(assert (not b!2934239))

(assert (not b!2934123))

(assert (not b!2934229))

(assert (not bm!192709))

(assert (not b!2934191))

(assert (not d!839640))

(assert (not bm!192710))

(assert (not d!839688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

